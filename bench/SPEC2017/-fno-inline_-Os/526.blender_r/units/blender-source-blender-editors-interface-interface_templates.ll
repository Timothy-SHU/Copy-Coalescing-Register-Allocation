; ModuleID = 'blender/source/blender/editors/interface/interface_templates.c'
source_filename = "blender/source/blender/editors/interface/interface_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.TemplateID = type { %struct.PointerRNA, ptr, ptr, i32, i32, i8 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.RNAUpdateCb = type { %struct.PointerRNA, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.uiBlock = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, %struct.ListBase, [128 x i8], [4 x [4 x float]], %struct.rctf, float, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, [7 x i8], double, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.rctf, %struct.ListBase, ptr, ptr, ptr, ptr, [3 x float], i8, [64 x i8], %struct.PieMenuData }
%struct.PieMenuData = type { [2 x float], [2 x float], [2 x float], [2 x float], double, i32, i32, float }
%struct.uiBut = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, [128 x i8], [400 x i8], %struct.rctf, ptr, float, float, float, float, float, float, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i16], ptr, ptr, i32, i8, i8, i8, i8, i8, i16, i16, ptr, ptr, %struct.PointerRNA, ptr, i32, %struct.PointerRNA, ptr, ptr, ptr, i16, i8, i8, ptr, ptr, float, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
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
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.uiPreview = type { ptr, ptr, [64 x i8], i16, [3 x i16] }
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.CurveMapPoint = type { float, float, i16, i16 }
%struct.Palette = type { %struct.ID, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.uiListLayoutdata = type { i32, i32, i32 }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.uiListType = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.uiList = type { ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.uiListDyn = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct._uilist_item = type { %struct.PointerRNA, i32, i32 }
%struct.StringCmp = type { [64 x i8], i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.ReportTimerInfo = type { [3 x float], float, float }
%struct.uiStyle = type { ptr, ptr, [64 x i8], %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, %struct.uiFontStyle, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.uiFontStyle = type { i16, i16, i16, [6 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.Report = type { ptr, ptr, i16, i16, i32, ptr, ptr }
%struct.ComponentMenuArgs = type { %struct.PointerRNA, [64 x i8] }
%struct._gh_Entry = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [39 x i8] c"%s: pointer property not found: %s.%s\0A\00", align 1
@__func__.uiTemplateAnyID = private unnamed_addr constant [16 x i8] c"uiTemplateAnyID\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: pointer-type property not found: %s.%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ID-Block:\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: path property not found: %s.%s\0A\00", align 1
@__func__.uiTemplatePathBuilder = private unnamed_addr constant [22 x i8] c"uiTemplatePathBuilder\00", align 1
@RNA_Modifier = external global %struct.StructRNA, align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: Expected modifier on object: %s\0A\00", align 1
@__func__.uiTemplateModifier = private unnamed_addr constant [19 x i8] c"uiTemplateModifier\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"blender/source/blender/editors/interface/interface_templates.c\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Can't edit external libdata\00", align 1
@RNA_Constraint = external global %struct.StructRNA, align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"%s: Expected constraint on object: %s\0A\00", align 1
@__func__.uiTemplateConstraint = private unnamed_addr constant [21 x i8] c"uiTemplateConstraint\00", align 1
@.str.9 = private unnamed_addr constant [74 x i8] c"%s: Expected ID of type material, texture, lamp, world or line style: %s\0A\00", align 1
@__func__.uiTemplatePreview = private unnamed_addr constant [18 x i8] c"uiTemplatePreview\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"uiPreview_%s\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"uiPreview\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@RNA_Material = external global %struct.StructRNA, align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"preview_render_type\00", align 1
@RNA_Texture = external global %struct.StructRNA, align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Line Style\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"use_preview_alpha\00", align 1
@RNA_ColorRamp = external global %struct.StructRNA, align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"RNAUpdateCb\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@RNA_Histogram = external global %struct.StructRNA, align 1
@RNA_Scopes = external global %struct.StructRNA, align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"%s: curve property not found: %s.%s\0A\00", align 1
@__func__.uiTemplateCurveMapping = private unnamed_addr constant [23 x i8] c"uiTemplateCurveMapping\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"%s: curve is not a pointer: %s.%s\0A\00", align 1
@RNA_CurveMapping = external global %struct.StructRNA, align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"%s: property not found: %s.%s\0A\00", align 1
@__func__.uiTemplateColorPicker = private unnamed_addr constant [22 x i8] c"uiTemplateColorPicker\00", align 1
@__func__.uiTemplatePalette = private unnamed_addr constant [18 x i8] c"uiTemplatePalette\00", align 1
@RNA_Palette = external global %struct.StructRNA, align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"PALETTE_OT_color_add\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"PALETTE_OT_color_delete\00", align 1
@RNA_PaletteColor = external global %struct.StructRNA, align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"%s: layers property not found: %s.%s\0A\00", align 1
@__func__.uiTemplateLayers = private unnamed_addr constant [17 x i8] c"uiTemplateLayers\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"%s: used layers property not found: %s.%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"%s: states property not found: %s.%s\0A\00", align 1
@__func__.uiTemplateGameStates = private unnamed_addr constant [21 x i8] c"uiTemplateGameStates\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"UI_UL_list\00", align 1
@.str.31 = private unnamed_addr constant [81 x i8] c"%s: template_list using default '%s' UIList class must provide a custom list_id\0A\00", align 1
@__func__.uiTemplateList = private unnamed_addr constant [15 x i8] c"uiTemplateList\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"%s: No active data: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"%s: Property not found: %s.%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"%s: Expected a collection data property: %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"%s: Expected an integer active data property: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"%s: List type %s not found\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"uiList\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"uiList.dyn_data\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [23 x i8] c"Double click to rename\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%d :\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"Hide filtering options\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"Show filtering options\00", align 1
@uiTemplateOperatorSearch.search = internal global [256 x i8] zeroinitializer, align 16
@.str.44 = private unnamed_addr constant [14 x i8] c"Stop this job\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"Progress\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Capture\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"Stop screencast\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Anim Player\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"Stop animation playback\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"UI_OT_reports_to_textblock\00", align 1
@.str.51 = private unnamed_addr constant [67 x i8] c"Click to see the remaining reports in text block: 'Recent Reports'\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@__func__.uiTemplateColorspaceSettings = private unnamed_addr constant [29 x i8] c"uiTemplateColorspaceSettings\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"Input Color Space:\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@__func__.uiTemplateColormanagedViewSettings = private unnamed_addr constant [35 x i8] c"uiTemplateColormanagedViewSettings\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"view_transform\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"View\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"look\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"Look\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"use_curve_mapping\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"curve_mapping\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"component menu template args\00", align 1
@__func__.ui_template_id = private unnamed_addr constant [15 x i8] c"ui_template_id\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"TemplateID\00", align 1
@.str.65 = private unnamed_addr constant [42 x i8] c"Indirect library datablock, cannot change\00", align 1
@.str.66 = private unnamed_addr constant [53 x i8] c"Direct linked library datablock, click to make local\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.68 = private unnamed_addr constant [72 x i8] c"Display number of users of this data (click to make a single-user copy)\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"use_fake_user\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"New\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"FILE_OT_unpack_item\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"Packed File, click to unpack\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"id_name\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"id_type\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.77 = private unnamed_addr constant [83 x i8] c"Unlink datablock (Shift + Click to set users to zero, data will then not be saved)\00", align 1
@id_search_menu.search = internal global [256 x i8] zeroinitializer, align 16
@id_search_menu.template = internal global %struct.TemplateID zeroinitializer, align 8
@.str.78 = private unnamed_addr constant [7 x i8] c"_popup\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"Browse Scene to be linked\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"Browse Object to be linked\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"Browse Mesh Data to be linked\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"Browse Curve Data to be linked\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"Browse Metaball Data to be linked\00", align 1
@.str.84 = private unnamed_addr constant [29 x i8] c"Browse Material to be linked\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"Browse Texture to be linked\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"Browse Image to be linked\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"Browse Line Style Data to be linked\00", align 1
@.str.88 = private unnamed_addr constant [33 x i8] c"Browse Lattice Data to be linked\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"Browse Lamp Data to be linked\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"Browse Camera Data to be linked\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"Browse World Settings to be linked\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"Choose Screen layout\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"Browse Text to be linked\00", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"Browse Speaker Data to be linked\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"Browse Sound to be linked\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"Browse Armature data to be linked\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"Browse Action to be linked\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"Browse Node Tree to be linked\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"Browse Brush to be linked\00", align 1
@.str.100 = private unnamed_addr constant [38 x i8] c"Browse Particle Settings to be linked\00", align 1
@.str.101 = private unnamed_addr constant [39 x i8] c"Browse Grease Pencil Data to be linked\00", align 1
@.str.102 = private unnamed_addr constant [33 x i8] c"Browse Palette Data to be linked\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"Browse Paint Curve Data to be linked\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"Browse ID data to be linked\00", align 1
@.str.105 = private unnamed_addr constant [45 x i8] c"%s: warning, id event %d shouldnt come here\0A\00", align 1
@__func__.template_id_cb = private unnamed_addr constant [15 x i8] c"template_id_cb\00", align 1
@RNA_SceneObjects = external global %struct.StructRNA, align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"%s parent deform\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"Modifier name\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"Make Real\00", align 1
@.str.110 = private unnamed_addr constant [44 x i8] c"Convert virtual modifier to a real modifier\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"show_render\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"show_viewport\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"show_in_editmode\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"show_on_cage\00", align 1
@.str.116 = private unnamed_addr constant [53 x i8] c"This modifier can only be applied on splines' points\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"use_apply_on_spline\00", align 1
@.str.118 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_modifier_move_up\00", align 1
@.str.119 = private unnamed_addr constant [29 x i8] c"OBJECT_OT_modifier_move_down\00", align 1
@RE_engine_id_BLENDER_GAME = external local_unnamed_addr global ptr, align 8
@.str.120 = private unnamed_addr constant [26 x i8] c"OBJECT_OT_modifier_remove\00", align 1
@.str.121 = private unnamed_addr constant [32 x i8] c"WM_OT_properties_context_change\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"PHYSICS\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"PARTICLES\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"Convert\00", align 1
@.str.126 = private unnamed_addr constant [31 x i8] c"OBJECT_OT_duplicates_make_real\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"OBJECT_OT_modifier_convert\00", align 1
@.str.128 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_modifier_apply\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"Apply\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"apply_as\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"Apply as Shape Key\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_modifier_copy\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"Modifier convert to real\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"Null\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"constraint\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"Proxy Protected\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"mute\00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"CONSTRAINT_OT_move_up\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"CONSTRAINT_OT_move_down\00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"CONSTRAINT_OT_delete\00", align 1
@.str.143 = private unnamed_addr constant [39 x i8] c"Cannot edit Proxy-Protected Constraint\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"Add a new color stop to the colorband\00", align 1
@.str.145 = private unnamed_addr constant [27 x i8] c"Delete the active position\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"Flip the color ramp\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"color_mode\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"hue_interpolation\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"interpolation\00", align 1
@RNA_ColorRampElement = external global %struct.StructRNA, align 1
@.str.150 = private unnamed_addr constant [25 x i8] c"Choose active color stop\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"Pos\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"Add colorband\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"Delete colorband\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"Flip colorband\00", align 1
@icon_view_menu.cb = internal global %struct.RNAUpdateCb zeroinitializer, align 8
@.str.156 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.163 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"Zoom in\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"Zoom out\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"Clipping Options\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"Delete points\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"black_level\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"white_level\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.174 = private unnamed_addr constant [35 x i8] c"Reset Black/White point and curves\00", align 1
@__func__.curvemap_brush_tools_func = private unnamed_addr constant [26 x i8] c"curvemap_brush_tools_func\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"Reset View\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"Vector Handle\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"Auto Handle\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"Reset Curve\00", align 1
@.str.179 = private unnamed_addr constant [15 x i8] c"CurveMap tools\00", align 1
@__func__.curvemap_tools_negslope_func = private unnamed_addr constant [29 x i8] c"curvemap_tools_negslope_func\00", align 1
@.str.180 = private unnamed_addr constant [18 x i8] c"Extend Horizontal\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"Extend Extrapolated\00", align 1
@__func__.curvemap_tools_posslope_func = private unnamed_addr constant [29 x i8] c"curvemap_tools_posslope_func\00", align 1
@__func__.curvemap_clipping_func = private unnamed_addr constant [23 x i8] c"curvemap_clipping_func\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"Use Clipping\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"Min X \00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"Min Y \00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"Max X \00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"Max Y \00", align 1
@RNA_UIList = external global %struct.StructRNA, align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"filter_name\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"use_filter_invert\00", align 1
@.str.189 = private unnamed_addr constant [22 x i8] c"use_filter_sort_alpha\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"use_filter_sort_reverse\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"StringCmp\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"items_filter_flags\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"filter_dyn\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"items_filter_neworder\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.195 = private unnamed_addr constant [25 x i8] c"SCREEN_OT_animation_play\00", align 1
@RNA_OperatorProperties = external global %struct.StructRNA, align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"UI_OT_unset_property_button\00", align 1
@__func__.component_menu = private unnamed_addr constant [15 x i8] c"component_menu\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @UI_template_fix_linking() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateHeader(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #18
  %4 = tail call i32 @ED_area_header_switchbutton(ptr noundef %1, ptr noundef %3, i32 noundef 0) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ED_area_header_switchbutton(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiIDContextProperty(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  store ptr null, ptr %2, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %13

10:                                               ; preds = %31, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13, !llvm.loop !38

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.uiBlock, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %10, label %18

18:                                               ; preds = %13, %31
  %19 = phi ptr [ %32, %31 ], [ %16, %13 ]
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !40
  %22 = and i32 %21, 262148
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 31
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !49
  %29 = getelementptr inbounds %struct.TemplateID, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !50
  store ptr %30, ptr %2, align 8, !tbaa !34
  br label %34

31:                                               ; preds = %18, %24
  %32 = load ptr, ptr %19, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %10, label %18, !llvm.loop !52

34:                                               ; preds = %10, %6, %3, %28
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
  tail call fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 35, i32 noundef 0, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #1 !PGOFuncName !53 {
  %11 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @RNA_property_type(ptr noundef nonnull %11) #18
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %10
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call ptr @RNA_struct_identifier(ptr noundef %18) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ui_template_id, ptr noundef %19, ptr noundef %3) #18
  br label %42

20:                                               ; preds = %13
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 56, ptr noundef nonnull @.str.64) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !49
  %23 = getelementptr inbounds %struct.TemplateID, ptr %22, i64 0, i32 1
  store ptr %11, ptr %23, align 8, !tbaa !50
  %24 = getelementptr inbounds %struct.TemplateID, ptr %22, i64 0, i32 3
  store i32 %8, ptr %24, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.TemplateID, ptr %22, i64 0, i32 4
  store i32 %9, ptr %25, align 4, !tbaa !56
  %26 = tail call ptr @RNA_property_pointer_type(ptr noundef %2, ptr noundef nonnull %11) #18
  %27 = tail call signext i16 @RNA_type_to_ID_code(ptr noundef %26) #18
  %28 = tail call ptr @CTX_data_main(ptr noundef %1) #18
  %29 = tail call ptr @which_libbase(ptr noundef %28, i16 noundef signext %27) #18
  %30 = getelementptr inbounds %struct.TemplateID, ptr %22, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !57
  %31 = icmp eq ptr %29, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %20
  %33 = icmp eq ptr %5, null
  %34 = icmp eq ptr %4, null
  %35 = or i32 %7, 4
  %36 = select i1 %34, i32 %7, i32 %35
  %37 = or i32 %36, 8
  %38 = select i1 %33, i32 %36, i32 %37
  %39 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call fastcc void @template_ID(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %22, ptr noundef %26, i16 noundef signext %27, i32 noundef %38, ptr noundef %4, ptr noundef %5, ptr noundef %6) #19
  br label %40

40:                                               ; preds = %32, %20
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %41(ptr noundef nonnull %22) #18
  br label %42

42:                                               ; preds = %40, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateIDBrowse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
  tail call fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 3, i32 noundef 0, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateIDPreview(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  tail call fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 2083, i32 noundef %7, i32 noundef %8) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateAnyID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %3) #18
  %8 = icmp eq ptr %6, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @RNA_property_type(ptr noundef nonnull %6) #18
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @RNA_struct_identifier(ptr noundef %14) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.uiTemplateAnyID, ptr noundef %15, ptr noundef %2) #18
  br label %38

16:                                               ; preds = %9
  %17 = icmp eq ptr %7, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #18
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = tail call ptr @RNA_struct_identifier(ptr noundef %23) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.uiTemplateAnyID, ptr noundef %24, ptr noundef %3) #18
  br label %38

25:                                               ; preds = %18
  %26 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD51EB860000000, i32 noundef 0) #18
  %27 = tail call ptr @uiLayoutRow(ptr noundef %26, i32 noundef 0) #18
  %28 = icmp eq ptr %4, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %4, align 1, !tbaa !58
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25, %29
  %33 = phi ptr [ %4, %29 ], [ @.str.2, %25 ]
  tail call void @uiItemL(ptr noundef %27, ptr noundef nonnull %33, i32 noundef 0) #18
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call ptr @uiLayoutRow(ptr noundef %26, i32 noundef 1) #18
  %36 = tail call ptr @uiLayoutRow(ptr noundef %35, i32 noundef 1) #18
  tail call void @uiLayoutSetAlignment(ptr noundef %36, i8 noundef zeroext 1) #18
  tail call void @uiItemFullR(ptr noundef %36, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %37 = tail call ptr @uiLayoutRow(ptr noundef %35, i32 noundef 1) #18
  tail call void @uiLayoutSetAlignment(ptr noundef %37, i8 noundef zeroext 0) #18
  tail call void @uiItemFullR(ptr noundef %37, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  br label %38

38:                                               ; preds = %34, %21, %12
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_RNA_warning(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemFullR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplatePathBuilder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @RNA_property_type(ptr noundef nonnull %6) #18
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %15, label %11

11:                                               ; preds = %8, %5
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = tail call ptr @RNA_struct_identifier(ptr noundef %13) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.uiTemplatePathBuilder, ptr noundef %14, ptr noundef %2) #18
  br label %17

15:                                               ; preds = %8
  %16 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  tail call void @uiItemR(ptr noundef %16, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %4, i32 noundef 206) #18
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: optsize
declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @uiTemplateModifier(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca %struct.VirtualModifierData, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_scene(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %8, ptr noundef nonnull @RNA_Modifier) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.uiTemplateModifier, ptr noundef nonnull @.str.6) #18
  br label %47

12:                                               ; preds = %3
  %13 = load ptr, ptr %2, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = icmp eq ptr %13, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !61
  %20 = icmp eq i16 %19, 16975
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %12
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.uiTemplateModifier, ptr noundef nonnull @.str.6) #18
  br label %47

22:                                               ; preds = %17
  %23 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  %24 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i8
  tail call void @uiBlockSetButLock(ptr noundef %23, i8 noundef zeroext %27, ptr noundef nonnull @.str.7) #18
  %28 = call i32 @modifiers_getCageIndex(ptr noundef %6, ptr noundef nonnull %13, ptr noundef nonnull %5, i8 noundef zeroext 0) #18
  %29 = call ptr @modifiers_getVirtualModifierList(ptr noundef nonnull %13, ptr noundef nonnull %4) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %22, %38
  %32 = phi i32 [ %44, %38 ], [ 0, %22 ]
  %33 = phi ptr [ %45, %38 ], [ %29, %22 ]
  %34 = icmp eq ptr %15, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, ptr %5, align 4, !tbaa !68
  %37 = call fastcc ptr @draw_modifier(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %13, ptr noundef %15, i32 noundef %32, i32 noundef %28, i32 noundef %36) #19
  br label %47

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ModifierData, ptr %33, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !69
  %41 = shl i32 %40, 26
  %42 = ashr i32 %41, 31
  %43 = add i32 %32, 1
  %44 = add i32 %43, %42
  %45 = load ptr, ptr %33, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %31, !llvm.loop !72

47:                                               ; preds = %38, %22, %35, %21, %11
  %48 = phi ptr [ %37, %35 ], [ null, %21 ], [ null, %11 ], [ null, %22 ], [ null, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %4) #20
  ret ptr %48
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetButLock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @draw_modifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #1 !PGOFuncName !73 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca [128 x i8], align 16
  %10 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = tail call ptr @modifierType_getInfo(i32 noundef %11) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  %13 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !69
  %15 = and i32 %14, 32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #20
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Modifier, ptr noundef %3, ptr noundef nonnull %8) #18
  %16 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  call void @uiLayoutSetContextPointer(ptr noundef %16, ptr noundef nonnull @.str.106, ptr noundef nonnull %8) #18
  %17 = call ptr @uiLayoutBox(ptr noundef %16) #18
  %18 = icmp eq i32 %15, 0
  %19 = call ptr @uiLayoutRow(ptr noundef %17, i32 noundef 0) #18
  br i1 %18, label %20, label %97

20:                                               ; preds = %7
  %21 = call ptr @uiLayoutGetBlock(ptr noundef %19) #18
  call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 1) #18
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %8, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = call i32 @RNA_struct_ui_icon(ptr noundef %23) #18
  call void @uiItemL(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef %24) #18
  call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 0) #18
  %25 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %12, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = call zeroext i8 %26(ptr noundef nonnull %3, i32 noundef 0) #18
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  call void @uiLayoutSetRedAlert(ptr noundef %19, i8 noundef zeroext 1) #18
  br label %32

32:                                               ; preds = %31, %28, %20
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %8, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  call void @uiLayoutSetRedAlert(ptr noundef %19, i8 noundef zeroext 0) #18
  call void @uiBlockBeginAlign(ptr noundef %21) #18
  %33 = load i32, ptr %10, align 8, !tbaa !74
  switch i32 %33, label %42 [
    i32 10, label %34
    i32 23, label %34
    i32 30, label %54
  ]

34:                                               ; preds = %32, %32
  %35 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 110
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.PartDeflect, ptr %36, i64 0, i32 1
  %40 = load i16, ptr %39, align 4, !tbaa !78
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32, %34, %38
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %8, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %8, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %43 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %12, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !80
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = call ptr @uiLayoutRow(ptr noundef %19, i32 noundef 1) #18
  %49 = load i32, ptr %13, align 4, !tbaa !69
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @uiLayoutSetActive(ptr noundef %48, i8 noundef zeroext 0) #18
  br label %53

53:                                               ; preds = %52, %47
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %8, ptr noundef nonnull @.str.114, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  br label %54

54:                                               ; preds = %32, %42, %53, %38
  %55 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %56 = load i16, ptr %55, align 8, !tbaa !81
  switch i16 %56, label %81 [
    i16 1, label %57
    i16 2, label %70
    i16 3, label %70
    i16 4, label %70
  ]

57:                                               ; preds = %54
  %58 = call zeroext i8 @modifier_supportsCage(ptr noundef %1, ptr noundef nonnull %3) #18
  %59 = icmp eq i8 %58, 0
  %60 = icmp sgt i32 %4, %6
  %61 = or i1 %60, %59
  br i1 %61, label %81, label %62

62:                                               ; preds = %57
  %63 = call ptr @uiLayoutRow(ptr noundef %19, i32 noundef 1) #18
  %64 = icmp slt i32 %4, %5
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = call zeroext i8 @modifier_couldBeCage(ptr noundef %1, ptr noundef nonnull %3) #18
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %62
  call void @uiLayoutSetActive(ptr noundef %63, i8 noundef zeroext 0) #18
  br label %69

69:                                               ; preds = %68, %65
  call void @uiItemR(ptr noundef %63, ptr noundef nonnull %8, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  br label %81

70:                                               ; preds = %54, %54, %54
  %71 = load i32, ptr %10, align 8, !tbaa !74
  switch i32 %71, label %76 [
    i32 9, label %72
    i32 10, label %72
    i32 18, label %72
  ]

72:                                               ; preds = %70, %70, %70
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %74 = add i16 %73, -2
  %75 = call ptr @uiDefIconButBitI(ptr noundef %21, i32 noundef 1536, i32 noundef 64, i32 noundef 0, i32 noundef 188, i32 noundef 0, i32 noundef 0, i16 noundef signext %74, i16 noundef signext %73, ptr noundef nonnull %13, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.116) #18
  call void @uiButSetFlag(ptr noundef %75, i32 noundef 2048) #18
  br label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %12, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !86
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %8, ptr noundef nonnull @.str.117, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  br label %81

81:                                               ; preds = %54, %76, %80, %72, %57, %69
  call void @uiBlockEndAlign(ptr noundef %21) #18
  call void @uiBlockBeginAlign(ptr noundef %21) #18
  call void @uiItemO(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.118) #18
  call void @uiItemO(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.119) #18
  call void @uiBlockEndAlign(ptr noundef %21) #18
  call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 1) #18
  %82 = call fastcc i32 @modifier_can_delete(ptr noundef nonnull %3) #19, !range !87
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = call fastcc i32 @modifier_is_simulation(ptr noundef nonnull %3) #19, !range !88
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 115
  %89 = load ptr, ptr @RE_engine_id_BLENDER_GAME, align 8, !tbaa !34
  %90 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(1) %89) #21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %84
  call void @uiItemO(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.120) #18
  br label %104

93:                                               ; preds = %87, %81
  %94 = call fastcc i32 @modifier_is_simulation(ptr noundef nonnull %3) #19, !range !88
  switch i32 %94, label %104 [
    i32 1, label %95
    i32 2, label %96
  ]

95:                                               ; preds = %93
  call void @uiItemStringO(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef 107, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #18
  br label %104

96:                                               ; preds = %93
  call void @uiItemStringO(ptr noundef %19, ptr noundef nonnull @.str.3, i32 noundef 107, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #18
  br label %104

97:                                               ; preds = %7
  call void @uiLayoutSetAlignment(ptr noundef %19, i8 noundef zeroext 0) #18
  %98 = call ptr @uiLayoutGetBlock(ptr noundef %19) #18
  %99 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 6
  %100 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 128, ptr noundef nonnull @.str.107, ptr noundef nonnull %99) #18
  %101 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %102 = call ptr @uiDefBut(ptr noundef %98, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i16 noundef signext 185, i16 noundef signext %101, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.108) #18
  %103 = call ptr @uiDefBut(ptr noundef %98, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.109, i32 noundef 0, i32 noundef 0, i16 noundef signext 80, i16 noundef signext 16, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.110) #18
  call void @uiButSetFunc(ptr noundef %103, ptr noundef nonnull @modifiers_convertToReal, ptr noundef %2, ptr noundef nonnull %3) #18
  br label %151

104:                                              ; preds = %93, %92, %96, %95
  call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 0) #18
  %105 = load i32, ptr %13, align 4, !tbaa !69
  %106 = and i32 %105, 16
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %151, label %108

108:                                              ; preds = %104
  %109 = call ptr @uiLayoutBox(ptr noundef %16) #18
  %110 = call ptr @uiLayoutRow(ptr noundef %109, i32 noundef 0) #18
  %111 = load i32, ptr %10, align 8, !tbaa !74
  switch i32 %111, label %112 [
    i32 23, label %148
    i32 30, label %148
  ]

112:                                              ; preds = %108
  %113 = call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef nonnull %2) #18
  call void @uiBlockSetButLock(ptr noundef %21, i8 noundef zeroext %113, ptr noundef nonnull @.str.7) #18
  %114 = load i32, ptr %10, align 8, !tbaa !74
  %115 = icmp eq i32 %114, 19
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %3, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !89
  %119 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 27
  %120 = load i32, ptr %119, align 8, !tbaa !91
  %121 = and i32 %120, 32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.ParticleSystem, ptr %118, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !92
  %126 = getelementptr inbounds %struct.ParticleSettings, ptr %125, i64 0, i32 21
  %127 = load i16, ptr %126, align 8, !tbaa !94
  switch i16 %127, label %141 [
    i16 8, label %128
    i16 7, label %128
    i16 6, label %129
  ]

128:                                              ; preds = %123, %123
  call void @uiItemO(ptr noundef %110, ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef nonnull @.str.126) #18
  br label %141

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.ParticleSystem, ptr %118, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !96
  %132 = icmp eq ptr %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %129
  call void @uiItemO(ptr noundef %110, ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef nonnull @.str.127) #18
  br label %141

134:                                              ; preds = %112
  call void @uiLayoutSetOperatorContext(ptr noundef %110, i32 noundef 0) #18
  call void @uiItemEnumO(ptr noundef %110, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef 0, ptr noundef nonnull @.str.130, i32 noundef 1) #18
  %135 = call zeroext i8 @modifier_isSameTopology(ptr noundef nonnull %3) #18
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = call zeroext i8 @modifier_isNonGeometrical(ptr noundef nonnull %3) #18
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  call void @uiItemEnumO(ptr noundef %110, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.131, i32 noundef 0, ptr noundef nonnull @.str.130, i32 noundef 2) #18
  br label %141

141:                                              ; preds = %116, %129, %133, %128, %123, %134, %137, %140
  call void @uiBlockClearButLock(ptr noundef %21) #18
  %142 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !62
  %144 = icmp ne ptr %143, null
  %145 = zext i1 %144 to i8
  call void @uiBlockSetButLock(ptr noundef %21, i8 noundef zeroext %145, ptr noundef nonnull @.str.7) #18
  %146 = load i32, ptr %10, align 8, !tbaa !74
  switch i32 %146, label %147 [
    i32 26, label %148
    i32 10, label %148
    i32 19, label %148
    i32 22, label %148
    i32 31, label %148
  ]

147:                                              ; preds = %141
  call void @uiItemO(ptr noundef %110, ptr noundef nonnull @.str.132, i32 noundef 0, ptr noundef nonnull @.str.133) #18
  br label %148

148:                                              ; preds = %141, %141, %141, %141, %141, %108, %108, %147
  %149 = call ptr @uiLayoutColumn(ptr noundef %109, i32 noundef 0) #18
  %150 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %109) #18
  br label %151

151:                                              ; preds = %97, %148, %104
  %152 = phi ptr [ null, %97 ], [ %149, %148 ], [ null, %104 ]
  %153 = getelementptr inbounds %struct.ModifierData, ptr %3, i64 0, i32 8
  %154 = load ptr, ptr %153, align 8, !tbaa !97
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %151
  %157 = call ptr @uiLayoutBox(ptr noundef %16) #18
  %158 = call ptr @uiLayoutRow(ptr noundef %157, i32 noundef 0) #18
  %159 = load ptr, ptr %153, align 8, !tbaa !97
  call void @uiItemL(ptr noundef %158, ptr noundef %159, i32 noundef 2) #18
  br label %160

160:                                              ; preds = %156, %151
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  ret ptr %152
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @uiTemplateConstraint(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %4, ptr noundef nonnull @RNA_Constraint) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uiTemplateConstraint, ptr noundef nonnull @.str.6) #18
  br label %36

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %9, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !61
  %16 = icmp eq i16 %15, 16975
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %8
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uiTemplateConstraint, ptr noundef nonnull @.str.6) #18
  br label %36

18:                                               ; preds = %13
  %19 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  %20 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i8
  tail call void @uiBlockSetButLock(ptr noundef %19, i8 noundef zeroext %23, ptr noundef nonnull @.str.7) #18
  %24 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !98
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.bConstraint, ptr %11, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !100
  %30 = getelementptr inbounds %struct.bKinematicConstraint, ptr %29, i64 0, i32 2
  %31 = load i16, ptr %30, align 2, !tbaa !101
  %32 = and i16 %31, 8
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %18
  %35 = tail call fastcc ptr @draw_constraint(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %11) #19
  br label %36

36:                                               ; preds = %27, %34, %17, %7
  %37 = phi ptr [ %35, %34 ], [ null, %27 ], [ null, %17 ], [ null, %7 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @draw_constraint(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !103 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [32 x i8], align 16
  %6 = tail call ptr @BKE_pose_channel_active(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %7 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bConstraint, ptr %2, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !98
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, ptr @.str.135, ptr @.str.136
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %7, i64 0, i32 2
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi ptr [ %15, %14 ], [ %13, %9 ]
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %17, i64 noundef 32) #18
  %19 = call zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef %1, ptr noundef %6) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bConstraint, ptr %2, i64 0, i32 4
  %23 = load i16, ptr %22, align 2, !tbaa !104
  %24 = and i16 %23, 256
  %25 = icmp ne i16 %24, 0
  br label %26

26:                                               ; preds = %16, %21
  %27 = phi i1 [ %25, %21 ], [ true, %16 ]
  %28 = call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  call void @uiBlockSetHandleFunc(ptr noundef %28, ptr noundef nonnull @do_constraint_panels, ptr noundef %1) #18
  call void @uiBlockSetFunc(ptr noundef %28, ptr noundef nonnull @constraint_active_func, ptr noundef %1, ptr noundef %2) #18
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Constraint, ptr noundef %2, ptr noundef nonnull %4) #18
  %29 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  call void @uiLayoutSetContextPointer(ptr noundef %29, ptr noundef nonnull @.str.137, ptr noundef nonnull %4) #18
  %30 = call ptr @uiLayoutBox(ptr noundef %29) #18
  %31 = call ptr @uiLayoutRow(ptr noundef %30, i32 noundef 0) #18
  %32 = call ptr @uiLayoutGetBlock(ptr noundef %30) #18
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 1) #18
  call void @uiItemR(ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull @.str.111, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 0) #18
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %34 = sitofp i16 %33 to float
  %35 = call float @llvm.fmuladd.f32(float %34, float 5.000000e-01, float 0.000000e+00)
  %36 = fptosi float %35 to i32
  %37 = mul i16 %33, 5
  %38 = fmul float %34, 0x3FECCCCCC0000000
  %39 = fptosi float %38 to i16
  %40 = call ptr @uiDefBut(ptr noundef %32, i32 noundef 5120, i32 noundef 5, ptr noundef nonnull %5, i32 noundef %36, i32 noundef 0, i16 noundef signext %37, i16 noundef signext %39, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %41 = getelementptr inbounds %struct.bConstraint, ptr %2, i64 0, i32 4
  %42 = load i16, ptr %41, align 2, !tbaa !104
  %43 = and i16 %42, 4
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  call void @uiLayoutSetRedAlert(ptr noundef %31, i8 noundef zeroext 1) #18
  br label %46

46:                                               ; preds = %45, %26
  br i1 %27, label %47, label %76

47:                                               ; preds = %46
  call void @uiItemR(ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  call void @uiLayoutSetRedAlert(ptr noundef %31, i8 noundef zeroext 0) #18
  %48 = call zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef %1, ptr noundef %6) #18
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds %struct.bConstraint, ptr %2, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !105
  br i1 %49, label %52, label %54

52:                                               ; preds = %47
  %53 = icmp ne ptr %51, null
  br label %61

54:                                               ; preds = %47
  %55 = icmp eq ptr %51, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.bConstraint, ptr %51, i64 0, i32 4
  %58 = load i16, ptr %57, align 2, !tbaa !104
  %59 = and i16 %58, 256
  %60 = icmp ne i16 %59, 0
  br label %61

61:                                               ; preds = %56, %54, %52
  %62 = phi i1 [ %53, %52 ], [ false, %54 ], [ %60, %56 ]
  %63 = load ptr, ptr %2, align 8, !tbaa !106
  %64 = icmp ne ptr %63, null
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 1) #18
  %65 = load i16, ptr %41, align 2, !tbaa !104
  %66 = and i16 %65, 512
  %67 = icmp eq i16 %66, 0
  %68 = select i1 %67, i32 253, i32 254
  call void @uiItemR(ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull @.str.139, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %68) #18
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 0) #18
  call void @uiLayoutSetOperatorContext(ptr noundef %31, i32 noundef 0) #18
  %69 = select i1 %62, i1 true, i1 %64
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  call void @uiBlockBeginAlign(ptr noundef %32) #18
  br i1 %62, label %71, label %72

71:                                               ; preds = %70
  call void @uiItemO(ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.140) #18
  br label %72

72:                                               ; preds = %71, %70
  br i1 %64, label %73, label %74

73:                                               ; preds = %72
  call void @uiItemO(ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.141) #18
  br label %74

74:                                               ; preds = %73, %72
  call void @uiBlockEndAlign(ptr noundef %32) #18
  br label %75

75:                                               ; preds = %74, %61
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 1) #18
  call void @uiItemO(ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.142) #18
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 0) #18
  br label %92

76:                                               ; preds = %46
  %77 = getelementptr inbounds %struct.bConstraint, ptr %2, i64 0, i32 7
  call void @uiItemL(ptr noundef %31, ptr noundef nonnull %77, i32 noundef 0) #18
  call void @uiLayoutSetRedAlert(ptr noundef %31, i8 noundef zeroext 0) #18
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 1) #18
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %79 = sitofp i16 %78 to float
  %80 = call float @llvm.fmuladd.f32(float %79, float 0x4028666660000000, float 0.000000e+00)
  %81 = fptosi float %80 to i32
  %82 = fmul float %79, 0x3FEE666660000000
  %83 = fptosi float %82 to i16
  %84 = call ptr @uiDefIconBut(ptr noundef %32, i32 noundef 512, i32 noundef 5, i32 noundef 682, i32 noundef %81, i32 noundef 0, i16 noundef signext %83, i16 noundef signext %83, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.138) #18
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %86 = sitofp i16 %85 to float
  %87 = call float @llvm.fmuladd.f32(float %86, float 0x402A333340000000, float 0.000000e+00)
  %88 = fptosi float %87 to i32
  %89 = fmul float %86, 0x3FEE666660000000
  %90 = fptosi float %89 to i16
  %91 = call ptr @uiDefIconBut(ptr noundef %32, i32 noundef 512, i32 noundef 5, i32 noundef 41, i32 noundef %88, i32 noundef 0, i16 noundef signext %90, i16 noundef signext %90, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.138) #18
  call void @uiBlockSetEmboss(ptr noundef %32, i8 noundef zeroext 0) #18
  call void @uiBlockSetButLock(ptr noundef %32, i8 noundef zeroext 1, ptr noundef nonnull @.str.143) #18
  br label %92

92:                                               ; preds = %75, %76
  %93 = load i16, ptr %41, align 2, !tbaa !104
  %94 = and i16 %93, 1
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = call ptr @uiLayoutBox(ptr noundef %29) #18
  %98 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %97) #18
  br label %99

99:                                               ; preds = %92, %96
  %100 = phi ptr [ %97, %96 ], [ null, %92 ]
  %101 = phi ptr [ %98, %96 ], [ %32, %92 ]
  call void @uiBlockClearButLock(ptr noundef %101) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplatePreview(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #20
  %11 = icmp eq ptr %2, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !61
  switch i16 %14, label %15 [
    i16 17748, label %16
    i16 16716, label %35
    i16 16717, label %35
    i16 20311, label %35
    i16 21324, label %35
  ]

15:                                               ; preds = %12
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.uiTemplatePreview, ptr noundef nonnull @.str.6) #18
  br label %144

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !61
  switch i16 %20, label %27 [
    i16 16717, label %21
    i16 20311, label %23
    i16 16716, label %25
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 79
  br label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 71
  br label %30

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 70
  br label %30

27:                                               ; preds = %18
  %28 = icmp eq i16 %20, 21324
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 29
  br i1 %28, label %30, label %35

30:                                               ; preds = %27, %21, %23, %25
  %31 = phi ptr [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %29, %27 ]
  %32 = load i16, ptr %31, align 2, !tbaa !61
  switch i16 %32, label %34 [
    i16 1, label %35
    i16 2, label %33
  ]

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %12, %12, %12, %12, %16, %27, %7, %30, %34, %33
  %36 = phi ptr [ %2, %33 ], [ %4, %30 ], [ %2, %34 ], [ null, %7 ], [ %2, %27 ], [ %2, %16 ], [ %2, %12 ], [ %2, %12 ], [ %2, %12 ], [ %2, %12 ]
  %37 = phi ptr [ %4, %33 ], [ null, %30 ], [ null, %34 ], [ null, %7 ], [ null, %27 ], [ null, %16 ], [ null, %12 ], [ null, %12 ], [ null, %12 ], [ null, %12 ]
  %38 = phi ptr [ %31, %33 ], [ %31, %30 ], [ %31, %34 ], [ null, %7 ], [ null, %27 ], [ null, %16 ], [ null, %12 ], [ null, %12 ], [ null, %12 ], [ null, %12 ]
  %39 = icmp eq ptr %6, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i8, ptr %6, align 1, !tbaa !58
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40, %35
  %44 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !61
  %46 = sext i16 %45 to i32
  %47 = tail call ptr @BKE_idcode_to_name(i32 noundef %46) #18
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %47) #18
  br label %49

49:                                               ; preds = %43, %40
  %50 = phi ptr [ %10, %43 ], [ %6, %40 ]
  %51 = call ptr @CTX_wm_region(ptr noundef %1) #18
  %52 = getelementptr inbounds %struct.ARegion, ptr %51, i64 0, i32 25
  %53 = call ptr @BLI_findstring(ptr noundef nonnull %52, ptr noundef nonnull %50, i32 noundef 16) #18
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %57 = call ptr %56(i64 noundef 88, ptr noundef nonnull @.str.11) #18
  %58 = getelementptr inbounds %struct.uiPreview, ptr %57, i64 0, i32 2
  %59 = call ptr @BLI_strncpy(ptr noundef nonnull %58, ptr noundef nonnull %50, i64 noundef 64) #18
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %61 = sitofp i16 %60 to float
  %62 = fmul float %61, 0x4016666660000000
  %63 = fptosi float %62 to i16
  %64 = getelementptr inbounds %struct.uiPreview, ptr %57, i64 0, i32 3
  store i16 %63, ptr %64, align 8, !tbaa !107
  call void @BLI_addtail(ptr noundef nonnull %52, ptr noundef %57) #18
  br label %65

65:                                               ; preds = %55, %49
  %66 = phi ptr [ %53, %49 ], [ %57, %55 ]
  %67 = getelementptr inbounds %struct.uiPreview, ptr %66, i64 0, i32 3
  %68 = load i16, ptr %67, align 8, !tbaa !107
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %70 = icmp slt i16 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %65
  %72 = sext i16 %69 to i32
  %73 = sext i16 %68 to i32
  %74 = mul nsw i32 %72, 50
  %75 = icmp slt i32 %74, %73
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = trunc i32 %74 to i16
  br label %78

78:                                               ; preds = %65, %76
  %79 = phi i16 [ %77, %76 ], [ %69, %65 ]
  store i16 %79, ptr %67, align 8, !tbaa !107
  br label %80

80:                                               ; preds = %78, %71
  %81 = call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  %82 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %83 = call ptr @uiLayoutColumn(ptr noundef %82, i32 noundef 0) #18
  call void @uiLayoutSetKeepAspect(ptr noundef %83, i8 noundef zeroext 1) #18
  %84 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %85 = mul i16 %84, 10
  %86 = load i16, ptr %67, align 8, !tbaa !107
  %87 = call ptr @uiDefBut(ptr noundef %81, i32 noundef 21504, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %85, i16 noundef signext %86, ptr noundef %36, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  call void @uiBlockSetDrawExtraFunc(ptr noundef %81, ptr noundef nonnull @ED_preview_draw, ptr noundef %37, ptr noundef %5) #18
  call void @uiBlockSetHandleFunc(ptr noundef %81, ptr noundef nonnull @do_preview_buttons, ptr noundef null) #18
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %89 = mul i16 %88, 10
  %90 = sitofp i16 %88 to float
  %91 = fmul float %90, 0x3FD3333340000000
  %92 = fptosi float %91 to i16
  %93 = fmul float %90, 5.000000e+01
  %94 = call ptr @uiDefIconButS(ptr noundef %81, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %89, i16 noundef signext %92, ptr noundef nonnull %67, float noundef %90, float noundef %93, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %95 = icmp ne ptr %36, null
  %96 = icmp ne i32 %3, 0
  %97 = and i1 %96, %95
  br i1 %97, label %98, label %144

98:                                               ; preds = %80
  %99 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 4
  %100 = load i16, ptr %99, align 8, !tbaa !61
  %101 = icmp eq i16 %100, 16717
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = icmp eq ptr %37, null
  br i1 %103, label %111, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.ID, ptr %37, i64 0, i32 4
  %106 = load i16, ptr %105, align 8, !tbaa !61
  %107 = icmp eq i16 %106, 16717
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %98
  %109 = phi ptr [ %37, %104 ], [ %36, %98 ]
  call void @RNA_pointer_create(ptr noundef nonnull %109, ptr noundef nonnull @RNA_Material, ptr noundef nonnull %109, ptr noundef nonnull %8) #18
  %110 = call ptr @uiLayoutColumn(ptr noundef %82, i32 noundef 1) #18
  call void @uiLayoutSetScaleX(ptr noundef %110, float noundef 1.500000e+00) #18
  call void @uiItemR(ptr noundef %110, ptr noundef nonnull %8, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  br label %111

111:                                              ; preds = %108, %104, %102
  %112 = icmp eq ptr %38, null
  br i1 %112, label %144, label %113

113:                                              ; preds = %111
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Texture, ptr noundef %2, ptr noundef nonnull %9) #18
  %114 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  %115 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %116 = mul i16 %115, 10
  %117 = call ptr @uiDefButS(ptr noundef %81, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i16 noundef signext %116, i16 noundef signext %115, ptr noundef nonnull %38, float noundef 1.000000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %118 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %119 = load i16, ptr %118, align 8, !tbaa !61
  switch i16 %119, label %136 [
    i16 16717, label %120
    i16 16716, label %124
    i16 20311, label %128
    i16 21324, label %132
  ]

120:                                              ; preds = %113
  %121 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %122 = mul i16 %121, 10
  %123 = call ptr @uiDefButS(ptr noundef %81, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i16 noundef signext %122, i16 noundef signext %121, ptr noundef nonnull %38, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %136

124:                                              ; preds = %113
  %125 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %126 = mul i16 %125, 10
  %127 = call ptr @uiDefButS(ptr noundef %81, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i16 noundef signext %126, i16 noundef signext %125, ptr noundef nonnull %38, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %136

128:                                              ; preds = %113
  %129 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %130 = mul i16 %129, 10
  %131 = call ptr @uiDefButS(ptr noundef %81, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i16 noundef signext %130, i16 noundef signext %129, ptr noundef nonnull %38, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %136

132:                                              ; preds = %113
  %133 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %134 = mul i16 %133, 10
  %135 = call ptr @uiDefButS(ptr noundef %81, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i16 noundef signext %134, i16 noundef signext %133, ptr noundef nonnull %38, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %136

136:                                              ; preds = %113, %124, %132, %128, %120
  %137 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %138 = mul i16 %137, 10
  %139 = call ptr @uiDefButS(ptr noundef %81, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i16 noundef signext %138, i16 noundef signext %137, ptr noundef nonnull %38, float noundef 1.000000e+01, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %140 = load i16, ptr %38, align 2, !tbaa !61
  %141 = icmp eq i16 %140, 1
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %143, ptr noundef nonnull %9, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  br label %144

144:                                              ; preds = %80, %136, %142, %111, %15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetKeepAspect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetDrawExtraFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_preview_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_preview_buttons(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !PGOFuncName !109 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102825984, ptr noundef %1) #18
  br label %6

6:                                                ; preds = %3, %5
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconButS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetScaleX(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefButS(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateColorRamp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.rctf, align 4
  %6 = alloca %struct.PointerRNA, align 8
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #18
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %1, ptr noundef nonnull %7) #18
  %13 = load ptr, ptr %6, align 8, !tbaa.struct !49
  %14 = getelementptr inbounds i8, ptr %6, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa.struct !110
  %16 = getelementptr inbounds i8, ptr %6, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa.struct !111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %12
  %20 = call zeroext i8 @RNA_struct_is_a(ptr noundef %15, ptr noundef nonnull @RNA_ColorRamp) #18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = call ptr %23(i64 noundef 32, ptr noundef nonnull @.str.20) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !49
  %25 = getelementptr inbounds %struct.RNAUpdateCb, ptr %24, i64 0, i32 1
  store ptr %7, ptr %25, align 8, !tbaa !112
  store float 0.000000e+00, ptr %5, align 4, !tbaa !114
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 1.000000e+01
  %29 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  store float %28, ptr %29, align 4, !tbaa !115
  %30 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  store float 0.000000e+00, ptr %30, align 4, !tbaa !116
  %31 = fmul float %27, 1.950000e+01
  %32 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  store float %31, ptr %32, align 4, !tbaa !117
  %33 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #18
  %34 = icmp eq ptr %13, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  %38 = icmp ne ptr %37, null
  %39 = zext i1 %38 to i8
  br label %40

40:                                               ; preds = %35, %22
  %41 = phi i8 [ 0, %22 ], [ %39, %35 ]
  call void @uiBlockSetButLock(ptr noundef %33, i8 noundef zeroext %41, ptr noundef nonnull @.str.7) #18
  call fastcc void @colorband_buttons_layout(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %17, ptr noundef nonnull %5, ptr noundef nonnull %24, i32 noundef %3) #19
  call void @uiBlockClearButLock(ptr noundef %33) #18
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %42(ptr noundef nonnull %24) #18
  br label %43

43:                                               ; preds = %12, %19, %4, %9, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @colorband_buttons_layout(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #1 !PGOFuncName !119 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = tail call fastcc float @BLI_rctf_size_x(ptr noundef %3) #19
  %9 = fdiv float %8, 1.400000e+01
  %10 = load float, ptr %3, align 4, !tbaa !114
  %11 = getelementptr inbounds %struct.rctf, ptr %3, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  %13 = load ptr, ptr %4, align 8, !tbaa !120
  call void @RNA_pointer_create(ptr noundef %13, ptr noundef nonnull @RNA_ColorRamp, ptr noundef %2, ptr noundef nonnull %7) #18
  %14 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD99999A0000000, i32 noundef 0) #18
  call void @uiBlockSetEmboss(ptr noundef %1, i8 noundef zeroext 1) #18
  call void @uiBlockBeginAlign(ptr noundef %1) #18
  %15 = call ptr @uiLayoutRow(ptr noundef %14, i32 noundef 0) #18
  %16 = fmul float %9, 2.000000e+00
  %17 = fptosi float %16 to i16
  %18 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %19 = call ptr @uiDefIconTextBut(ptr noundef %1, i32 noundef 512, i32 noundef 0, i32 noundef 31, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %17, i16 noundef signext %18, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.144) #18
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %21 = call ptr %20(ptr noundef nonnull %4) #18
  call void @uiButSetNFunc(ptr noundef %19, ptr noundef nonnull @colorband_add_cb, ptr noundef %21, ptr noundef %2) #18
  %22 = call float @llvm.fmuladd.f32(float %9, float 2.000000e+00, float %10)
  %23 = fptosi float %22 to i32
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %25 = sitofp i16 %24 to float
  %26 = fadd float %12, %25
  %27 = fptosi float %26 to i32
  %28 = call ptr @uiDefIconTextBut(ptr noundef %1, i32 noundef 512, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %23, i32 noundef %27, i16 noundef signext %17, i16 noundef signext %24, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.145) #18
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %30 = call ptr %29(ptr noundef nonnull %4) #18
  call void @uiButSetNFunc(ptr noundef %28, ptr noundef nonnull @colorband_del_cb, ptr noundef %30, ptr noundef %2) #18
  %31 = call float @llvm.fmuladd.f32(float %9, float 4.000000e+00, float %10)
  %32 = fptosi float %31 to i32
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %34 = sitofp i16 %33 to float
  %35 = fadd float %12, %34
  %36 = fptosi float %35 to i32
  %37 = call ptr @uiDefIconTextBut(ptr noundef %1, i32 noundef 512, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str.3, i32 noundef %32, i32 noundef %36, i16 noundef signext %17, i16 noundef signext %33, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.146) #18
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %39 = call ptr %38(ptr noundef nonnull %4) #18
  call void @uiButSetNFunc(ptr noundef %37, ptr noundef nonnull @colorband_flip_cb, ptr noundef %39, ptr noundef %2) #18
  call void @uiBlockEndAlign(ptr noundef %1) #18
  call void @uiBlockSetEmboss(ptr noundef %1, i8 noundef zeroext 0) #18
  %40 = call ptr @uiLayoutRow(ptr noundef %14, i32 noundef 0) #18
  call void @uiBlockBeginAlign(ptr noundef %1) #18
  call void @uiItemR(ptr noundef %40, ptr noundef nonnull %7, ptr noundef nonnull @.str.147, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %41 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 4
  %42 = load i8, ptr %41, align 2, !tbaa !121
  %43 = add i8 %42, -1
  %44 = icmp ult i8 %43, 2
  %45 = select i1 %44, ptr @.str.148, ptr @.str.149
  call void @uiItemR(ptr noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %45, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  call void @uiBlockEndAlign(ptr noundef %1) #18
  %46 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %47 = fptosi float %10 to i32
  %48 = fptosi float %12 to i32
  %49 = call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %3) #19
  %50 = fptosi float %49 to i16
  %51 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %52 = call ptr @uiDefBut(ptr noundef %1, i32 noundef 15360, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %47, i32 noundef %48, i16 noundef signext %50, i16 noundef signext %51, ptr noundef nonnull %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %53 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %54 = call ptr %53(ptr noundef nonnull %4) #18
  call void @uiButSetNFunc(ptr noundef %52, ptr noundef nonnull @rna_update_cb, ptr noundef %54, ptr noundef null) #18
  %55 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %56 = load i16, ptr %2, align 4, !tbaa !122
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %102, label %58

58:                                               ; preds = %6
  %59 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6
  %60 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !123
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds %struct.CBData, ptr %59, i64 %62
  %64 = load ptr, ptr %4, align 8, !tbaa !120
  call void @RNA_pointer_create(ptr noundef %64, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef nonnull %63, ptr noundef nonnull %7) #18
  %65 = icmp eq i32 %5, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD3333340000000, i32 noundef 0) #18
  %68 = call ptr @uiLayoutRow(ptr noundef %67, i32 noundef 0) #18
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %70 = mul i16 %69, 5
  %71 = load i16, ptr %2, align 4, !tbaa !122
  %72 = icmp slt i16 %71, 1
  %73 = add nsw i16 %71, -1
  %74 = sitofp i16 %73 to float
  %75 = select i1 %72, float 0.000000e+00, float %74
  %76 = call ptr @uiDefButS(ptr noundef %1, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %70, i16 noundef signext %69, ptr noundef nonnull %60, float noundef 0.000000e+00, float noundef %75, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.150) #18
  %77 = call ptr @uiLayoutRow(ptr noundef %67, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %77, ptr noundef nonnull %7, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef nonnull @.str.152, i32 noundef 0) #18
  %78 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !124
  call void @uiButSetFunc(ptr noundef %79, ptr noundef nonnull @colorband_update_cb, ptr noundef %79, ptr noundef nonnull %2) #18
  br label %95

80:                                               ; preds = %58
  %81 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #18
  %82 = call ptr @uiLayoutSplit(ptr noundef %81, float noundef 0x3FD6666660000000, i32 noundef 0) #18
  %83 = call ptr @uiLayoutRow(ptr noundef %82, i32 noundef 0) #18
  %84 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %85 = mul i16 %84, 5
  %86 = load i16, ptr %2, align 4, !tbaa !122
  %87 = icmp slt i16 %86, 1
  %88 = add nsw i16 %86, -1
  %89 = sitofp i16 %88 to float
  %90 = select i1 %87, float 0.000000e+00, float %89
  %91 = call ptr @uiDefButS(ptr noundef %1, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %85, i16 noundef signext %84, ptr noundef nonnull %60, float noundef 0.000000e+00, float noundef %90, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.150) #18
  %92 = call ptr @uiLayoutRow(ptr noundef %82, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %92, ptr noundef nonnull %7, ptr noundef nonnull @.str.151, i32 noundef 4, ptr noundef nonnull @.str.152, i32 noundef 0) #18
  %93 = getelementptr inbounds %struct.uiBlock, ptr %1, i64 0, i32 2, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !124
  call void @uiButSetFunc(ptr noundef %94, ptr noundef nonnull @colorband_update_cb, ptr noundef %94, ptr noundef nonnull %2) #18
  br label %95

95:                                               ; preds = %80, %66
  %96 = phi ptr [ %0, %66 ], [ %81, %80 ]
  %97 = phi ptr [ %78, %66 ], [ %93, %80 ]
  %98 = call ptr @uiLayoutRow(ptr noundef %96, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %98, ptr noundef nonnull %7, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %99 = load ptr, ptr %97, align 8, !tbaa !124
  %100 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %101 = call ptr %100(ptr noundef nonnull %4) #18
  call void @uiButSetNFunc(ptr noundef %99, ptr noundef nonnull @rna_update_cb, ptr noundef %101, ptr noundef null) #18
  br label %102

102:                                              ; preds = %95, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  ret void
}

; Function Attrs: optsize
declare void @uiBlockClearButLock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateIconView(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @RNA_property_type(ptr noundef nonnull %4) #18
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = tail call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef nonnull %4) #18
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str.20) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !49
  %13 = getelementptr inbounds %struct.RNAUpdateCb, ptr %12, i64 0, i32 1
  store ptr %4, ptr %13, align 8, !tbaa !112
  %14 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #18
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %16 = tail call ptr %15(ptr noundef %12) #18
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %18 = mul i16 %17, 6
  %19 = tail call ptr @uiDefBlockButN(ptr noundef %14, ptr noundef nonnull @icon_view_menu, ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %18, i16 noundef signext %18, ptr noundef nonnull @.str.3) #18
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 44
  store i32 %10, ptr %20, align 8, !tbaa !128
  tail call void @uiButSetFlag(ptr noundef %19, i32 noundef 136) #18
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %22 = tail call ptr %21(ptr noundef %12) #18
  tail call void @uiButSetNFunc(ptr noundef %19, ptr noundef nonnull @rna_update_cb, ptr noundef %22, ptr noundef null) #18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef %12) #18
  br label %24

24:                                               ; preds = %3, %6, %9
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefBlockButN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @icon_view_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !129 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @icon_view_menu.cb, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !130
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, i16 noundef signext 0) #18
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 3) #18
  %7 = load ptr, ptr getelementptr inbounds (%struct.RNAUpdateCb, ptr @icon_view_menu.cb, i64 0, i32 1), align 8, !tbaa !112
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef nonnull @icon_view_menu.cb, ptr noundef %7, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %3, %12
  %13 = phi i64 [ %29, %12 ], [ 0, %3 ]
  %14 = phi ptr [ %30, %12 ], [ %8, %3 ]
  %15 = trunc i64 %13 to i32
  %16 = and i32 %15, 7
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, 5
  %20 = mul nsw i32 %19, %16
  %21 = lshr i32 %15, 3
  %22 = mul i32 %19, %21
  %23 = getelementptr inbounds %struct.EnumPropertyItem, ptr %14, i64 %13, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !133
  %25 = mul i16 %17, 5
  %26 = load ptr, ptr getelementptr inbounds (%struct.RNAUpdateCb, ptr @icon_view_menu.cb, i64 0, i32 1), align 8, !tbaa !112
  %27 = sitofp i32 %24 to float
  %28 = call ptr @uiDefIconButR_prop(ptr noundef %6, i32 noundef 1024, i32 noundef 0, i32 noundef %24, i32 noundef %20, i32 noundef %22, i16 noundef signext %25, i16 noundef signext %25, ptr noundef nonnull @icon_view_menu.cb, ptr noundef %26, i32 noundef -1, float noundef 0.000000e+00, float noundef %27, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #18
  call void @uiButSetFlag(ptr noundef %28, i32 noundef 136) #18
  %29 = add nuw i64 %13, 1
  %30 = load ptr, ptr %4, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.EnumPropertyItem, ptr %30, i64 %29, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !131
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12, !llvm.loop !134

34:                                               ; preds = %12, %3
  %35 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %36 = sitofp i16 %35 to float
  %37 = fmul float %36, 0x3FD3333340000000
  %38 = fptosi float %37 to i32
  call void @uiBoundsBlock(ptr noundef %6, i32 noundef %38) #18
  call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 1) #18
  %39 = load i8, ptr %5, align 1, !tbaa !58
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %43 = load ptr, ptr %4, align 8, !tbaa !34
  call void %42(ptr noundef %43) #18
  br label %44

44:                                               ; preds = %41, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret ptr %6
}

; Function Attrs: optsize
declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !135 {
  %4 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateHistogram(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #18
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #18
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !110
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa.struct !111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %10
  %17 = call zeroext i8 @RNA_struct_is_a(ptr noundef %12, ptr noundef nonnull @RNA_Histogram) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Histogram, ptr %14, i64 0, i32 11
  %21 = load i32, ptr %20, align 4, !tbaa !136
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = mul nsw i32 %23, 20
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %23, %19 ], [ %26, %25 ]
  store i32 %29, ptr %20, align 4, !tbaa !136
  br label %30

30:                                               ; preds = %28, %25
  %31 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  %32 = call ptr @uiLayoutGetBlock(ptr noundef %31) #18
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %34 = mul i16 %33, 10
  %35 = load i32, ptr %20, align 4, !tbaa !136
  %36 = trunc i32 %35 to i16
  %37 = call ptr @uiDefBut(ptr noundef %32, i32 noundef 24576, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %36, ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %39 = mul i16 %38, 10
  %40 = sitofp i16 %38 to float
  %41 = fmul float %40, 0x3FD3333340000000
  %42 = fptosi float %41 to i16
  %43 = fmul float %40, 2.000000e+01
  %44 = call ptr @uiDefIconButI(ptr noundef %32, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %42, ptr noundef nonnull %20, float noundef %40, float noundef %43, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %45

45:                                               ; preds = %10, %16, %3, %7, %30
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateWaveform(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #18
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #18
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !110
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa.struct !111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %10
  %17 = call zeroext i8 @RNA_struct_is_a(ptr noundef %12, ptr noundef nonnull @RNA_Scopes) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  %21 = call ptr @uiLayoutGetBlock(ptr noundef %20) #18
  %22 = getelementptr inbounds %struct.Scopes, ptr %14, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !138
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %25 = sext i16 %24 to i32
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = mul nsw i32 %25, 20
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %19
  %31 = phi i32 [ %25, %19 ], [ %28, %27 ]
  store i32 %31, ptr %22, align 4, !tbaa !138
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %23, %27 ], [ %31, %30 ]
  %34 = mul i16 %24, 10
  %35 = trunc i32 %33 to i16
  %36 = call ptr @uiDefBut(ptr noundef %21, i32 noundef 25088, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %35, ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %38 = mul i16 %37, 10
  %39 = sitofp i16 %37 to float
  %40 = fmul float %39, 0x3FD3333340000000
  %41 = fptosi float %40 to i16
  %42 = fmul float %39, 2.000000e+01
  %43 = call ptr @uiDefIconButI(ptr noundef %21, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %38, i16 noundef signext %41, ptr noundef nonnull %22, float noundef %39, float noundef %42, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %44

44:                                               ; preds = %10, %16, %3, %7, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateVectorscope(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #18
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #18
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !110
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa.struct !111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %10
  %17 = call zeroext i8 @RNA_struct_is_a(ptr noundef %12, ptr noundef nonnull @RNA_Scopes) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Scopes, ptr %14, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !140
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = mul nsw i32 %23, 20
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %23, %19 ], [ %26, %25 ]
  store i32 %29, ptr %20, align 4, !tbaa !140
  br label %30

30:                                               ; preds = %28, %25
  %31 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  %32 = call ptr @uiLayoutGetBlock(ptr noundef %31) #18
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %34 = mul i16 %33, 10
  %35 = load i32, ptr %20, align 4, !tbaa !140
  %36 = trunc i32 %35 to i16
  %37 = call ptr @uiDefBut(ptr noundef %32, i32 noundef 25600, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %36, ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %39 = mul i16 %38, 10
  %40 = sitofp i16 %38 to float
  %41 = fmul float %40, 0x3FD3333340000000
  %42 = fptosi float %41 to i16
  %43 = fmul float %40, 2.000000e+01
  %44 = call ptr @uiDefIconButI(ptr noundef %32, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %42, ptr noundef nonnull %20, float noundef %40, float noundef %43, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %45

45:                                               ; preds = %10, %16, %3, %7, %30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #20
  %10 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @RNA_struct_identifier(ptr noundef %14) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.uiTemplateCurveMapping, ptr noundef %15, ptr noundef %2) #18
  br label %47

16:                                               ; preds = %7
  %17 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #18
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call ptr @RNA_struct_identifier(ptr noundef %21) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.uiTemplateCurveMapping, ptr noundef %22, ptr noundef %2) #18
  br label %47

23:                                               ; preds = %16
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %1, ptr noundef nonnull %9) #18
  %24 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !60
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = call zeroext i8 @RNA_struct_is_a(ptr noundef %29, ptr noundef nonnull @RNA_CurveMapping) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = call ptr %33(i64 noundef 32, ptr noundef nonnull @.str.20) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !49
  %35 = getelementptr inbounds %struct.RNAUpdateCb, ptr %34, i64 0, i32 1
  store ptr %9, ptr %35, align 8, !tbaa !112
  %36 = load ptr, ptr %8, align 8, !tbaa !59
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  %41 = icmp ne ptr %40, null
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i8 [ 0, %32 ], [ %42, %38 ]
  call void @uiBlockSetButLock(ptr noundef %10, i8 noundef zeroext %44, ptr noundef nonnull @.str.7) #18
  %45 = trunc i32 %3 to i8
  call fastcc void @curvemap_buttons_layout(ptr noundef %0, ptr noundef nonnull %8, i8 noundef zeroext %45, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %34) #19
  call void @uiBlockClearButLock(ptr noundef %10) #18
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %46(ptr noundef nonnull %34) #18
  br label %47

47:                                               ; preds = %23, %27, %43, %19, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @curvemap_buttons_layout(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #1 !PGOFuncName !141 {
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !142
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 %12
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %15 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  %16 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  switch i8 %2, label %80 [
    i8 118, label %17
    i8 99, label %36
    i8 104, label %61
  ]

17:                                               ; preds = %7
  %18 = tail call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #18
  tail call void @uiLayoutSetAlignment(ptr noundef %18, i8 noundef zeroext 1) #18
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %23, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 1, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !144
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.157, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %29, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %30

30:                                               ; preds = %28, %24
  %31 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 2, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !144
  %33 = icmp eq ptr %32, null
  br i1 %33, label %81, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.158, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %35, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %81

36:                                               ; preds = %7
  %37 = tail call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #18
  tail call void @uiLayoutSetAlignment(ptr noundef %37, i8 noundef zeroext 1) #18
  %38 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 3, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !144
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.159, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 3.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %42, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %43

43:                                               ; preds = %41, %36
  %44 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !144
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.160, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %48, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 1, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !144
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.161, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %54, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 2, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !144
  %58 = icmp eq ptr %57, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.162, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %60, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %81

61:                                               ; preds = %7
  %62 = tail call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #18
  tail call void @uiLayoutSetAlignment(ptr noundef %62, i8 noundef zeroext 1) #18
  %63 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !144
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.163, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %67, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %68

68:                                               ; preds = %66, %61
  %69 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 1, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !144
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.164, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %73, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 2, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !144
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = tail call ptr @uiDefButI(ptr noundef %15, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.165, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %79, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #18
  br label %81

80:                                               ; preds = %7
  tail call void @uiLayoutSetAlignment(ptr noundef %16, i8 noundef zeroext 3) #18
  br label %81

81:                                               ; preds = %59, %55, %74, %78, %80, %30, %34
  %82 = icmp eq i8 %2, 104
  %83 = select i1 %82, float 3.000000e+00, float -1.000000e+00
  %84 = tail call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 1) #18
  tail call void @uiBlockSetEmboss(ptr noundef %15, i8 noundef zeroext 1) #18
  %85 = tail call ptr @uiDefIconBut(ptr noundef %15, i32 noundef 512, i32 noundef 0, i32 noundef 31, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.166) #18
  tail call void @uiButSetFunc(ptr noundef %85, ptr noundef nonnull @curvemap_buttons_zoom_in, ptr noundef nonnull %9, ptr noundef null) #18
  %86 = tail call ptr @uiDefIconBut(ptr noundef %15, i32 noundef 512, i32 noundef 0, i32 noundef 32, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.167) #18
  tail call void @uiButSetFunc(ptr noundef %86, ptr noundef nonnull @curvemap_buttons_zoom_out, ptr noundef nonnull %9, ptr noundef null) #18
  %87 = icmp eq i32 %4, 0
  %88 = icmp eq i32 %5, 0
  %89 = select i1 %88, ptr @curvemap_tools_posslope_func, ptr @curvemap_tools_negslope_func
  %90 = select i1 %87, ptr %89, ptr @curvemap_brush_tools_func
  %91 = tail call ptr @uiDefIconBlockBut(ptr noundef %15, ptr noundef nonnull %90, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 442, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull @.str.168) #18
  %92 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %93 = tail call ptr %92(ptr noundef %6) #18
  tail call void @uiButSetNFunc(ptr noundef %91, ptr noundef nonnull @rna_update_cb, ptr noundef %93, ptr noundef null) #18
  %94 = load i32, ptr %9, align 8, !tbaa !146
  %95 = and i32 %94, 1
  %96 = or disjoint i32 %95, 588
  %97 = tail call ptr @uiDefIconBlockBut(ptr noundef %15, ptr noundef nonnull @curvemap_clipping_func, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %96, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef nonnull @.str.169) #18
  %98 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %99 = tail call ptr %98(ptr noundef %6) #18
  tail call void @uiButSetNFunc(ptr noundef %97, ptr noundef nonnull @rna_update_cb, ptr noundef %99, ptr noundef null) #18
  %100 = tail call ptr @uiDefIconBut(ptr noundef %15, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %14, i16 noundef signext %14, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.170) #18
  %101 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %102 = tail call ptr %101(ptr noundef %6) #18
  tail call void @uiButSetNFunc(ptr noundef %100, ptr noundef nonnull @curvemap_buttons_delete, ptr noundef %102, ptr noundef nonnull %9) #18
  tail call void @uiBlockSetEmboss(ptr noundef %15, i8 noundef zeroext 0) #18
  %103 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %104 = tail call ptr %103(ptr noundef %6) #18
  tail call void @uiBlockSetNFunc(ptr noundef %15, ptr noundef nonnull @rna_update_cb, ptr noundef %104, ptr noundef null) #18
  %105 = tail call i32 @uiLayoutGetWidth(ptr noundef %0) #18
  %106 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %107 = trunc i32 %105 to i16
  %108 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %109 = shl i16 %108, 3
  %110 = tail call ptr @uiDefBut(ptr noundef %15, i32 noundef 16384, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %107, i16 noundef signext %109, ptr noundef nonnull %9, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %83, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %111 = load i16, ptr %13, align 8, !tbaa !147
  %112 = icmp sgt i16 %111, 0
  br i1 %112, label %113, label %158

113:                                              ; preds = %81
  %114 = zext nneg i16 %111 to i64
  %115 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 6, i64 %12, i32 7
  %116 = load ptr, ptr %115, align 8, !tbaa !144
  br label %120

117:                                              ; preds = %120
  %118 = add nuw nsw i64 %121, 1
  %119 = icmp eq i64 %118, %114
  br i1 %119, label %158, label %120, !llvm.loop !148

120:                                              ; preds = %113, %117
  %121 = phi i64 [ 0, %113 ], [ %118, %117 ]
  %122 = getelementptr inbounds %struct.CurveMapPoint, ptr %116, i64 %121, i32 2
  %123 = load i16, ptr %122, align 4, !tbaa !149
  %124 = and i16 %123, 1
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %117, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.CurveMapPoint, ptr %116, i64 %121
  %128 = load i32, ptr %9, align 8, !tbaa !146
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 5
  %133 = load float, ptr %132, align 8, !tbaa.struct !151
  %134 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 5, i32 1
  %135 = load float, ptr %134, align 4, !tbaa.struct !153
  %136 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 5, i32 2
  %137 = load float, ptr %136, align 8, !tbaa.struct !154
  %138 = getelementptr inbounds %struct.CurveMapping, ptr %9, i64 0, i32 5, i32 3
  %139 = load float, ptr %138, align 4, !tbaa.struct !155
  br label %140

140:                                              ; preds = %126, %131
  %141 = phi float [ %139, %131 ], [ 1.000000e+03, %126 ]
  %142 = phi float [ %137, %131 ], [ -1.000000e+03, %126 ]
  %143 = phi float [ %135, %131 ], [ 1.000000e+03, %126 ]
  %144 = phi float [ %133, %131 ], [ -1.000000e+03, %126 ]
  %145 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  %146 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %147 = tail call ptr %146(ptr noundef %6) #18
  tail call void @uiBlockSetNFunc(ptr noundef %15, ptr noundef nonnull @curvemap_buttons_update, ptr noundef %147, ptr noundef nonnull %9) #18
  %148 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %149 = sext i16 %148 to i32
  %150 = shl nsw i32 %149, 1
  %151 = mul i16 %148, 10
  %152 = tail call ptr @uiDefButF(ptr noundef %15, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef %150, i16 noundef signext %151, i16 noundef signext %148, ptr noundef nonnull %127, float noundef %144, float noundef %143, float noundef 1.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #18
  %153 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %154 = sext i16 %153 to i32
  %155 = mul i16 %153, 10
  %156 = getelementptr inbounds %struct.CurveMapPoint, ptr %116, i64 %121, i32 1
  %157 = tail call ptr @uiDefButF(ptr noundef %15, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.157, i32 noundef 0, i32 noundef %154, i16 noundef signext %155, i16 noundef signext %153, ptr noundef nonnull %156, float noundef %142, float noundef %141, float noundef 1.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %158

158:                                              ; preds = %117, %81, %140
  %159 = icmp eq i32 %3, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %158
  %161 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #18
  %162 = tail call ptr @uiLayoutColumn(ptr noundef %161, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %162, ptr noundef %1, ptr noundef nonnull @.str.171, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %163 = tail call ptr @uiLayoutColumn(ptr noundef %161, i32 noundef 0) #18
  tail call void @uiItemR(ptr noundef %163, ptr noundef %1, ptr noundef nonnull @.str.172, i32 noundef 2, ptr noundef null, i32 noundef 0) #18
  %164 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  %165 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %166 = mul i16 %165, 10
  %167 = tail call ptr @uiDefBut(ptr noundef %15, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.173, i32 noundef 0, i32 noundef 0, i16 noundef signext %166, i16 noundef signext %165, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.174) #18
  %168 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %169 = tail call ptr %168(ptr noundef %6) #18
  tail call void @uiButSetNFunc(ptr noundef %167, ptr noundef nonnull @curvemap_buttons_reset, ptr noundef %169, ptr noundef nonnull %9) #18
  br label %170

170:                                              ; preds = %160, %158
  tail call void @uiBlockSetNFunc(ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [4 x float], align 16
  %13 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %14 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call ptr @RNA_struct_identifier(ptr noundef %18) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.uiTemplateColorPicker, ptr noundef %19, ptr noundef %2) #18
  br label %95

20:                                               ; preds = %7
  call void @RNA_property_float_ui_range(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #18
  %21 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  %22 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #18
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !156
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %25 = mul i16 %24, 5
  switch i16 %23, label %32 [
    i16 1, label %26
    i16 2, label %28
    i16 3, label %30
  ]

26:                                               ; preds = %20
  %27 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %34

28:                                               ; preds = %20
  %29 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %34

30:                                               ; preds = %20
  %31 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %34

32:                                               ; preds = %20
  %33 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 22016, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %34

34:                                               ; preds = %32, %30, %28, %26
  %35 = phi ptr [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  %36 = icmp eq i32 %4, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = or i32 %39, 4096
  store i32 %40, ptr %38, align 8, !tbaa !40
  br label %41

41:                                               ; preds = %37, %34
  %42 = icmp eq i32 %5, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #20
  %44 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !40
  %46 = or i32 %45, 4194304
  store i32 %46, ptr %44, align 8, !tbaa !40
  call void @RNA_property_float_get_array(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %12) #18
  %47 = call fastcc float @len_v3(ptr noundef nonnull %12) #19
  %48 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 25
  store float %47, ptr %48, align 4, !tbaa !157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #20
  br label %49

49:                                               ; preds = %43, %41
  %50 = icmp eq i32 %6, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !40
  %54 = or i32 %53, 8388608
  store i32 %54, ptr %52, align 8, !tbaa !40
  br label %55

55:                                               ; preds = %51, %49
  %56 = icmp eq i32 %3, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %55
  %58 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !156
  switch i16 %58, label %86 [
    i16 4, label %59
    i16 1, label %68
    i16 2, label %74
    i16 3, label %80
  ]

59:                                               ; preds = %57
  call void @uiItemS(ptr noundef %22) #18
  %60 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %61 = sext i16 %60 to i32
  %62 = mul nsw i32 %61, 5
  %63 = add nsw i32 %62, 6
  %64 = trunc i32 %62 to i16
  %65 = load float, ptr %8, align 4, !tbaa !152
  %66 = load float, ptr %9, align 4, !tbaa !152
  %67 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %63, i32 noundef 0, i16 noundef signext 14, i16 noundef signext %64, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %65, float noundef %66, float noundef 1.000000e+01, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %95

68:                                               ; preds = %57
  call void @uiItemS(ptr noundef %21) #18
  %69 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %70 = mul i16 %69, 5
  %71 = load float, ptr %8, align 4, !tbaa !152
  %72 = load float, ptr %9, align 4, !tbaa !152
  %73 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 4, i16 noundef signext %70, i16 noundef signext 18, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %71, float noundef %72, float noundef 3.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %95

74:                                               ; preds = %57
  call void @uiItemS(ptr noundef %21) #18
  %75 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %76 = mul i16 %75, 5
  %77 = load float, ptr %8, align 4, !tbaa !152
  %78 = load float, ptr %9, align 4, !tbaa !152
  %79 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 4, i16 noundef signext %76, i16 noundef signext 18, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %77, float noundef %78, float noundef 5.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %95

80:                                               ; preds = %57
  call void @uiItemS(ptr noundef %21) #18
  %81 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %82 = mul i16 %81, 5
  %83 = load float, ptr %8, align 4, !tbaa !152
  %84 = load float, ptr %9, align 4, !tbaa !152
  %85 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 4, i16 noundef signext %82, i16 noundef signext 18, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %83, float noundef %84, float noundef 4.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %95

86:                                               ; preds = %57
  call void @uiItemS(ptr noundef %22) #18
  %87 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %88 = sext i16 %87 to i32
  %89 = mul nsw i32 %88, 5
  %90 = add nsw i32 %89, 6
  %91 = trunc i32 %89 to i16
  %92 = load float, ptr %8, align 4, !tbaa !152
  %93 = load float, ptr %9, align 4, !tbaa !152
  %94 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %90, i32 noundef 0, i16 noundef signext 14, i16 noundef signext %91, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %92, float noundef %93, float noundef 9.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %95

95:                                               ; preds = %55, %86, %80, %74, %68, %59, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  ret void
}

; Function Attrs: optsize
declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !158 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #19
  %3 = tail call float @sqrtf(float noundef %2) #18
  ret float %3
}

; Function Attrs: optsize
declare void @uiItemS(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplatePalette(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %8 = tail call i32 @uiLayoutGetWidth(ptr noundef %0) #18
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %10 = sext i16 %9 to i32
  %11 = sdiv i32 %8, %10
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @uiLayoutGetWidth(ptr noundef %0) #18
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %16 = sext i16 %15 to i32
  %17 = sdiv i32 %14, %16
  br label %18

18:                                               ; preds = %4, %13
  %19 = phi i32 [ %17, %13 ], [ 1, %4 ]
  %20 = icmp eq ptr %7, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = tail call ptr @RNA_struct_identifier(ptr noundef %23) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.uiTemplatePalette, ptr noundef %24, ptr noundef %2) #18
  br label %63

25:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef nonnull %7) #18
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  %27 = load ptr, ptr %26, align 8, !tbaa.struct !110
  %28 = getelementptr inbounds i8, ptr %5, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa.struct !111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  %30 = icmp eq ptr %29, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  %32 = call zeroext i8 @RNA_struct_is_a(ptr noundef %27, ptr noundef nonnull @RNA_Palette) #18
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  call void @BKE_palette_cleanup(ptr noundef nonnull %29) #18
  %36 = getelementptr inbounds %struct.Palette, ptr %29, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  %38 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  %39 = call ptr @uiLayoutRow(ptr noundef %38, i32 noundef 1) #18
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %41 = call ptr @uiDefIconButO(ptr noundef %35, i32 noundef 512, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 31, i32 noundef 0, i32 noundef 0, i16 noundef signext %40, i16 noundef signext %40, ptr noundef null) #18
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %43 = call ptr @uiDefIconButO(ptr noundef %35, i32 noundef 512, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 32, i32 noundef 0, i32 noundef 0, i16 noundef signext %42, i16 noundef signext %42, ptr noundef null) #18
  %44 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  %45 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #18
  %46 = icmp eq ptr %37, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %34, %54
  %48 = phi ptr [ %61, %54 ], [ %37, %34 ]
  %49 = phi i32 [ %60, %54 ], [ 0, %34 ]
  %50 = phi i32 [ %59, %54 ], [ 0, %34 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %51 = icmp slt i32 %50, %19
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #18
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ 0, %52 ], [ %50, %47 ]
  call void @RNA_pointer_create(ptr noundef nonnull %29, ptr noundef nonnull @RNA_PaletteColor, ptr noundef nonnull %48, ptr noundef nonnull %6) #18
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %57 = sitofp i32 %49 to float
  %58 = call ptr @uiDefButR(ptr noundef %35, i32 noundef 7680, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %56, i16 noundef signext %56, ptr noundef nonnull %6, ptr noundef nonnull @.str.26, i32 noundef -1, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+01, float noundef %57, ptr noundef nonnull @.str.3) #18
  %59 = add nsw i32 %55, 1
  %60 = add nuw nsw i32 %49, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  %61 = load ptr, ptr %48, align 8, !tbaa !161
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %47, !llvm.loop !163

63:                                               ; preds = %54, %34, %25, %31, %21
  ret void
}

; Function Attrs: optsize
declare i32 @uiLayoutGetWidth(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_palette_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateLayers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = tail call ptr @RNA_struct_identifier(ptr noundef %11) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.uiTemplateLayers, ptr noundef %12, ptr noundef %2) #18
  br label %90

13:                                               ; preds = %6
  %14 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef nonnull %7) #18
  %15 = sdiv i32 %14, 2
  %16 = srem i32 %14, 2
  %17 = add nsw i32 %15, %16
  %18 = icmp slt i32 %17, 10
  %19 = udiv i32 %17, 5
  %20 = select i1 %18, i32 1, i32 %19
  %21 = icmp ne ptr %3, null
  %22 = icmp ne ptr %4, null
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %13
  %25 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = tail call ptr @RNA_struct_identifier(ptr noundef %29) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.uiTemplateLayers, ptr noundef %30, ptr noundef nonnull %4) #18
  br label %90

31:                                               ; preds = %24
  %32 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef nonnull %25) #18
  %33 = icmp slt i32 %32, %14
  %34 = select i1 %33, ptr null, ptr %25
  br label %35

35:                                               ; preds = %31, %13
  %36 = phi ptr [ null, %13 ], [ %34, %31 ]
  %37 = icmp eq i32 %20, 0
  br i1 %37, label %90, label %38

38:                                               ; preds = %35
  %39 = icmp eq ptr %36, null
  %40 = mul nuw i32 %20, 5
  br label %41

41:                                               ; preds = %38, %86
  %42 = phi i32 [ 0, %38 ], [ %88, %86 ]
  %43 = phi i32 [ 0, %38 ], [ %87, %86 ]
  %44 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  br label %45

45:                                               ; preds = %41, %84
  %46 = phi i32 [ %42, %41 ], [ %85, %84 ]
  %47 = phi i1 [ true, %41 ], [ false, %84 ]
  %48 = phi i32 [ 0, %41 ], [ 1, %84 ]
  %49 = tail call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #18
  %50 = tail call ptr @uiLayoutGetBlock(ptr noundef %49) #18
  %51 = mul nuw nsw i32 %48, %20
  %52 = add nuw nsw i32 %51, %43
  %53 = mul i32 %52, 5
  %54 = icmp slt i32 %53, %14
  br i1 %54, label %55, label %84

55:                                               ; preds = %45
  %56 = zext i32 %46 to i64
  br label %57

57:                                               ; preds = %55, %70
  %58 = phi i64 [ %56, %55 ], [ %79, %70 ]
  %59 = phi i32 [ 0, %55 ], [ %78, %70 ]
  %60 = trunc i64 %58 to i32
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %5
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %63, i1 true, i1 %39
  %65 = select i1 %63, i32 644, i32 0
  br i1 %64, label %70, label %66

66:                                               ; preds = %57
  %67 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %3, ptr noundef nonnull %36, i32 noundef %60) #18
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 0, i32 643
  br label %70

70:                                               ; preds = %57, %66
  %71 = phi i32 [ %65, %57 ], [ %69, %66 ]
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %73 = sdiv i16 %72, 2
  %74 = sext i16 %73 to i32
  %75 = tail call ptr @uiDefAutoButR(ptr noundef %50, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %60, ptr noundef nonnull @.str.3, i32 noundef %71, i32 noundef 0, i32 noundef 0, i32 noundef %74, i32 noundef %74) #18
  %76 = inttoptr i64 %58 to ptr
  tail call void @uiButSetFunc(ptr noundef %75, ptr noundef nonnull @handle_layer_buttons, ptr noundef %75, ptr noundef %76) #18
  %77 = getelementptr inbounds %struct.uiBut, ptr %75, i64 0, i32 4
  store i32 1536, ptr %77, align 8, !tbaa !164
  %78 = add nuw nsw i32 %59, 1
  %79 = add nuw nsw i64 %58, 1
  %80 = icmp ult i32 %59, 4
  %81 = trunc i64 %79 to i32
  %82 = icmp sgt i32 %14, %81
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %57, label %84, !llvm.loop !165

84:                                               ; preds = %70, %45
  %85 = add i32 %46, %40
  br i1 %47, label %45, label %86, !llvm.loop !166

86:                                               ; preds = %84
  %87 = add nuw nsw i32 %43, 1
  %88 = add i32 %42, 5
  %89 = icmp eq i32 %87, %20
  br i1 %89, label %90, label %41, !llvm.loop !167

90:                                               ; preds = %86, %35, %27, %9
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_layer_buttons(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !168 {
  %4 = ptrtoint ptr %2 to i64
  %5 = trunc i64 %4 to i32
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !169
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 17
  %10 = load i16, ptr %9, align 8, !tbaa !171
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %13, ptr noundef %15) #18
  %17 = load ptr, ptr %14, align 8, !tbaa !173
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %13, ptr noundef %17, i32 noundef %5, i32 noundef 1) #18
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12, %24
  %20 = phi i32 [ %25, %24 ], [ 0, %12 ]
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 8, !tbaa !173
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %13, ptr noundef %23, i32 noundef %20, i32 noundef 0) #18
  br label %24

24:                                               ; preds = %19, %22
  %25 = add nuw nsw i32 %20, 1
  %26 = icmp eq i32 %25, %16
  br i1 %26, label %27, label %19, !llvm.loop !174

27:                                               ; preds = %24, %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateGameStates(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = load ptr, ptr %1, align 8, !tbaa !59
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %1, ptr noundef %2) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call ptr @RNA_struct_identifier(ptr noundef %12) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.uiTemplateGameStates, ptr noundef %13, ptr noundef %2) #18
  br label %92

14:                                               ; preds = %6
  %15 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %1, ptr noundef nonnull %8) #18
  %16 = sdiv i32 %15, 2
  %17 = srem i32 %15, 2
  %18 = add nsw i32 %16, %17
  %19 = icmp slt i32 %18, 10
  %20 = udiv i32 %18, 5
  %21 = select i1 %19, i32 1, i32 %20
  %22 = icmp ne ptr %3, null
  %23 = icmp ne ptr %4, null
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %14
  %26 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = tail call ptr @RNA_struct_identifier(ptr noundef %30) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.uiTemplateGameStates, ptr noundef %31, ptr noundef nonnull %4) #18
  br label %92

32:                                               ; preds = %25
  %33 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef nonnull %26) #18
  %34 = icmp slt i32 %33, %15
  %35 = select i1 %34, ptr null, ptr %26
  br label %36

36:                                               ; preds = %32, %14
  %37 = phi ptr [ null, %14 ], [ %35, %32 ]
  %38 = icmp eq i32 %21, 0
  br i1 %38, label %92, label %39

39:                                               ; preds = %36
  %40 = icmp eq ptr %37, null
  %41 = mul nuw i32 %21, 5
  br label %42

42:                                               ; preds = %39, %88
  %43 = phi i32 [ 0, %39 ], [ %90, %88 ]
  %44 = phi i32 [ 0, %39 ], [ %89, %88 ]
  %45 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #18
  br label %46

46:                                               ; preds = %42, %86
  %47 = phi i32 [ %43, %42 ], [ %87, %86 ]
  %48 = phi i1 [ true, %42 ], [ false, %86 ]
  %49 = phi i32 [ 0, %42 ], [ 1, %86 ]
  %50 = tail call ptr @uiLayoutRow(ptr noundef %45, i32 noundef 1) #18
  %51 = tail call ptr @uiLayoutGetBlock(ptr noundef %50) #18
  %52 = mul nuw nsw i32 %49, %21
  %53 = add nuw nsw i32 %52, %44
  %54 = mul i32 %53, 5
  %55 = icmp slt i32 %54, %15
  br i1 %55, label %56, label %86

56:                                               ; preds = %46
  %57 = zext i32 %47 to i64
  br label %58

58:                                               ; preds = %56, %71
  %59 = phi i64 [ %57, %56 ], [ %81, %71 ]
  %60 = phi i32 [ 0, %56 ], [ %80, %71 ]
  %61 = trunc i64 %59 to i32
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %5
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %64, i1 true, i1 %40
  %66 = select i1 %64, i32 644, i32 0
  br i1 %65, label %71, label %67

67:                                               ; preds = %58
  %68 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %3, ptr noundef nonnull %37, i32 noundef %61) #18
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 0, i32 643
  br label %71

71:                                               ; preds = %58, %67
  %72 = phi i32 [ %66, %58 ], [ %70, %67 ]
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %74 = sdiv i16 %73, 2
  %75 = trunc i64 %59 to i16
  %76 = tail call ptr @sca_state_name_get(ptr noundef %7, i16 noundef signext %75) #18
  %77 = tail call ptr @uiDefIconButR_prop(ptr noundef %51, i32 noundef 6656, i32 noundef 0, i32 noundef %72, i32 noundef 0, i32 noundef 0, i16 noundef signext %74, i16 noundef signext %74, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %61, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef %76) #18
  %78 = inttoptr i64 %59 to ptr
  tail call void @uiButSetFunc(ptr noundef %77, ptr noundef nonnull @handle_layer_buttons, ptr noundef %77, ptr noundef %78) #18
  %79 = getelementptr inbounds %struct.uiBut, ptr %77, i64 0, i32 4
  store i32 1536, ptr %79, align 8, !tbaa !164
  %80 = add nuw nsw i32 %60, 1
  %81 = add nuw nsw i64 %59, 1
  %82 = icmp ult i32 %60, 4
  %83 = trunc i64 %81 to i32
  %84 = icmp sgt i32 %15, %83
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %58, label %86, !llvm.loop !175

86:                                               ; preds = %71, %46
  %87 = add i32 %47, %41
  br i1 %48, label %46, label %88, !llvm.loop !176

88:                                               ; preds = %86
  %89 = add nuw nsw i32 %44, 1
  %90 = add i32 %43, 5
  %91 = icmp eq i32 %89, %21
  br i1 %91, label %92, label %42, !llvm.loop !177

92:                                               ; preds = %88, %36, %28, %10
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sca_state_name_get(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #1 {
  %13 = alloca %struct.uiListLayoutdata, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca [32 x i8], align 16
  %16 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #20
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.30, ptr noundef nonnull dereferenceable(1) %2) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = icmp eq ptr %3, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %3, align 1, !tbaa !58
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %19
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.30) #18
  br label %468

25:                                               ; preds = %21, %12
  %26 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !60
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.6) #18
  br label %468

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = icmp ne ptr %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %4, ptr noundef %5) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = tail call ptr @RNA_struct_identifier(ptr noundef %40) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef %41, ptr noundef %5) #18
  br label %468

42:                                               ; preds = %35
  %43 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef %7) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %52

45:                                               ; preds = %31
  %46 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %6, ptr noundef %7) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %45, %42
  %49 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !54
  %51 = tail call ptr @RNA_struct_identifier(ptr noundef %50) #18
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef %51, ptr noundef %7) #18
  br label %468

52:                                               ; preds = %42
  %53 = tail call i32 @RNA_property_type(ptr noundef nonnull %36) #18
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.6) #18
  br label %468

56:                                               ; preds = %45, %52
  %57 = phi ptr [ %36, %52 ], [ null, %45 ]
  %58 = phi ptr [ %43, %52 ], [ %46, %45 ]
  %59 = tail call i32 @RNA_property_type(ptr noundef nonnull %58) #18
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.6) #18
  br label %468

62:                                               ; preds = %56
  %63 = load ptr, ptr %32, align 8, !tbaa !60
  %64 = icmp ne ptr %63, null
  %65 = and i1 %34, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = tail call ptr @RNA_property_pointer_type(ptr noundef nonnull %4, ptr noundef nonnull %57) #18
  %68 = tail call i32 @RNA_struct_ui_icon(ptr noundef %67) #18
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %68, %66 ], [ 0, %62 ]
  %71 = tail call i32 @RNA_property_int_get(ptr noundef nonnull %6, ptr noundef nonnull %58) #18
  %72 = tail call ptr @WM_uilisttype_find(ptr noundef %2, i8 noundef zeroext 0) #18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef %2) #18
  br label %468

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.uiListType, ptr %72, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !178
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, ptr @uilist_draw_item_default, ptr %77
  %80 = getelementptr inbounds %struct.uiListType, ptr %72, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !181
  %82 = icmp eq ptr %81, null
  %83 = select i1 %82, ptr @uilist_draw_filter_default, ptr %81
  %84 = getelementptr inbounds %struct.uiListType, ptr %72, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !182
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, ptr @uilist_filter_items_default, ptr %85
  %88 = getelementptr inbounds %struct.uiListType, ptr %72, i64 0, i32 2
  %89 = icmp eq ptr %3, null
  %90 = select i1 %89, ptr @.str.3, ptr %3
  %91 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 128, ptr noundef nonnull @.str.37, ptr noundef nonnull %88, ptr noundef nonnull %90) #18
  %92 = call ptr @CTX_wm_region(ptr noundef %1) #18
  %93 = getelementptr inbounds %struct.ARegion, ptr %92, i64 0, i32 24
  %94 = call ptr @BLI_findstring(ptr noundef nonnull %93, ptr noundef nonnull %14, i32 noundef 24) #18
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %75
  %97 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %98 = call ptr %97(i64 noundef 200, ptr noundef nonnull @.str.38) #18
  %99 = getelementptr inbounds %struct.uiList, ptr %98, i64 0, i32 3
  %100 = call ptr @BLI_strncpy(ptr noundef nonnull %99, ptr noundef nonnull %14, i64 noundef 64) #18
  call void @BLI_addtail(ptr noundef nonnull %93, ptr noundef %98) #18
  %101 = getelementptr inbounds %struct.uiList, ptr %98, i64 0, i32 7
  store i32 -1, ptr %101, align 4, !tbaa !183
  br label %102

102:                                              ; preds = %96, %75
  %103 = phi ptr [ %94, %75 ], [ %98, %96 ]
  %104 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 14
  %105 = load ptr, ptr %104, align 8, !tbaa !185
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %109 = call ptr %108(i64 noundef 48, ptr noundef nonnull @.str.39) #18
  store ptr %109, ptr %104, align 8, !tbaa !185
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi ptr [ %109, %107 ], [ %105, %102 ]
  %112 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 2
  store ptr %72, ptr %112, align 8, !tbaa !186
  %113 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 4
  store i32 %10, ptr %113, align 8, !tbaa !187
  %114 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 7
  %115 = load ptr, ptr %114, align 8, !tbaa !188
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %110
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %118(ptr noundef nonnull %115) #18
  store ptr null, ptr %114, align 8, !tbaa !188
  br label %119

119:                                              ; preds = %117, %110
  %120 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !190
  %122 = icmp eq ptr %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %124(ptr noundef nonnull %121) #18
  store ptr null, ptr %120, align 8, !tbaa !190
  br label %125

125:                                              ; preds = %123, %119
  %126 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 4
  store i32 -1, ptr %126, align 8, !tbaa !191
  %127 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 3
  store i32 -1, ptr %127, align 4, !tbaa !192
  %128 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 9
  %129 = load i32, ptr %128, align 4, !tbaa !193
  %130 = icmp eq i32 %71, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 5
  %133 = load i32, ptr %132, align 4, !tbaa !194
  %134 = or i32 %133, 1
  store i32 %134, ptr %132, align 4, !tbaa !194
  store i32 %71, ptr %128, align 4, !tbaa !193
  br label %135

135:                                              ; preds = %131, %125
  %136 = load ptr, ptr %32, align 8, !tbaa !60
  %137 = icmp ne ptr %136, null
  %138 = and i1 %34, %137
  br i1 %138, label %139, label %228

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 11
  %141 = load i32, ptr %140, align 8, !tbaa !195
  %142 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 12
  %143 = load i32, ptr %142, align 4, !tbaa !196
  %144 = icmp eq i32 %10, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %139
  %146 = call i32 @RNA_property_collection_length(ptr noundef nonnull %4, ptr noundef nonnull %57) #18
  store i32 %146, ptr %126, align 8, !tbaa !191
  store i32 %146, ptr %127, align 4, !tbaa !192
  br label %149

147:                                              ; preds = %139
  call void %87(ptr noundef nonnull %103, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %5) #18
  %148 = load i32, ptr %126, align 8, !tbaa !191
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %148, %147 ], [ %146, %145 ]
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %152, label %223

152:                                              ; preds = %149
  %153 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %154 = zext nneg i32 %150 to i64
  %155 = shl nuw nsw i64 %154, 5
  %156 = call ptr %153(i64 noundef %155, ptr noundef nonnull @__func__.uiTemplateList) #18
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %16) #20
  call void @RNA_property_collection_begin(ptr noundef nonnull %4, ptr noundef nonnull %57, ptr noundef nonnull %16) #18
  %157 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %16, i64 0, i32 7
  %158 = load i32, ptr %157, align 8, !tbaa !197
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %218, label %160

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %16, i64 0, i32 6
  %162 = icmp slt i32 %143, 0
  br label %163

163:                                              ; preds = %160, %209
  %164 = phi i64 [ 0, %160 ], [ %213, %209 ]
  %165 = phi i8 [ 1, %160 ], [ %212, %209 ]
  %166 = phi i32 [ 0, %160 ], [ %211, %209 ]
  %167 = phi i32 [ %71, %160 ], [ %210, %209 ]
  %168 = load ptr, ptr %114, align 8, !tbaa !188
  %169 = icmp eq ptr %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds i32, ptr %168, i64 %164
  %172 = load i32, ptr %171, align 4, !tbaa !68
  %173 = xor i32 %172, %141
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %209, label %175

175:                                              ; preds = %170, %163
  %176 = load ptr, ptr %120, align 8, !tbaa !190
  %177 = icmp eq ptr %176, null
  %178 = add nsw i32 %166, 1
  br i1 %177, label %186, label %179

179:                                              ; preds = %175
  %180 = sext i32 %166 to i64
  %181 = getelementptr inbounds i32, ptr %176, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !68
  %183 = xor i32 %182, -1
  %184 = add i32 %150, %183
  %185 = select i1 %162, i32 %184, i32 %182
  br label %189

186:                                              ; preds = %175
  %187 = sub nsw i32 %150, %178
  %188 = select i1 %162, i32 %187, i32 %166
  br label %189

189:                                              ; preds = %186, %179
  %190 = phi i32 [ %185, %179 ], [ %188, %186 ]
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct._uilist_item, ptr %156, i64 %191
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %192, ptr noundef nonnull align 8 dereferenceable(24) %161, i64 24, i1 false)
  %193 = getelementptr inbounds %struct._uilist_item, ptr %156, i64 %191, i32 1
  %194 = trunc i64 %164 to i32
  store i32 %194, ptr %193, align 8, !tbaa !199
  %195 = load ptr, ptr %114, align 8, !tbaa !188
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds i32, ptr %195, i64 %164
  %199 = load i32, ptr %198, align 4, !tbaa !68
  br label %200

200:                                              ; preds = %189, %197
  %201 = phi i32 [ %199, %197 ], [ 0, %189 ]
  %202 = getelementptr inbounds %struct._uilist_item, ptr %156, i64 %191, i32 2
  store i32 %201, ptr %202, align 4, !tbaa !201
  %203 = icmp ne i8 %165, 0
  %204 = zext i32 %167 to i64
  %205 = icmp eq i64 %164, %204
  %206 = select i1 %203, i1 %205, i1 false
  %207 = select i1 %206, i32 %190, i32 %167
  %208 = select i1 %206, i8 0, i8 %165
  br label %209

209:                                              ; preds = %200, %170
  %210 = phi i32 [ %207, %200 ], [ %167, %170 ]
  %211 = phi i32 [ %178, %200 ], [ %166, %170 ]
  %212 = phi i8 [ %208, %200 ], [ %165, %170 ]
  %213 = add nuw i64 %164, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %16) #18
  %214 = load i32, ptr %157, align 8, !tbaa !197
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %163, !llvm.loop !202

216:                                              ; preds = %209
  %217 = trunc i64 %213 to i32
  br label %218

218:                                              ; preds = %152, %216
  %219 = phi i32 [ 0, %152 ], [ %217, %216 ]
  %220 = phi i32 [ %71, %152 ], [ %210, %216 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %16) #20
  %221 = load i32, ptr %126, align 8, !tbaa !191
  %222 = icmp sgt i32 %221, -1
  br i1 %222, label %228, label %223

223:                                              ; preds = %149, %218
  %224 = phi ptr [ %156, %218 ], [ null, %149 ]
  %225 = phi i32 [ %220, %218 ], [ %71, %149 ]
  %226 = phi i32 [ %219, %218 ], [ 0, %149 ]
  %227 = load i32, ptr %127, align 4, !tbaa !192
  br label %228

228:                                              ; preds = %223, %218, %135
  %229 = phi i32 [ 0, %135 ], [ %219, %218 ], [ %226, %223 ]
  %230 = phi i32 [ %71, %135 ], [ %220, %218 ], [ %225, %223 ]
  %231 = phi i32 [ 0, %135 ], [ %221, %218 ], [ %227, %223 ]
  %232 = phi ptr [ null, %135 ], [ %156, %218 ], [ %224, %223 ]
  switch i32 %10, label %464 [
    i32 0, label %233
    i32 1, label %290
    i32 2, label %320
  ]

233:                                              ; preds = %228
  %234 = call ptr @uiLayoutListBox(ptr noundef %0, ptr noundef %103, ptr noundef %4, ptr noundef %57, ptr noundef %6, ptr noundef nonnull %58) #18
  %235 = call ptr @uiLayoutColumn(ptr noundef %234, i32 noundef 1) #18
  %236 = call ptr @uiLayoutRow(ptr noundef %235, i32 noundef 0) #18
  %237 = call ptr @uiLayoutColumn(ptr noundef %236, i32 noundef 1) #18
  call fastcc void @prepare_list(ptr noundef %103, i32 noundef %231, i32 noundef %230, i32 noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef nonnull %13) #19
  %238 = load ptr, ptr %32, align 8, !tbaa !60
  %239 = icmp ne ptr %238, null
  %240 = and i1 %34, %239
  br i1 %240, label %241, label %277

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %243 = load i32, ptr %242, align 4, !tbaa !203
  %244 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 2
  %245 = load i32, ptr %244, align 4, !tbaa !205
  %246 = icmp slt i32 %243, %245
  br i1 %246, label %247, label %277

247:                                              ; preds = %241
  %248 = sext i32 %243 to i64
  %249 = sext i32 %230 to i64
  br label %250

250:                                              ; preds = %247, %270
  %251 = phi i64 [ %248, %247 ], [ %271, %270 ]
  %252 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %251
  %253 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %251, i32 1
  %254 = load i32, ptr %253, align 8, !tbaa !199
  %255 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %251, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !201
  %257 = call ptr @uiLayoutGetBlock(ptr noundef %237) #18
  %258 = call ptr @uiLayoutOverlap(ptr noundef %237) #18
  call void @uiBlockSetFlag(ptr noundef %257, i32 noundef 524288) #18
  %259 = call ptr @uiLayoutRow(ptr noundef %258, i32 noundef 0) #18
  %260 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %261 = mul i16 %260, 10
  %262 = sitofp i32 %254 to float
  %263 = call ptr @uiDefButR_prop(ptr noundef %257, i32 noundef 18432, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %261, i16 noundef signext %260, ptr noundef %6, ptr noundef nonnull %58, i32 noundef 0, float noundef 0.000000e+00, float noundef %262, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.40) #18
  %264 = call ptr @uiLayoutRow(ptr noundef %258, i32 noundef 0) #18
  %265 = call i32 @UI_rnaptr_icon_get(ptr noundef %1, ptr noundef %252, i32 noundef %70, i8 noundef zeroext 0) #18
  %266 = icmp eq i32 %265, 17
  %267 = select i1 %266, i32 0, i32 %265
  call void %79(ptr noundef %103, ptr noundef %1, ptr noundef %264, ptr noundef %4, ptr noundef %252, i32 noundef %267, ptr noundef %6, ptr noundef %7, i32 noundef %254, i32 noundef %256) #18
  %268 = icmp eq i64 %251, %249
  br i1 %268, label %269, label %270

269:                                              ; preds = %250
  call void @ui_layout_list_set_labels_active(ptr noundef %264) #18
  br label %270

270:                                              ; preds = %269, %250
  call void @uiBlockClearFlag(ptr noundef %257, i32 noundef 524288) #18
  %271 = add nsw i64 %251, 1
  %272 = load i32, ptr %244, align 4, !tbaa !205
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %271, %273
  br i1 %274, label %250, label %275, !llvm.loop !206

275:                                              ; preds = %270
  %276 = trunc i64 %271 to i32
  br label %277

277:                                              ; preds = %275, %241, %233
  %278 = phi i32 [ %229, %233 ], [ %243, %241 ], [ %276, %275 ]
  %279 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %280 = load i32, ptr %279, align 4, !tbaa !203
  %281 = load i32, ptr %13, align 4, !tbaa !207
  %282 = add nsw i32 %281, %280
  %283 = icmp slt i32 %278, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %277, %284
  %285 = phi i32 [ %286, %284 ], [ %278, %277 ]
  call void @uiItemL(ptr noundef %237, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %286 = add i32 %285, 1
  %287 = icmp eq i32 %286, %282
  br i1 %287, label %288, label %284, !llvm.loop !208

288:                                              ; preds = %284, %277
  %289 = icmp sgt i32 %231, %281
  br i1 %289, label %395, label %413

290:                                              ; preds = %228
  %291 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #18
  %292 = load ptr, ptr %32, align 8, !tbaa !60
  %293 = icmp ne ptr %292, null
  %294 = and i1 %34, %293
  br i1 %294, label %295, label %310

295:                                              ; preds = %290
  %296 = load i32, ptr %126, align 8, !tbaa !191
  %297 = icmp sgt i32 %296, 0
  %298 = icmp sgt i32 %230, -1
  %299 = select i1 %297, i1 %298, i1 false
  %300 = icmp slt i32 %230, %296
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %302, label %310

302:                                              ; preds = %295
  %303 = zext nneg i32 %230 to i64
  %304 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %303
  %305 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %303, i32 1
  %306 = load i32, ptr %305, align 8, !tbaa !199
  %307 = call i32 @UI_rnaptr_icon_get(ptr noundef %1, ptr noundef %304, i32 noundef %70, i8 noundef zeroext 0) #18
  %308 = icmp eq i32 %307, 17
  %309 = select i1 %308, i32 0, i32 %307
  call void %79(ptr noundef %103, ptr noundef %1, ptr noundef %291, ptr noundef nonnull %4, ptr noundef %304, i32 noundef %309, ptr noundef %6, ptr noundef %7, i32 noundef %306, i32 noundef 0) #18
  br label %311

310:                                              ; preds = %295, %290
  call void @uiItemL(ptr noundef %291, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  br label %311

311:                                              ; preds = %310, %302
  %312 = load i32, ptr %126, align 8, !tbaa !191
  %313 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %15, i64 noundef 32, ptr noundef nonnull @.str.41, i32 noundef %312) #18
  %314 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %315 = mul i16 %314, 5
  %316 = call ptr @uiDefIconTextButR_prop(ptr noundef %26, i32 noundef 2560, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %15, i32 noundef 0, i32 noundef 0, i16 noundef signext %315, i16 noundef signext %314, ptr noundef %6, ptr noundef nonnull %58, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %317 = load i32, ptr %126, align 8, !tbaa !191
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %464

319:                                              ; preds = %311
  call void @uiButSetFlag(ptr noundef %316, i32 noundef 2048) #18
  br label %464

320:                                              ; preds = %228
  %321 = call ptr @uiLayoutListBox(ptr noundef %0, ptr noundef %103, ptr noundef %4, ptr noundef %57, ptr noundef %6, ptr noundef nonnull %58) #18
  %322 = call ptr @uiLayoutColumn(ptr noundef %321, i32 noundef 1) #18
  %323 = call ptr @uiLayoutRow(ptr noundef %322, i32 noundef 0) #18
  %324 = call ptr @uiLayoutColumn(ptr noundef %323, i32 noundef 1) #18
  call fastcc void @prepare_list(ptr noundef %103, i32 noundef %231, i32 noundef %230, i32 noundef %8, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %13) #19
  %325 = load ptr, ptr %32, align 8, !tbaa !60
  %326 = icmp ne ptr %325, null
  %327 = and i1 %34, %326
  br i1 %327, label %328, label %370

328:                                              ; preds = %320
  %329 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %330 = load i32, ptr %329, align 4, !tbaa !203
  %331 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 2
  %332 = load i32, ptr %331, align 4, !tbaa !205
  %333 = icmp slt i32 %330, %332
  br i1 %333, label %334, label %370

334:                                              ; preds = %328
  %335 = sext i32 %330 to i64
  %336 = sext i32 %230 to i64
  br label %337

337:                                              ; preds = %334, %363
  %338 = phi i64 [ %335, %334 ], [ %364, %363 ]
  %339 = phi ptr [ null, %334 ], [ %351, %363 ]
  %340 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %338
  %341 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %338, i32 1
  %342 = load i32, ptr %341, align 8, !tbaa !199
  %343 = getelementptr inbounds %struct._uilist_item, ptr %232, i64 %338, i32 2
  %344 = load i32, ptr %343, align 4, !tbaa !201
  %345 = trunc i64 %338 to i32
  %346 = srem i32 %345, %11
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %337
  %349 = call ptr @uiLayoutRow(ptr noundef %324, i32 noundef 0) #18
  br label %350

350:                                              ; preds = %348, %337
  %351 = phi ptr [ %339, %337 ], [ %349, %348 ]
  %352 = call ptr @uiLayoutGetBlock(ptr noundef %351) #18
  %353 = call ptr @uiLayoutOverlap(ptr noundef %351) #18
  call void @uiBlockSetFlag(ptr noundef %352, i32 noundef 524288) #18
  %354 = call ptr @uiLayoutRow(ptr noundef %353, i32 noundef 0) #18
  %355 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %356 = mul i16 %355, 10
  %357 = sitofp i32 %342 to float
  %358 = call ptr @uiDefButR_prop(ptr noundef %352, i32 noundef 18432, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %356, i16 noundef signext %355, ptr noundef %6, ptr noundef nonnull %58, i32 noundef 0, float noundef 0.000000e+00, float noundef %357, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #18
  call void @uiButSetDrawFlag(ptr noundef %358, i32 noundef 16) #18
  %359 = call ptr @uiLayoutRow(ptr noundef %353, i32 noundef 0) #18
  %360 = call i32 @UI_rnaptr_icon_get(ptr noundef %1, ptr noundef nonnull %340, i32 noundef %70, i8 noundef zeroext 0) #18
  call void %79(ptr noundef %103, ptr noundef %1, ptr noundef %359, ptr noundef %4, ptr noundef nonnull %340, i32 noundef %360, ptr noundef %6, ptr noundef %7, i32 noundef %342, i32 noundef %344) #18
  %361 = icmp eq i64 %338, %336
  br i1 %361, label %362, label %363

362:                                              ; preds = %350
  call void @ui_layout_list_set_labels_active(ptr noundef %359) #18
  br label %363

363:                                              ; preds = %362, %350
  call void @uiBlockClearFlag(ptr noundef %352, i32 noundef 524288) #18
  %364 = add nsw i64 %338, 1
  %365 = load i32, ptr %331, align 4, !tbaa !205
  %366 = sext i32 %365 to i64
  %367 = icmp slt i64 %364, %366
  br i1 %367, label %337, label %368, !llvm.loop !209

368:                                              ; preds = %363
  %369 = trunc i64 %364 to i32
  br label %370

370:                                              ; preds = %368, %328, %320
  %371 = phi i32 [ %229, %320 ], [ %330, %328 ], [ %369, %368 ]
  %372 = phi ptr [ null, %320 ], [ null, %328 ], [ %351, %368 ]
  %373 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %374 = load i32, ptr %373, align 4, !tbaa !203
  %375 = load i32, ptr %13, align 4, !tbaa !207
  %376 = add nsw i32 %375, %374
  %377 = icmp slt i32 %371, %376
  br i1 %377, label %378, label %392

378:                                              ; preds = %370, %385
  %379 = phi ptr [ %386, %385 ], [ %372, %370 ]
  %380 = phi i32 [ %387, %385 ], [ %371, %370 ]
  %381 = srem i32 %380, %11
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %378
  %384 = call ptr @uiLayoutRow(ptr noundef %324, i32 noundef 0) #18
  br label %385

385:                                              ; preds = %383, %378
  %386 = phi ptr [ %379, %378 ], [ %384, %383 ]
  call void @uiItemL(ptr noundef %386, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %387 = add nsw i32 %380, 1
  %388 = load i32, ptr %373, align 4, !tbaa !203
  %389 = load i32, ptr %13, align 4, !tbaa !207
  %390 = add nsw i32 %389, %388
  %391 = icmp slt i32 %387, %390
  br i1 %391, label %378, label %392, !llvm.loop !210

392:                                              ; preds = %385, %370
  %393 = phi i32 [ %375, %370 ], [ %389, %385 ]
  %394 = icmp sgt i32 %231, %393
  br i1 %394, label %395, label %413

395:                                              ; preds = %392, %288
  %396 = phi ptr [ %236, %288 ], [ %323, %392 ]
  %397 = phi ptr [ %235, %288 ], [ %322, %392 ]
  %398 = call ptr @uiLayoutColumn(ptr noundef %396, i32 noundef 0) #18
  %399 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %400 = sitofp i16 %399 to double
  %401 = fmul double %400, 7.500000e-01
  %402 = fptosi double %401 to i16
  %403 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !211
  %405 = trunc i32 %404 to i16
  %406 = mul i16 %399, %405
  %407 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 6
  %408 = load i32, ptr %111, align 8, !tbaa !212
  %409 = sub nsw i32 %408, %404
  %410 = sitofp i32 %409 to float
  %411 = sitofp i32 %404 to float
  %412 = call ptr @uiDefButI(ptr noundef %26, i32 noundef 9216, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %402, i16 noundef signext %406, ptr noundef nonnull %407, float noundef 0.000000e+00, float noundef %410, float noundef %411, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %413

413:                                              ; preds = %395, %392, %288
  %414 = phi ptr [ %322, %392 ], [ %235, %288 ], [ %397, %395 ]
  %415 = icmp eq ptr %414, null
  br i1 %415, label %464, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 6
  %418 = load i32, ptr %417, align 8, !tbaa !213
  %419 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 1
  %420 = load i32, ptr %419, align 4, !tbaa !211
  %421 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 7
  %422 = load i32, ptr %421, align 4, !tbaa !183
  %423 = sub nsw i32 %420, %422
  %424 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %425 = sext i16 %424 to i32
  %426 = mul nsw i32 %423, %425
  %427 = add nsw i32 %426, %418
  %428 = getelementptr inbounds %struct.uiListDyn, ptr %111, i64 0, i32 5
  store i32 %427, ptr %428, align 4, !tbaa !214
  %429 = call ptr @uiLayoutRow(ptr noundef nonnull %414, i32 noundef 1) #18
  %430 = call ptr @uiLayoutGetBlock(ptr noundef %429) #18
  call void @uiBlockSetEmboss(ptr noundef %430, i8 noundef zeroext 1) #18
  %431 = getelementptr inbounds %struct.uiList, ptr %103, i64 0, i32 11
  %432 = load i32, ptr %431, align 8, !tbaa !195
  %433 = and i32 %432, 1
  %434 = icmp eq i32 %433, 0
  %435 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %436 = sitofp i16 %435 to float
  %437 = fmul float %436, 5.000000e-01
  %438 = fptosi float %437 to i16
  br i1 %434, label %455, label %439

439:                                              ; preds = %416
  %440 = call ptr @uiDefIconButBitI(ptr noundef %430, i32 noundef 1536, i32 noundef 1, i32 noundef 0, i32 noundef 10, i32 noundef 0, i32 noundef 0, i16 noundef signext %435, i16 noundef signext %438, ptr noundef nonnull %431, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.42) #18
  call void @uiButClearFlag(ptr noundef %440, i32 noundef 524288) #18
  %441 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %442 = sitofp i16 %441 to float
  %443 = fmul float %442, 1.000000e+01
  %444 = fptosi float %443 to i16
  %445 = fmul float %442, 5.000000e-01
  %446 = fptosi float %445 to i16
  %447 = call ptr @uiDefIconButI(ptr noundef %430, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %444, i16 noundef signext %446, ptr noundef nonnull %428, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  call void @uiButSetFunc(ptr noundef %447, ptr noundef nonnull @ui_list_resize_update_cb, ptr noundef nonnull %103, ptr noundef null) #18
  call void @uiBlockSetEmboss(ptr noundef %430, i8 noundef zeroext 0) #18
  %448 = call ptr @uiLayoutColumn(ptr noundef nonnull %414, i32 noundef 0) #18
  %449 = call ptr @uiLayoutGetBlock(ptr noundef %448) #18
  %450 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %451 = sitofp i16 %450 to float
  %452 = fmul float %451, 0x3FA99999A0000000
  %453 = fptosi float %452 to i16
  %454 = call ptr @uiDefBut(ptr noundef %449, i32 noundef 10752, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %450, i16 noundef signext %453, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  call void %83(ptr noundef nonnull %103, ptr noundef %1, ptr noundef %448) #18
  br label %464

455:                                              ; preds = %416
  %456 = call ptr @uiDefIconButBitI(ptr noundef %430, i32 noundef 1536, i32 noundef 1, i32 noundef 0, i32 noundef 11, i32 noundef 0, i32 noundef 0, i16 noundef signext %435, i16 noundef signext %438, ptr noundef nonnull %431, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.43) #18
  call void @uiButClearFlag(ptr noundef %456, i32 noundef 524288) #18
  %457 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %458 = sitofp i16 %457 to float
  %459 = fmul float %458, 1.000000e+01
  %460 = fptosi float %459 to i16
  %461 = fmul float %458, 5.000000e-01
  %462 = fptosi float %461 to i16
  %463 = call ptr @uiDefIconButI(ptr noundef %430, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %460, i16 noundef signext %462, ptr noundef nonnull %428, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  call void @uiButSetFunc(ptr noundef %463, ptr noundef nonnull @ui_list_resize_update_cb, ptr noundef nonnull %103, ptr noundef null) #18
  call void @uiBlockSetEmboss(ptr noundef %430, i8 noundef zeroext 0) #18
  br label %464

464:                                              ; preds = %311, %319, %228, %439, %455, %413
  %465 = icmp eq ptr %232, null
  br i1 %465, label %468, label %466

466:                                              ; preds = %464
  %467 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %467(ptr noundef nonnull %232) #18
  br label %468

468:                                              ; preds = %464, %466, %74, %61, %55, %48, %38, %30, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_uilisttype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uilist_draw_item_default(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 %8, i32 %9) unnamed_addr #1 !PGOFuncName !215 {
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call ptr @RNA_struct_name_property(ptr noundef %12) #18
  %14 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !187
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @uiItemL(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5) #18
  br label %22

18:                                               ; preds = %10
  %19 = icmp eq ptr %13, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @uiItemFullR(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %13, i32 noundef -1, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef %5) #18
  br label %22

21:                                               ; preds = %18
  tail call void @uiItemL(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5) #18
  br label %22

22:                                               ; preds = %20, %21, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uilist_draw_filter_default(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !216 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_UIList, ptr noundef %0, ptr noundef nonnull %4) #18
  %5 = call ptr @uiLayoutRow(ptr noundef %2, i32 noundef 0) #18
  %6 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #18
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %7 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !195
  %9 = icmp sgt i32 %8, -1
  %10 = select i1 %9, i32 61, i32 62
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.188, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef %10) #18
  %11 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #18
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull @.str.189, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  %12 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 12
  %13 = load i32, ptr %12, align 4, !tbaa !196
  %14 = icmp sgt i32 %13, -1
  %15 = select i1 %14, i32 5, i32 7
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull @.str.190, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef %15) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @uilist_filter_items_default(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !PGOFuncName !217 {
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #18
  %11 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %12 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !195
  %14 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !196
  %16 = tail call i32 @RNA_property_collection_length(ptr noundef %2, ptr noundef %10) #18
  %17 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 3
  store i32 %16, ptr %17, align 4, !tbaa !192
  %18 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 4
  store i32 %16, ptr %18, align 8, !tbaa !191
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %141, label %20

20:                                               ; preds = %4
  %21 = and i32 %15, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8, ptr %11, align 1, !tbaa !58
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %141, label %26

26:                                               ; preds = %23, %20
  %27 = and i32 %15, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = sext i32 %16 to i64
  %32 = mul nsw i64 %31, 68
  %33 = tail call ptr %30(i64 noundef %32, ptr noundef nonnull @.str.191) #18
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi ptr [ %33, %29 ], [ null, %26 ]
  %36 = load i8, ptr %11, align 1, !tbaa !58
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %34
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #21
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %41 = sext i32 %16 to i64
  %42 = shl nsw i64 %41, 2
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.192) #18
  %44 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 7
  store ptr %43, ptr %44, align 8, !tbaa !188
  store i32 0, ptr %18, align 8, !tbaa !191
  %45 = add i64 %39, 3
  %46 = icmp ult i64 %45, 33
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %49 = tail call ptr %48(i64 noundef %45, ptr noundef nonnull @.str.193) #18
  br label %50

50:                                               ; preds = %38, %47
  %51 = phi ptr [ %49, %47 ], [ null, %38 ]
  %52 = phi ptr [ %49, %47 ], [ %5, %38 ]
  %53 = load i8, ptr %11, align 1, !tbaa !58
  %54 = icmp eq i8 %53, 42
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i8 42, ptr %52, align 1, !tbaa !58
  br label %56

56:                                               ; preds = %55, %50
  %57 = phi i64 [ 1, %55 ], [ 0, %50 ]
  %58 = getelementptr inbounds i8, ptr %52, i64 %57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr nonnull align 1 %11, i64 %39, i1 false)
  %59 = add i64 %57, %39
  %60 = add i64 %59, -1
  %61 = getelementptr inbounds i8, ptr %52, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !58
  %63 = icmp eq i8 %62, 42
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = add i64 %59, 1
  %66 = getelementptr inbounds i8, ptr %52, i64 %59
  store i8 42, ptr %66, align 1, !tbaa !58
  br label %67

67:                                               ; preds = %64, %56
  %68 = phi i64 [ %65, %64 ], [ %59, %56 ]
  %69 = getelementptr inbounds i8, ptr %52, i64 %68
  store i8 0, ptr %69, align 1, !tbaa !58
  br label %70

70:                                               ; preds = %67, %34
  %71 = phi ptr [ %51, %67 ], [ null, %34 ]
  %72 = phi ptr [ %52, %67 ], [ %11, %34 ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #20
  call void @RNA_property_collection_begin(ptr noundef %2, ptr noundef %10, ptr noundef nonnull %6) #18
  %73 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !197
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %113, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %78 = icmp sgt i32 %13, -1
  %79 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 7
  br label %80

80:                                               ; preds = %76, %109
  %81 = phi i64 [ 0, %76 ], [ %110, %109 ]
  %82 = phi i32 [ 0, %76 ], [ %106, %109 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %77, i64 24, i1 false), !tbaa.struct !49
  %83 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %7, ptr noundef null, i32 noundef 0, ptr noundef null) #18
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr @.str.3, ptr %83
  %86 = load i8, ptr %72, align 1, !tbaa !58
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %80
  %89 = call i32 @fnmatch(ptr noundef nonnull %72, ptr noundef nonnull %85, i32 noundef 16) #18
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load ptr, ptr %79, align 8, !tbaa !188
  %93 = getelementptr inbounds i32, ptr %92, i64 %81
  store i32 -2147483648, ptr %93, align 4, !tbaa !68
  br i1 %78, label %95, label %105

94:                                               ; preds = %88
  br i1 %78, label %105, label %95

95:                                               ; preds = %94, %91
  %96 = load i32, ptr %18, align 8, !tbaa !191
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %18, align 8, !tbaa !191
  br label %98

98:                                               ; preds = %95, %80
  br i1 %28, label %105, label %99

99:                                               ; preds = %98
  %100 = sext i32 %82 to i64
  %101 = getelementptr inbounds %struct.StringCmp, ptr %35, i64 %100
  %102 = getelementptr inbounds %struct.StringCmp, ptr %35, i64 %100, i32 1
  store i32 %82, ptr %102, align 4, !tbaa !218
  %103 = add nsw i32 %82, 1
  %104 = call ptr @BLI_strncpy(ptr noundef %101, ptr noundef nonnull %85, i64 noundef 64) #18
  br label %105

105:                                              ; preds = %94, %91, %99, %98
  %106 = phi i32 [ %103, %99 ], [ %82, %98 ], [ %82, %91 ], [ %82, %94 ]
  br i1 %84, label %109, label %107

107:                                              ; preds = %105
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %108(ptr noundef nonnull %83) #18
  br label %109

109:                                              ; preds = %107, %105
  %110 = add nuw i64 %81, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #18
  %111 = load i32, ptr %73, align 8, !tbaa !197
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %80, !llvm.loop !220

113:                                              ; preds = %109, %70
  %114 = phi i32 [ 0, %70 ], [ %106, %109 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #20
  br i1 %28, label %133, label %115

115:                                              ; preds = %113
  %116 = sext i32 %114 to i64
  call void @qsort(ptr noundef %35, i64 noundef %116, i64 noundef 68, ptr noundef nonnull @cmpstringp) #18
  %117 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %118 = shl nsw i64 %116, 2
  %119 = call ptr %117(i64 noundef %118, ptr noundef nonnull @.str.194) #18
  %120 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 8
  store ptr %119, ptr %120, align 8, !tbaa !190
  %121 = icmp sgt i32 %114, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  %123 = zext nneg i32 %114 to i64
  br label %124

124:                                              ; preds = %122, %124
  %125 = phi i64 [ 0, %122 ], [ %131, %124 ]
  %126 = getelementptr inbounds %struct.StringCmp, ptr %35, i64 %125, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !218
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, ptr %119, i64 %128
  %130 = trunc i64 %125 to i32
  store i32 %130, ptr %129, align 4, !tbaa !68
  %131 = add nuw nsw i64 %125, 1
  %132 = icmp eq i64 %131, %123
  br i1 %132, label %133, label %124, !llvm.loop !221

133:                                              ; preds = %124, %115, %113
  %134 = icmp eq ptr %71, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %133
  %136 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %136(ptr noundef nonnull %71) #18
  br label %137

137:                                              ; preds = %135, %133
  %138 = icmp eq ptr %35, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %140(ptr noundef nonnull %35) #18
  br label %141

141:                                              ; preds = %137, %139, %23, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutListBox(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @prepare_list(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #8 !PGOFuncName !222 {
  %8 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !183
  %12 = add nsw i32 %3, -1
  %13 = icmp slt i32 %11, %12
  %14 = icmp slt i32 %3, 1
  %15 = select i1 %14, i32 5, i32 %3
  %16 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 2
  store i32 %15, ptr %16, align 8, !tbaa !223
  %17 = icmp sgt i32 %15, %4
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = tail call fastcc i32 @max_ii(i32 noundef %15, i32 noundef 5) #19
  br label %20

20:                                               ; preds = %18, %7
  %21 = phi i32 [ %19, %18 ], [ %4, %7 ]
  %22 = icmp slt i32 %5, 1
  %23 = select i1 %22, i32 9, i32 %5
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = sitofp i32 %1 to double
  %27 = sitofp i32 %23 to double
  %28 = fdiv double %26, %27
  %29 = tail call double @llvm.ceil.f64(double %28)
  %30 = fptosi double %29 to i32
  %31 = sitofp i32 %2 to double
  %32 = fdiv double %31, %27
  %33 = tail call double @llvm.floor.f64(double %32)
  %34 = fptosi double %33 to i32
  br label %35

35:                                               ; preds = %20, %25
  %36 = phi i32 [ %30, %25 ], [ %1, %20 ]
  %37 = phi i32 [ %34, %25 ], [ %2, %20 ]
  store i32 %36, ptr %9, align 8
  br i1 %13, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc i32 @max_ii(i32 noundef %11, i32 noundef %15) #19
  br label %46

40:                                               ; preds = %35
  %41 = icmp ne i32 %15, %21
  %42 = icmp sgt i32 %36, %15
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @min_ii(i32 noundef %36, i32 noundef %21) #19
  br label %46

46:                                               ; preds = %40, %44, %38
  %47 = phi i32 [ %45, %44 ], [ %15, %40 ], [ %39, %38 ]
  %48 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 8
  %49 = load i32, ptr %48, align 8, !tbaa !224
  %50 = icmp eq i32 %49, %1
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !194
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !225
  br label %76

59:                                               ; preds = %51, %46
  %60 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !225
  %62 = icmp slt i32 %37, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = add nsw i32 %61, %47
  %65 = icmp slt i32 %37, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = add i32 %37, 1
  %68 = sub i32 %67, %47
  br label %69

69:                                               ; preds = %59, %66
  %70 = phi i32 [ %68, %66 ], [ %37, %59 ]
  store i32 %70, ptr %60, align 8, !tbaa !225
  br label %71

71:                                               ; preds = %69, %63
  %72 = phi i32 [ %61, %63 ], [ %70, %69 ]
  %73 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !194
  %75 = and i32 %74, -2
  store i32 %75, ptr %73, align 4, !tbaa !194
  br label %76

76:                                               ; preds = %56, %71
  %77 = phi i32 [ %58, %56 ], [ %72, %71 ]
  %78 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 6
  %79 = icmp slt i32 %77, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = sub nsw i32 %36, %47
  %82 = tail call fastcc i32 @max_ii(i32 noundef 0, i32 noundef %81) #19
  %83 = icmp sgt i32 %77, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76
  %85 = phi i32 [ 0, %76 ], [ %82, %80 ]
  store i32 %85, ptr %78, align 8, !tbaa !225
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi i32 [ %77, %80 ], [ %85, %84 ]
  store i32 %1, ptr %48, align 8, !tbaa !224
  %88 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 1
  store i32 %47, ptr %88, align 4, !tbaa !211
  %89 = mul nsw i32 %47, %23
  store i32 %89, ptr %6, align 4, !tbaa !207
  %90 = mul nsw i32 %87, %23
  %91 = getelementptr inbounds %struct.uiListLayoutdata, ptr %6, i64 0, i32 1
  store i32 %90, ptr %91, align 4, !tbaa !203
  %92 = add nsw i32 %90, %89
  %93 = tail call fastcc i32 @min_ii(i32 noundef %92, i32 noundef %1) #19
  %94 = getelementptr inbounds %struct.uiListLayoutdata, ptr %6, i64 0, i32 2
  store i32 %93, ptr %94, align 4, !tbaa !205
  ret void
}

; Function Attrs: optsize
declare ptr @uiLayoutOverlap(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @UI_rnaptr_icon_get(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ui_layout_list_set_labels_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefButI(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconTextButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetDrawFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ui_list_resize_update_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #9 !PGOFuncName !226 {
  %4 = getelementptr inbounds %struct.uiList, ptr %1, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !185
  %6 = getelementptr inbounds %struct.uiListDyn, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !214
  %8 = getelementptr inbounds %struct.uiListDyn, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !213
  %10 = sub nsw i32 %7, %9
  %11 = sitofp i32 %10 to float
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %13 = sitofp i16 %12 to float
  %14 = fdiv float %11, %13
  %15 = tail call fastcc i32 @iroundf(float noundef %14) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.uiList, ptr %1, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !183
  %20 = add nsw i32 %19, %15
  store i32 %20, ptr %18, align 4, !tbaa !183
  %21 = sext i16 %12 to i32
  %22 = mul nsw i32 %15, %21
  %23 = add nsw i32 %22, %9
  store i32 %23, ptr %8, align 8, !tbaa !213
  %24 = getelementptr inbounds %struct.uiList, ptr %1, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !194
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !194
  br label %27

27:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiOperatorSearch_But(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @uiButSetSearchFunc(ptr noundef %0, ptr noundef nonnull @operator_search_cb, ptr noundef null, ptr noundef nonnull @operator_call_cb, ptr noundef null) #18
  ret void
}

; Function Attrs: optsize
declare void @uiButSetSearchFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @operator_search_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #1 !PGOFuncName !227 {
  %5 = alloca %struct.GHashIterator, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @WM_operatortype_iter(ptr noundef nonnull %5) #18
  %7 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #19, !range !228
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %4, %48
  %10 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %5) #19
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 19
  %12 = load i16, ptr %11, align 8, !tbaa !229
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !231
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %48, label %19

19:                                               ; preds = %15, %9
  %20 = load ptr, ptr %10, align 8, !tbaa !233
  %21 = call ptr @BLI_strcasestr(ptr noundef %20, ptr noundef %2) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %19
  %24 = call i32 @WM_operator_poll(ptr noundef %0, ptr noundef nonnull %10) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #20
  %27 = load ptr, ptr %10, align 8, !tbaa !233
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #21
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %27, i64 noundef 256) #18
  %30 = shl i64 %28, 32
  %31 = ashr exact i64 %30, 32
  %32 = icmp ult i64 %31, 250
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.wmOperatorType, ptr %10, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !234
  %36 = add i64 %30, 4294967296
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %37
  %39 = trunc i64 %28 to i32
  %40 = xor i32 %39, 255
  %41 = call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %35, i32 noundef 6, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %38, i32 noundef %40) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %31
  store i8 124, ptr %44, align 1, !tbaa !58
  br label %45

45:                                               ; preds = %33, %43, %26
  %46 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %10, i32 noundef 0) #18
  %47 = icmp eq i8 %46, 0
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #20
  br i1 %47, label %51, label %48

48:                                               ; preds = %19, %45, %23, %15
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #18
  %49 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %5) #19, !range !228
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %9, label %51, !llvm.loop !235

51:                                               ; preds = %48, %45, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @operator_call_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 !PGOFuncName !236 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef nonnull %2, i16 noundef signext 0, ptr noundef null) #18
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateOperatorSearch(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  tail call void @uiBlockSetCurLayout(ptr noundef %2, ptr noundef %0) #18
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %4 = mul i16 %3, 6
  %5 = tail call ptr @uiDefSearchBut(ptr noundef %2, ptr noundef nonnull @uiTemplateOperatorSearch.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 0, i32 noundef 0, i16 noundef signext %4, i16 noundef signext %3, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiOperatorSearch_But(ptr noundef %5) #19
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetCurLayout(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefSearchBut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateRunningJobs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %1) #18
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %1) #18
  %5 = tail call ptr @CTX_wm_area(ptr noundef %1) #18
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %0) #18
  tail call void @uiBlockSetHandleFunc(ptr noundef %6, ptr noundef nonnull @do_running_jobs, ptr noundef null) #18
  %7 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !237
  switch i8 %8, label %15 [
    i8 8, label %9
    i8 20, label %12
  ]

9:                                                ; preds = %2
  %10 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0) #18
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %60, label %42

12:                                               ; preds = %2
  %13 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %5, i32 noundef 0) #18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %60, label %42

15:                                               ; preds = %2
  %16 = tail call ptr @CTX_data_main(ptr noundef %1) #18
  %17 = getelementptr inbounds %struct.Main, ptr %16, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %15, %39
  %21 = phi ptr [ %40, %39 ], [ %18, %15 ]
  %22 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %21, i32 noundef 2) #18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %21, i32 noundef 1) #18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %21, i32 noundef 7) #18
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %21, i32 noundef 8) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %27
  %34 = load i8, ptr %7, align 8, !tbaa !237
  %35 = icmp eq i8 %34, 16
  br i1 %35, label %39, label %42

36:                                               ; preds = %30
  %37 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %21, i32 noundef 0) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %36
  %40 = load ptr, ptr %21, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %20, !llvm.loop !240

42:                                               ; preds = %36, %33, %24, %20, %9, %12
  %43 = phi i32 [ 6, %12 ], [ 5, %9 ], [ 1, %20 ], [ 4, %24 ], [ 7, %33 ], [ 7, %36 ]
  %44 = phi ptr [ %5, %12 ], [ %5, %9 ], [ %21, %20 ], [ %21, %24 ], [ %21, %33 ], [ %21, %36 ]
  %45 = tail call ptr @uiLayoutAbsolute(ptr noundef %0, i32 noundef 0) #18
  %46 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %47 = sitofp i16 %46 to double
  %48 = fmul double %47, 1.000000e-01
  %49 = fptosi double %48 to i32
  %50 = fmul double %47, 8.000000e-01
  %51 = fptosi double %50 to i16
  %52 = tail call ptr @uiDefIconBut(ptr noundef %6, i32 noundef 512, i32 noundef %43, i32 noundef 33, i32 noundef 0, i32 noundef %49, i16 noundef signext %51, i16 noundef signext %51, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.44) #18
  %53 = tail call ptr @WM_jobs_name(ptr noundef %4, ptr noundef nonnull %44) #18
  %54 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %55 = sext i16 %54 to i32
  %56 = mul i16 %54, 5
  %57 = tail call float @WM_jobs_progress(ptr noundef %4, ptr noundef nonnull %44) #18
  %58 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 26112, i32 noundef 0, ptr noundef %53, i32 noundef %55, i32 noundef 0, i16 noundef signext %56, i16 noundef signext %54, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %57, float noundef 0.000000e+00, ptr noundef nonnull @.str.45) #18
  %59 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #18
  br label %60

60:                                               ; preds = %39, %15, %12, %9, %42
  %61 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %3, i32 noundef 4) #18
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %65 = sitofp i16 %64 to float
  %66 = fmul float %65, 4.250000e+00
  %67 = fptosi float %66 to i16
  %68 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 512, i32 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i16 noundef signext %67, i16 noundef signext %64, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.47) #18
  br label %69

69:                                               ; preds = %63, %60
  %70 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 21
  %71 = load ptr, ptr %70, align 8, !tbaa !241
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %75 = mul i16 %74, 5
  %76 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 512, i32 noundef 3, i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0, i16 noundef signext %75, i16 noundef signext %74, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.49) #18
  br label %77

77:                                               ; preds = %73, %69
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_running_jobs(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #1 !PGOFuncName !243 {
  switch i32 %2, label %20 [
    i32 1, label %4
    i32 2, label %5
    i32 3, label %8
    i32 4, label %10
    i32 5, label %13
    i32 6, label %16
    i32 7, label %19
  ]

4:                                                ; preds = %3
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !244
  br label %20

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %7 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  tail call void @WM_jobs_stop(ptr noundef %6, ptr noundef %7, ptr noundef null) #18
  br label %20

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.195, i16 noundef signext 5, ptr noundef null) #18
  br label %20

10:                                               ; preds = %3
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  tail call void @WM_jobs_stop(ptr noundef %11, ptr noundef %12, ptr noundef null) #18
  br label %20

13:                                               ; preds = %3
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @WM_jobs_stop(ptr noundef %14, ptr noundef %15, ptr noundef null) #18
  br label %20

16:                                               ; preds = %3
  %17 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @WM_jobs_stop(ptr noundef %17, ptr noundef %18, ptr noundef null) #18
  br label %20

19:                                               ; preds = %3
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !244
  br label %20

20:                                               ; preds = %3, %19, %16, %13, %10, %8, %5, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutAbsolute(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_jobs_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @WM_jobs_progress(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateReportsBanner(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @CTX_wm_reports(ptr noundef %1) #18
  %4 = tail call ptr @BKE_reports_last_displayable(ptr noundef %3) #18
  %5 = tail call ptr @UI_GetStyle() #18
  %6 = getelementptr inbounds %struct.ReportList, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !245
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = icmp eq ptr %11, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ReportTimerInfo, ptr %11, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !249
  %16 = fcmp une float %15, 0.000000e+00
  %17 = icmp ne ptr %4, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %83

19:                                               ; preds = %13
  %20 = tail call ptr @uiLayoutAbsolute(ptr noundef %0, i32 noundef 0) #18
  %21 = tail call ptr @uiLayoutGetBlock(ptr noundef %20) #18
  %22 = getelementptr inbounds %struct.uiStyle, ptr %5, i64 0, i32 6
  %23 = load i16, ptr %22, align 8, !tbaa !251
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.Report, ptr %4, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !254
  %27 = getelementptr inbounds %struct.Report, ptr %4, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !256
  %29 = sext i32 %28 to i64
  %30 = tail call float @BLF_width(i32 noundef %24, ptr noundef %26, i64 noundef %29) #18
  %31 = fptosi float %30 to i32
  %32 = load float, ptr %14, align 4, !tbaa !249
  %33 = sitofp i32 %31 to float
  %34 = fmul float %32, %33
  %35 = fptosi float %34 to i32
  %36 = tail call fastcc i32 @min_ii(i32 noundef %35, i32 noundef %31) #19
  %37 = tail call fastcc i32 @max_ii(i32 noundef %36, i32 noundef 10) #19
  tail call void @uiBlockBeginAlign(ptr noundef %21) #18
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %39 = add i16 %38, 10
  %40 = tail call ptr @uiDefBut(ptr noundef %21, i32 noundef 14336, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %38, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %41 = getelementptr inbounds %struct.uiBut, ptr %40, i64 0, i32 26
  tail call void @rgb_float_to_uchar(ptr noundef nonnull %41, ptr noundef nonnull %11) #18
  %42 = getelementptr inbounds %struct.uiBut, ptr %40, i64 0, i32 26, i64 3
  store i8 -1, ptr %42, align 1, !tbaa !58
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %44, 10
  %46 = trunc i32 %37 to i16
  %47 = add i16 %43, %46
  %48 = tail call ptr @uiDefBut(ptr noundef %21, i32 noundef 14336, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %45, i32 noundef 0, i16 noundef signext %47, i16 noundef signext %43, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %49 = getelementptr inbounds %struct.ReportTimerInfo, ptr %11, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !257
  %51 = fcmp ugt float %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %19
  %53 = fcmp ogt float %50, 0x3FEFEFEFE0000000
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = tail call float @llvm.fmuladd.f32(float %50, float 2.550000e+02, float 5.000000e-01)
  %56 = fptoui float %55 to i8
  br label %57

57:                                               ; preds = %54, %52, %19
  %58 = phi i8 [ 0, %19 ], [ %56, %54 ], [ -1, %52 ]
  %59 = getelementptr inbounds %struct.uiBut, ptr %48, i64 0, i32 26
  %60 = getelementptr inbounds %struct.uiBut, ptr %48, i64 0, i32 26, i64 2
  store i8 %58, ptr %60, align 2, !tbaa !58
  %61 = getelementptr inbounds %struct.uiBut, ptr %48, i64 0, i32 26, i64 1
  store i8 %58, ptr %61, align 1, !tbaa !58
  store i8 %58, ptr %59, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct.uiBut, ptr %48, i64 0, i32 26, i64 3
  store i8 -1, ptr %62, align 1, !tbaa !58
  tail call void @uiBlockEndAlign(ptr noundef %21) #18
  %63 = getelementptr inbounds %struct.Report, ptr %4, i64 0, i32 2
  %64 = load i16, ptr %63, align 8, !tbaa !258
  %65 = sext i16 %64 to i32
  %66 = tail call i32 @uiIconFromReportType(i32 noundef %65) #18
  tail call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 1) #18
  %67 = load ptr, ptr %3, align 8, !tbaa !259
  %68 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !260
  %70 = icmp eq ptr %67, %69
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  br i1 %70, label %74, label %72

72:                                               ; preds = %57
  %73 = tail call ptr @uiDefIconButO(ptr noundef %21, i32 noundef 512, ptr noundef nonnull @.str.50, i32 noundef 1, i32 noundef %66, i32 noundef 2, i32 noundef 0, i16 noundef signext %71, i16 noundef signext %71, ptr noundef nonnull @.str.51) #18
  br label %76

74:                                               ; preds = %57
  %75 = tail call ptr @uiDefIconBut(ptr noundef %21, i32 noundef 5120, i32 noundef 0, i32 noundef %66, i32 noundef 2, i32 noundef 0, i16 noundef signext %71, i16 noundef signext %71, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %76

76:                                               ; preds = %74, %72
  tail call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 0) #18
  %77 = load ptr, ptr %25, align 8, !tbaa !254
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %79 = sext i16 %78 to i32
  %80 = add nsw i32 %79, 10
  %81 = add i16 %78, %46
  %82 = tail call ptr @uiDefBut(ptr noundef %21, i32 noundef 5120, i32 noundef 0, ptr noundef %77, i32 noundef %80, i32 noundef 0, i16 noundef signext %81, i16 noundef signext %78, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %83

83:                                               ; preds = %9, %13, %2, %76
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_reports_last_displayable(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @UI_GetStyle() local_unnamed_addr #3

; Function Attrs: optsize
declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !261 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !262 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @uiIconFromReportType(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateKeymapItemProperties(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %1, ptr noundef nonnull @.str.52) #18
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  call fastcc void @template_keymap_item_properties(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  br label %14

14:                                               ; preds = %12, %21
  %15 = phi ptr [ %10, %12 ], [ %22, %21 ]
  %16 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 55
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %13, align 8, !tbaa !60
  call void @uiButSetFunc(ptr noundef nonnull %15, ptr noundef nonnull @keymap_item_modified, ptr noundef %20, ptr noundef null) #18
  br label %21

21:                                               ; preds = %14, %19
  %22 = load ptr, ptr %15, align 8, !tbaa !263
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !264

24:                                               ; preds = %21, %7, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @template_keymap_item_properties(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !265 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  tail call void @uiItemS(ptr noundef %0) #18
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #18
  br label %8

8:                                                ; preds = %7, %3
  %9 = tail call ptr @uiLayoutColumnFlow(ptr noundef %0, i32 noundef 2, i32 noundef 0) #18
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #20
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = tail call ptr @RNA_struct_iterator_property(ptr noundef %11) #18
  call void @RNA_property_collection_begin(ptr noundef %2, ptr noundef %12, ptr noundef nonnull %4) #18
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !197
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  br label %20

20:                                               ; preds = %16, %45
  %21 = load ptr, ptr %17, align 8, !tbaa !266
  %22 = call zeroext i8 @RNA_property_is_set(ptr noundef %2, ptr noundef %21) #18
  %23 = call i32 @RNA_property_type(ptr noundef %21) #18
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef %21) #18
  %26 = load ptr, ptr %18, align 8, !tbaa !60
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %19, align 8, !tbaa !54
  %30 = call zeroext i8 @RNA_struct_is_a(ptr noundef %29, ptr noundef nonnull @RNA_OperatorProperties) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call ptr @RNA_property_ui_name(ptr noundef %21) #18
  call fastcc void @template_keymap_item_properties(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %45

34:                                               ; preds = %25, %28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %35

35:                                               ; preds = %34, %20
  %36 = call ptr @uiLayoutBox(ptr noundef %9) #18
  call void @uiLayoutSetActive(ptr noundef %36, i8 noundef zeroext %22) #18
  %37 = call ptr @uiLayoutRow(ptr noundef %36, i32 noundef 0) #18
  call void @uiItemFullR(ptr noundef %37, ptr noundef %2, ptr noundef %21, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %38 = icmp eq i8 %22, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = call ptr @uiLayoutGetBlock(ptr noundef %37) #18
  call void @uiBlockSetEmboss(ptr noundef %40, i8 noundef zeroext 1) #18
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %42 = call ptr @uiDefIconButO(ptr noundef %40, i32 noundef 512, ptr noundef nonnull @.str.196, i32 noundef 6, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %41, i16 noundef signext %41, ptr noundef null) #18
  %43 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !49
  %44 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 55
  store ptr %21, ptr %44, align 8, !tbaa !173
  call void @uiBlockSetEmboss(ptr noundef %40, i8 noundef zeroext 0) #18
  br label %45

45:                                               ; preds = %35, %39, %32
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #18
  %46 = load i32, ptr %13, align 8, !tbaa !197
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %20, !llvm.loop !267

48:                                               ; preds = %45, %8
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @keymap_item_modified(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !268 {
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateColorspaceSettings(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = tail call ptr @RNA_struct_identifier(ptr noundef %9) #18
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @__func__.uiTemplateColorspaceSettings, ptr noundef %10, ptr noundef %2) #19
  br label %13

12:                                               ; preds = %3
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #18
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  br label %13

13:                                               ; preds = %12, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateColormanagedViewSettings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call ptr @RNA_struct_identifier(ptr noundef %10) #18
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @__func__.uiTemplateColormanagedViewSettings, ptr noundef %11, ptr noundef %3) #19
  br label %24

13:                                               ; preds = %4
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull %6) #18
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  %17 = call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef 0) #18
  %18 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef 0) #18
  %19 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #18
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef null, i32 noundef 0) #18
  %20 = load i32, ptr %15, align 8, !tbaa !269
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  call void @uiTemplateCurveMapping(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull @.str.62, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #19
  br label %24

24:                                               ; preds = %13, %23, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateComponentMenu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 88, ptr noundef nonnull @.str.63) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !49
  %7 = getelementptr inbounds %struct.ComponentMenuArgs, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 64) #18
  %9 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  tail call void @uiBlockBeginAlign(ptr noundef %9) #18
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %11 = mul i16 %10, 6
  %12 = tail call ptr @uiDefBlockButN(ptr noundef %9, ptr noundef nonnull @component_menu, ptr noundef %6, ptr noundef %3, i32 noundef 0, i32 noundef 0, i16 noundef signext %11, i16 noundef signext %10, ptr noundef nonnull @.str.3) #18
  %13 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !49
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #18
  %15 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 55
  store ptr %14, ptr %15, align 8, !tbaa !173
  %16 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 56
  store i32 0, ptr %16, align 8, !tbaa !271
  tail call void @uiBlockEndAlign(ptr noundef %9) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @component_menu(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !272 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.component_menu, i16 noundef signext 0) #18
  tail call void @uiBlockSetFlag(ptr noundef %4, i32 noundef 256) #18
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %6, 6
  %8 = tail call ptr @UI_GetStyle() #18
  %9 = tail call ptr @uiBlockLayout(ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %7, i32 noundef %6, i32 noundef 0, ptr noundef %8) #18
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #18
  %11 = getelementptr inbounds %struct.ComponentMenuArgs, ptr %2, i64 0, i32 1
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull %11, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 0) #18
  tail call void @uiBoundsBlock(ptr noundef %4, i32 noundef 6) #18
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 2) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uiTemplateNodeSocket(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #18
  tail call void @uiBlockBeginAlign(ptr noundef %4) #18
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27136, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %5, i16 noundef signext %5, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %7 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 26
  tail call void @rgba_float_to_uchar(ptr noundef nonnull %7, ptr noundef %2) #18
  tail call void @uiBlockEndAlign(ptr noundef %4) #18
  ret void
}

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare signext i16 @RNA_type_to_ID_code(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @template_ID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 !PGOFuncName !273 {
  %10 = alloca %struct.PointerRNA, align 8
  %11 = alloca [128 x i8], align 16
  %12 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #20
  %13 = getelementptr inbounds %struct.TemplateID, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call zeroext i8 @RNA_property_editable(ptr noundef %2, ptr noundef %14) #18
  %16 = load ptr, ptr %13, align 8, !tbaa !50
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %10, ptr noundef %2, ptr noundef %16) #18
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = load ptr, ptr %2, align 8, !tbaa !274
  %20 = call ptr @uiLayoutGetBlock(ptr noundef %1) #18
  call void @uiBlockBeginAlign(ptr noundef %20) #18
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %10, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %3, ptr %22
  %25 = and i32 %5, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %55, label %27

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.TemplateID, ptr %2, i64 0, i32 5
  store i8 1, ptr %28, align 8, !tbaa !275
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %30 = call ptr %29(ptr noundef nonnull %2) #18
  %31 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %32 = mul i16 %31, 6
  %33 = call fastcc ptr @template_id_browse_tip(ptr noundef %24) #19
  %34 = call ptr @uiDefBlockButN(ptr noundef %20, ptr noundef nonnull @id_search_menu, ptr noundef %30, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %32, i16 noundef signext %32, ptr noundef nonnull %33) #18
  %35 = icmp eq ptr %18, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = call i32 @ui_id_icon_get(ptr noundef %0, ptr noundef nonnull %18, i8 noundef zeroext 1) #18
  br label %40

38:                                               ; preds = %27
  %39 = call i32 @RNA_struct_ui_icon(ptr noundef %24) #18
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.uiBut, ptr %34, i64 0, i32 44
  store i32 %41, ptr %42, align 8, !tbaa !128
  call void @uiButSetFlag(ptr noundef %34, i32 noundef 136) #18
  %43 = icmp eq ptr %19, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !118
  %47 = icmp eq ptr %46, null
  %48 = icmp ne i8 %15, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %53, label %52

50:                                               ; preds = %40
  %51 = icmp eq i8 %15, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %50, %44
  call void @uiButSetFlag(ptr noundef nonnull %34, i32 noundef 2048) #18
  br label %53

53:                                               ; preds = %44, %52, %50
  %54 = call ptr @uiLayoutRow(ptr noundef %1, i32 noundef 1) #18
  br label %79

55:                                               ; preds = %9
  %56 = and i32 %5, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %60 = call ptr %59(ptr noundef nonnull %2) #18
  %61 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %62 = sitofp i16 %61 to double
  %63 = fmul double %62, 1.600000e+00
  %64 = fptosi double %63 to i16
  %65 = call fastcc ptr @template_id_browse_tip(ptr noundef %24) #19
  %66 = call ptr @uiDefBlockButN(ptr noundef %20, ptr noundef nonnull @id_search_menu, ptr noundef %60, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %64, i16 noundef signext %61, ptr noundef nonnull %65) #18
  %67 = call i32 @RNA_struct_ui_icon(ptr noundef %24) #18
  %68 = getelementptr inbounds %struct.uiBut, ptr %66, i64 0, i32 44
  store i32 %67, ptr %68, align 8, !tbaa !128
  call void @uiButSetDragID(ptr noundef %66, ptr noundef %18) #18
  call void @uiButSetFlag(ptr noundef %66, i32 noundef 8) #18
  call void @uiButSetDrawFlag(ptr noundef %66, i32 noundef 4) #18
  %69 = icmp eq ptr %19, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !118
  %73 = icmp eq ptr %72, null
  %74 = icmp ne i8 %15, 0
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %79, label %78

76:                                               ; preds = %58
  %77 = icmp eq i8 %15, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %76, %70
  call void @uiButSetFlag(ptr noundef nonnull %66, i32 noundef 2048) #18
  br label %79

79:                                               ; preds = %55, %70, %78, %76, %53
  %80 = icmp eq ptr %18, null
  br i1 %80, label %169, label %81

81:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #20
  %82 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !276
  %84 = icmp slt i32 %83, 1
  store i8 0, ptr %11, align 16, !tbaa !58
  %85 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %86 = mul i16 %85, 6
  %87 = call ptr @RNA_struct_ui_description(ptr noundef %24) #18
  %88 = call ptr @uiDefButR(ptr noundef %20, i32 noundef 3072, i32 noundef 0, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0, i16 noundef signext %86, i16 noundef signext %85, ptr noundef nonnull %10, ptr noundef nonnull @.str.54, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef %87) #18
  %89 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %90 = call ptr %89(ptr noundef nonnull %2) #18
  call void @uiButSetNFunc(ptr noundef %88, ptr noundef nonnull @template_id_cb, ptr noundef %90, ptr noundef nonnull inttoptr (i64 1 to ptr)) #18
  br i1 %84, label %91, label %92

91:                                               ; preds = %81
  call void @uiButSetFlag(ptr noundef %88, i32 noundef 65536) #18
  br label %92

92:                                               ; preds = %91, %81
  %93 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !118
  %95 = icmp eq ptr %94, null
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 5
  %98 = load i16, ptr %97, align 2, !tbaa !277
  %99 = and i16 %98, 2
  %100 = icmp eq i16 %99, 0
  %101 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  br i1 %100, label %104, label %102

102:                                              ; preds = %96
  %103 = call ptr @uiDefIconBut(ptr noundef %20, i32 noundef 512, i32 noundef 0, i32 noundef 196, i32 noundef 0, i32 noundef 0, i16 noundef signext %101, i16 noundef signext %101, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.65) #18
  br label %114

104:                                              ; preds = %96
  %105 = call ptr @uiDefIconBut(ptr noundef %20, i32 noundef 512, i32 noundef 0, i32 noundef 170, i32 noundef 0, i32 noundef 0, i16 noundef signext %101, i16 noundef signext %101, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.66) #18
  %106 = call zeroext i8 @id_make_local(ptr noundef nonnull %18, i8 noundef zeroext 1) #18
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = icmp eq ptr %19, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !118
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %104, %110, %102
  %115 = phi ptr [ %103, %102 ], [ %105, %110 ], [ %105, %104 ]
  call void @uiButSetFlag(ptr noundef %115, i32 noundef 2048) #18
  br label %116

116:                                              ; preds = %114, %108, %110
  %117 = phi ptr [ %105, %110 ], [ %105, %108 ], [ %115, %114 ]
  %118 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %119 = call ptr %118(ptr noundef nonnull %2) #18
  call void @uiButSetNFunc(ptr noundef %117, ptr noundef nonnull @template_id_cb, ptr noundef %119, ptr noundef nonnull inttoptr (i64 64 to ptr)) #18
  br label %120

120:                                              ; preds = %116, %92
  %121 = phi ptr [ %117, %116 ], [ %88, %92 ]
  %122 = load i32, ptr %82, align 4, !tbaa !276
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %157

124:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #20
  %125 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %12, i64 noundef 32, ptr noundef nonnull @.str.67, i32 noundef %122) #18
  %126 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %127 = load i32, ptr %82, align 4, !tbaa !276
  %128 = icmp slt i32 %127, 10
  %129 = select i1 %128, i16 0, i16 10
  %130 = add i16 %129, %126
  %131 = call ptr @uiDefBut(ptr noundef %20, i32 noundef 512, i32 noundef 0, ptr noundef nonnull %12, i32 noundef 0, i32 noundef 0, i16 noundef signext %130, i16 noundef signext %126, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.68) #18
  %132 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %133 = call ptr %132(ptr noundef nonnull %2) #18
  call void @uiButSetNFunc(ptr noundef %131, ptr noundef nonnull @template_id_cb, ptr noundef %133, ptr noundef nonnull inttoptr (i64 16 to ptr)) #18
  %134 = call zeroext i8 @id_copy(ptr noundef nonnull %18, ptr noundef null, i8 noundef zeroext 1) #18
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %155, label %136

136:                                              ; preds = %124
  %137 = icmp eq ptr %19, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !118
  %141 = icmp eq ptr %140, null
  %142 = icmp ne i8 %15, 0
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %146, label %155

144:                                              ; preds = %136
  %145 = icmp eq i8 %15, 0
  br i1 %145, label %155, label %156

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4
  %148 = load i16, ptr %147, align 8, !tbaa !61
  %149 = icmp eq i16 %148, 16975
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 27
  %152 = load i32, ptr %151, align 8, !tbaa !91
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150, %144, %138, %124
  call void @uiButSetFlag(ptr noundef %131, i32 noundef 2048) #18
  br label %156

156:                                              ; preds = %144, %155, %150, %146
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #20
  br label %157

157:                                              ; preds = %156, %120
  %158 = phi ptr [ %131, %156 ], [ %121, %120 ]
  br i1 %84, label %159, label %160

159:                                              ; preds = %157
  call void @uiButSetFlag(ptr noundef %158, i32 noundef 65536) #18
  br label %160

160:                                              ; preds = %159, %157
  %161 = load ptr, ptr %93, align 8, !tbaa !118
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %165 = load i16, ptr %164, align 8, !tbaa !61
  switch i16 %165, label %166 [
    i16 21063, label %172
    i16 17235, label %172
    i16 21075, label %172
    i16 22612, label %172
    i16 16975, label %172
  ]

166:                                              ; preds = %163
  %167 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %168 = call ptr @uiDefButR(ptr noundef %20, i32 noundef 1536, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0, i16 noundef signext %167, i16 noundef signext %167, ptr noundef nonnull %10, ptr noundef nonnull @.str.70, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #18
  br label %172

169:                                              ; preds = %79
  %170 = and i32 %5, 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %222, label %177

172:                                              ; preds = %160, %166, %163, %163, %163, %163, %163
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #20
  %173 = and i32 %5, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %207, label %175

175:                                              ; preds = %172
  %176 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  br label %183

177:                                              ; preds = %169
  %178 = and i32 %5, 8
  %179 = icmp eq i32 %178, 0
  %180 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %181 = select i1 %179, i16 6, i16 3
  %182 = mul i16 %181, %180
  br label %183

183:                                              ; preds = %177, %175
  %184 = phi ptr [ @.str.3, %175 ], [ @.str.71, %177 ]
  %185 = phi i16 [ %176, %175 ], [ %180, %177 ]
  %186 = phi i16 [ %176, %175 ], [ %182, %177 ]
  %187 = icmp eq ptr %6, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %183
  %189 = call ptr @uiDefIconTextButO(ptr noundef %20, i32 noundef 512, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 31, ptr noundef nonnull %184, i32 noundef 0, i32 noundef 0, i16 noundef signext %186, i16 noundef signext %185, ptr noundef null) #18
  br label %192

190:                                              ; preds = %183
  %191 = call ptr @uiDefIconTextBut(ptr noundef %20, i32 noundef 512, i32 noundef 0, i32 noundef 31, ptr noundef nonnull %184, i32 noundef 0, i32 noundef 0, i16 noundef signext %186, i16 noundef signext %185, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #18
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi ptr [ %191, %190 ], [ %189, %188 ]
  %194 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %195 = call ptr %194(ptr noundef nonnull %2) #18
  call void @uiButSetNFunc(ptr noundef %193, ptr noundef nonnull @template_id_cb, ptr noundef %195, ptr noundef nonnull inttoptr (i64 4 to ptr)) #18
  %196 = icmp eq ptr %19, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !118
  %200 = icmp eq ptr %199, null
  %201 = icmp ne i8 %15, 0
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %206, label %205

203:                                              ; preds = %192
  %204 = icmp eq i8 %15, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %203, %197
  call void @uiButSetFlag(ptr noundef %193, i32 noundef 2048) #18
  br label %206

206:                                              ; preds = %203, %205, %197
  br i1 %80, label %222, label %207

207:                                              ; preds = %172, %206
  %208 = phi i1 [ false, %206 ], [ true, %172 ]
  %209 = call zeroext i8 @BKE_pack_check(ptr noundef nonnull %18) #18
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %207
  %212 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %213 = call ptr @uiDefIconButO(ptr noundef %20, i32 noundef 512, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef 179, i32 noundef 0, i32 noundef 0, i16 noundef signext %212, i16 noundef signext %212, ptr noundef nonnull @.str.73) #18
  %214 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %213) #18
  %215 = getelementptr inbounds %struct.uiBut, ptr %213, i64 0, i32 60
  %216 = load ptr, ptr %215, align 8, !tbaa !278
  %217 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4
  %218 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %216, ptr noundef nonnull @.str.74, ptr noundef nonnull %218) #18
  %219 = load ptr, ptr %215, align 8, !tbaa !278
  %220 = load i16, ptr %217, align 8, !tbaa !61
  %221 = sext i16 %220 to i32
  call void @RNA_int_set(ptr noundef %219, ptr noundef nonnull @.str.75, i32 noundef %221) #18
  br label %251

222:                                              ; preds = %169, %207, %206
  %223 = phi i1 [ %208, %207 ], [ false, %206 ], [ true, %169 ]
  %224 = and i32 %5, 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %251, label %226

226:                                              ; preds = %222
  %227 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %228 = select i1 %223, i16 6, i16 3
  %229 = select i1 %80, i16 %228, i16 1
  %230 = mul i16 %227, %229
  %231 = icmp eq ptr %7, null
  %232 = select i1 %80, ptr @.str.76, ptr @.str.3
  br i1 %231, label %235, label %233

233:                                              ; preds = %226
  %234 = call ptr @uiDefIconTextButO(ptr noundef %20, i32 noundef 512, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 108, ptr noundef nonnull %232, i32 noundef 0, i32 noundef 0, i16 noundef signext %230, i16 noundef signext %227, ptr noundef null) #18
  br label %237

235:                                              ; preds = %226
  %236 = call ptr @uiDefIconTextBut(ptr noundef %20, i32 noundef 512, i32 noundef 0, i32 noundef 108, ptr noundef nonnull %232, i32 noundef 0, i32 noundef 0, i16 noundef signext %230, i16 noundef signext %227, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #18
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi ptr [ %236, %235 ], [ %234, %233 ]
  %239 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %240 = call ptr %239(ptr noundef nonnull %2) #18
  call void @uiButSetNFunc(ptr noundef %238, ptr noundef nonnull @template_id_cb, ptr noundef %240, ptr noundef nonnull inttoptr (i64 8 to ptr)) #18
  %241 = icmp eq ptr %19, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !118
  %245 = icmp eq ptr %244, null
  %246 = icmp ne i8 %15, 0
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %251, label %250

248:                                              ; preds = %237
  %249 = icmp eq i8 %15, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %248, %242
  call void @uiButSetFlag(ptr noundef %238, i32 noundef 2048) #18
  br label %251

251:                                              ; preds = %248, %250, %242, %222, %211
  %252 = and i32 %5, 32
  %253 = icmp eq i32 %252, 0
  %254 = or i1 %253, %80
  br i1 %254, label %291, label %255

255:                                              ; preds = %251
  %256 = icmp eq ptr %8, null
  br i1 %256, label %262, label %257

257:                                              ; preds = %255
  %258 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %259 = call ptr @uiDefIconButO(ptr noundef %20, i32 noundef 512, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %258, i16 noundef signext %258, ptr noundef null) #18
  %260 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %261 = call ptr %260(ptr noundef nonnull %2) #18
  call void @uiButSetNFunc(ptr noundef %259, ptr noundef null, ptr noundef %261, ptr noundef null) #18
  br label %277

262:                                              ; preds = %255
  %263 = load ptr, ptr %13, align 8, !tbaa !50
  %264 = call i32 @RNA_property_flag(ptr noundef %263) #18
  %265 = and i32 %264, 33554432
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %291

267:                                              ; preds = %262
  %268 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %269 = call ptr @uiDefIconBut(ptr noundef %20, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %268, i16 noundef signext %268, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.77) #18
  %270 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %271 = call ptr %270(ptr noundef nonnull %2) #18
  call void @uiButSetNFunc(ptr noundef %269, ptr noundef nonnull @template_id_cb, ptr noundef %271, ptr noundef nonnull inttoptr (i64 32 to ptr)) #18
  %272 = load ptr, ptr %13, align 8, !tbaa !50
  %273 = call i32 @RNA_property_flag(ptr noundef %272) #18
  %274 = and i32 %273, 262144
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %267
  call void @uiButSetFlag(ptr noundef %269, i32 noundef 2048) #18
  br label %277

277:                                              ; preds = %276, %267, %257
  %278 = phi ptr [ %259, %257 ], [ %269, %276 ], [ %269, %267 ]
  %279 = icmp eq ptr %278, null
  br i1 %279, label %291, label %280

280:                                              ; preds = %277
  %281 = icmp eq ptr %19, null
  br i1 %281, label %288, label %282

282:                                              ; preds = %280
  %283 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !118
  %285 = icmp eq ptr %284, null
  %286 = icmp ne i8 %15, 0
  %287 = select i1 %285, i1 %286, i1 false
  br i1 %287, label %291, label %290

288:                                              ; preds = %280
  %289 = icmp eq i8 %15, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %288, %282
  call void @uiButSetFlag(ptr noundef nonnull %278, i32 noundef 2048) #18
  br label %291

291:                                              ; preds = %262, %277, %282, %290, %288, %251
  %292 = icmp eq i16 %4, 17748
  br i1 %292, label %293, label %295

293:                                              ; preds = %291
  %294 = load ptr, ptr %13, align 8, !tbaa !50
  call void @uiTemplateTextureShow(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %2, ptr noundef %294) #18
  br label %295

295:                                              ; preds = %293, %291
  call void @uiBlockEndAlign(ptr noundef %20) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @id_search_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !279 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  store i8 0, ptr @id_search_menu.search, align 16, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @id_search_menu.template, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !280
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %6 = load ptr, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 1), align 8, !tbaa !50
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull @id_search_menu.template, ptr noundef %6) #18
  %7 = getelementptr inbounds i8, ptr %4, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa.struct !111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  %9 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, i16 noundef signext 0) #18
  call void @uiBlockSetFlag(ptr noundef %9, i32 noundef 7) #18
  %10 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 3), align 8, !tbaa !55
  %11 = icmp sgt i32 %10, 0
  %12 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 4), align 4
  %13 = icmp sgt i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %17 = sext i16 %16 to i32
  %18 = shl nsw i32 %17, 2
  %19 = mul nsw i32 %18, %12
  %20 = mul nsw i32 %18, %10
  %21 = trunc i32 %19 to i16
  %22 = trunc i32 %20 to i16
  %23 = add i16 %16, %22
  %24 = call ptr @uiDefBut(ptr noundef %9, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 10, i32 noundef 15, i16 noundef signext %21, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #18
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %26 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 3), align 8, !tbaa !55
  %27 = sitofp i32 %26 to float
  %28 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 4), align 4, !tbaa !56
  %29 = sitofp i32 %28 to float
  %30 = call ptr @uiDefSearchBut(ptr noundef %9, ptr noundef nonnull @id_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 0, i16 noundef signext %21, i16 noundef signext %25, float noundef %27, float noundef %29, ptr noundef nonnull @.str.3) #18
  br label %40

31:                                               ; preds = %3
  %32 = call i32 @uiSearchBoxWidth() #18
  %33 = call i32 @uiSearchBoxHeight() #18
  %34 = trunc i32 %32 to i16
  %35 = trunc i32 %33 to i16
  %36 = call ptr @uiDefBut(ptr noundef %9, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 10, i32 noundef 15, i16 noundef signext %34, i16 noundef signext %35, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #18
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %38 = add i16 %37, -1
  %39 = call ptr @uiDefSearchBut(ptr noundef %9, ptr noundef nonnull @id_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %38, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  br label %40

40:                                               ; preds = %31, %15
  %41 = phi ptr [ %39, %31 ], [ %30, %15 ]
  call void @uiButSetSearchFunc(ptr noundef %41, ptr noundef nonnull @id_search_cb, ptr noundef nonnull @id_search_menu.template, ptr noundef nonnull @id_search_call_cb, ptr noundef %8) #18
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %43 = sitofp i16 %42 to float
  %44 = fmul float %43, 0x3FD3333340000000
  %45 = fptosi float %44 to i32
  call void @uiBoundsBlock(ptr noundef %9, i32 noundef %45) #18
  call void @uiBlockSetDirection(ptr noundef %9, i8 noundef zeroext 2) #18
  call void @uiButSetFocusOnEnter(ptr noundef %5, ptr noundef %41) #18
  %46 = getelementptr inbounds %struct.uiBut, ptr %41, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !40
  %48 = or i32 %47, 524288
  store i32 %48, ptr %46, align 8, !tbaa !40
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @template_id_browse_tip(ptr noundef %0) unnamed_addr #1 !PGOFuncName !281 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = tail call signext i16 @RNA_type_to_ID_code(ptr noundef nonnull %0) #18
  switch i16 %4, label %29 [
    i16 17235, label %30
    i16 16975, label %5
    i16 17741, label %6
    i16 21827, label %7
    i16 16973, label %8
    i16 16717, label %9
    i16 17748, label %10
    i16 19785, label %11
    i16 21324, label %12
    i16 21580, label %13
    i16 16716, label %14
    i16 16707, label %15
    i16 20311, label %16
    i16 21075, label %17
    i16 22612, label %18
    i16 19283, label %19
    i16 20307, label %20
    i16 21057, label %21
    i16 17217, label %22
    i16 21582, label %23
    i16 21058, label %24
    i16 16720, label %25
    i16 17479, label %26
    i16 19536, label %27
    i16 17232, label %28
  ]

5:                                                ; preds = %3
  br label %30

6:                                                ; preds = %3
  br label %30

7:                                                ; preds = %3
  br label %30

8:                                                ; preds = %3
  br label %30

9:                                                ; preds = %3
  br label %30

10:                                               ; preds = %3
  br label %30

11:                                               ; preds = %3
  br label %30

12:                                               ; preds = %3
  br label %30

13:                                               ; preds = %3
  br label %30

14:                                               ; preds = %3
  br label %30

15:                                               ; preds = %3
  br label %30

16:                                               ; preds = %3
  br label %30

17:                                               ; preds = %3
  br label %30

18:                                               ; preds = %3
  br label %30

19:                                               ; preds = %3
  br label %30

20:                                               ; preds = %3
  br label %30

21:                                               ; preds = %3
  br label %30

22:                                               ; preds = %3
  br label %30

23:                                               ; preds = %3
  br label %30

24:                                               ; preds = %3
  br label %30

25:                                               ; preds = %3
  br label %30

26:                                               ; preds = %3
  br label %30

27:                                               ; preds = %3
  br label %30

28:                                               ; preds = %3
  br label %30

29:                                               ; preds = %3, %1
  br label %30

30:                                               ; preds = %3, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %31 = phi ptr [ @.str.104, %29 ], [ @.str.103, %28 ], [ @.str.102, %27 ], [ @.str.101, %26 ], [ @.str.100, %25 ], [ @.str.99, %24 ], [ @.str.98, %23 ], [ @.str.97, %22 ], [ @.str.96, %21 ], [ @.str.95, %20 ], [ @.str.94, %19 ], [ @.str.93, %18 ], [ @.str.92, %17 ], [ @.str.91, %16 ], [ @.str.90, %15 ], [ @.str.89, %14 ], [ @.str.88, %13 ], [ @.str.87, %12 ], [ @.str.86, %11 ], [ @.str.85, %10 ], [ @.str.84, %9 ], [ @.str.83, %8 ], [ @.str.82, %7 ], [ @.str.81, %6 ], [ @.str.80, %5 ], [ @.str.79, %3 ]
  ret ptr %31
}

; Function Attrs: optsize
declare i32 @ui_id_icon_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetDragID(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_ui_description(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @template_id_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !282 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %6 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = ptrtoint ptr %2 to i64
  %11 = trunc i64 %10 to i32
  switch i32 %11, label %60 [
    i32 2, label %12
    i32 512, label %12
    i32 16, label %44
    i32 64, label %35
    i32 32, label %13
    i32 256, label %26
  ]

12:                                               ; preds = %3, %3
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.template_id_cb, i32 noundef %11) #18
  br label %60

13:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %14 = load ptr, ptr %6, align 8, !tbaa !50
  call void @RNA_property_pointer_set(ptr noundef nonnull %1, ptr noundef %14, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #18
  %15 = load ptr, ptr %6, align 8, !tbaa !50
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %15) #18
  %16 = icmp eq ptr %9, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = call ptr @CTX_wm_window(ptr noundef %0) #18
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !169
  %21 = getelementptr inbounds %struct.wmEvent, ptr %20, i64 0, i32 17
  %22 = load i16, ptr %21, align 8, !tbaa !171
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  store i32 0, ptr %25, align 4, !tbaa !276
  br label %60

26:                                               ; preds = %3
  %27 = icmp eq ptr %9, null
  br i1 %27, label %60, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 5
  %30 = load i16, ptr %29, align 2, !tbaa !277
  %31 = and i16 %30, 512
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  call void @id_us_plus(ptr noundef nonnull %9) #18
  br label %60

34:                                               ; preds = %28
  call void @id_us_min(ptr noundef nonnull %9) #18
  br label %60

35:                                               ; preds = %3
  %36 = icmp eq ptr %9, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %35
  %38 = call zeroext i8 @id_make_local(ptr noundef nonnull %9, i8 noundef zeroext 0) #18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %41 = load ptr, ptr %6, align 8, !tbaa !50
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %1, ptr noundef %41) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  %42 = load ptr, ptr %6, align 8, !tbaa !50
  call void @RNA_property_pointer_set(ptr noundef nonnull %1, ptr noundef %42, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #18
  %43 = load ptr, ptr %6, align 8, !tbaa !50
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %43) #18
  br label %60

44:                                               ; preds = %3
  %45 = icmp eq ptr %9, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %48 = load i16, ptr %47, align 8, !tbaa !61
  %49 = icmp eq i16 %48, 16975
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !283
  %53 = icmp eq ptr %52, @RNA_SceneObjects
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call ptr @CTX_data_main(ptr noundef %0) #18
  %56 = call ptr @CTX_data_scene(ptr noundef %0) #18
  call void @ED_object_single_user(ptr noundef %55, ptr noundef %56, ptr noundef nonnull %9) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %56) #18
  call void @DAG_relations_tag_update(ptr noundef %55) #18
  br label %60

57:                                               ; preds = %50, %46
  %58 = load ptr, ptr %6, align 8, !tbaa !50
  %59 = call zeroext i8 @id_single_user(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1, ptr noundef %58) #18
  br label %60

60:                                               ; preds = %12, %3, %24, %17, %13, %33, %34, %37, %40, %35, %44, %57, %54, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @id_make_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @id_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefIconTextButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_pack_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiTemplateTextureShow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @id_search_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 !PGOFuncName !284 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [67 x i8], align 16
  %7 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = load ptr, ptr %1, align 8, !tbaa !274
  %10 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call i32 @RNA_property_flag(ptr noundef %11) #18
  %13 = load ptr, ptr %8, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %15

15:                                               ; preds = %4
  %16 = and i32 %12, 1048576
  %17 = icmp ne i32 %16, 0
  %18 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 5
  br label %19

19:                                               ; preds = %15, %54
  %20 = phi ptr [ %13, %15 ], [ %55, %54 ]
  %21 = icmp eq ptr %20, %9
  %22 = select i1 %17, i1 %21, i1 false
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %10, align 8, !tbaa !50
  %25 = call i32 @RNA_property_type(ptr noundef %24) #18
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @RNA_id_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull %5) #18
  %28 = load ptr, ptr %10, align 8, !tbaa !50
  %29 = call i32 @RNA_property_pointer_poll(ptr noundef nonnull %1, ptr noundef %28, ptr noundef nonnull %5) #18
  %30 = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br i1 %30, label %54, label %31

31:                                               ; preds = %27, %23
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !285
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  %37 = load i8, ptr %36, align 2, !tbaa !58
  %38 = icmp eq i8 %37, 46
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8, ptr %2, align 1, !tbaa !58
  %41 = icmp eq i8 %40, 46
  br i1 %41, label %45, label %54

42:                                               ; preds = %35, %31
  %43 = load i8, ptr %2, align 1, !tbaa !58
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %39, %42
  %46 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  %47 = call ptr @BLI_strcasestr(ptr noundef nonnull %46, ptr noundef nonnull %2) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45, %42
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %6) #20
  call void @name_uiprefix_id(ptr noundef nonnull %6, ptr noundef nonnull %20) #18
  %50 = load i8, ptr %18, align 8, !tbaa !275
  %51 = call i32 @ui_id_icon_get(ptr noundef %0, ptr noundef nonnull %20, i8 noundef zeroext %50) #18
  %52 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %20, i32 noundef %51) #18
  %53 = icmp eq i8 %52, 0
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %6) #20
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %27, %19, %45, %39
  %55 = load ptr, ptr %20, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %19, !llvm.loop !286

57:                                               ; preds = %54, %49, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @id_search_call_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !287 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  call void @RNA_id_pointer_create(ptr noundef nonnull %2, ptr noundef nonnull %4) #18
  %7 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  call void @RNA_property_pointer_set(ptr noundef %1, ptr noundef %8, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #18
  %9 = load ptr, ptr %7, align 8, !tbaa !50
  call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  br label %10

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare i32 @uiSearchBoxWidth() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @uiSearchBoxHeight() local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiButSetFocusOnEnter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @RNA_property_pointer_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @name_uiprefix_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_object_single_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @id_single_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @modifiers_convertToReal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !288 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !74
  %6 = tail call ptr @modifier_new(i32 noundef %5) #18
  tail call void @modifier_copyData(ptr noundef %2, ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = and i32 %8, -33
  store i32 %9, ptr %7, align 4, !tbaa !69
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef %6) #18
  tail call void @modifier_unique_name(ptr noundef nonnull %10, ptr noundef %6) #18
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  store i16 0, ptr %11, align 2, !tbaa !289
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %1) #18
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 2) #18
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.134) #18
  ret void
}

; Function Attrs: optsize
declare void @uiLayoutSetRedAlert(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @modifier_supportsCage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @modifier_couldBeCage(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @modifier_can_delete(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !290 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !74
  %4 = icmp eq i32 %3, 19
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %struct.ParticleSettings, ptr %9, i64 0, i32 7
  %11 = load i16, ptr %10, align 8, !tbaa !291
  %12 = icmp eq i16 %11, 3
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i32 [ 1, %13 ], [ 0, %5 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @modifier_is_simulation(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !292 {
  %2 = getelementptr inbounds %struct.ModifierData, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !74
  switch i32 %3, label %5 [
    i32 22, label %6
    i32 23, label %6
    i32 26, label %6
    i32 31, label %6
    i32 10, label %6
    i32 30, label %6
    i32 40, label %6
    i32 19, label %4
  ]

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %5, %4
  %7 = phi i32 [ 2, %4 ], [ 0, %5 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %7
}

; Function Attrs: optsize
declare void @uiItemStringO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @modifier_isSameTopology(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @modifier_isNonGeometrical(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @do_constraint_panels(ptr noundef %0, ptr noundef %1, i32 %2) #1 !PGOFuncName !293 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !81
  %6 = icmp eq i16 %5, 25
  %7 = select i1 %6, i16 3, i16 1
  tail call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext %7) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @constraint_active_func(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !294 {
  tail call void @ED_object_constraint_set_active(ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: optsize
declare void @ED_object_constraint_set_active(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !295 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !115
  %4 = load float, ptr %0, align 4, !tbaa !114
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorband_add_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !296 {
  %4 = load i16, ptr %2, align 4, !tbaa !122
  %5 = icmp sgt i16 %4, 1
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !123
  %9 = sext i16 %8 to i32
  %10 = icmp sgt i16 %8, 0
  %11 = add nsw i32 %9, -1
  %12 = zext nneg i32 %11 to i64
  %13 = zext nneg i16 %8 to i64
  %14 = add nsw i32 %9, 1
  %15 = sext i32 %14 to i64
  %16 = sext i16 %8 to i64
  %17 = select i1 %10, i64 %13, i64 %16
  %18 = select i1 %10, i64 %12, i64 %15
  %19 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %18, i32 4
  %20 = load float, ptr %19, align 4, !tbaa !297
  %21 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %17, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !297
  %23 = fadd float %20, %22
  %24 = fmul float %23, 5.000000e-01
  br label %25

25:                                               ; preds = %6, %3
  %26 = phi float [ 5.000000e-01, %3 ], [ %24, %6 ]
  %27 = tail call ptr @colorband_element_add(ptr noundef nonnull %2, float noundef %26) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr poison) #19
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.153) #18
  br label %30

30:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorband_del_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !299 {
  %4 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !123
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @colorband_element_remove(ptr noundef %2, i32 noundef %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.154) #18
  tail call void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr poison) #19
  br label %10

10:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorband_flip_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #1 !PGOFuncName !300 {
  %4 = alloca [32 x %struct.CBData], align 16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #20
  %5 = load i16, ptr %2, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i16 %5, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = zext nneg i16 %5 to i64
  %10 = zext nneg i32 %6 to i64
  br label %14

11:                                               ; preds = %14
  br i1 %7, label %12, label %30

12:                                               ; preds = %11
  %13 = zext nneg i32 %6 to i64
  br label %21

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %17, %14 ]
  %16 = getelementptr inbounds [32 x %struct.CBData], ptr %4, i64 0, i64 %15
  %17 = add nuw nsw i64 %15, 1
  %18 = sub nsw i64 %9, %17
  %19 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 4 dereferenceable(24) %19, i64 24, i1 false), !tbaa.struct !301
  %20 = icmp eq i64 %17, %10
  br i1 %20, label %11, label %14, !llvm.loop !302

21:                                               ; preds = %12, %21
  %22 = phi i64 [ 0, %12 ], [ %28, %21 ]
  %23 = getelementptr inbounds [32 x %struct.CBData], ptr %4, i64 0, i64 %22
  %24 = getelementptr inbounds [32 x %struct.CBData], ptr %4, i64 0, i64 %22, i32 4
  %25 = load float, ptr %24, align 8, !tbaa !297
  %26 = fsub float 1.000000e+00, %25
  store float %26, ptr %24, align 8, !tbaa !297
  %27 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %23, i64 24, i1 false), !tbaa.struct !301
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %13
  br i1 %29, label %30, label %21, !llvm.loop !303

30:                                               ; preds = %21, %3, %11
  %31 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !123
  %33 = xor i16 %32, -1
  %34 = add i16 %5, %33
  store i16 %34, ptr %31, align 2, !tbaa !123
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.155) #18
  tail call void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr poison) #19
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @colorband_update_cb(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #1 !PGOFuncName !304 {
  tail call void @colorband_update_sort(ptr noundef %2) #18
  %4 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6
  %5 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !123
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds %struct.CBData, ptr %4, i64 %7
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !305
  ret void
}

; Function Attrs: optsize
declare ptr @colorband_element_add(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @colorband_element_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @colorband_update_sort(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_buttons_redraw(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #1 !PGOFuncName !306 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @ED_region_tag_redraw(ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_buttons_zoom_in(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !307 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4
  %5 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #19
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5
  %7 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #19
  %8 = fmul float %7, 0x3FA47AE140000000
  %9 = fcmp ogt float %5, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = fmul float %5, 0x3FBD8ADAC0000000
  %12 = load float, ptr %4, align 8, !tbaa !308
  %13 = fadd float %11, %12
  store float %13, ptr %4, align 8, !tbaa !308
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 1
  %15 = load float, ptr %14, align 4, !tbaa !309
  %16 = fsub float %15, %11
  store float %16, ptr %14, align 4, !tbaa !309
  %17 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #19
  %18 = fmul float %17, 0x3FBD8ADAC0000000
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 2
  %20 = load float, ptr %19, align 8, !tbaa !310
  %21 = fadd float %20, %18
  store float %21, ptr %19, align 8, !tbaa !310
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !311
  %24 = fsub float %23, %18
  store float %24, ptr %22, align 4, !tbaa !311
  br label %25

25:                                               ; preds = %10, %3
  %26 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @ED_region_tag_redraw(ptr noundef %26) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_buttons_zoom_out(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !312 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4
  %5 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %4) #19
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5
  %7 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %6) #19
  %8 = fmul float %7, 2.000000e+01
  %9 = fcmp olt float %5, %8
  br i1 %9, label %10, label %67

10:                                               ; preds = %3
  %11 = fmul float %5, 0x3FC3333340000000
  %12 = load i32, ptr %1, align 8, !tbaa !146
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  %15 = load float, ptr %4, align 8, !tbaa !308
  %16 = fsub float %15, %11
  br i1 %14, label %29, label %17

17:                                               ; preds = %10
  %18 = load float, ptr %6, align 8, !tbaa !313
  %19 = fcmp olt float %16, %18
  %20 = fsub float %15, %18
  %21 = select i1 %19, float %20, float %11
  %22 = fsub float %15, %21
  store float %22, ptr %4, align 8, !tbaa !308
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !309
  %25 = fadd float %11, %24
  %26 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !314
  %28 = fcmp ogt float %25, %27
  br i1 %28, label %32, label %34

29:                                               ; preds = %10
  store float %16, ptr %4, align 8, !tbaa !308
  %30 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !309
  br label %34

32:                                               ; preds = %17
  %33 = fsub float %27, %24
  br label %34

34:                                               ; preds = %29, %17, %32
  %35 = phi float [ %24, %32 ], [ %24, %17 ], [ %31, %29 ]
  %36 = phi float [ %33, %32 ], [ %11, %17 ], [ %11, %29 ]
  %37 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 1
  %38 = fadd float %36, %35
  store float %38, ptr %37, align 4, !tbaa !309
  %39 = tail call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %4) #19
  %40 = fmul float %39, 0x3FC3333340000000
  %41 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !310
  %43 = fsub float %42, %40
  br i1 %14, label %57, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5, i32 2
  %46 = load float, ptr %45, align 8, !tbaa !315
  %47 = fcmp olt float %43, %46
  %48 = fsub float %42, %46
  %49 = select i1 %47, float %48, float %40
  %50 = fsub float %42, %49
  store float %50, ptr %41, align 8, !tbaa !310
  %51 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !311
  %53 = fadd float %40, %52
  %54 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5, i32 3
  %55 = load float, ptr %54, align 4, !tbaa !316
  %56 = fcmp ogt float %53, %55
  br i1 %56, label %60, label %62

57:                                               ; preds = %34
  store float %43, ptr %41, align 8, !tbaa !310
  %58 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 3
  %59 = load float, ptr %58, align 4, !tbaa !311
  br label %62

60:                                               ; preds = %44
  %61 = fsub float %55, %52
  br label %62

62:                                               ; preds = %57, %44, %60
  %63 = phi float [ %52, %60 ], [ %52, %44 ], [ %59, %57 ]
  %64 = phi float [ %61, %60 ], [ %40, %44 ], [ %40, %57 ]
  %65 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 3
  %66 = fadd float %64, %63
  store float %66, ptr %65, align 4, !tbaa !311
  br label %67

67:                                               ; preds = %62, %3
  %68 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @ED_region_tag_redraw(ptr noundef %68) #18
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefIconBlockBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @curvemap_brush_tools_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !317 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %5 = mul i16 %4, 10
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_brush_tools_func, i16 noundef signext 0) #18
  tail call void @uiBlockSetButmFunc(ptr noundef %6, ptr noundef nonnull @curvemap_tools_dofunc, ptr noundef %2) #18
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %8 = sub i16 0, %7
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef %9, i16 noundef signext %5, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #18
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %12 = sub i16 %8, %11
  %13 = sext i16 %12 to i32
  %14 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.176, i32 noundef 0, i32 noundef %13, i16 noundef signext %5, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #18
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %16 = sub i16 %12, %15
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.177, i32 noundef 0, i32 noundef %17, i16 noundef signext %5, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 4.000000e+00, ptr noundef nonnull @.str.3) #18
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %20 = sub i16 %16, %19
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.178, i32 noundef 0, i32 noundef %21, i16 noundef signext %5, i16 noundef signext %19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 8) #18
  tail call void @uiTextBoundsBlock(ptr noundef %6, i32 noundef 50) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @curvemap_tools_negslope_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !318 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %5 = mul i16 %4, 10
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_tools_negslope_func, i16 noundef signext 0) #18
  tail call void @uiBlockSetButmFunc(ptr noundef %6, ptr noundef nonnull @curvemap_tools_dofunc, ptr noundef %2) #18
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %8 = sub i16 0, %7
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef %9, i16 noundef signext %5, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #18
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %12 = sub i16 %8, %11
  %13 = sext i16 %12 to i32
  %14 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.176, i32 noundef 0, i32 noundef %13, i16 noundef signext %5, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #18
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %16 = sub i16 %12, %15
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.177, i32 noundef 0, i32 noundef %17, i16 noundef signext %5, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 4.000000e+00, ptr noundef nonnull @.str.3) #18
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %20 = sub i16 %16, %19
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.180, i32 noundef 0, i32 noundef %21, i16 noundef signext %5, i16 noundef signext %19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #18
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %24 = sub i16 %20, %23
  %25 = sext i16 %24 to i32
  %26 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.181, i32 noundef 0, i32 noundef %25, i16 noundef signext %5, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 6.000000e+00, ptr noundef nonnull @.str.3) #18
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %28 = sub i16 %24, %27
  %29 = sext i16 %28 to i32
  %30 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.178, i32 noundef 0, i32 noundef %29, i16 noundef signext %5, i16 noundef signext %27, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 8) #18
  tail call void @uiTextBoundsBlock(ptr noundef %6, i32 noundef 50) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @curvemap_tools_posslope_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !319 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %5 = mul i16 %4, 10
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_tools_posslope_func, i16 noundef signext 0) #18
  tail call void @uiBlockSetButmFunc(ptr noundef %6, ptr noundef nonnull @curvemap_tools_dofunc, ptr noundef %2) #18
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %8 = sub i16 0, %7
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef %9, i16 noundef signext %5, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #18
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %12 = sub i16 %8, %11
  %13 = sext i16 %12 to i32
  %14 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.176, i32 noundef 0, i32 noundef %13, i16 noundef signext %5, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #18
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %16 = sub i16 %12, %15
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.177, i32 noundef 0, i32 noundef %17, i16 noundef signext %5, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 4.000000e+00, ptr noundef nonnull @.str.3) #18
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %20 = sub i16 %16, %19
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.180, i32 noundef 0, i32 noundef %21, i16 noundef signext %5, i16 noundef signext %19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #18
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %24 = sub i16 %20, %23
  %25 = sext i16 %24 to i32
  %26 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.181, i32 noundef 0, i32 noundef %25, i16 noundef signext %5, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 6.000000e+00, ptr noundef nonnull @.str.3) #18
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %28 = sub i16 %24, %27
  %29 = sext i16 %28 to i32
  %30 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.178, i32 noundef 0, i32 noundef %29, i16 noundef signext %5, i16 noundef signext %27, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 8) #18
  tail call void @uiTextBoundsBlock(ptr noundef %6, i32 noundef 50) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @curvemap_clipping_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !320 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %5 = sext i16 %4 to i32
  %6 = shl nsw i32 %5, 3
  %7 = sitofp i32 %6 to float
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_clipping_func, i16 noundef signext 0) #18
  %9 = fadd float %7, 8.000000e+00
  %10 = fptosi float %9 to i16
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %12 = mul i16 %11, 6
  %13 = tail call ptr @uiDefBut(ptr noundef %8, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef -4, i32 noundef 16, i16 noundef signext %10, i16 noundef signext %12, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 5
  %17 = trunc i32 %6 to i16
  %18 = tail call ptr @uiDefButBitI(ptr noundef %8, i32 noundef 1536, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.182, i32 noundef 0, i32 noundef %16, i16 noundef signext %17, i16 noundef signext %14, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+01, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiButSetFunc(ptr noundef %18, ptr noundef nonnull @curvemap_buttons_setclip, ptr noundef %2, ptr noundef null) #18
  tail call void @uiBlockBeginAlign(ptr noundef %8) #18
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %20 = sext i16 %19 to i32
  %21 = shl nsw i32 %20, 2
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !314
  %25 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.183, i32 noundef 0, i32 noundef %21, i16 noundef signext %17, i16 noundef signext %19, ptr noundef nonnull %22, float noundef -1.000000e+02, float noundef %24, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #18
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %27, 3
  %29 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5, i32 2
  %30 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !316
  %32 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.184, i32 noundef 0, i32 noundef %28, i16 noundef signext %17, i16 noundef signext %26, ptr noundef nonnull %29, float noundef -1.000000e+02, float noundef %31, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #18
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %34 = sext i16 %33 to i32
  %35 = shl nsw i32 %34, 1
  %36 = load float, ptr %22, align 8, !tbaa !313
  %37 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.185, i32 noundef 0, i32 noundef %35, i16 noundef signext %17, i16 noundef signext %33, ptr noundef nonnull %23, float noundef %36, float noundef 1.000000e+02, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #18
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !82
  %39 = sext i16 %38 to i32
  %40 = load float, ptr %29, align 8, !tbaa !315
  %41 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.186, i32 noundef 0, i32 noundef %39, i16 noundef signext %17, i16 noundef signext %38, ptr noundef nonnull %30, float noundef %40, float noundef 1.000000e+02, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #18
  tail call void @uiBlockSetDirection(ptr noundef %8, i8 noundef zeroext 8) #18
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_buttons_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !321 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 6
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !142
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7
  tail call void @curvemap_remove(ptr noundef nonnull %8, i16 noundef signext 1) #18
  tail call void @curvemapping_changed(ptr noundef %2, i8 noundef zeroext 0) #18
  tail call void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr poison) #19
  ret void
}

; Function Attrs: optsize
declare void @uiBlockSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_buttons_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !322 {
  tail call void @curvemapping_changed(ptr noundef %2, i8 noundef zeroext 1) #18
  tail call void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr poison) #19
  ret void
}

; Function Attrs: optsize
declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_buttons_reset(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !323 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !324
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 6
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5
  br label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ 0, %3 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.CurveMap, ptr %5, i64 %8
  %10 = load i32, ptr %4, align 8, !tbaa !324
  tail call void @curvemap_reset(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef %10, i32 noundef 1) #18
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %7, !llvm.loop !325

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 7
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 8, i64 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %15, align 4, !tbaa !152
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %14, align 8, !tbaa !152
  tail call void @curvemapping_set_black_white(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #18
  tail call void @curvemapping_changed(ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  tail call void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr poison) #19
  ret void
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !326 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !117
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !116
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @uiBlockSetButmFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_tools_dofunc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 !PGOFuncName !327 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !142
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7
  switch i32 %2, label %28 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %15
    i32 3, label %18
    i32 4, label %19
    i32 5, label %20
    i32 6, label %24
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !324
  %13 = icmp ne i32 %2, 0
  %14 = zext i1 %13 to i32
  tail call void @curvemap_reset(ptr noundef nonnull %8, ptr noundef nonnull %10, i32 noundef %12, i32 noundef %14) #18
  tail call void @curvemapping_changed(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %28

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !151
  br label %28

18:                                               ; preds = %3
  tail call void @curvemap_sethandle(ptr noundef nonnull %8, i32 noundef 1) #18
  tail call void @curvemapping_changed(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %28

19:                                               ; preds = %3
  tail call void @curvemap_sethandle(ptr noundef nonnull %8, i32 noundef 0) #18
  tail call void @curvemapping_changed(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %28

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !328
  %23 = and i16 %22, -2
  store i16 %23, ptr %21, align 2, !tbaa !328
  tail call void @curvemapping_changed(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !328
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !328
  tail call void @curvemapping_changed(ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br label %28

28:                                               ; preds = %3, %24, %20, %19, %18, %15, %9
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.179) #18
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  tail call void @ED_region_tag_redraw(ptr noundef %29) #18
  ret void
}

; Function Attrs: optsize
declare void @uiTextBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemap_sethandle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiDefButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @curvemap_buttons_setclip(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !329 {
  tail call void @curvemapping_changed(ptr noundef %1, i8 noundef zeroext 0) #18
  ret void
}

; Function Attrs: optsize
declare void @curvemap_remove(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !330 {
  %3 = load float, ptr %0, align 4, !tbaa !152
  %4 = load float, ptr %1, align 4, !tbaa !152
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !152
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !152
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !152
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !152
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_name_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cmpstringp(ptr noundef %0, ptr noundef %1) #1 !PGOFuncName !331 {
  %3 = tail call i32 @BLI_strcasecmp(ptr noundef %0, ptr noundef %1) #18
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #0 !PGOFuncName !332 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: optsize
declare void @WM_operatortype_iter(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #13 !PGOFuncName !333 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #12 !PGOFuncName !336 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !337
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @WM_operator_poll(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_key_event_operator_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_jobs_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiLayoutColumnFlow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_keyconfig_update_tag(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !42, i64 16}
!41 = !{!"uiBut", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !43, i64 32, !43, i64 34, !43, i64 36, !43, i64 38, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !43, i64 48, !35, i64 56, !36, i64 64, !36, i64 192, !44, i64 592, !35, i64 608, !45, i64 616, !45, i64 620, !45, i64 624, !45, i64 628, !45, i64 632, !45, i64 636, !36, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !36, i64 760, !35, i64 768, !35, i64 776, !42, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !43, i64 794, !43, i64 796, !35, i64 800, !35, i64 808, !46, i64 816, !35, i64 840, !42, i64 848, !46, i64 856, !35, i64 880, !35, i64 888, !35, i64 896, !43, i64 904, !36, i64 906, !36, i64 907, !35, i64 912, !35, i64 920, !45, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992}
!42 = !{!"int", !36, i64 0}
!43 = !{!"short", !36, i64 0}
!44 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!45 = !{!"float", !36, i64 0}
!46 = !{!"PointerRNA", !47, i64 0, !35, i64 8, !35, i64 16}
!47 = !{!"", !35, i64 0}
!48 = !{!41, !35, i64 680}
!49 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!50 = !{!51, !35, i64 24}
!51 = !{!"TemplateID", !46, i64 0, !35, i64 24, !35, i64 32, !42, i64 40, !42, i64 44, !36, i64 48}
!52 = distinct !{!52, !39}
!53 = !{!"interface_templates.c:ui_template_id"}
!54 = !{!46, !35, i64 8}
!55 = !{!51, !42, i64 40}
!56 = !{!51, !42, i64 44}
!57 = !{!51, !35, i64 32}
!58 = !{!36, !36, i64 0}
!59 = !{!46, !35, i64 0}
!60 = !{!46, !35, i64 16}
!61 = !{!43, !43, i64 0}
!62 = !{!63, !35, i64 24}
!63 = !{!"Object", !64, i64 0, !35, i64 120, !35, i64 128, !43, i64 136, !43, i64 138, !42, i64 140, !42, i64 144, !42, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !65, i64 312, !35, i64 360, !66, i64 368, !66, i64 384, !66, i64 400, !66, i64 416, !42, i64 432, !42, i64 436, !35, i64 440, !35, i64 448, !42, i64 456, !42, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !45, i64 616, !45, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !42, i64 944, !43, i64 948, !43, i64 950, !43, i64 952, !43, i64 954, !43, i64 956, !43, i64 958, !43, i64 960, !43, i64 962, !43, i64 964, !36, i64 966, !36, i64 967, !42, i64 968, !42, i64 972, !42, i64 976, !42, i64 980, !42, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !43, i64 1036, !43, i64 1038, !43, i64 1040, !36, i64 1042, !36, i64 1043, !43, i64 1044, !36, i64 1046, !36, i64 1047, !45, i64 1048, !45, i64 1052, !66, i64 1056, !66, i64 1072, !66, i64 1088, !66, i64 1104, !45, i64 1120, !43, i64 1124, !43, i64 1126, !36, i64 1128, !42, i64 1144, !42, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !43, i64 1162, !36, i64 1164, !66, i64 1176, !66, i64 1192, !66, i64 1208, !66, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !43, i64 1266, !45, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !67, i64 1304, !67, i64 1312, !42, i64 1320, !42, i64 1324, !66, i64 1328, !66, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !66, i64 1400, !35, i64 1416}
!64 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !43, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!65 = !{!"bAnimVizSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !43, i64 24, !43, i64 26, !43, i64 28, !43, i64 30, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44}
!66 = !{!"ListBase", !35, i64 0, !35, i64 8}
!67 = !{!"long", !36, i64 0}
!68 = !{!42, !42, i64 0}
!69 = !{!70, !42, i64 20}
!70 = !{!"ModifierData", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!71 = !{!70, !35, i64 0}
!72 = distinct !{!72, !39}
!73 = !{!"interface_templates.c:draw_modifier"}
!74 = !{!70, !42, i64 16}
!75 = !{!76, !35, i64 160}
!76 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !42, i64 64, !42, i64 68, !42, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!77 = !{!63, !35, i64 1240}
!78 = !{!79, !43, i64 4}
!79 = !{!"PartDeflect", !42, i64 0, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !45, i64 56, !45, i64 60, !45, i64 64, !45, i64 68, !45, i64 72, !45, i64 76, !45, i64 80, !45, i64 84, !45, i64 88, !45, i64 92, !45, i64 96, !45, i64 100, !45, i64 104, !45, i64 108, !45, i64 112, !45, i64 116, !45, i64 120, !45, i64 124, !35, i64 128, !35, i64 136, !45, i64 144, !42, i64 148, !35, i64 152}
!80 = !{!76, !42, i64 72}
!81 = !{!63, !43, i64 136}
!82 = !{!83, !43, i64 8948}
!83 = !{!"UserDef", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !42, i64 8468, !43, i64 8472, !43, i64 8474, !43, i64 8476, !43, i64 8478, !43, i64 8480, !43, i64 8482, !42, i64 8484, !42, i64 8488, !42, i64 8492, !43, i64 8496, !43, i64 8498, !42, i64 8500, !42, i64 8504, !42, i64 8508, !42, i64 8512, !42, i64 8516, !42, i64 8520, !42, i64 8524, !43, i64 8528, !43, i64 8530, !43, i64 8532, !43, i64 8534, !66, i64 8536, !66, i64 8552, !66, i64 8568, !66, i64 8584, !66, i64 8600, !66, i64 8616, !66, i64 8632, !36, i64 8648, !43, i64 8712, !43, i64 8714, !43, i64 8716, !43, i64 8718, !43, i64 8720, !43, i64 8722, !43, i64 8724, !43, i64 8726, !36, i64 8728, !43, i64 8896, !43, i64 8898, !43, i64 8900, !43, i64 8902, !43, i64 8904, !43, i64 8906, !43, i64 8908, !43, i64 8910, !42, i64 8912, !42, i64 8916, !43, i64 8920, !43, i64 8922, !43, i64 8924, !43, i64 8926, !43, i64 8928, !43, i64 8930, !43, i64 8932, !43, i64 8934, !43, i64 8936, !43, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !43, i64 8944, !43, i64 8946, !43, i64 8948, !43, i64 8950, !43, i64 8952, !43, i64 8954, !45, i64 8956, !45, i64 8960, !42, i64 8964, !43, i64 8968, !43, i64 8970, !45, i64 8972, !43, i64 8976, !43, i64 8978, !43, i64 8980, !43, i64 8982, !84, i64 8984, !36, i64 9760, !36, i64 9772, !43, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !42, i64 10896, !42, i64 10900, !45, i64 10904, !45, i64 10908, !42, i64 10912, !43, i64 10916, !43, i64 10918, !43, i64 10920, !43, i64 10922, !43, i64 10924, !43, i64 10926, !85, i64 10928}
!84 = !{!"ColorBand", !43, i64 0, !43, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!85 = !{!"WalkNavigation", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !43, i64 24, !36, i64 26}
!86 = !{!76, !42, i64 68}
!87 = !{i32 0, i32 2}
!88 = !{i32 0, i32 3}
!89 = !{!90, !35, i64 112}
!90 = !{!"ParticleSystemModifierData", !70, i64 0, !35, i64 112, !35, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !43, i64 140, !43, i64 142}
!91 = !{!63, !42, i64 432}
!92 = !{!93, !35, i64 16}
!93 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !66, i64 72, !66, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !66, i64 152, !36, i64 168, !36, i64 232, !45, i64 296, !45, i64 300, !45, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !42, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !43, i64 340, !43, i64 342, !43, i64 344, !43, i64 346, !36, i64 348, !36, i64 540, !43, i64 564, !43, i64 566, !35, i64 568, !35, i64 576, !66, i64 584, !35, i64 600, !35, i64 608, !42, i64 616, !42, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !45, i64 648, !45, i64 652}
!94 = !{!95, !43, i64 192}
!95 = !{!"ParticleSettings", !64, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !42, i64 152, !42, i64 156, !43, i64 160, !43, i64 162, !43, i64 164, !43, i64 166, !43, i64 168, !43, i64 170, !43, i64 172, !43, i64 174, !42, i64 176, !42, i64 180, !43, i64 184, !43, i64 186, !43, i64 188, !43, i64 190, !43, i64 192, !43, i64 194, !43, i64 196, !43, i64 198, !43, i64 200, !43, i64 202, !43, i64 204, !43, i64 206, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !45, i64 232, !45, i64 236, !36, i64 240, !36, i64 248, !45, i64 256, !45, i64 260, !45, i64 264, !43, i64 268, !43, i64 270, !45, i64 272, !45, i64 276, !45, i64 280, !45, i64 284, !45, i64 288, !45, i64 292, !45, i64 296, !45, i64 300, !45, i64 304, !45, i64 308, !45, i64 312, !45, i64 316, !36, i64 320, !42, i64 324, !42, i64 328, !42, i64 332, !42, i64 336, !43, i64 340, !36, i64 342, !45, i64 348, !45, i64 352, !45, i64 356, !45, i64 360, !45, i64 364, !45, i64 368, !45, i64 372, !36, i64 376, !45, i64 388, !45, i64 392, !45, i64 396, !45, i64 400, !45, i64 404, !45, i64 408, !45, i64 412, !36, i64 416, !45, i64 428, !45, i64 432, !45, i64 436, !45, i64 440, !42, i64 444, !42, i64 448, !45, i64 452, !45, i64 456, !45, i64 460, !45, i64 464, !45, i64 468, !45, i64 472, !45, i64 476, !45, i64 480, !45, i64 484, !45, i64 488, !45, i64 492, !45, i64 496, !45, i64 500, !45, i64 504, !45, i64 508, !45, i64 512, !45, i64 516, !45, i64 520, !45, i64 524, !45, i64 528, !45, i64 532, !45, i64 536, !45, i64 540, !45, i64 544, !45, i64 548, !36, i64 552, !45, i64 560, !45, i64 564, !42, i64 568, !42, i64 572, !36, i64 576, !35, i64 720, !66, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !43, i64 792, !36, i64 794}
!96 = !{!93, !35, i64 56}
!97 = !{!70, !35, i64 104}
!98 = !{!99, !43, i64 24}
!99 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !43, i64 24, !43, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !43, i64 94, !45, i64 96, !45, i64 100, !35, i64 104, !45, i64 112, !45, i64 116}
!100 = !{!99, !35, i64 16}
!101 = !{!102, !43, i64 10}
!102 = !{!"bKinematicConstraint", !35, i64 0, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !45, i64 152, !45, i64 156, !45, i64 160, !36, i64 164, !43, i64 176, !43, i64 178, !45, i64 180}
!103 = !{!"interface_templates.c:draw_constraint"}
!104 = !{!99, !43, i64 26}
!105 = !{!99, !35, i64 8}
!106 = !{!99, !35, i64 0}
!107 = !{!108, !43, i64 80}
!108 = !{!"uiPreview", !35, i64 0, !35, i64 8, !36, i64 16, !43, i64 80, !36, i64 82}
!109 = !{!"interface_templates.c:do_preview_buttons"}
!110 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!111 = !{i64 0, i64 8, !34}
!112 = !{!113, !35, i64 24}
!113 = !{!"RNAUpdateCb", !46, i64 0, !35, i64 24}
!114 = !{!44, !45, i64 0}
!115 = !{!44, !45, i64 4}
!116 = !{!44, !45, i64 8}
!117 = !{!44, !45, i64 12}
!118 = !{!64, !35, i64 24}
!119 = !{!"interface_templates.c:colorband_buttons_layout"}
!120 = !{!113, !35, i64 0}
!121 = !{!84, !36, i64 6}
!122 = !{!84, !43, i64 0}
!123 = !{!84, !43, i64 2}
!124 = !{!125, !35, i64 24}
!125 = !{!"uiBlock", !35, i64 0, !35, i64 8, !66, i64 16, !35, i64 32, !35, i64 40, !66, i64 48, !66, i64 64, !35, i64 80, !66, i64 88, !36, i64 104, !36, i64 232, !44, i64 296, !45, i64 312, !42, i64 316, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !42, i64 424, !43, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !126, i64 440, !35, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !42, i64 460, !42, i64 464, !42, i64 468, !42, i64 472, !42, i64 476, !44, i64 480, !66, i64 496, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !127, i64 624}
!126 = !{!"double", !36, i64 0}
!127 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !126, i64 32, !42, i64 40, !42, i64 44, !45, i64 48}
!128 = !{!41, !42, i64 784}
!129 = !{!"interface_templates.c:icon_view_menu"}
!130 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34}
!131 = !{!132, !35, i64 8}
!132 = !{!"EnumPropertyItem", !42, i64 0, !35, i64 8, !42, i64 16, !35, i64 24, !35, i64 32}
!133 = !{!132, !42, i64 16}
!134 = distinct !{!134, !39}
!135 = !{!"interface_templates.c:rna_update_cb"}
!136 = !{!137, !42, i64 5140}
!137 = !{!"Histogram", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !45, i64 5128, !45, i64 5132, !43, i64 5136, !43, i64 5138, !42, i64 5140, !36, i64 5144}
!138 = !{!139, !42, i64 28}
!139 = !{!"Scopes", !42, i64 0, !42, i64 4, !42, i64 8, !45, i64 12, !42, i64 16, !45, i64 20, !45, i64 24, !42, i64 28, !45, i64 32, !42, i64 36, !36, i64 40, !137, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !42, i64 5256, !42, i64 5260}
!140 = !{!139, !42, i64 36}
!141 = !{!"interface_templates.c:curvemap_buttons_layout"}
!142 = !{!143, !42, i64 4}
!143 = !{!"CurveMapping", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !44, i64 16, !44, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!144 = !{!145, !35, i64 32}
!145 = !{!"CurveMap", !43, i64 0, !43, i64 2, !45, i64 4, !45, i64 8, !45, i64 12, !36, i64 16, !36, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !36, i64 64}
!146 = !{!143, !42, i64 0}
!147 = !{!145, !43, i64 0}
!148 = distinct !{!148, !39}
!149 = !{!150, !43, i64 8}
!150 = !{!"CurveMapPoint", !45, i64 0, !45, i64 4, !43, i64 8, !43, i64 10}
!151 = !{i64 0, i64 4, !152, i64 4, i64 4, !152, i64 8, i64 4, !152, i64 12, i64 4, !152}
!152 = !{!45, !45, i64 0}
!153 = !{i64 0, i64 4, !152, i64 4, i64 4, !152, i64 8, i64 4, !152}
!154 = !{i64 0, i64 4, !152, i64 4, i64 4, !152}
!155 = !{i64 0, i64 4, !152}
!156 = !{!83, !43, i64 8938}
!157 = !{!41, !45, i64 636}
!158 = !{!"interface_templates.c:len_v3"}
!159 = !{!160, !35, i64 120}
!160 = !{!"Palette", !64, i64 0, !66, i64 120, !66, i64 136, !42, i64 152, !42, i64 156}
!161 = !{!162, !35, i64 0}
!162 = !{!"PaletteColor", !35, i64 0, !35, i64 8, !36, i64 16, !45, i64 28}
!163 = distinct !{!163, !39}
!164 = !{!41, !42, i64 24}
!165 = distinct !{!165, !39}
!166 = distinct !{!166, !39}
!167 = distinct !{!167, !39}
!168 = !{!"interface_templates.c:handle_layer_buttons"}
!169 = !{!170, !35, i64 136}
!170 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !43, i64 104, !43, i64 106, !43, i64 108, !43, i64 110, !43, i64 112, !43, i64 114, !43, i64 116, !43, i64 118, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !42, i64 128, !43, i64 132, !43, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !42, i64 160, !42, i64 164, !35, i64 168, !66, i64 176, !66, i64 192, !66, i64 208, !66, i64 224, !66, i64 240}
!171 = !{!172, !43, i64 72}
!172 = !{!"wmEvent", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 18, !42, i64 20, !42, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !43, i64 44, !43, i64 46, !42, i64 48, !42, i64 52, !126, i64 56, !42, i64 64, !42, i64 68, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !35, i64 88, !35, i64 96, !43, i64 104, !43, i64 106, !42, i64 108, !35, i64 112}
!173 = !{!41, !35, i64 840}
!174 = distinct !{!174, !39}
!175 = distinct !{!175, !39}
!176 = distinct !{!176, !39}
!177 = distinct !{!177, !39}
!178 = !{!179, !35, i64 80}
!179 = !{!"uiListType", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !180, i64 104}
!180 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!181 = !{!179, !35, i64 88}
!182 = !{!179, !35, i64 96}
!183 = !{!184, !42, i64 100}
!184 = !{!"uiList", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !42, i64 88, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !36, i64 112, !42, i64 176, !42, i64 180, !35, i64 184, !35, i64 192}
!185 = !{!184, !35, i64 192}
!186 = !{!184, !35, i64 16}
!187 = !{!184, !42, i64 88}
!188 = !{!189, !35, i64 32}
!189 = !{!"uiListDyn", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !35, i64 32, !35, i64 40}
!190 = !{!189, !35, i64 40}
!191 = !{!189, !42, i64 16}
!192 = !{!189, !42, i64 12}
!193 = !{!184, !42, i64 108}
!194 = !{!184, !42, i64 92}
!195 = !{!184, !42, i64 176}
!196 = !{!184, !42, i64 180}
!197 = !{!198, !42, i64 128}
!198 = !{!"CollectionPropertyIterator", !46, i64 0, !46, i64 24, !35, i64 48, !36, i64 56, !42, i64 96, !42, i64 100, !46, i64 104, !42, i64 128}
!199 = !{!200, !42, i64 24}
!200 = !{!"", !46, i64 0, !42, i64 24, !42, i64 28}
!201 = !{!200, !42, i64 28}
!202 = distinct !{!202, !39}
!203 = !{!204, !42, i64 4}
!204 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8}
!205 = !{!204, !42, i64 8}
!206 = distinct !{!206, !39}
!207 = !{!204, !42, i64 0}
!208 = distinct !{!208, !39}
!209 = distinct !{!209, !39}
!210 = distinct !{!210, !39}
!211 = !{!189, !42, i64 4}
!212 = !{!189, !42, i64 0}
!213 = !{!189, !42, i64 24}
!214 = !{!189, !42, i64 20}
!215 = !{!"interface_templates.c:uilist_draw_item_default"}
!216 = !{!"interface_templates.c:uilist_draw_filter_default"}
!217 = !{!"interface_templates.c:uilist_filter_items_default"}
!218 = !{!219, !42, i64 64}
!219 = !{!"", !36, i64 0, !42, i64 64}
!220 = distinct !{!220, !39}
!221 = distinct !{!221, !39}
!222 = !{!"interface_templates.c:prepare_list"}
!223 = !{!189, !42, i64 8}
!224 = !{!184, !42, i64 104}
!225 = !{!184, !42, i64 96}
!226 = !{!"interface_templates.c:ui_list_resize_update_cb"}
!227 = !{!"interface_templates.c:operator_search_cb"}
!228 = !{i8 0, i8 2}
!229 = !{!230, !43, i64 184}
!230 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !66, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !180, i64 152, !43, i64 184}
!231 = !{!232, !42, i64 2100}
!232 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !66, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !43, i64 2084, !43, i64 2086, !43, i64 2088, !36, i64 2090, !43, i64 2092, !42, i64 2096, !42, i64 2100, !36, i64 2104, !42, i64 2108, !42, i64 2112, !36, i64 2116}
!233 = !{!230, !35, i64 0}
!234 = !{!230, !35, i64 8}
!235 = distinct !{!235, !39}
!236 = !{!"interface_templates.c:operator_call_cb"}
!237 = !{!238, !36, i64 72}
!238 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !239, i64 56, !36, i64 72, !36, i64 73, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !43, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !66, i64 96, !66, i64 112, !66, i64 128, !66, i64 144}
!239 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!240 = distinct !{!240, !39}
!241 = !{!242, !35, i64 232}
!242 = !{!"bScreen", !64, i64 0, !66, i64 120, !66, i64 136, !66, i64 152, !66, i64 168, !35, i64 184, !35, i64 192, !42, i64 200, !42, i64 204, !43, i64 208, !43, i64 210, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230, !35, i64 232, !35, i64 240}
!243 = !{!"interface_templates.c:do_running_jobs"}
!244 = !{!232, !36, i64 2080}
!245 = !{!246, !35, i64 32}
!246 = !{!"ReportList", !66, i64 0, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !35, i64 32}
!247 = !{!248, !35, i64 40}
!248 = !{!"wmTimer", !35, i64 0, !35, i64 8, !35, i64 16, !126, i64 24, !42, i64 32, !35, i64 40, !126, i64 48, !126, i64 56, !126, i64 64, !126, i64 72, !126, i64 80, !42, i64 88}
!249 = !{!250, !45, i64 16}
!250 = !{!"ReportTimerInfo", !36, i64 0, !45, i64 12, !45, i64 16}
!251 = !{!252, !43, i64 176}
!252 = !{!"uiStyle", !35, i64 0, !35, i64 8, !36, i64 16, !253, i64 80, !253, i64 112, !253, i64 144, !253, i64 176, !45, i64 208, !43, i64 212, !43, i64 214, !43, i64 216, !43, i64 218, !43, i64 220, !43, i64 222, !43, i64 224, !43, i64 226, !43, i64 228, !43, i64 230}
!253 = !{!"uiFontStyle", !43, i64 0, !43, i64 2, !43, i64 4, !36, i64 6, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !43, i64 20, !43, i64 22, !45, i64 24, !45, i64 28}
!254 = !{!255, !35, i64 32}
!255 = !{!"Report", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 18, !42, i64 20, !35, i64 24, !35, i64 32}
!256 = !{!255, !42, i64 20}
!257 = !{!250, !45, i64 12}
!258 = !{!255, !43, i64 16}
!259 = !{!246, !35, i64 0}
!260 = !{!246, !35, i64 8}
!261 = !{!"interface_templates.c:min_ii"}
!262 = !{!"interface_templates.c:max_ii"}
!263 = !{!41, !35, i64 0}
!264 = distinct !{!264, !39}
!265 = !{!"interface_templates.c:template_keymap_item_properties"}
!266 = !{!198, !35, i64 120}
!267 = distinct !{!267, !39}
!268 = !{!"interface_templates.c:keymap_item_modified"}
!269 = !{!270, !42, i64 0}
!270 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !45, i64 136, !45, i64 140, !35, i64 144, !35, i64 152}
!271 = !{!41, !42, i64 848}
!272 = !{!"interface_templates.c:component_menu"}
!273 = !{!"interface_templates.c:template_ID"}
!274 = !{!51, !35, i64 0}
!275 = !{!51, !36, i64 48}
!276 = !{!64, !42, i64 100}
!277 = !{!64, !43, i64 98}
!278 = !{!41, !35, i64 896}
!279 = !{!"interface_templates.c:id_search_menu"}
!280 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 4, !68, i64 44, i64 4, !68, i64 48, i64 1, !58}
!281 = !{!"interface_templates.c:template_id_browse_tip"}
!282 = !{!"interface_templates.c:template_id_cb"}
!283 = !{!51, !35, i64 8}
!284 = !{!"interface_templates.c:id_search_cb"}
!285 = !{!83, !42, i64 8484}
!286 = distinct !{!286, !39}
!287 = !{!"interface_templates.c:id_search_call_cb"}
!288 = !{!"interface_templates.c:modifiers_convertToReal"}
!289 = !{!63, !43, i64 138}
!290 = !{!"interface_templates.c:modifier_can_delete"}
!291 = !{!95, !43, i64 160}
!292 = !{!"interface_templates.c:modifier_is_simulation"}
!293 = !{!"interface_templates.c:do_constraint_panels"}
!294 = !{!"interface_templates.c:constraint_active_func"}
!295 = !{!"interface_templates.c:BLI_rctf_size_x"}
!296 = !{!"interface_templates.c:colorband_add_cb"}
!297 = !{!298, !45, i64 16}
!298 = !{!"CBData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !42, i64 20}
!299 = !{!"interface_templates.c:colorband_del_cb"}
!300 = !{!"interface_templates.c:colorband_flip_cb"}
!301 = !{i64 0, i64 4, !152, i64 4, i64 4, !152, i64 8, i64 4, !152, i64 12, i64 4, !152, i64 16, i64 4, !152, i64 20, i64 4, !68}
!302 = distinct !{!302, !39}
!303 = distinct !{!303, !39}
!304 = !{!"interface_templates.c:colorband_update_cb"}
!305 = !{!41, !35, i64 832}
!306 = !{!"interface_templates.c:curvemap_buttons_redraw"}
!307 = !{!"interface_templates.c:curvemap_buttons_zoom_in"}
!308 = !{!143, !45, i64 16}
!309 = !{!143, !45, i64 20}
!310 = !{!143, !45, i64 24}
!311 = !{!143, !45, i64 28}
!312 = !{!"interface_templates.c:curvemap_buttons_zoom_out"}
!313 = !{!143, !45, i64 32}
!314 = !{!143, !45, i64 36}
!315 = !{!143, !45, i64 40}
!316 = !{!143, !45, i64 44}
!317 = !{!"interface_templates.c:curvemap_brush_tools_func"}
!318 = !{!"interface_templates.c:curvemap_tools_negslope_func"}
!319 = !{!"interface_templates.c:curvemap_tools_posslope_func"}
!320 = !{!"interface_templates.c:curvemap_clipping_func"}
!321 = !{!"interface_templates.c:curvemap_buttons_delete"}
!322 = !{!"interface_templates.c:curvemap_buttons_update"}
!323 = !{!"interface_templates.c:curvemap_buttons_reset"}
!324 = !{!143, !42, i64 8}
!325 = distinct !{!325, !39}
!326 = !{!"interface_templates.c:BLI_rctf_size_y"}
!327 = !{!"interface_templates.c:curvemap_tools_dofunc"}
!328 = !{!145, !43, i64 2}
!329 = !{!"interface_templates.c:curvemap_buttons_setclip"}
!330 = !{!"interface_templates.c:dot_v3v3"}
!331 = !{!"interface_templates.c:cmpstringp"}
!332 = !{!"interface_templates.c:iroundf"}
!333 = !{!"interface_templates.c:BLI_ghashIterator_done"}
!334 = !{!335, !35, i64 8}
!335 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !42, i64 16}
!336 = !{!"interface_templates.c:BLI_ghashIterator_getValue"}
!337 = !{!338, !35, i64 16}
!338 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
