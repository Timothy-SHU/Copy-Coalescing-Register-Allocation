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
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
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
%struct._gh_Entry = type { ptr, ptr, ptr }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @UI_template_fix_linking() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateHeader(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #14
  %4 = tail call i32 @ED_area_header_switchbutton(ptr noundef %1, ptr noundef %3, i32 noundef 0) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare ptr @uiLayoutAbsoluteBlock(ptr noundef) local_unnamed_addr #3

declare i32 @ED_area_header_switchbutton(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @uiIDContextProperty(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
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
  %21 = load i32, ptr %20, align 8, !tbaa !41
  %22 = and i32 %21, 262148
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 31
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %26, i64 24, i1 false), !tbaa.struct !50
  %29 = getelementptr inbounds %struct.TemplateID, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  store ptr %30, ptr %2, align 8, !tbaa !34
  br label %34

31:                                               ; preds = %18, %24
  %32 = load ptr, ptr %19, align 8, !tbaa !34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %10, label %18, !llvm.loop !53

34:                                               ; preds = %10, %6, %3, %28
  ret void
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
  tail call fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 35, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #1 {
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @RNA_property_type(ptr noundef nonnull %15) #14
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %10
  %21 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = tail call ptr @RNA_struct_identifier(ptr noundef %22) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ui_template_id, ptr noundef %23, ptr noundef %3) #14
  br label %324

24:                                               ; preds = %17
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 56, ptr noundef nonnull @.str.64) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !50
  %27 = getelementptr inbounds %struct.TemplateID, ptr %26, i64 0, i32 1
  store ptr %15, ptr %27, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.TemplateID, ptr %26, i64 0, i32 3
  store i32 %8, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.TemplateID, ptr %26, i64 0, i32 4
  store i32 %9, ptr %29, align 4, !tbaa !56
  %30 = icmp eq ptr %4, null
  %31 = or i32 %7, 4
  %32 = select i1 %30, i32 %7, i32 %31
  %33 = icmp eq ptr %5, null
  %34 = or i32 %32, 8
  %35 = select i1 %33, i32 %32, i32 %34
  %36 = tail call ptr @RNA_property_pointer_type(ptr noundef %2, ptr noundef nonnull %15) #14
  %37 = tail call signext i16 @RNA_type_to_ID_code(ptr noundef %36) #14
  %38 = tail call ptr @CTX_data_main(ptr noundef %1) #14
  %39 = tail call ptr @which_libbase(ptr noundef %38, i16 noundef signext %37) #14
  %40 = getelementptr inbounds %struct.TemplateID, ptr %26, i64 0, i32 2
  store ptr %39, ptr %40, align 8, !tbaa !57
  %41 = icmp eq ptr %39, null
  br i1 %41, label %322, label %42

42:                                               ; preds = %24
  %43 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  %44 = load ptr, ptr %27, align 8, !tbaa !51
  %45 = tail call zeroext i8 @RNA_property_editable(ptr noundef %26, ptr noundef %44) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #14
  %46 = load ptr, ptr %27, align 8, !tbaa !51
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %12, ptr noundef %26, ptr noundef %46) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #14
  %47 = getelementptr inbounds %struct.PointerRNA, ptr %11, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !58
  %49 = load ptr, ptr %26, align 8, !tbaa !59
  %50 = call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  call void @uiBlockBeginAlign(ptr noundef %50) #14
  %51 = getelementptr inbounds %struct.PointerRNA, ptr %11, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !54
  %53 = icmp eq ptr %52, null
  %54 = select i1 %53, ptr %36, ptr %52
  %55 = and i32 %35, 2048
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.TemplateID, ptr %26, i64 0, i32 5
  store i8 1, ptr %58, align 8, !tbaa !60
  %59 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %60 = call ptr %59(ptr noundef nonnull %26) #14
  %61 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %62 = mul i16 %61, 6
  %63 = call fastcc ptr @template_id_browse_tip(ptr noundef %54)
  %64 = call ptr @uiDefBlockButN(ptr noundef %50, ptr noundef nonnull @id_search_menu, ptr noundef %60, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %62, i16 noundef signext %62, ptr noundef nonnull %63) #14
  %65 = icmp eq ptr %48, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %57
  %67 = call i32 @ui_id_icon_get(ptr noundef %1, ptr noundef nonnull %48, i8 noundef zeroext 1) #14
  br label %70

68:                                               ; preds = %57
  %69 = call i32 @RNA_struct_ui_icon(ptr noundef %54) #14
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct.uiBut, ptr %64, i64 0, i32 44
  store i32 %71, ptr %72, align 8, !tbaa !66
  call void @uiButSetFlag(ptr noundef %64, i32 noundef 136) #14
  %73 = icmp eq ptr %49, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !67
  %77 = icmp eq ptr %76, null
  %78 = icmp ne i8 %45, 0
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %83, label %82

80:                                               ; preds = %70
  %81 = icmp eq i8 %45, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %80, %74
  call void @uiButSetFlag(ptr noundef %64, i32 noundef 2048) #14
  br label %83

83:                                               ; preds = %82, %80, %74
  %84 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #14
  br label %109

85:                                               ; preds = %42
  %86 = and i32 %35, 2
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %90 = call ptr %89(ptr noundef nonnull %26) #14
  %91 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %92 = sitofp i16 %91 to double
  %93 = fmul double %92, 1.600000e+00
  %94 = fptosi double %93 to i16
  %95 = call fastcc ptr @template_id_browse_tip(ptr noundef %54)
  %96 = call ptr @uiDefBlockButN(ptr noundef %50, ptr noundef nonnull @id_search_menu, ptr noundef %90, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %94, i16 noundef signext %91, ptr noundef nonnull %95) #14
  %97 = call i32 @RNA_struct_ui_icon(ptr noundef %54) #14
  %98 = getelementptr inbounds %struct.uiBut, ptr %96, i64 0, i32 44
  store i32 %97, ptr %98, align 8, !tbaa !66
  call void @uiButSetDragID(ptr noundef %96, ptr noundef %48) #14
  call void @uiButSetFlag(ptr noundef %96, i32 noundef 8) #14
  call void @uiButSetDrawFlag(ptr noundef %96, i32 noundef 4) #14
  %99 = icmp eq ptr %49, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !67
  %103 = icmp eq ptr %102, null
  %104 = icmp ne i8 %45, 0
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %109, label %108

106:                                              ; preds = %88
  %107 = icmp eq i8 %45, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %106, %100
  call void @uiButSetFlag(ptr noundef %96, i32 noundef 2048) #14
  br label %109

109:                                              ; preds = %108, %106, %100, %85, %83
  %110 = icmp eq ptr %48, null
  br i1 %110, label %201, label %111

111:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %13) #14
  %112 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  %113 = load i32, ptr %112, align 4, !tbaa !69
  %114 = icmp slt i32 %113, 1
  store i8 0, ptr %13, align 16, !tbaa !70
  %115 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %116 = mul i16 %115, 6
  %117 = call ptr @RNA_struct_ui_description(ptr noundef %54) #14
  %118 = call ptr @uiDefButR(ptr noundef %50, i32 noundef 3072, i32 noundef 0, ptr noundef nonnull %13, i32 noundef 0, i32 noundef 0, i16 noundef signext %116, i16 noundef signext %115, ptr noundef nonnull %11, ptr noundef nonnull @.str.54, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef %117) #14
  %119 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %120 = call ptr %119(ptr noundef nonnull %26) #14
  call void @uiButSetNFunc(ptr noundef %118, ptr noundef nonnull @template_id_cb, ptr noundef %120, ptr noundef nonnull inttoptr (i64 1 to ptr)) #14
  br i1 %114, label %121, label %122

121:                                              ; preds = %111
  call void @uiButSetFlag(ptr noundef %118, i32 noundef 65536) #14
  br label %122

122:                                              ; preds = %121, %111
  %123 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !67
  %125 = icmp eq ptr %124, null
  br i1 %125, label %150, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 5
  %128 = load i16, ptr %127, align 2, !tbaa !71
  %129 = and i16 %128, 2
  %130 = icmp eq i16 %129, 0
  %131 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  br i1 %130, label %134, label %132

132:                                              ; preds = %126
  %133 = call ptr @uiDefIconBut(ptr noundef %50, i32 noundef 512, i32 noundef 0, i32 noundef 196, i32 noundef 0, i32 noundef 0, i16 noundef signext %131, i16 noundef signext %131, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.65) #14
  br label %144

134:                                              ; preds = %126
  %135 = call ptr @uiDefIconBut(ptr noundef %50, i32 noundef 512, i32 noundef 0, i32 noundef 170, i32 noundef 0, i32 noundef 0, i16 noundef signext %131, i16 noundef signext %131, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.66) #14
  %136 = call zeroext i8 @id_make_local(ptr noundef nonnull %48, i8 noundef zeroext 1) #14
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %134
  %139 = icmp eq ptr %49, null
  br i1 %139, label %146, label %140

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !67
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %134, %140, %132
  %145 = phi ptr [ %133, %132 ], [ %135, %140 ], [ %135, %134 ]
  call void @uiButSetFlag(ptr noundef %145, i32 noundef 2048) #14
  br label %146

146:                                              ; preds = %144, %140, %138
  %147 = phi ptr [ %135, %140 ], [ %135, %138 ], [ %145, %144 ]
  %148 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %149 = call ptr %148(ptr noundef nonnull %26) #14
  call void @uiButSetNFunc(ptr noundef %147, ptr noundef nonnull @template_id_cb, ptr noundef %149, ptr noundef nonnull inttoptr (i64 64 to ptr)) #14
  br label %150

150:                                              ; preds = %146, %122
  %151 = phi ptr [ %147, %146 ], [ %118, %122 ]
  %152 = load i32, ptr %112, align 4, !tbaa !69
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %188

154:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #14
  %155 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 32, ptr noundef nonnull @.str.67, i32 noundef %152) #14
  %156 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %157 = load i32, ptr %112, align 4, !tbaa !69
  %158 = icmp slt i32 %157, 10
  %159 = select i1 %158, i16 0, i16 10
  %160 = add i16 %159, %156
  %161 = call ptr @uiDefBut(ptr noundef %50, i32 noundef 512, i32 noundef 0, ptr noundef nonnull %14, i32 noundef 0, i32 noundef 0, i16 noundef signext %160, i16 noundef signext %156, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.68) #14
  %162 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %163 = call ptr %162(ptr noundef nonnull %26) #14
  call void @uiButSetNFunc(ptr noundef %161, ptr noundef nonnull @template_id_cb, ptr noundef %163, ptr noundef nonnull inttoptr (i64 16 to ptr)) #14
  %164 = call zeroext i8 @id_copy(ptr noundef nonnull %48, ptr noundef null, i8 noundef zeroext 1) #14
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %154
  %167 = icmp eq ptr %49, null
  br i1 %167, label %174, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !67
  %171 = icmp eq ptr %170, null
  %172 = icmp ne i8 %45, 0
  %173 = select i1 %171, i1 %172, i1 false
  br i1 %173, label %176, label %186

174:                                              ; preds = %166
  %175 = icmp eq i8 %45, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %174, %168
  br i1 %167, label %187, label %177

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 4
  %179 = load i16, ptr %178, align 8, !tbaa !72
  %180 = icmp eq i16 %179, 16975
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 27
  %183 = load i32, ptr %182, align 8, !tbaa !73
  %184 = and i32 %183, 1
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181, %174, %168, %154
  call void @uiButSetFlag(ptr noundef %161, i32 noundef 2048) #14
  br label %187

187:                                              ; preds = %186, %181, %177, %176
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #14
  br label %188

188:                                              ; preds = %187, %150
  %189 = phi ptr [ %161, %187 ], [ %151, %150 ]
  br i1 %114, label %190, label %191

190:                                              ; preds = %188
  call void @uiButSetFlag(ptr noundef %189, i32 noundef 65536) #14
  br label %191

191:                                              ; preds = %190, %188
  %192 = load ptr, ptr %123, align 8, !tbaa !67
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 4
  %196 = load i16, ptr %195, align 8, !tbaa !72
  switch i16 %196, label %197 [
    i16 21063, label %200
    i16 17235, label %200
    i16 21075, label %200
    i16 22612, label %200
    i16 16975, label %200
  ]

197:                                              ; preds = %194
  %198 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %199 = call ptr @uiDefButR(ptr noundef %50, i32 noundef 1536, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0, i16 noundef signext %198, i16 noundef signext %198, ptr noundef nonnull %11, ptr noundef nonnull @.str.70, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #14
  br label %200

200:                                              ; preds = %197, %194, %194, %194, %194, %194, %191
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %13) #14
  br label %201

201:                                              ; preds = %200, %109
  %202 = and i32 %35, 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %235, label %204

204:                                              ; preds = %201
  br i1 %110, label %207, label %205

205:                                              ; preds = %204
  %206 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  br label %213

207:                                              ; preds = %204
  %208 = and i32 %35, 8
  %209 = icmp eq i32 %208, 0
  %210 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %211 = select i1 %209, i16 6, i16 3
  %212 = mul i16 %211, %210
  br label %213

213:                                              ; preds = %207, %205
  %214 = phi ptr [ @.str.3, %205 ], [ @.str.71, %207 ]
  %215 = phi i16 [ %206, %205 ], [ %212, %207 ]
  %216 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  br i1 %30, label %219, label %217

217:                                              ; preds = %213
  %218 = call ptr @uiDefIconTextButO(ptr noundef %50, i32 noundef 512, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 31, ptr noundef nonnull %214, i32 noundef 0, i32 noundef 0, i16 noundef signext %215, i16 noundef signext %216, ptr noundef null) #14
  br label %221

219:                                              ; preds = %213
  %220 = call ptr @uiDefIconTextBut(ptr noundef %50, i32 noundef 512, i32 noundef 0, i32 noundef 31, ptr noundef nonnull %214, i32 noundef 0, i32 noundef 0, i16 noundef signext %215, i16 noundef signext %216, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #14
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi ptr [ %220, %219 ], [ %218, %217 ]
  %223 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %224 = call ptr %223(ptr noundef nonnull %26) #14
  call void @uiButSetNFunc(ptr noundef %222, ptr noundef nonnull @template_id_cb, ptr noundef %224, ptr noundef nonnull inttoptr (i64 4 to ptr)) #14
  %225 = icmp eq ptr %49, null
  br i1 %225, label %232, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !67
  %229 = icmp eq ptr %228, null
  %230 = icmp ne i8 %45, 0
  %231 = select i1 %229, i1 %230, i1 false
  br i1 %231, label %235, label %234

232:                                              ; preds = %221
  %233 = icmp eq i8 %45, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %232, %226
  call void @uiButSetFlag(ptr noundef %222, i32 noundef 2048) #14
  br label %235

235:                                              ; preds = %234, %232, %226, %201
  br i1 %110, label %250, label %236

236:                                              ; preds = %235
  %237 = call zeroext i8 @BKE_pack_check(ptr noundef nonnull %48) #14
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %250, label %239

239:                                              ; preds = %236
  %240 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %241 = call ptr @uiDefIconButO(ptr noundef %50, i32 noundef 512, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef 179, i32 noundef 0, i32 noundef 0, i16 noundef signext %240, i16 noundef signext %240, ptr noundef nonnull @.str.73) #14
  %242 = call ptr @uiButGetOperatorPtrRNA(ptr noundef %241) #14
  %243 = getelementptr inbounds %struct.uiBut, ptr %241, i64 0, i32 60
  %244 = load ptr, ptr %243, align 8, !tbaa !77
  %245 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 4
  %246 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef %244, ptr noundef nonnull @.str.74, ptr noundef nonnull %246) #14
  %247 = load ptr, ptr %243, align 8, !tbaa !77
  %248 = load i16, ptr %245, align 8, !tbaa !72
  %249 = sext i16 %248 to i32
  call void @RNA_int_set(ptr noundef %247, ptr noundef nonnull @.str.75, i32 noundef %249) #14
  br label %277

250:                                              ; preds = %236, %235
  %251 = and i32 %35, 8
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %277, label %253

253:                                              ; preds = %250
  %254 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4
  %255 = select i1 %203, i16 6, i16 3
  %256 = select i1 %110, i16 %255, i16 1
  %257 = mul i16 %254, %256
  %258 = select i1 %110, ptr @.str.76, ptr @.str.3
  br i1 %33, label %261, label %259

259:                                              ; preds = %253
  %260 = call ptr @uiDefIconTextButO(ptr noundef %50, i32 noundef 512, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 108, ptr noundef nonnull %258, i32 noundef 0, i32 noundef 0, i16 noundef signext %257, i16 noundef signext %254, ptr noundef null) #14
  br label %263

261:                                              ; preds = %253
  %262 = call ptr @uiDefIconTextBut(ptr noundef %50, i32 noundef 512, i32 noundef 0, i32 noundef 108, ptr noundef nonnull %258, i32 noundef 0, i32 noundef 0, i16 noundef signext %257, i16 noundef signext %254, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #14
  br label %263

263:                                              ; preds = %261, %259
  %264 = phi ptr [ %262, %261 ], [ %260, %259 ]
  %265 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %266 = call ptr %265(ptr noundef nonnull %26) #14
  call void @uiButSetNFunc(ptr noundef %264, ptr noundef nonnull @template_id_cb, ptr noundef %266, ptr noundef nonnull inttoptr (i64 8 to ptr)) #14
  %267 = icmp eq ptr %49, null
  br i1 %267, label %274, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !67
  %271 = icmp eq ptr %270, null
  %272 = icmp ne i8 %45, 0
  %273 = select i1 %271, i1 %272, i1 false
  br i1 %273, label %277, label %276

274:                                              ; preds = %263
  %275 = icmp eq i8 %45, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %274, %268
  call void @uiButSetFlag(ptr noundef %264, i32 noundef 2048) #14
  br label %277

277:                                              ; preds = %276, %274, %268, %250, %239
  %278 = and i32 %35, 32
  %279 = icmp eq i32 %278, 0
  %280 = or i1 %279, %110
  br i1 %280, label %317, label %281

281:                                              ; preds = %277
  %282 = icmp eq ptr %6, null
  br i1 %282, label %288, label %283

283:                                              ; preds = %281
  %284 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %285 = call ptr @uiDefIconButO(ptr noundef %50, i32 noundef 512, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %284, i16 noundef signext %284, ptr noundef null) #14
  %286 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %287 = call ptr %286(ptr noundef nonnull %26) #14
  call void @uiButSetNFunc(ptr noundef %285, ptr noundef null, ptr noundef %287, ptr noundef null) #14
  br label %303

288:                                              ; preds = %281
  %289 = load ptr, ptr %27, align 8, !tbaa !51
  %290 = call i32 @RNA_property_flag(ptr noundef %289) #14
  %291 = and i32 %290, 33554432
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %288
  %294 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %295 = call ptr @uiDefIconBut(ptr noundef %50, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %294, i16 noundef signext %294, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.77) #14
  %296 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %297 = call ptr %296(ptr noundef nonnull %26) #14
  call void @uiButSetNFunc(ptr noundef %295, ptr noundef nonnull @template_id_cb, ptr noundef %297, ptr noundef nonnull inttoptr (i64 32 to ptr)) #14
  %298 = load ptr, ptr %27, align 8, !tbaa !51
  %299 = call i32 @RNA_property_flag(ptr noundef %298) #14
  %300 = and i32 %299, 262144
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %293
  call void @uiButSetFlag(ptr noundef %295, i32 noundef 2048) #14
  br label %303

303:                                              ; preds = %302, %293, %288, %283
  %304 = phi ptr [ %285, %283 ], [ %295, %302 ], [ %295, %293 ], [ null, %288 ]
  %305 = icmp eq ptr %304, null
  br i1 %305, label %317, label %306

306:                                              ; preds = %303
  %307 = icmp eq ptr %49, null
  br i1 %307, label %314, label %308

308:                                              ; preds = %306
  %309 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !67
  %311 = icmp eq ptr %310, null
  %312 = icmp ne i8 %45, 0
  %313 = select i1 %311, i1 %312, i1 false
  br i1 %313, label %317, label %316

314:                                              ; preds = %306
  %315 = icmp eq i8 %45, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %314, %308
  call void @uiButSetFlag(ptr noundef nonnull %304, i32 noundef 2048) #14
  br label %317

317:                                              ; preds = %316, %314, %308, %303, %277
  %318 = icmp eq i16 %37, 17748
  br i1 %318, label %319, label %321

319:                                              ; preds = %317
  %320 = load ptr, ptr %27, align 8, !tbaa !51
  call void @uiTemplateTextureShow(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %26, ptr noundef %320) #14
  br label %321

321:                                              ; preds = %317, %319
  call void @uiBlockEndAlign(ptr noundef %50) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  br label %322

322:                                              ; preds = %321, %24
  %323 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %323(ptr noundef %26) #14
  br label %324

324:                                              ; preds = %322, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateIDBrowse(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
  tail call fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 3, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateIDPreview(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #1 {
  tail call fastcc void @ui_template_id(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef 2083, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateAnyID(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %3) #14
  %8 = icmp eq ptr %6, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @RNA_property_type(ptr noundef nonnull %6) #14
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %16, label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @RNA_struct_identifier(ptr noundef %14) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.uiTemplateAnyID, ptr noundef %15, ptr noundef %2) #14
  br label %38

16:                                               ; preds = %9
  %17 = icmp eq ptr %7, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #14
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %16
  %22 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = tail call ptr @RNA_struct_identifier(ptr noundef %23) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.uiTemplateAnyID, ptr noundef %24, ptr noundef %3) #14
  br label %38

25:                                               ; preds = %18
  %26 = tail call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD51EB860000000, i32 noundef 0) #14
  %27 = tail call ptr @uiLayoutRow(ptr noundef %26, i32 noundef 0) #14
  %28 = icmp eq ptr %4, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %4, align 1, !tbaa !70
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25, %29
  %33 = phi ptr [ %4, %29 ], [ @.str.2, %25 ]
  tail call void @uiItemL(ptr noundef %27, ptr noundef nonnull %33, i32 noundef 0) #14
  br label %34

34:                                               ; preds = %32, %29
  %35 = tail call ptr @uiLayoutRow(ptr noundef %26, i32 noundef 1) #14
  %36 = tail call ptr @uiLayoutRow(ptr noundef %35, i32 noundef 1) #14
  tail call void @uiLayoutSetAlignment(ptr noundef %36, i8 noundef zeroext 1) #14
  tail call void @uiItemFullR(ptr noundef %36, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %37 = tail call ptr @uiLayoutRow(ptr noundef %35, i32 noundef 1) #14
  tail call void @uiLayoutSetAlignment(ptr noundef %37, i8 noundef zeroext 0) #14
  tail call void @uiItemFullR(ptr noundef %37, ptr noundef %1, ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %38

38:                                               ; preds = %34, %21, %12
  ret void
}

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #3

declare void @_RNA_warning(ptr noundef, ...) local_unnamed_addr #3

declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutSplit(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiLayoutRow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiItemL(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiLayoutSetAlignment(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @uiItemFullR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplatePathBuilder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readnone %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @RNA_property_type(ptr noundef nonnull %6) #14
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %15, label %11

11:                                               ; preds = %8, %5
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = tail call ptr @RNA_struct_identifier(ptr noundef %13) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.uiTemplatePathBuilder, ptr noundef %14, ptr noundef %2) #14
  br label %17

15:                                               ; preds = %8
  %16 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #14
  tail call void @uiItemR(ptr noundef %16, ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef %4, i32 noundef 206) #14
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

declare void @uiItemR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @uiTemplateModifier(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.VirtualModifierData, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %1) #14
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %10, ptr noundef nonnull @RNA_Modifier) #14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.uiTemplateModifier, ptr noundef nonnull @.str.6) #14
  br label %211

14:                                               ; preds = %3
  %15 = load ptr, ptr %2, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = icmp eq ptr %15, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !72
  %22 = icmp eq i16 %21, 16975
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.uiTemplateModifier, ptr noundef nonnull @.str.6) #14
  br label %211

24:                                               ; preds = %19
  %25 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  %26 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp ne ptr %27, null
  %29 = zext i1 %28 to i8
  tail call void @uiBlockSetButLock(ptr noundef %25, i8 noundef zeroext %29, ptr noundef nonnull @.str.7) #14
  %30 = call i32 @modifiers_getCageIndex(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %7, i8 noundef zeroext 0) #14
  %31 = call ptr @modifiers_getVirtualModifierList(ptr noundef nonnull %15, ptr noundef nonnull %6) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %211, label %33

33:                                               ; preds = %24, %202
  %34 = phi i32 [ %208, %202 ], [ 0, %24 ]
  %35 = phi ptr [ %209, %202 ], [ %31, %24 ]
  %36 = icmp eq ptr %17, %35
  br i1 %36, label %37, label %202

37:                                               ; preds = %33
  %38 = load i32, ptr %7, align 4, !tbaa !80
  %39 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !81
  %41 = call ptr @modifierType_getInfo(i32 noundef %40) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %42 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !83
  %44 = and i32 %43, 32
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #14
  call void @RNA_pointer_create(ptr noundef nonnull %15, ptr noundef nonnull @RNA_Modifier, ptr noundef %17, ptr noundef nonnull %4) #14
  %45 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  call void @uiLayoutSetContextPointer(ptr noundef %45, ptr noundef nonnull @.str.106, ptr noundef nonnull %4) #14
  %46 = call ptr @uiLayoutBox(ptr noundef %45) #14
  %47 = icmp eq i32 %44, 0
  %48 = call ptr @uiLayoutRow(ptr noundef %46, i32 noundef 0) #14
  br i1 %47, label %56, label %49

49:                                               ; preds = %37
  call void @uiLayoutSetAlignment(ptr noundef %48, i8 noundef zeroext 0) #14
  %50 = call ptr @uiLayoutGetBlock(ptr noundef %48) #14
  %51 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 6
  %52 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 128, ptr noundef nonnull @.str.107, ptr noundef nonnull %51) #14
  %53 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %54 = call ptr @uiDefBut(ptr noundef %50, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i16 noundef signext 185, i16 noundef signext %53, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.108) #14
  %55 = call ptr @uiDefBut(ptr noundef %50, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.109, i32 noundef 0, i32 noundef 0, i16 noundef signext 80, i16 noundef signext 16, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.110) #14
  call void @uiButSetFunc(ptr noundef %55, ptr noundef nonnull @modifiers_convertToReal, ptr noundef nonnull %15, ptr noundef %17) #14
  br label %144

56:                                               ; preds = %37
  %57 = call ptr @uiLayoutGetBlock(ptr noundef %48) #14
  call void @uiBlockSetEmboss(ptr noundef %57, i8 noundef zeroext 1) #14
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %4, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %58 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = call i32 @RNA_struct_ui_icon(ptr noundef %59) #14
  call void @uiItemL(ptr noundef %48, ptr noundef nonnull @.str.3, i32 noundef %60) #14
  call void @uiBlockSetEmboss(ptr noundef %57, i8 noundef zeroext 0) #14
  %61 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %41, i64 0, i32 15
  %62 = load ptr, ptr %61, align 8, !tbaa !84
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = call zeroext i8 %62(ptr noundef %17, i32 noundef 0) #14
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  call void @uiLayoutSetRedAlert(ptr noundef %48, i8 noundef zeroext 1) #14
  br label %68

68:                                               ; preds = %67, %64, %56
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %4, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  call void @uiLayoutSetRedAlert(ptr noundef %48, i8 noundef zeroext 0) #14
  call void @uiBlockBeginAlign(ptr noundef %57) #14
  %69 = load i32, ptr %39, align 8, !tbaa !81
  switch i32 %69, label %82 [
    i32 10, label %70
    i32 23, label %70
    i32 30, label %94
  ]

70:                                               ; preds = %68, %68
  %71 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 110
  %72 = load ptr, ptr %71, align 8, !tbaa !86
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.PartDeflect, ptr %72, i64 0, i32 1
  %76 = load i16, ptr %75, align 4, !tbaa !87
  %77 = icmp ne i16 %76, 0
  %78 = icmp eq i32 %69, 30
  %79 = or i1 %78, %77
  br i1 %79, label %94, label %82

80:                                               ; preds = %70
  %81 = icmp eq i32 %69, 30
  br i1 %81, label %94, label %82

82:                                               ; preds = %74, %68, %80
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %4, ptr noundef nonnull @.str.112, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %4, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %83 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %41, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !89
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %82
  %88 = call ptr @uiLayoutRow(ptr noundef %48, i32 noundef 1) #14
  %89 = load i32, ptr %42, align 4, !tbaa !83
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  call void @uiLayoutSetActive(ptr noundef %88, i8 noundef zeroext 0) #14
  br label %93

93:                                               ; preds = %92, %87
  call void @uiItemR(ptr noundef %88, ptr noundef nonnull %4, ptr noundef nonnull @.str.114, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %94

94:                                               ; preds = %68, %93, %82, %80, %74
  %95 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 3
  %96 = load i16, ptr %95, align 8, !tbaa !90
  switch i16 %96, label %121 [
    i16 1, label %97
    i16 2, label %110
    i16 3, label %110
    i16 4, label %110
  ]

97:                                               ; preds = %94
  %98 = call zeroext i8 @modifier_supportsCage(ptr noundef %8, ptr noundef %17) #14
  %99 = icmp eq i8 %98, 0
  %100 = icmp sgt i32 %34, %38
  %101 = or i1 %100, %99
  br i1 %101, label %121, label %102

102:                                              ; preds = %97
  %103 = call ptr @uiLayoutRow(ptr noundef %48, i32 noundef 1) #14
  %104 = icmp slt i32 %34, %30
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = call zeroext i8 @modifier_couldBeCage(ptr noundef %8, ptr noundef %17) #14
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102
  call void @uiLayoutSetActive(ptr noundef %103, i8 noundef zeroext 0) #14
  br label %109

109:                                              ; preds = %108, %105
  call void @uiItemR(ptr noundef %103, ptr noundef nonnull %4, ptr noundef nonnull @.str.115, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %121

110:                                              ; preds = %94, %94, %94
  %111 = load i32, ptr %39, align 8, !tbaa !81
  switch i32 %111, label %116 [
    i32 9, label %112
    i32 10, label %112
    i32 18, label %112
  ]

112:                                              ; preds = %110, %110, %110
  %113 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %114 = add i16 %113, -2
  %115 = call ptr @uiDefIconButBitI(ptr noundef %57, i32 noundef 1536, i32 noundef 64, i32 noundef 0, i32 noundef 188, i32 noundef 0, i32 noundef 0, i16 noundef signext %114, i16 noundef signext %113, ptr noundef nonnull %42, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.116) #14
  call void @uiButSetFlag(ptr noundef %115, i32 noundef 2048) #14
  br label %121

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %41, i64 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !91
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  call void @uiItemR(ptr noundef %48, ptr noundef nonnull %4, ptr noundef nonnull @.str.117, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %121

121:                                              ; preds = %120, %116, %112, %109, %97, %94
  call void @uiBlockEndAlign(ptr noundef %57) #14
  call void @uiBlockBeginAlign(ptr noundef %57) #14
  call void @uiItemO(ptr noundef %48, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.118) #14
  call void @uiItemO(ptr noundef %48, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.119) #14
  call void @uiBlockEndAlign(ptr noundef %57) #14
  call void @uiBlockSetEmboss(ptr noundef %57, i8 noundef zeroext 1) #14
  %122 = load i32, ptr %39, align 8, !tbaa !81
  %123 = icmp eq i32 %122, 19
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %17, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !92
  %127 = getelementptr inbounds %struct.ParticleSystem, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !94
  %129 = getelementptr inbounds %struct.ParticleSettings, ptr %128, i64 0, i32 7
  %130 = load i16, ptr %129, align 8, !tbaa !96
  %131 = icmp eq i16 %130, 3
  br i1 %131, label %139, label %132

132:                                              ; preds = %124, %121
  switch i32 %122, label %138 [
    i32 22, label %133
    i32 23, label %133
    i32 26, label %133
    i32 31, label %133
    i32 10, label %133
    i32 30, label %133
    i32 40, label %133
    i32 19, label %133
  ]

133:                                              ; preds = %132, %132, %132, %132, %132, %132, %132, %132
  %134 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 115
  %135 = load ptr, ptr @RE_engine_id_BLENDER_GAME, align 8, !tbaa !34
  %136 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %134, ptr noundef nonnull dereferenceable(1) %135) #15
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132, %133
  call void @uiItemO(ptr noundef %48, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.120) #14
  br label %143

139:                                              ; preds = %124, %133
  switch i32 %122, label %141 [
    i32 22, label %140
    i32 23, label %140
    i32 26, label %140
    i32 31, label %140
    i32 10, label %140
    i32 30, label %140
    i32 40, label %140
  ]

140:                                              ; preds = %139, %139, %139, %139, %139, %139, %139
  call void @uiItemStringO(ptr noundef %48, ptr noundef nonnull @.str.3, i32 noundef 107, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #14
  br label %143

141:                                              ; preds = %139
  br i1 %123, label %142, label %143

142:                                              ; preds = %141
  call void @uiItemStringO(ptr noundef %48, ptr noundef nonnull @.str.3, i32 noundef 107, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.124) #14
  br label %143

143:                                              ; preds = %141, %142, %140, %138
  call void @uiBlockSetEmboss(ptr noundef %57, i8 noundef zeroext 0) #14
  br label %144

144:                                              ; preds = %143, %49
  %145 = phi ptr [ %50, %49 ], [ %57, %143 ]
  br i1 %47, label %146, label %192

146:                                              ; preds = %144
  %147 = load i32, ptr %42, align 4, !tbaa !83
  %148 = and i32 %147, 16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %192, label %150

150:                                              ; preds = %146
  %151 = call ptr @uiLayoutBox(ptr noundef %45) #14
  %152 = call ptr @uiLayoutRow(ptr noundef %151, i32 noundef 0) #14
  %153 = load i32, ptr %39, align 8, !tbaa !81
  switch i32 %153, label %154 [
    i32 23, label %189
    i32 30, label %189
  ]

154:                                              ; preds = %150
  %155 = call zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef nonnull %15) #14
  call void @uiBlockSetButLock(ptr noundef %145, i8 noundef zeroext %155, ptr noundef nonnull @.str.7) #14
  %156 = load i32, ptr %39, align 8, !tbaa !81
  %157 = icmp eq i32 %156, 19
  br i1 %157, label %158, label %176

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %17, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !92
  %161 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 27
  %162 = load i32, ptr %161, align 8, !tbaa !73
  %163 = and i32 %162, 32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.ParticleSystem, ptr %160, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !94
  %168 = getelementptr inbounds %struct.ParticleSettings, ptr %167, i64 0, i32 21
  %169 = load i16, ptr %168, align 8, !tbaa !98
  switch i16 %169, label %183 [
    i16 8, label %170
    i16 7, label %170
    i16 6, label %171
  ]

170:                                              ; preds = %165, %165
  call void @uiItemO(ptr noundef %152, ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef nonnull @.str.126) #14
  br label %183

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.ParticleSystem, ptr %160, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !99
  %174 = icmp eq ptr %173, null
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  call void @uiItemO(ptr noundef %152, ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef nonnull @.str.127) #14
  br label %183

176:                                              ; preds = %154
  call void @uiLayoutSetOperatorContext(ptr noundef %152, i32 noundef 0) #14
  call void @uiItemEnumO(ptr noundef %152, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, i32 noundef 0, ptr noundef nonnull @.str.130, i32 noundef 1) #14
  %177 = call zeroext i8 @modifier_isSameTopology(ptr noundef %17) #14
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = call zeroext i8 @modifier_isNonGeometrical(ptr noundef %17) #14
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  call void @uiItemEnumO(ptr noundef %152, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.131, i32 noundef 0, ptr noundef nonnull @.str.130, i32 noundef 2) #14
  br label %183

183:                                              ; preds = %182, %179, %176, %175, %171, %170, %165, %158
  call void @uiBlockClearButLock(ptr noundef %145) #14
  %184 = load ptr, ptr %26, align 8, !tbaa !79
  %185 = icmp ne ptr %184, null
  %186 = zext i1 %185 to i8
  call void @uiBlockSetButLock(ptr noundef %145, i8 noundef zeroext %186, ptr noundef nonnull @.str.7) #14
  %187 = load i32, ptr %39, align 8, !tbaa !81
  switch i32 %187, label %188 [
    i32 26, label %189
    i32 10, label %189
    i32 19, label %189
    i32 22, label %189
    i32 31, label %189
  ]

188:                                              ; preds = %183
  call void @uiItemO(ptr noundef %152, ptr noundef nonnull @.str.132, i32 noundef 0, ptr noundef nonnull @.str.133) #14
  br label %189

189:                                              ; preds = %188, %183, %183, %183, %183, %183, %150, %150
  %190 = call ptr @uiLayoutColumn(ptr noundef %151, i32 noundef 0) #14
  %191 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %151) #14
  br label %192

192:                                              ; preds = %189, %146, %144
  %193 = phi ptr [ null, %144 ], [ %190, %189 ], [ null, %146 ]
  %194 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 8
  %195 = load ptr, ptr %194, align 8, !tbaa !100
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = call ptr @uiLayoutBox(ptr noundef %45) #14
  %199 = call ptr @uiLayoutRow(ptr noundef %198, i32 noundef 0) #14
  %200 = load ptr, ptr %194, align 8, !tbaa !100
  call void @uiItemL(ptr noundef %199, ptr noundef %200, i32 noundef 2) #14
  br label %201

201:                                              ; preds = %192, %197
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %211

202:                                              ; preds = %33
  %203 = getelementptr inbounds %struct.ModifierData, ptr %35, i64 0, i32 3
  %204 = load i32, ptr %203, align 4, !tbaa !83
  %205 = shl i32 %204, 26
  %206 = ashr i32 %205, 31
  %207 = add i32 %34, 1
  %208 = add i32 %207, %206
  %209 = load ptr, ptr %35, align 8, !tbaa !101
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %33, !llvm.loop !102

211:                                              ; preds = %202, %24, %201, %23, %13
  %212 = phi ptr [ %193, %201 ], [ null, %23 ], [ null, %13 ], [ null, %24 ], [ null, %202 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %6) #14
  ret ptr %212
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_struct_is_a(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiBlockSetButLock(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutGetBlock(ptr noundef) local_unnamed_addr #3

declare i32 @modifiers_getCageIndex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @uiTemplateConstraint(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [32 x i8], align 16
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = tail call zeroext i8 @RNA_struct_is_a(ptr noundef %6, ptr noundef nonnull @RNA_Constraint) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uiTemplateConstraint, ptr noundef nonnull @.str.6) #14
  br label %139

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = icmp eq ptr %11, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %17 = load i16, ptr %16, align 8, !tbaa !72
  %18 = icmp eq i16 %17, 16975
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %10
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.uiTemplateConstraint, ptr noundef nonnull @.str.6) #14
  br label %139

20:                                               ; preds = %15
  %21 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  %22 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i8
  tail call void @uiBlockSetButLock(ptr noundef %21, i8 noundef zeroext %25, ptr noundef nonnull @.str.7) #14
  %26 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !103
  %28 = icmp eq i16 %27, 3
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = getelementptr inbounds %struct.bKinematicConstraint, ptr %31, i64 0, i32 2
  %33 = load i16, ptr %32, align 2, !tbaa !106
  %34 = and i16 %33, 8
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %139

36:                                               ; preds = %29, %20
  %37 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  %38 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef %13) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i16, ptr %26, align 8, !tbaa !103
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %42, ptr @.str.135, ptr @.str.136
  br label %46

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %38, i64 0, i32 2
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi ptr [ %45, %44 ], [ %43, %40 ]
  %48 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %47, i64 noundef 32) #14
  %49 = call zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef nonnull %11, ptr noundef %37) #14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 4
  %53 = load i16, ptr %52, align 2, !tbaa !108
  %54 = and i16 %53, 256
  %55 = icmp ne i16 %54, 0
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ %55, %51 ], [ true, %46 ]
  %58 = call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  call void @uiBlockSetHandleFunc(ptr noundef %58, ptr noundef nonnull @do_constraint_panels, ptr noundef nonnull %11) #14
  call void @uiBlockSetFunc(ptr noundef %58, ptr noundef nonnull @constraint_active_func, ptr noundef nonnull %11, ptr noundef %13) #14
  call void @RNA_pointer_create(ptr noundef nonnull %11, ptr noundef nonnull @RNA_Constraint, ptr noundef %13, ptr noundef nonnull %3) #14
  %59 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  call void @uiLayoutSetContextPointer(ptr noundef %59, ptr noundef nonnull @.str.137, ptr noundef nonnull %3) #14
  %60 = call ptr @uiLayoutBox(ptr noundef %59) #14
  %61 = call ptr @uiLayoutRow(ptr noundef %60, i32 noundef 0) #14
  %62 = call ptr @uiLayoutGetBlock(ptr noundef %60) #14
  call void @uiBlockSetEmboss(ptr noundef %62, i8 noundef zeroext 1) #14
  call void @uiItemR(ptr noundef %61, ptr noundef nonnull %3, ptr noundef nonnull @.str.111, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  call void @uiBlockSetEmboss(ptr noundef %62, i8 noundef zeroext 0) #14
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %64 = sitofp i16 %63 to float
  %65 = call float @llvm.fmuladd.f32(float %64, float 5.000000e-01, float 0.000000e+00)
  %66 = fptosi float %65 to i32
  %67 = mul i16 %63, 5
  %68 = fmul float %64, 0x3FECCCCCC0000000
  %69 = fptosi float %68 to i16
  %70 = call ptr @uiDefBut(ptr noundef %62, i32 noundef 5120, i32 noundef 5, ptr noundef nonnull %4, i32 noundef %66, i32 noundef 0, i16 noundef signext %67, i16 noundef signext %69, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %71 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 4
  %72 = load i16, ptr %71, align 2, !tbaa !108
  %73 = and i16 %72, 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %56
  call void @uiLayoutSetRedAlert(ptr noundef %61, i8 noundef zeroext 1) #14
  br label %76

76:                                               ; preds = %75, %56
  br i1 %57, label %77, label %78

77:                                               ; preds = %76
  call void @uiItemR(ptr noundef %61, ptr noundef nonnull %3, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %80

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 7
  call void @uiItemL(ptr noundef %61, ptr noundef nonnull %79, i32 noundef 0) #14
  br label %80

80:                                               ; preds = %78, %77
  call void @uiLayoutSetRedAlert(ptr noundef %61, i8 noundef zeroext 0) #14
  br i1 %57, label %96, label %81

81:                                               ; preds = %80
  call void @uiBlockSetEmboss(ptr noundef %62, i8 noundef zeroext 1) #14
  %82 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %83 = sitofp i16 %82 to float
  %84 = call float @llvm.fmuladd.f32(float %83, float 0x4028666660000000, float 0.000000e+00)
  %85 = fptosi float %84 to i32
  %86 = fmul float %83, 0x3FEE666660000000
  %87 = fptosi float %86 to i16
  %88 = call ptr @uiDefIconBut(ptr noundef %62, i32 noundef 512, i32 noundef 5, i32 noundef 682, i32 noundef %85, i32 noundef 0, i16 noundef signext %87, i16 noundef signext %87, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.138) #14
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %90 = sitofp i16 %89 to float
  %91 = call float @llvm.fmuladd.f32(float %90, float 0x402A333340000000, float 0.000000e+00)
  %92 = fptosi float %91 to i32
  %93 = fmul float %90, 0x3FEE666660000000
  %94 = fptosi float %93 to i16
  %95 = call ptr @uiDefIconBut(ptr noundef %62, i32 noundef 512, i32 noundef 5, i32 noundef 41, i32 noundef %92, i32 noundef 0, i16 noundef signext %94, i16 noundef signext %94, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.138) #14
  br label %127

96:                                               ; preds = %80
  %97 = call zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef nonnull %11, ptr noundef %37) #14
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !109
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.bConstraint, ptr %101, i64 0, i32 4
  %105 = load i16, ptr %104, align 2, !tbaa !108
  %106 = and i16 %105, 256
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103, %99, %96
  %109 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !109
  %111 = icmp ne ptr %110, null
  br label %112

112:                                              ; preds = %108, %103
  %113 = phi i1 [ false, %103 ], [ %111, %108 ]
  %114 = load ptr, ptr %13, align 8, !tbaa !110
  %115 = icmp ne ptr %114, null
  call void @uiBlockSetEmboss(ptr noundef %62, i8 noundef zeroext 1) #14
  %116 = load i16, ptr %71, align 2, !tbaa !108
  %117 = and i16 %116, 512
  %118 = icmp eq i16 %117, 0
  %119 = select i1 %118, i32 253, i32 254
  call void @uiItemR(ptr noundef %61, ptr noundef nonnull %3, ptr noundef nonnull @.str.139, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %119) #14
  call void @uiBlockSetEmboss(ptr noundef %62, i8 noundef zeroext 0) #14
  call void @uiLayoutSetOperatorContext(ptr noundef %61, i32 noundef 0) #14
  %120 = select i1 %113, i1 true, i1 %115
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  call void @uiBlockBeginAlign(ptr noundef %62) #14
  br i1 %113, label %122, label %123

122:                                              ; preds = %121
  call void @uiItemO(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef 7, ptr noundef nonnull @.str.140) #14
  br label %123

123:                                              ; preds = %122, %121
  br i1 %115, label %124, label %125

124:                                              ; preds = %123
  call void @uiItemO(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef 5, ptr noundef nonnull @.str.141) #14
  br label %125

125:                                              ; preds = %124, %123
  call void @uiBlockEndAlign(ptr noundef %62) #14
  br label %126

126:                                              ; preds = %125, %112
  call void @uiBlockSetEmboss(ptr noundef %62, i8 noundef zeroext 1) #14
  call void @uiItemO(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef 19, ptr noundef nonnull @.str.142) #14
  br label %127

127:                                              ; preds = %126, %81
  call void @uiBlockSetEmboss(ptr noundef %62, i8 noundef zeroext 0) #14
  br i1 %57, label %129, label %128

128:                                              ; preds = %127
  call void @uiBlockSetButLock(ptr noundef %62, i8 noundef zeroext 1, ptr noundef nonnull @.str.143) #14
  br label %129

129:                                              ; preds = %128, %127
  %130 = load i16, ptr %71, align 2, !tbaa !108
  %131 = and i16 %130, 1
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %129
  %134 = call ptr @uiLayoutBox(ptr noundef %59) #14
  %135 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %134) #14
  br label %136

136:                                              ; preds = %129, %133
  %137 = phi ptr [ %134, %133 ], [ null, %129 ]
  %138 = phi ptr [ %135, %133 ], [ %62, %129 ]
  call void @uiBlockClearButLock(ptr noundef %138) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %139

139:                                              ; preds = %29, %136, %19, %9
  %140 = phi ptr [ %137, %136 ], [ null, %29 ], [ null, %19 ], [ null, %9 ]
  ret ptr %140
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplatePreview(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca %struct.PointerRNA, align 8
  %10 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #14
  %11 = icmp eq ptr %2, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %14 = load i16, ptr %13, align 8, !tbaa !72
  switch i16 %14, label %15 [
    i16 17748, label %16
    i16 16716, label %38
    i16 16717, label %38
    i16 20311, label %38
    i16 21324, label %38
  ]

15:                                               ; preds = %12
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.uiTemplatePreview, ptr noundef nonnull @.str.6) #14
  br label %147

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !72
  switch i16 %20, label %27 [
    i16 16717, label %21
    i16 20311, label %23
    i16 16716, label %25
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 79
  br label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.World, ptr %4, i64 0, i32 71
  br label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.Lamp, ptr %4, i64 0, i32 70
  br label %31

27:                                               ; preds = %18
  %28 = icmp eq i16 %20, 21324
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4, i64 0, i32 29
  %30 = select i1 %28, ptr %29, ptr null
  br label %31

31:                                               ; preds = %27, %16, %23, %25, %21
  %32 = phi ptr [ %22, %21 ], [ %24, %23 ], [ %26, %25 ], [ %30, %27 ], [ null, %16 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i16, ptr %32, align 2, !tbaa !72
  switch i16 %35, label %37 [
    i16 1, label %38
    i16 2, label %36
  ]

36:                                               ; preds = %34
  br label %38

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %12, %12, %12, %12, %7, %34, %37, %31, %36
  %39 = phi ptr [ %2, %36 ], [ %2, %31 ], [ %4, %34 ], [ %2, %37 ], [ null, %7 ], [ %2, %12 ], [ %2, %12 ], [ %2, %12 ], [ %2, %12 ]
  %40 = phi ptr [ %4, %36 ], [ null, %31 ], [ null, %34 ], [ null, %37 ], [ null, %7 ], [ null, %12 ], [ null, %12 ], [ null, %12 ], [ null, %12 ]
  %41 = phi ptr [ %32, %36 ], [ null, %31 ], [ %32, %34 ], [ %32, %37 ], [ null, %7 ], [ null, %12 ], [ null, %12 ], [ null, %12 ], [ null, %12 ]
  %42 = icmp eq ptr %6, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i8, ptr %6, align 1, !tbaa !70
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43, %38
  %47 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4
  %48 = load i16, ptr %47, align 8, !tbaa !72
  %49 = sext i16 %48 to i32
  %50 = tail call ptr @BKE_idcode_to_name(i32 noundef %49) #14
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %10, i64 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %50) #14
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi ptr [ %10, %46 ], [ %6, %43 ]
  %54 = call ptr @CTX_wm_region(ptr noundef %1) #14
  %55 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 25
  %56 = call ptr @BLI_findstring(ptr noundef nonnull %55, ptr noundef nonnull %53, i32 noundef 16) #14
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %60 = call ptr %59(i64 noundef 88, ptr noundef nonnull @.str.11) #14
  %61 = getelementptr inbounds %struct.uiPreview, ptr %60, i64 0, i32 2
  %62 = call ptr @BLI_strncpy(ptr noundef nonnull %61, ptr noundef nonnull %53, i64 noundef 64) #14
  %63 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %64 = sitofp i16 %63 to float
  %65 = fmul float %64, 0x4016666660000000
  %66 = fptosi float %65 to i16
  %67 = getelementptr inbounds %struct.uiPreview, ptr %60, i64 0, i32 3
  store i16 %66, ptr %67, align 8, !tbaa !111
  call void @BLI_addtail(ptr noundef nonnull %55, ptr noundef %60) #14
  br label %68

68:                                               ; preds = %58, %52
  %69 = phi ptr [ %56, %52 ], [ %60, %58 ]
  %70 = getelementptr inbounds %struct.uiPreview, ptr %69, i64 0, i32 3
  %71 = load i16, ptr %70, align 8, !tbaa !111
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %73 = icmp slt i16 %71, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = sext i16 %72 to i32
  %76 = sext i16 %71 to i32
  %77 = mul nsw i32 %75, 50
  %78 = icmp slt i32 %77, %76
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = trunc i32 %77 to i16
  br label %81

81:                                               ; preds = %68, %79
  %82 = phi i16 [ %80, %79 ], [ %72, %68 ]
  store i16 %82, ptr %70, align 8, !tbaa !111
  br label %83

83:                                               ; preds = %81, %74
  %84 = call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  %85 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  %86 = call ptr @uiLayoutColumn(ptr noundef %85, i32 noundef 0) #14
  call void @uiLayoutSetKeepAspect(ptr noundef %86, i8 noundef zeroext 1) #14
  %87 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %88 = mul i16 %87, 10
  %89 = load i16, ptr %70, align 8, !tbaa !111
  %90 = call ptr @uiDefBut(ptr noundef %84, i32 noundef 21504, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %88, i16 noundef signext %89, ptr noundef %39, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiBlockSetDrawExtraFunc(ptr noundef %84, ptr noundef nonnull @ED_preview_draw, ptr noundef %40, ptr noundef %5) #14
  call void @uiBlockSetHandleFunc(ptr noundef %84, ptr noundef nonnull @do_preview_buttons, ptr noundef null) #14
  %91 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %92 = mul i16 %91, 10
  %93 = sitofp i16 %91 to float
  %94 = fmul float %93, 0x3FD3333340000000
  %95 = fptosi float %94 to i16
  %96 = fmul float %93, 5.000000e+01
  %97 = call ptr @uiDefIconButS(ptr noundef %84, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %92, i16 noundef signext %95, ptr noundef nonnull %70, float noundef %93, float noundef %96, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %98 = icmp ne ptr %39, null
  %99 = icmp ne i32 %3, 0
  %100 = and i1 %99, %98
  br i1 %100, label %101, label %147

101:                                              ; preds = %83
  %102 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 4
  %103 = load i16, ptr %102, align 8, !tbaa !72
  %104 = icmp eq i16 %103, 16717
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = icmp eq ptr %40, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.ID, ptr %40, i64 0, i32 4
  %109 = load i16, ptr %108, align 8, !tbaa !72
  %110 = icmp eq i16 %109, 16717
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %101
  %112 = phi ptr [ %40, %107 ], [ %39, %101 ]
  call void @RNA_pointer_create(ptr noundef nonnull %112, ptr noundef nonnull @RNA_Material, ptr noundef nonnull %112, ptr noundef nonnull %8) #14
  %113 = call ptr @uiLayoutColumn(ptr noundef %85, i32 noundef 1) #14
  call void @uiLayoutSetScaleX(ptr noundef %113, float noundef 1.500000e+00) #14
  call void @uiItemR(ptr noundef %113, ptr noundef nonnull %8, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %114

114:                                              ; preds = %111, %107, %105
  %115 = icmp eq ptr %41, null
  br i1 %115, label %147, label %116

116:                                              ; preds = %114
  call void @RNA_pointer_create(ptr noundef %2, ptr noundef nonnull @RNA_Texture, ptr noundef %2, ptr noundef nonnull %9) #14
  %117 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #14
  %118 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %119 = mul i16 %118, 10
  %120 = call ptr @uiDefButS(ptr noundef %84, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i16 noundef signext %119, i16 noundef signext %118, ptr noundef nonnull %41, float noundef 1.000000e+01, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %121 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %122 = load i16, ptr %121, align 8, !tbaa !72
  switch i16 %122, label %139 [
    i16 16717, label %123
    i16 16716, label %127
    i16 20311, label %131
    i16 21324, label %135
  ]

123:                                              ; preds = %116
  %124 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %125 = mul i16 %124, 10
  %126 = call ptr @uiDefButS(ptr noundef %84, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i16 noundef signext %125, i16 noundef signext %124, ptr noundef nonnull %41, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %139

127:                                              ; preds = %116
  %128 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %129 = mul i16 %128, 10
  %130 = call ptr @uiDefButS(ptr noundef %84, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef 0, i16 noundef signext %129, i16 noundef signext %128, ptr noundef nonnull %41, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %139

131:                                              ; preds = %116
  %132 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %133 = mul i16 %132, 10
  %134 = call ptr @uiDefButS(ptr noundef %84, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i16 noundef signext %133, i16 noundef signext %132, ptr noundef nonnull %41, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %139

135:                                              ; preds = %116
  %136 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %137 = mul i16 %136, 10
  %138 = call ptr @uiDefButS(ptr noundef %84, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i16 noundef signext %137, i16 noundef signext %136, ptr noundef nonnull %41, float noundef 1.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %139

139:                                              ; preds = %116, %127, %135, %131, %123
  %140 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %141 = mul i16 %140, 10
  %142 = call ptr @uiDefButS(ptr noundef %84, i32 noundef 1024, i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef 0, i32 noundef 0, i16 noundef signext %141, i16 noundef signext %140, ptr noundef nonnull %41, float noundef 1.000000e+01, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %143 = load i16, ptr %41, align 2, !tbaa !72
  %144 = icmp eq i16 %143, 1
  br i1 %144, label %147, label %145

145:                                              ; preds = %139
  %146 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %146, ptr noundef nonnull %9, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  br label %147

147:                                              ; preds = %83, %139, %145, %114, %15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  ret void
}

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @BKE_idcode_to_name(i32 noundef) local_unnamed_addr #3

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutColumn(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiLayoutSetKeepAspect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @uiDefBut(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @uiBlockSetDrawExtraFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ED_preview_draw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @uiBlockSetHandleFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_preview_buttons(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %2, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 102825984, ptr noundef %1) #14
  br label %6

6:                                                ; preds = %3, %5
  ret void
}

declare ptr @uiDefIconButS(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiLayoutSetScaleX(ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @uiDefButS(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateColorRamp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %123, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @RNA_property_type(ptr noundef nonnull %7) #14
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %123

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %6, ptr noundef %1, ptr noundef nonnull %7) #14
  %13 = load ptr, ptr %6, align 8, !tbaa.struct !50
  %14 = getelementptr inbounds i8, ptr %6, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa.struct !113
  %16 = getelementptr inbounds i8, ptr %6, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa.struct !114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %123, label %19

19:                                               ; preds = %12
  %20 = call zeroext i8 @RNA_struct_is_a(ptr noundef %15, ptr noundef nonnull @RNA_ColorRamp) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %123, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = call ptr %23(i64 noundef 32, ptr noundef nonnull @.str.20) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %25 = getelementptr inbounds %struct.RNAUpdateCb, ptr %24, i64 0, i32 1
  store ptr %7, ptr %25, align 8, !tbaa !115
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %27 = sitofp i16 %26 to float
  %28 = fmul float %27, 1.000000e+01
  %29 = call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #14
  %30 = icmp eq ptr %13, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  %34 = icmp ne ptr %33, null
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %31, %22
  %37 = phi i8 [ 0, %22 ], [ %35, %31 ]
  call void @uiBlockSetButLock(ptr noundef %29, i8 noundef zeroext %37, ptr noundef nonnull @.str.7) #14
  %38 = fdiv float %28, 1.400000e+01
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %39 = load ptr, ptr %24, align 8, !tbaa !117
  call void @RNA_pointer_create(ptr noundef %39, ptr noundef nonnull @RNA_ColorRamp, ptr noundef nonnull %17, ptr noundef nonnull %5) #14
  %40 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD99999A0000000, i32 noundef 0) #14
  call void @uiBlockSetEmboss(ptr noundef %29, i8 noundef zeroext 1) #14
  call void @uiBlockBeginAlign(ptr noundef %29) #14
  %41 = call ptr @uiLayoutRow(ptr noundef %40, i32 noundef 0) #14
  %42 = fmul float %38, 2.000000e+00
  %43 = fptosi float %42 to i16
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %45 = call ptr @uiDefIconTextBut(ptr noundef %29, i32 noundef 512, i32 noundef 0, i32 noundef 31, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %43, i16 noundef signext %44, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.144) #14
  %46 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %47 = call ptr %46(ptr noundef nonnull %24) #14
  call void @uiButSetNFunc(ptr noundef %45, ptr noundef nonnull @colorband_add_cb, ptr noundef %47, ptr noundef nonnull %17) #14
  %48 = call float @llvm.fmuladd.f32(float %38, float 2.000000e+00, float 0.000000e+00)
  %49 = fptosi float %48 to i32
  %50 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %51 = sext i16 %50 to i32
  %52 = call ptr @uiDefIconTextBut(ptr noundef %29, i32 noundef 512, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %49, i32 noundef %51, i16 noundef signext %43, i16 noundef signext %50, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.145) #14
  %53 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %54 = call ptr %53(ptr noundef nonnull %24) #14
  call void @uiButSetNFunc(ptr noundef %52, ptr noundef nonnull @colorband_del_cb, ptr noundef %54, ptr noundef nonnull %17) #14
  %55 = call float @llvm.fmuladd.f32(float %38, float 4.000000e+00, float 0.000000e+00)
  %56 = fptosi float %55 to i32
  %57 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %58 = sext i16 %57 to i32
  %59 = call ptr @uiDefIconTextBut(ptr noundef %29, i32 noundef 512, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str.3, i32 noundef %56, i32 noundef %58, i16 noundef signext %43, i16 noundef signext %57, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.146) #14
  %60 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %61 = call ptr %60(ptr noundef nonnull %24) #14
  call void @uiButSetNFunc(ptr noundef %59, ptr noundef nonnull @colorband_flip_cb, ptr noundef %61, ptr noundef nonnull %17) #14
  call void @uiBlockEndAlign(ptr noundef %29) #14
  call void @uiBlockSetEmboss(ptr noundef %29, i8 noundef zeroext 0) #14
  %62 = call ptr @uiLayoutRow(ptr noundef %40, i32 noundef 0) #14
  call void @uiBlockBeginAlign(ptr noundef %29) #14
  call void @uiItemR(ptr noundef %62, ptr noundef nonnull %5, ptr noundef nonnull @.str.147, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %63 = getelementptr inbounds %struct.ColorBand, ptr %17, i64 0, i32 4
  %64 = load i8, ptr %63, align 2, !tbaa !118
  %65 = add i8 %64, -1
  %66 = icmp ult i8 %65, 2
  %67 = select i1 %66, ptr @.str.148, ptr @.str.149
  call void @uiItemR(ptr noundef %62, ptr noundef nonnull %5, ptr noundef nonnull %67, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  call void @uiBlockEndAlign(ptr noundef %29) #14
  %68 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  %69 = fptosi float %28 to i16
  %70 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %71 = call ptr @uiDefBut(ptr noundef %29, i32 noundef 15360, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %69, i16 noundef signext %70, ptr noundef nonnull %17, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %72 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %73 = call ptr %72(ptr noundef nonnull %24) #14
  call void @uiButSetNFunc(ptr noundef %71, ptr noundef nonnull @rna_update_cb, ptr noundef %73, ptr noundef null) #14
  %74 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  %75 = load i16, ptr %17, align 4, !tbaa !119
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %121, label %77

77:                                               ; preds = %36
  %78 = getelementptr inbounds %struct.ColorBand, ptr %17, i64 0, i32 6
  %79 = getelementptr inbounds %struct.ColorBand, ptr %17, i64 0, i32 1
  %80 = load i16, ptr %79, align 2, !tbaa !120
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds %struct.CBData, ptr %78, i64 %81
  %83 = load ptr, ptr %24, align 8, !tbaa !117
  call void @RNA_pointer_create(ptr noundef %83, ptr noundef nonnull @RNA_ColorRampElement, ptr noundef nonnull %82, ptr noundef nonnull %5) #14
  %84 = icmp eq i32 %3, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %77
  %86 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0x3FD3333340000000, i32 noundef 0) #14
  %87 = call ptr @uiLayoutRow(ptr noundef %86, i32 noundef 0) #14
  %88 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %89 = mul i16 %88, 5
  %90 = load i16, ptr %17, align 4, !tbaa !119
  %91 = icmp slt i16 %90, 1
  %92 = add nsw i16 %90, -1
  %93 = sitofp i16 %92 to float
  %94 = select i1 %91, float 0.000000e+00, float %93
  %95 = call ptr @uiDefButS(ptr noundef %29, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %89, i16 noundef signext %88, ptr noundef nonnull %79, float noundef 0.000000e+00, float noundef %94, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.150) #14
  %96 = call ptr @uiLayoutRow(ptr noundef %86, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %96, ptr noundef nonnull %5, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef nonnull @.str.152, i32 noundef 0) #14
  %97 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 2, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !121
  call void @uiButSetFunc(ptr noundef %98, ptr noundef nonnull @colorband_update_cb, ptr noundef %98, ptr noundef nonnull %17) #14
  br label %114

99:                                               ; preds = %77
  %100 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 5.000000e-01, i32 noundef 0) #14
  %101 = call ptr @uiLayoutSplit(ptr noundef %100, float noundef 0x3FD6666660000000, i32 noundef 0) #14
  %102 = call ptr @uiLayoutRow(ptr noundef %101, i32 noundef 0) #14
  %103 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %104 = mul i16 %103, 5
  %105 = load i16, ptr %17, align 4, !tbaa !119
  %106 = icmp slt i16 %105, 1
  %107 = add nsw i16 %105, -1
  %108 = sitofp i16 %107 to float
  %109 = select i1 %106, float 0.000000e+00, float %108
  %110 = call ptr @uiDefButS(ptr noundef %29, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %104, i16 noundef signext %103, ptr noundef nonnull %79, float noundef 0.000000e+00, float noundef %109, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.150) #14
  %111 = call ptr @uiLayoutRow(ptr noundef %101, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %111, ptr noundef nonnull %5, ptr noundef nonnull @.str.151, i32 noundef 4, ptr noundef nonnull @.str.152, i32 noundef 0) #14
  %112 = getelementptr inbounds %struct.uiBlock, ptr %29, i64 0, i32 2, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !121
  call void @uiButSetFunc(ptr noundef %113, ptr noundef nonnull @colorband_update_cb, ptr noundef %113, ptr noundef nonnull %17) #14
  br label %114

114:                                              ; preds = %99, %85
  %115 = phi ptr [ %0, %85 ], [ %100, %99 ]
  %116 = phi ptr [ %97, %85 ], [ %112, %99 ]
  %117 = call ptr @uiLayoutRow(ptr noundef %115, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %117, ptr noundef nonnull %5, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %118 = load ptr, ptr %116, align 8, !tbaa !121
  %119 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %120 = call ptr %119(ptr noundef nonnull %24) #14
  call void @uiButSetNFunc(ptr noundef %118, ptr noundef nonnull @rna_update_cb, ptr noundef %120, ptr noundef null) #14
  br label %121

121:                                              ; preds = %114, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @uiBlockClearButLock(ptr noundef %29) #14
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %122(ptr noundef nonnull %24) #14
  br label %123

123:                                              ; preds = %12, %19, %4, %9, %121
  ret void
}

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiBlockClearButLock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateIconView(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @RNA_property_type(ptr noundef nonnull %4) #14
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = tail call i32 @RNA_property_enum_get(ptr noundef %1, ptr noundef nonnull %4) #14
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 32, ptr noundef nonnull @.str.20) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %13 = getelementptr inbounds %struct.RNAUpdateCb, ptr %12, i64 0, i32 1
  store ptr %4, ptr %13, align 8, !tbaa !115
  %14 = tail call ptr @uiLayoutAbsoluteBlock(ptr noundef %0) #14
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %16 = tail call ptr %15(ptr noundef %12) #14
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %18 = mul i16 %17, 6
  %19 = tail call ptr @uiDefBlockButN(ptr noundef %14, ptr noundef nonnull @icon_view_menu, ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %18, i16 noundef signext %18, ptr noundef nonnull @.str.3) #14
  %20 = getelementptr inbounds %struct.uiBut, ptr %19, i64 0, i32 44
  store i32 %10, ptr %20, align 8, !tbaa !66
  tail call void @uiButSetFlag(ptr noundef %19, i32 noundef 136) #14
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %22 = tail call ptr %21(ptr noundef %12) #14
  tail call void @uiButSetNFunc(ptr noundef %19, ptr noundef nonnull @rna_update_cb, ptr noundef %22, ptr noundef null) #14
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef %12) #14
  br label %24

24:                                               ; preds = %3, %6, %9
  ret void
}

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefBlockButN(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @icon_view_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @icon_view_menu.cb, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !125
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, i16 noundef signext 0) #14
  tail call void @uiBlockSetFlag(ptr noundef %6, i32 noundef 3) #14
  %7 = load ptr, ptr getelementptr inbounds (%struct.RNAUpdateCb, ptr @icon_view_menu.cb, i64 0, i32 1), align 8, !tbaa !115
  call void @RNA_property_enum_items(ptr noundef %0, ptr noundef nonnull @icon_view_menu.cb, ptr noundef %7, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5) #14
  %8 = load ptr, ptr %4, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.EnumPropertyItem, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %3, %12
  %13 = phi i64 [ %31, %12 ], [ 0, %3 ]
  %14 = phi ptr [ %32, %12 ], [ %8, %3 ]
  %15 = trunc i64 %13 to i32
  %16 = and i32 %15, 7
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %18 = sext i16 %17 to i32
  %19 = mul nsw i32 %18, 5
  %20 = mul nsw i32 %19, %16
  %21 = trunc i64 %13 to i32
  %22 = lshr i32 %21, 3
  %23 = mul nsw i32 %18, 5
  %24 = mul i32 %23, %22
  %25 = getelementptr inbounds %struct.EnumPropertyItem, ptr %14, i64 %13, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !128
  %27 = mul i16 %17, 5
  %28 = load ptr, ptr getelementptr inbounds (%struct.RNAUpdateCb, ptr @icon_view_menu.cb, i64 0, i32 1), align 8, !tbaa !115
  %29 = sitofp i32 %26 to float
  %30 = call ptr @uiDefIconButR_prop(ptr noundef %6, i32 noundef 1024, i32 noundef 0, i32 noundef %26, i32 noundef %20, i32 noundef %24, i16 noundef signext %27, i16 noundef signext %27, ptr noundef nonnull @icon_view_menu.cb, ptr noundef %28, i32 noundef -1, float noundef 0.000000e+00, float noundef %29, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef null) #14
  call void @uiButSetFlag(ptr noundef %30, i32 noundef 136) #14
  %31 = add nuw i64 %13, 1
  %32 = load ptr, ptr %4, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.EnumPropertyItem, ptr %32, i64 %31, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !126
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %12, !llvm.loop !129

36:                                               ; preds = %12, %3
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %38 = sitofp i16 %37 to float
  %39 = fmul float %38, 0x3FD3333340000000
  %40 = fptosi float %39 to i32
  call void @uiBoundsBlock(ptr noundef %6, i32 noundef %40) #14
  call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 1) #14
  %41 = load i8, ptr %5, align 1, !tbaa !70
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %45 = load ptr, ptr %4, align 8, !tbaa !34
  call void %44(ptr noundef %45) #14
  br label %46

46:                                               ; preds = %43, %36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %6
}

declare void @uiButSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiButSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @rna_update_cb(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateHistogram(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #14
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !113
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa.struct !114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %10
  %17 = call zeroext i8 @RNA_struct_is_a(ptr noundef %12, ptr noundef nonnull @RNA_Histogram) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Histogram, ptr %14, i64 0, i32 11
  %21 = load i32, ptr %20, align 4, !tbaa !130
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = mul nsw i32 %23, 20
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %23, %19 ], [ %26, %25 ]
  store i32 %29, ptr %20, align 4, !tbaa !130
  br label %30

30:                                               ; preds = %28, %25
  %31 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  %32 = call ptr @uiLayoutGetBlock(ptr noundef %31) #14
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %34 = mul i16 %33, 10
  %35 = load i32, ptr %20, align 4, !tbaa !130
  %36 = trunc i32 %35 to i16
  %37 = call ptr @uiDefBut(ptr noundef %32, i32 noundef 24576, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %36, ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %39 = mul i16 %38, 10
  %40 = sitofp i16 %38 to float
  %41 = fmul float %40, 0x3FD3333340000000
  %42 = fptosi float %41 to i16
  %43 = fmul float %40, 2.000000e+01
  %44 = call ptr @uiDefIconButI(ptr noundef %32, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %42, ptr noundef nonnull %20, float noundef %40, float noundef %43, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %45

45:                                               ; preds = %10, %16, %3, %7, %30
  ret void
}

declare ptr @uiDefIconButI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateWaveform(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #14
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !113
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa.struct !114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %10
  %17 = call zeroext i8 @RNA_struct_is_a(ptr noundef %12, ptr noundef nonnull @RNA_Scopes) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  %21 = call ptr @uiLayoutGetBlock(ptr noundef %20) #14
  %22 = getelementptr inbounds %struct.Scopes, ptr %14, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !132
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %25 = sext i16 %24 to i32
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = mul nsw i32 %25, 20
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %19
  %31 = phi i32 [ %25, %19 ], [ %28, %27 ]
  store i32 %31, ptr %22, align 4, !tbaa !132
  br label %32

32:                                               ; preds = %30, %27
  %33 = mul i16 %24, 10
  %34 = load i32, ptr %22, align 4, !tbaa !132
  %35 = trunc i32 %34 to i16
  %36 = call ptr @uiDefBut(ptr noundef %21, i32 noundef 25088, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %33, i16 noundef signext %35, ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %38 = mul i16 %37, 10
  %39 = sitofp i16 %37 to float
  %40 = fmul float %39, 0x3FD3333340000000
  %41 = fptosi float %40 to i16
  %42 = fmul float %39, 2.000000e+01
  %43 = call ptr @uiDefIconButI(ptr noundef %21, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %38, i16 noundef signext %41, ptr noundef nonnull %22, float noundef %39, float noundef %42, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %44

44:                                               ; preds = %10, %16, %3, %7, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateVectorscope(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @RNA_property_type(ptr noundef nonnull %5) #14
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #14
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa.struct !113
  %13 = getelementptr inbounds i8, ptr %4, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa.struct !114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %10
  %17 = call zeroext i8 @RNA_struct_is_a(ptr noundef %12, ptr noundef nonnull @RNA_Scopes) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Scopes, ptr %14, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !134
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = mul nsw i32 %23, 20
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %23, %19 ], [ %26, %25 ]
  store i32 %29, ptr %20, align 4, !tbaa !134
  br label %30

30:                                               ; preds = %28, %25
  %31 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  %32 = call ptr @uiLayoutGetBlock(ptr noundef %31) #14
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %34 = mul i16 %33, 10
  %35 = load i32, ptr %20, align 4, !tbaa !134
  %36 = trunc i32 %35 to i16
  %37 = call ptr @uiDefBut(ptr noundef %32, i32 noundef 25600, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %36, ptr noundef nonnull %14, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %39 = mul i16 %38, 10
  %40 = sitofp i16 %38 to float
  %41 = fmul float %40, 0x3FD3333340000000
  %42 = fptosi float %41 to i16
  %43 = fmul float %40, 2.000000e+01
  %44 = call ptr @uiDefIconButI(ptr noundef %32, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %42, ptr noundef nonnull %20, float noundef %40, float noundef %43, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %45

45:                                               ; preds = %10, %16, %3, %7, %30
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateCurveMapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = alloca %struct.PointerRNA, align 8
  %9 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  %10 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = tail call ptr @RNA_struct_identifier(ptr noundef %14) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.uiTemplateCurveMapping, ptr noundef %15, ptr noundef %2) #14
  br label %213

16:                                               ; preds = %7
  %17 = tail call i32 @RNA_property_type(ptr noundef nonnull %9) #14
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = tail call ptr @RNA_struct_identifier(ptr noundef %21) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.uiTemplateCurveMapping, ptr noundef %22, ptr noundef %2) #14
  br label %213

23:                                               ; preds = %16
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %8, ptr noundef %1, ptr noundef nonnull %9) #14
  %24 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = icmp eq ptr %25, null
  br i1 %26, label %213, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = call zeroext i8 @RNA_struct_is_a(ptr noundef %29, ptr noundef nonnull @RNA_CurveMapping) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %213, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = call ptr %33(i64 noundef 32, ptr noundef nonnull @.str.20) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %35 = getelementptr inbounds %struct.RNAUpdateCb, ptr %34, i64 0, i32 1
  store ptr %9, ptr %35, align 8, !tbaa !115
  %36 = load ptr, ptr %8, align 8, !tbaa !78
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ID, ptr %36, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !67
  %41 = icmp ne ptr %40, null
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i8 [ 0, %32 ], [ %42, %38 ]
  call void @uiBlockSetButLock(ptr noundef %10, i8 noundef zeroext %44, ptr noundef nonnull @.str.7) #14
  %45 = trunc i32 %3 to i8
  %46 = load ptr, ptr %24, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !135
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 %49
  %51 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %52 = call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  %53 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  switch i8 %45, label %117 [
    i8 118, label %54
    i8 99, label %73
    i8 104, label %98
  ]

54:                                               ; preds = %43
  %55 = call ptr @uiLayoutRow(ptr noundef %53, i32 noundef 1) #14
  call void @uiLayoutSetAlignment(ptr noundef %55, i8 noundef zeroext 1) #14
  %56 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !137
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %60, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %61

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 1, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !137
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.157, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %66, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 2, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !137
  %70 = icmp eq ptr %69, null
  br i1 %70, label %118, label %71

71:                                               ; preds = %67
  %72 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.158, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %72, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %118

73:                                               ; preds = %43
  %74 = call ptr @uiLayoutRow(ptr noundef %53, i32 noundef 1) #14
  call void @uiLayoutSetAlignment(ptr noundef %74, i8 noundef zeroext 1) #14
  %75 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 3, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !137
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.159, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 3.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %79, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %80

80:                                               ; preds = %78, %73
  %81 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !137
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.160, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %85, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 1, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !137
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.161, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %91, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %92

92:                                               ; preds = %90, %86
  %93 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 2, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !137
  %95 = icmp eq ptr %94, null
  br i1 %95, label %118, label %96

96:                                               ; preds = %92
  %97 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.162, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %97, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %118

98:                                               ; preds = %43
  %99 = call ptr @uiLayoutRow(ptr noundef %53, i32 noundef 1) #14
  call void @uiLayoutSetAlignment(ptr noundef %99, i8 noundef zeroext 1) #14
  %100 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !137
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.163, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %104, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %105

105:                                              ; preds = %103, %98
  %106 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 1, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !137
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.164, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %110, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %111

111:                                              ; preds = %109, %105
  %112 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 2, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !137
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = call ptr @uiDefButI(ptr noundef %52, i32 noundef 1024, i32 noundef 0, ptr noundef nonnull @.str.165, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull %47, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %116, ptr noundef nonnull @curvemap_buttons_redraw, ptr noundef null, ptr noundef null) #14
  br label %118

117:                                              ; preds = %43
  call void @uiLayoutSetAlignment(ptr noundef %53, i8 noundef zeroext 3) #14
  br label %118

118:                                              ; preds = %117, %115, %111, %96, %92, %71, %67
  %119 = icmp eq i8 %45, 104
  %120 = select i1 %119, float 3.000000e+00, float -1.000000e+00
  %121 = call ptr @uiLayoutRow(ptr noundef %53, i32 noundef 1) #14
  call void @uiBlockSetEmboss(ptr noundef %52, i8 noundef zeroext 1) #14
  %122 = call ptr @uiDefIconBut(ptr noundef %52, i32 noundef 512, i32 noundef 0, i32 noundef 31, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.166) #14
  call void @uiButSetFunc(ptr noundef %122, ptr noundef nonnull @curvemap_buttons_zoom_in, ptr noundef %46, ptr noundef null) #14
  %123 = call ptr @uiDefIconBut(ptr noundef %52, i32 noundef 512, i32 noundef 0, i32 noundef 32, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.167) #14
  call void @uiButSetFunc(ptr noundef %123, ptr noundef nonnull @curvemap_buttons_zoom_out, ptr noundef %46, ptr noundef null) #14
  %124 = icmp eq i32 %5, 0
  %125 = icmp eq i32 %6, 0
  %126 = select i1 %125, ptr @curvemap_tools_posslope_func, ptr @curvemap_tools_negslope_func
  %127 = select i1 %124, ptr %126, ptr @curvemap_brush_tools_func
  %128 = call ptr @uiDefIconBlockBut(ptr noundef %52, ptr noundef nonnull %127, ptr noundef %46, i32 noundef 0, i32 noundef 442, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull @.str.168) #14
  %129 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %130 = call ptr %129(ptr noundef %34) #14
  call void @uiButSetNFunc(ptr noundef %128, ptr noundef nonnull @rna_update_cb, ptr noundef %130, ptr noundef null) #14
  %131 = load i32, ptr %46, align 8, !tbaa !139
  %132 = and i32 %131, 1
  %133 = or disjoint i32 %132, 588
  %134 = call ptr @uiDefIconBlockBut(ptr noundef %52, ptr noundef nonnull @curvemap_clipping_func, ptr noundef nonnull %46, i32 noundef 0, i32 noundef %133, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef nonnull @.str.169) #14
  %135 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %136 = call ptr %135(ptr noundef %34) #14
  call void @uiButSetNFunc(ptr noundef %134, ptr noundef nonnull @rna_update_cb, ptr noundef %136, ptr noundef null) #14
  %137 = call ptr @uiDefIconBut(ptr noundef %52, i32 noundef 512, i32 noundef 0, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %51, i16 noundef signext %51, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.170) #14
  %138 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %139 = call ptr %138(ptr noundef %34) #14
  call void @uiButSetNFunc(ptr noundef %137, ptr noundef nonnull @curvemap_buttons_delete, ptr noundef %139, ptr noundef nonnull %46) #14
  call void @uiBlockSetEmboss(ptr noundef %52, i8 noundef zeroext 0) #14
  %140 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %141 = call ptr %140(ptr noundef %34) #14
  call void @uiBlockSetNFunc(ptr noundef %52, ptr noundef nonnull @rna_update_cb, ptr noundef %141, ptr noundef null) #14
  %142 = call i32 @uiLayoutGetWidth(ptr noundef %0) #14
  %143 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  %144 = trunc i32 %142 to i16
  %145 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %146 = shl i16 %145, 3
  %147 = call ptr @uiDefBut(ptr noundef %52, i32 noundef 16384, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %144, i16 noundef signext %146, ptr noundef nonnull %46, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef %120, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %148 = load i16, ptr %50, align 8, !tbaa !140
  %149 = icmp sgt i16 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %118
  %151 = zext nneg i16 %148 to i64
  %152 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 6, i64 %49, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !137
  br label %157

154:                                              ; preds = %157
  %155 = add nuw nsw i64 %158, 1
  %156 = icmp eq i64 %155, %151
  br i1 %156, label %165, label %157, !llvm.loop !141

157:                                              ; preds = %150, %154
  %158 = phi i64 [ 0, %150 ], [ %155, %154 ]
  %159 = getelementptr inbounds %struct.CurveMapPoint, ptr %153, i64 %158, i32 2
  %160 = load i16, ptr %159, align 4, !tbaa !142
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %154, label %163

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.CurveMapPoint, ptr %153, i64 %158
  br label %165

165:                                              ; preds = %154, %118, %163
  %166 = phi ptr [ %164, %163 ], [ null, %118 ], [ null, %154 ]
  %167 = icmp eq ptr %166, null
  br i1 %167, label %199, label %168

168:                                              ; preds = %165
  %169 = load i32, ptr %46, align 8, !tbaa !139
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 5
  %174 = load float, ptr %173, align 8, !tbaa.struct !144
  %175 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 5, i32 1
  %176 = load float, ptr %175, align 4, !tbaa.struct !146
  %177 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 5, i32 2
  %178 = load float, ptr %177, align 8, !tbaa.struct !147
  %179 = getelementptr inbounds %struct.CurveMapping, ptr %46, i64 0, i32 5, i32 3
  %180 = load float, ptr %179, align 4, !tbaa.struct !148
  br label %181

181:                                              ; preds = %172, %168
  %182 = phi float [ %180, %172 ], [ 1.000000e+03, %168 ]
  %183 = phi float [ %178, %172 ], [ -1.000000e+03, %168 ]
  %184 = phi float [ %176, %172 ], [ 1.000000e+03, %168 ]
  %185 = phi float [ %174, %172 ], [ -1.000000e+03, %168 ]
  %186 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #14
  %187 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %188 = call ptr %187(ptr noundef %34) #14
  call void @uiBlockSetNFunc(ptr noundef %52, ptr noundef nonnull @curvemap_buttons_update, ptr noundef %188, ptr noundef nonnull %46) #14
  %189 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %190 = sext i16 %189 to i32
  %191 = shl nsw i32 %190, 1
  %192 = mul i16 %189, 10
  %193 = call ptr @uiDefButF(ptr noundef %52, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.156, i32 noundef 0, i32 noundef %191, i16 noundef signext %192, i16 noundef signext %189, ptr noundef nonnull %166, float noundef %185, float noundef %184, float noundef 1.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #14
  %194 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %195 = sext i16 %194 to i32
  %196 = mul i16 %194, 10
  %197 = getelementptr inbounds %struct.CurveMapPoint, ptr %166, i64 0, i32 1
  %198 = call ptr @uiDefButF(ptr noundef %52, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.157, i32 noundef 0, i32 noundef %195, i16 noundef signext %196, i16 noundef signext %194, ptr noundef nonnull %197, float noundef %183, float noundef %182, float noundef 1.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %199

199:                                              ; preds = %181, %165
  %200 = icmp eq i32 %4, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %199
  %202 = call ptr @uiLayoutSplit(ptr noundef %0, float noundef 0.000000e+00, i32 noundef 0) #14
  %203 = call ptr @uiLayoutColumn(ptr noundef %202, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %203, ptr noundef nonnull %8, ptr noundef nonnull @.str.171, i32 noundef 2, ptr noundef null, i32 noundef 0) #14
  %204 = call ptr @uiLayoutColumn(ptr noundef %202, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %204, ptr noundef nonnull %8, ptr noundef nonnull @.str.172, i32 noundef 2, ptr noundef null, i32 noundef 0) #14
  %205 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  %206 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %207 = mul i16 %206, 10
  %208 = call ptr @uiDefBut(ptr noundef %52, i32 noundef 512, i32 noundef 0, ptr noundef nonnull @.str.173, i32 noundef 0, i32 noundef 0, i16 noundef signext %207, i16 noundef signext %206, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.174) #14
  %209 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %210 = call ptr %209(ptr noundef %34) #14
  call void @uiButSetNFunc(ptr noundef %208, ptr noundef nonnull @curvemap_buttons_reset, ptr noundef %210, ptr noundef nonnull %46) #14
  br label %211

211:                                              ; preds = %199, %201
  call void @uiBlockSetNFunc(ptr noundef %52, ptr noundef null, ptr noundef null, ptr noundef null) #14
  call void @uiBlockClearButLock(ptr noundef %10) #14
  %212 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %212(ptr noundef %34) #14
  br label %213

213:                                              ; preds = %23, %27, %211, %19, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateColorPicker(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [4 x float], align 16
  %13 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %14 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = tail call ptr @RNA_struct_identifier(ptr noundef %18) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.uiTemplateColorPicker, ptr noundef %19, ptr noundef %2) #14
  br label %103

20:                                               ; preds = %7
  call void @RNA_property_float_ui_range(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #14
  %21 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  %22 = call ptr @uiLayoutRow(ptr noundef %21, i32 noundef 1) #14
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !149
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %25 = mul i16 %24, 5
  switch i16 %23, label %32 [
    i16 1, label %26
    i16 2, label %28
    i16 3, label %30
  ]

26:                                               ; preds = %20
  %27 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %34

28:                                               ; preds = %20
  %29 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %34

30:                                               ; preds = %20
  %31 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %34

32:                                               ; preds = %20
  %33 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 22016, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %25, i16 noundef signext %25, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %34

34:                                               ; preds = %32, %30, %28, %26
  %35 = phi ptr [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ]
  %36 = icmp eq i32 %4, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !41
  %40 = or i32 %39, 4096
  store i32 %40, ptr %38, align 8, !tbaa !41
  br label %41

41:                                               ; preds = %37, %34
  %42 = icmp eq i32 %5, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  %44 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !41
  %46 = or i32 %45, 4194304
  store i32 %46, ptr %44, align 8, !tbaa !41
  call void @RNA_property_float_get_array(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %12) #14
  %47 = load float, ptr %12, align 16, !tbaa !145
  %48 = getelementptr inbounds float, ptr %12, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !145
  %50 = fmul float %49, %49
  %51 = call float @llvm.fmuladd.f32(float %47, float %47, float %50)
  %52 = getelementptr inbounds float, ptr %12, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !145
  %54 = call float @llvm.fmuladd.f32(float %53, float %53, float %51)
  %55 = call float @sqrtf(float noundef %54) #14
  %56 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 25
  store float %55, ptr %56, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br label %57

57:                                               ; preds = %43, %41
  %58 = icmp eq i32 %6, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.uiBut, ptr %35, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !41
  %62 = or i32 %61, 8388608
  store i32 %62, ptr %60, align 8, !tbaa !41
  br label %63

63:                                               ; preds = %59, %57
  %64 = icmp eq i32 %3, 0
  br i1 %64, label %103, label %65

65:                                               ; preds = %63
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 74), align 2, !tbaa !149
  switch i16 %66, label %94 [
    i16 4, label %67
    i16 1, label %76
    i16 2, label %82
    i16 3, label %88
  ]

67:                                               ; preds = %65
  call void @uiItemS(ptr noundef %22) #14
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %69 = sext i16 %68 to i32
  %70 = mul nsw i32 %69, 5
  %71 = add nsw i32 %70, 6
  %72 = trunc i32 %70 to i16
  %73 = load float, ptr %8, align 4, !tbaa !145
  %74 = load float, ptr %9, align 4, !tbaa !145
  %75 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %71, i32 noundef 0, i16 noundef signext 14, i16 noundef signext %72, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %73, float noundef %74, float noundef 1.000000e+01, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %103

76:                                               ; preds = %65
  call void @uiItemS(ptr noundef %21) #14
  %77 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %78 = mul i16 %77, 5
  %79 = load float, ptr %8, align 4, !tbaa !145
  %80 = load float, ptr %9, align 4, !tbaa !145
  %81 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 4, i16 noundef signext %78, i16 noundef signext 18, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %79, float noundef %80, float noundef 3.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %103

82:                                               ; preds = %65
  call void @uiItemS(ptr noundef %21) #14
  %83 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %84 = mul i16 %83, 5
  %85 = load float, ptr %8, align 4, !tbaa !145
  %86 = load float, ptr %9, align 4, !tbaa !145
  %87 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 4, i16 noundef signext %84, i16 noundef signext 18, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %85, float noundef %86, float noundef 5.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %103

88:                                               ; preds = %65
  call void @uiItemS(ptr noundef %21) #14
  %89 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %90 = mul i16 %89, 5
  %91 = load float, ptr %8, align 4, !tbaa !145
  %92 = load float, ptr %9, align 4, !tbaa !145
  %93 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 4, i16 noundef signext %90, i16 noundef signext 18, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %91, float noundef %92, float noundef 4.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %103

94:                                               ; preds = %65
  call void @uiItemS(ptr noundef %22) #14
  %95 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %96 = sext i16 %95 to i32
  %97 = mul nsw i32 %96, 5
  %98 = add nsw i32 %97, 6
  %99 = trunc i32 %97 to i16
  %100 = load float, ptr %8, align 4, !tbaa !145
  %101 = load float, ptr %9, align 4, !tbaa !145
  %102 = call ptr @uiDefButR_prop(ptr noundef %14, i32 noundef 13312, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %98, i32 noundef 0, i16 noundef signext 14, i16 noundef signext %99, ptr noundef %1, ptr noundef nonnull %13, i32 noundef -1, float noundef %100, float noundef %101, float noundef 9.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %103

103:                                              ; preds = %63, %94, %88, %82, %76, %67, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  ret void
}

declare void @RNA_property_float_ui_range(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefButR_prop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiItemS(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplatePalette(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca %struct.PointerRNA, align 8
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %8 = tail call i32 @uiLayoutGetWidth(ptr noundef %0) #14
  %9 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %10 = sext i16 %9 to i32
  %11 = sdiv i32 %8, %10
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @uiLayoutGetWidth(ptr noundef %0) #14
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
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
  %24 = tail call ptr @RNA_struct_identifier(ptr noundef %23) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.uiTemplatePalette, ptr noundef %24, ptr noundef %2) #14
  br label %63

25:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef nonnull %7) #14
  %26 = getelementptr inbounds i8, ptr %5, i64 8
  %27 = load ptr, ptr %26, align 8, !tbaa.struct !113
  %28 = getelementptr inbounds i8, ptr %5, i64 16
  %29 = load ptr, ptr %28, align 8, !tbaa.struct !114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %30 = icmp eq ptr %29, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  %32 = call zeroext i8 @RNA_struct_is_a(ptr noundef %27, ptr noundef nonnull @RNA_Palette) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  call void @BKE_palette_cleanup(ptr noundef nonnull %29) #14
  %36 = getelementptr inbounds %struct.Palette, ptr %29, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !151
  %38 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  %39 = call ptr @uiLayoutRow(ptr noundef %38, i32 noundef 1) #14
  %40 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %41 = call ptr @uiDefIconButO(ptr noundef %35, i32 noundef 512, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 31, i32 noundef 0, i32 noundef 0, i16 noundef signext %40, i16 noundef signext %40, ptr noundef null) #14
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %43 = call ptr @uiDefIconButO(ptr noundef %35, i32 noundef 512, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 32, i32 noundef 0, i32 noundef 0, i16 noundef signext %42, i16 noundef signext %42, ptr noundef null) #14
  %44 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  %45 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #14
  %46 = icmp eq ptr %37, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %34, %54
  %48 = phi ptr [ %61, %54 ], [ %37, %34 ]
  %49 = phi i32 [ %60, %54 ], [ 0, %34 ]
  %50 = phi i32 [ %59, %54 ], [ 0, %34 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %51 = icmp slt i32 %50, %19
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #14
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ 0, %52 ], [ %50, %47 ]
  call void @RNA_pointer_create(ptr noundef nonnull %29, ptr noundef nonnull @RNA_PaletteColor, ptr noundef nonnull %48, ptr noundef nonnull %6) #14
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %57 = sitofp i32 %49 to float
  %58 = call ptr @uiDefButR(ptr noundef %35, i32 noundef 7680, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %56, i16 noundef signext %56, ptr noundef nonnull %6, ptr noundef nonnull @.str.26, i32 noundef -1, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+01, float noundef %57, ptr noundef nonnull @.str.3) #14
  %59 = add nsw i32 %55, 1
  %60 = add nuw nsw i32 %49, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %61 = load ptr, ptr %48, align 8, !tbaa !153
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %47, !llvm.loop !155

63:                                               ; preds = %54, %34, %25, %31, %21
  ret void
}

declare i32 @uiLayoutGetWidth(ptr noundef) local_unnamed_addr #3

declare void @BKE_palette_cleanup(ptr noundef) local_unnamed_addr #3

declare ptr @uiDefIconButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefButR(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateLayers(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = tail call ptr @RNA_struct_identifier(ptr noundef %11) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.uiTemplateLayers, ptr noundef %12, ptr noundef %2) #14
  br label %93

13:                                               ; preds = %6
  %14 = tail call i32 @RNA_property_array_length(ptr noundef %1, ptr noundef nonnull %7) #14
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
  %25 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = tail call ptr @RNA_struct_identifier(ptr noundef %29) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.uiTemplateLayers, ptr noundef %30, ptr noundef nonnull %4) #14
  br label %93

31:                                               ; preds = %24
  %32 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef nonnull %25) #14
  %33 = icmp slt i32 %32, %14
  %34 = select i1 %33, ptr null, ptr %25
  br label %35

35:                                               ; preds = %31, %13
  %36 = phi ptr [ null, %13 ], [ %34, %31 ]
  %37 = icmp eq i32 %20, 0
  br i1 %37, label %93, label %38

38:                                               ; preds = %35
  %39 = icmp eq ptr %36, null
  %40 = mul nuw i32 %20, 5
  br label %41

41:                                               ; preds = %38, %89
  %42 = phi i32 [ 0, %38 ], [ %91, %89 ]
  %43 = phi i32 [ 0, %38 ], [ %90, %89 ]
  %44 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  br label %45

45:                                               ; preds = %41, %85
  %46 = phi i32 [ %42, %41 ], [ %88, %85 ]
  %47 = phi i32 [ 0, %41 ], [ %86, %85 ]
  %48 = tail call ptr @uiLayoutRow(ptr noundef %44, i32 noundef 1) #14
  %49 = tail call ptr @uiLayoutGetBlock(ptr noundef %48) #14
  %50 = mul nuw nsw i32 %47, %20
  %51 = add nuw nsw i32 %50, %43
  %52 = mul i32 %51, 5
  %53 = icmp slt i32 %52, %14
  br i1 %53, label %54, label %85

54:                                               ; preds = %45
  %55 = zext i32 %46 to i64
  br label %56

56:                                               ; preds = %54, %70
  %57 = phi i64 [ %55, %54 ], [ %80, %70 ]
  %58 = phi i32 [ 0, %54 ], [ %79, %70 ]
  %59 = trunc i64 %57 to i32
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %5
  %62 = icmp ne i32 %61, 0
  %63 = select i1 %62, i1 true, i1 %39
  %64 = select i1 %62, i32 644, i32 0
  br i1 %63, label %70, label %65

65:                                               ; preds = %56
  %66 = trunc i64 %57 to i32
  %67 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %3, ptr noundef nonnull %36, i32 noundef %66) #14
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 0, i32 643
  br label %70

70:                                               ; preds = %56, %65
  %71 = phi i32 [ %64, %56 ], [ %69, %65 ]
  %72 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %73 = sdiv i16 %72, 2
  %74 = sext i16 %73 to i32
  %75 = trunc i64 %57 to i32
  %76 = tail call ptr @uiDefAutoButR(ptr noundef %49, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %75, ptr noundef nonnull @.str.3, i32 noundef %71, i32 noundef 0, i32 noundef 0, i32 noundef %74, i32 noundef %74) #14
  %77 = inttoptr i64 %57 to ptr
  tail call void @uiButSetFunc(ptr noundef %76, ptr noundef nonnull @handle_layer_buttons, ptr noundef %76, ptr noundef %77) #14
  %78 = getelementptr inbounds %struct.uiBut, ptr %76, i64 0, i32 4
  store i32 1536, ptr %78, align 8, !tbaa !156
  %79 = add nuw nsw i32 %58, 1
  %80 = add nuw nsw i64 %57, 1
  %81 = icmp ult i32 %58, 4
  %82 = trunc i64 %80 to i32
  %83 = icmp sgt i32 %14, %82
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %56, label %85, !llvm.loop !157

85:                                               ; preds = %70, %45
  %86 = add nuw nsw i32 %47, 1
  %87 = icmp eq i32 %47, 0
  %88 = add i32 %46, %40
  br i1 %87, label %45, label %89, !llvm.loop !158

89:                                               ; preds = %85
  %90 = add nuw nsw i32 %43, 1
  %91 = add i32 %42, 5
  %92 = icmp eq i32 %90, %20
  br i1 %92, label %93, label %41, !llvm.loop !159

93:                                               ; preds = %89, %35, %27, %9
  ret void
}

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiDefAutoButR(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @uiButSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @handle_layer_buttons(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = ptrtoint ptr %2 to i64
  %5 = trunc i64 %4 to i32
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  %7 = getelementptr inbounds %struct.wmWindow, ptr %6, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = getelementptr inbounds %struct.wmEvent, ptr %8, i64 0, i32 17
  %10 = load i16, ptr %9, align 8, !tbaa !162
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54
  %14 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 55
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %13, ptr noundef %15) #14
  %17 = load ptr, ptr %14, align 8, !tbaa !164
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %13, ptr noundef %17, i32 noundef %5, i32 noundef 1) #14
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12, %24
  %20 = phi i32 [ %25, %24 ], [ 0, %12 ]
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 8, !tbaa !164
  tail call void @RNA_property_boolean_set_index(ptr noundef nonnull %13, ptr noundef %23, i32 noundef %20, i32 noundef 0) #14
  br label %24

24:                                               ; preds = %19, %22
  %25 = add nuw nsw i32 %20, 1
  %26 = icmp eq i32 %25, %16
  br i1 %26, label %27, label %19, !llvm.loop !165

27:                                               ; preds = %24, %12, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateGameStates(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = load ptr, ptr %1, align 8, !tbaa !78
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %1, ptr noundef %2) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call ptr @RNA_struct_identifier(ptr noundef %12) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.uiTemplateGameStates, ptr noundef %13, ptr noundef %2) #14
  br label %95

14:                                               ; preds = %6
  %15 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %1, ptr noundef nonnull %8) #14
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
  %26 = tail call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = tail call ptr @RNA_struct_identifier(ptr noundef %30) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.uiTemplateGameStates, ptr noundef %31, ptr noundef nonnull %4) #14
  br label %95

32:                                               ; preds = %25
  %33 = tail call i32 @RNA_property_array_length(ptr noundef nonnull %3, ptr noundef nonnull %26) #14
  %34 = icmp slt i32 %33, %15
  %35 = select i1 %34, ptr null, ptr %26
  br label %36

36:                                               ; preds = %32, %14
  %37 = phi ptr [ null, %14 ], [ %35, %32 ]
  %38 = icmp eq i32 %21, 0
  br i1 %38, label %95, label %39

39:                                               ; preds = %36
  %40 = icmp eq ptr %37, null
  %41 = mul nuw i32 %21, 5
  br label %42

42:                                               ; preds = %39, %91
  %43 = phi i32 [ 0, %39 ], [ %93, %91 ]
  %44 = phi i32 [ 0, %39 ], [ %92, %91 ]
  %45 = tail call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 1) #14
  br label %46

46:                                               ; preds = %42, %87
  %47 = phi i32 [ %43, %42 ], [ %90, %87 ]
  %48 = phi i32 [ 0, %42 ], [ %88, %87 ]
  %49 = tail call ptr @uiLayoutRow(ptr noundef %45, i32 noundef 1) #14
  %50 = tail call ptr @uiLayoutGetBlock(ptr noundef %49) #14
  %51 = mul nuw nsw i32 %48, %21
  %52 = add nuw nsw i32 %51, %44
  %53 = mul i32 %52, 5
  %54 = icmp slt i32 %53, %15
  br i1 %54, label %55, label %87

55:                                               ; preds = %46
  %56 = zext i32 %47 to i64
  br label %57

57:                                               ; preds = %55, %71
  %58 = phi i64 [ %56, %55 ], [ %82, %71 ]
  %59 = phi i32 [ 0, %55 ], [ %81, %71 ]
  %60 = trunc i64 %58 to i32
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %5
  %63 = icmp ne i32 %62, 0
  %64 = select i1 %63, i1 true, i1 %40
  %65 = select i1 %63, i32 644, i32 0
  br i1 %64, label %71, label %66

66:                                               ; preds = %57
  %67 = trunc i64 %58 to i32
  %68 = tail call i32 @RNA_property_boolean_get_index(ptr noundef %3, ptr noundef nonnull %37, i32 noundef %67) #14
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 0, i32 643
  br label %71

71:                                               ; preds = %57, %66
  %72 = phi i32 [ %65, %57 ], [ %70, %66 ]
  %73 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %74 = sdiv i16 %73, 2
  %75 = trunc i64 %58 to i16
  %76 = tail call ptr @sca_state_name_get(ptr noundef %7, i16 noundef signext %75) #14
  %77 = trunc i64 %58 to i32
  %78 = tail call ptr @uiDefIconButR_prop(ptr noundef %50, i32 noundef 6656, i32 noundef 0, i32 noundef %72, i32 noundef 0, i32 noundef 0, i16 noundef signext %74, i16 noundef signext %74, ptr noundef nonnull %1, ptr noundef nonnull %8, i32 noundef %77, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, ptr noundef %76) #14
  %79 = inttoptr i64 %58 to ptr
  tail call void @uiButSetFunc(ptr noundef %78, ptr noundef nonnull @handle_layer_buttons, ptr noundef %78, ptr noundef %79) #14
  %80 = getelementptr inbounds %struct.uiBut, ptr %78, i64 0, i32 4
  store i32 1536, ptr %80, align 8, !tbaa !156
  %81 = add nuw nsw i32 %59, 1
  %82 = add nuw nsw i64 %58, 1
  %83 = icmp ult i32 %59, 4
  %84 = trunc i64 %82 to i32
  %85 = icmp sgt i32 %15, %84
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %57, label %87, !llvm.loop !166

87:                                               ; preds = %71, %46
  %88 = add nuw nsw i32 %48, 1
  %89 = icmp eq i32 %48, 0
  %90 = add i32 %47, %41
  br i1 %89, label %46, label %91, !llvm.loop !167

91:                                               ; preds = %87
  %92 = add nuw nsw i32 %44, 1
  %93 = add i32 %43, 5
  %94 = icmp eq i32 %92, %21
  br i1 %94, label %95, label %42, !llvm.loop !168

95:                                               ; preds = %91, %36, %28, %10
  ret void
}

declare ptr @uiDefIconButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare ptr @sca_state_name_get(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #1 {
  %13 = alloca %struct.uiListLayoutdata, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca [32 x i8], align 16
  %16 = alloca %struct.CollectionPropertyIterator, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #14
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.30, ptr noundef nonnull dereferenceable(1) %2) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = icmp eq ptr %3, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %3, align 1, !tbaa !70
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %19
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.30) #14
  br label %481

25:                                               ; preds = %21, %12
  %26 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  %27 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.6) #14
  br label %481

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @RNA_struct_find_property(ptr noundef %4, ptr noundef %5) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !54
  %41 = tail call ptr @RNA_struct_identifier(ptr noundef %40) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef %41, ptr noundef %5) #14
  br label %481

42:                                               ; preds = %35, %31
  %43 = phi ptr [ %36, %35 ], [ null, %31 ]
  %44 = tail call ptr @RNA_struct_find_property(ptr noundef %6, ptr noundef %7) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.PointerRNA, ptr %6, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = tail call ptr @RNA_struct_identifier(ptr noundef %48) #14
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef %49, ptr noundef %7) #14
  br label %481

50:                                               ; preds = %42
  %51 = icmp ne ptr %43, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = tail call i32 @RNA_property_type(ptr noundef nonnull %43) #14
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.6) #14
  br label %481

56:                                               ; preds = %52, %50
  %57 = tail call i32 @RNA_property_type(ptr noundef nonnull %44) #14
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef nonnull @.str.6) #14
  br label %481

60:                                               ; preds = %56
  %61 = load ptr, ptr %32, align 8, !tbaa !58
  %62 = icmp ne ptr %61, null
  %63 = and i1 %51, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = tail call ptr @RNA_property_pointer_type(ptr noundef %4, ptr noundef nonnull %43) #14
  %66 = tail call i32 @RNA_struct_ui_icon(ptr noundef %65) #14
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i32 [ %66, %64 ], [ 0, %60 ]
  %69 = tail call i32 @RNA_property_int_get(ptr noundef %6, ptr noundef nonnull %44) #14
  %70 = tail call ptr @WM_uilisttype_find(ptr noundef %2, i8 noundef zeroext 0) #14
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  tail call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.uiTemplateList, ptr noundef %2) #14
  br label %481

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.uiListType, ptr %70, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !169
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr @uilist_draw_item_default, ptr %75
  %78 = getelementptr inbounds %struct.uiListType, ptr %70, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !172
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, ptr @uilist_draw_filter_default, ptr %79
  %82 = getelementptr inbounds %struct.uiListType, ptr %70, i64 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !173
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr @uilist_filter_items_default, ptr %83
  %86 = getelementptr inbounds %struct.uiListType, ptr %70, i64 0, i32 2
  %87 = icmp eq ptr %3, null
  %88 = select i1 %87, ptr @.str.3, ptr %3
  %89 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %14, i64 noundef 128, ptr noundef nonnull @.str.37, ptr noundef nonnull %86, ptr noundef nonnull %88) #14
  %90 = call ptr @CTX_wm_region(ptr noundef %1) #14
  %91 = getelementptr inbounds %struct.ARegion, ptr %90, i64 0, i32 24
  %92 = call ptr @BLI_findstring(ptr noundef nonnull %91, ptr noundef nonnull %14, i32 noundef 24) #14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %73
  %95 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %96 = call ptr %95(i64 noundef 200, ptr noundef nonnull @.str.38) #14
  %97 = getelementptr inbounds %struct.uiList, ptr %96, i64 0, i32 3
  %98 = call ptr @BLI_strncpy(ptr noundef nonnull %97, ptr noundef nonnull %14, i64 noundef 64) #14
  call void @BLI_addtail(ptr noundef nonnull %91, ptr noundef %96) #14
  %99 = getelementptr inbounds %struct.uiList, ptr %96, i64 0, i32 7
  store i32 -1, ptr %99, align 4, !tbaa !174
  br label %100

100:                                              ; preds = %94, %73
  %101 = phi ptr [ %92, %73 ], [ %96, %94 ]
  %102 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 14
  %103 = load ptr, ptr %102, align 8, !tbaa !176
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %107 = call ptr %106(i64 noundef 48, ptr noundef nonnull @.str.39) #14
  store ptr %107, ptr %102, align 8, !tbaa !176
  br label %108

108:                                              ; preds = %105, %100
  %109 = load ptr, ptr %102, align 8, !tbaa !176
  %110 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 2
  store ptr %70, ptr %110, align 8, !tbaa !177
  %111 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 4
  store i32 %10, ptr %111, align 8, !tbaa !178
  %112 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !179
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %108
  %116 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %116(ptr noundef nonnull %113) #14
  store ptr null, ptr %112, align 8, !tbaa !179
  br label %117

117:                                              ; preds = %115, %108
  %118 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !181
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %122(ptr noundef nonnull %119) #14
  store ptr null, ptr %118, align 8, !tbaa !181
  br label %123

123:                                              ; preds = %121, %117
  %124 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 4
  store i32 -1, ptr %124, align 8, !tbaa !182
  %125 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 3
  store i32 -1, ptr %125, align 4, !tbaa !183
  %126 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 9
  %127 = load i32, ptr %126, align 4, !tbaa !184
  %128 = icmp eq i32 %69, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 5
  %131 = load i32, ptr %130, align 4, !tbaa !185
  %132 = or i32 %131, 1
  store i32 %132, ptr %130, align 4, !tbaa !185
  store i32 %69, ptr %126, align 4, !tbaa !184
  br label %133

133:                                              ; preds = %129, %123
  %134 = load ptr, ptr %32, align 8, !tbaa !58
  %135 = icmp ne ptr %134, null
  %136 = and i1 %51, %135
  br i1 %136, label %137, label %227

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 11
  %139 = load i32, ptr %138, align 8, !tbaa !186
  %140 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 12
  %141 = load i32, ptr %140, align 4, !tbaa !187
  %142 = icmp eq i32 %10, 1
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = call i32 @RNA_property_collection_length(ptr noundef %4, ptr noundef nonnull %43) #14
  store i32 %144, ptr %124, align 8, !tbaa !182
  store i32 %144, ptr %125, align 4, !tbaa !183
  br label %146

145:                                              ; preds = %137
  call void %85(ptr noundef %101, ptr noundef %1, ptr noundef %4, ptr noundef %5) #14
  br label %146

146:                                              ; preds = %145, %143
  %147 = load i32, ptr %124, align 8, !tbaa !182
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %149, label %219

149:                                              ; preds = %146
  %150 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %151 = zext nneg i32 %147 to i64
  %152 = shl nuw nsw i64 %151, 5
  %153 = call ptr %150(i64 noundef %152, ptr noundef nonnull @__func__.uiTemplateList) #14
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %16) #14
  call void @RNA_property_collection_begin(ptr noundef %4, ptr noundef nonnull %43, ptr noundef nonnull %16) #14
  %154 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %16, i64 0, i32 7
  %155 = load i32, ptr %154, align 8, !tbaa !188
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %216, label %157

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %16, i64 0, i32 6
  %159 = icmp slt i32 %141, 0
  %160 = icmp slt i32 %141, 0
  br label %161

161:                                              ; preds = %157, %207
  %162 = phi i64 [ 0, %157 ], [ %211, %207 ]
  %163 = phi i8 [ 1, %157 ], [ %210, %207 ]
  %164 = phi i32 [ 0, %157 ], [ %209, %207 ]
  %165 = phi i32 [ %69, %157 ], [ %208, %207 ]
  %166 = load ptr, ptr %112, align 8, !tbaa !179
  %167 = icmp eq ptr %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = getelementptr inbounds i32, ptr %166, i64 %162
  %170 = load i32, ptr %169, align 4, !tbaa !80
  %171 = xor i32 %170, %139
  %172 = icmp sgt i32 %171, -1
  br i1 %172, label %207, label %173

173:                                              ; preds = %168, %161
  %174 = load ptr, ptr %118, align 8, !tbaa !181
  %175 = icmp eq ptr %174, null
  %176 = add nsw i32 %164, 1
  br i1 %175, label %184, label %177

177:                                              ; preds = %173
  %178 = sext i32 %164 to i64
  %179 = getelementptr inbounds i32, ptr %174, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !80
  %181 = xor i32 %180, -1
  %182 = add i32 %147, %181
  %183 = select i1 %159, i32 %182, i32 %180
  br label %187

184:                                              ; preds = %173
  %185 = sub nsw i32 %147, %176
  %186 = select i1 %160, i32 %185, i32 %164
  br label %187

187:                                              ; preds = %184, %177
  %188 = phi i32 [ %183, %177 ], [ %186, %184 ]
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct._uilist_item, ptr %153, i64 %189
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %190, ptr noundef nonnull align 8 dereferenceable(24) %158, i64 24, i1 false)
  %191 = getelementptr inbounds %struct._uilist_item, ptr %153, i64 %189, i32 1
  %192 = trunc i64 %162 to i32
  store i32 %192, ptr %191, align 8, !tbaa !190
  %193 = load ptr, ptr %112, align 8, !tbaa !179
  %194 = icmp eq ptr %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %187
  %196 = getelementptr inbounds i32, ptr %193, i64 %162
  %197 = load i32, ptr %196, align 4, !tbaa !80
  br label %198

198:                                              ; preds = %187, %195
  %199 = phi i32 [ %197, %195 ], [ 0, %187 ]
  %200 = getelementptr inbounds %struct._uilist_item, ptr %153, i64 %189, i32 2
  store i32 %199, ptr %200, align 4, !tbaa !192
  %201 = icmp ne i8 %163, 0
  %202 = zext i32 %165 to i64
  %203 = icmp eq i64 %162, %202
  %204 = select i1 %201, i1 %203, i1 false
  %205 = select i1 %204, i32 %188, i32 %165
  %206 = select i1 %204, i8 0, i8 %163
  br label %207

207:                                              ; preds = %198, %168
  %208 = phi i32 [ %205, %198 ], [ %165, %168 ]
  %209 = phi i32 [ %176, %198 ], [ %164, %168 ]
  %210 = phi i8 [ %206, %198 ], [ %163, %168 ]
  %211 = add nuw i64 %162, 1
  call void @RNA_property_collection_next(ptr noundef nonnull %16) #14
  %212 = load i32, ptr %154, align 8, !tbaa !188
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %161, !llvm.loop !193

214:                                              ; preds = %207
  %215 = trunc i64 %211 to i32
  br label %216

216:                                              ; preds = %214, %149
  %217 = phi i32 [ 0, %149 ], [ %215, %214 ]
  %218 = phi i32 [ %69, %149 ], [ %208, %214 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %16) #14
  br label %219

219:                                              ; preds = %216, %146
  %220 = phi i32 [ %217, %216 ], [ 0, %146 ]
  %221 = phi i32 [ %218, %216 ], [ %69, %146 ]
  %222 = phi ptr [ %153, %216 ], [ null, %146 ]
  %223 = load i32, ptr %124, align 8, !tbaa !182
  %224 = icmp sgt i32 %223, -1
  br i1 %224, label %227, label %225

225:                                              ; preds = %219
  %226 = load i32, ptr %125, align 4, !tbaa !183
  br label %227

227:                                              ; preds = %225, %219, %133
  %228 = phi i32 [ 0, %133 ], [ %220, %219 ], [ %220, %225 ]
  %229 = phi i32 [ %69, %133 ], [ %221, %219 ], [ %221, %225 ]
  %230 = phi i32 [ 0, %133 ], [ %223, %219 ], [ %226, %225 ]
  %231 = phi ptr [ null, %133 ], [ %222, %219 ], [ %222, %225 ]
  switch i32 %10, label %426 [
    i32 0, label %232
    i32 1, label %305
    i32 2, label %335
  ]

232:                                              ; preds = %227
  %233 = call ptr @uiLayoutListBox(ptr noundef %0, ptr noundef %101, ptr noundef %4, ptr noundef %43, ptr noundef %6, ptr noundef nonnull %44) #14
  %234 = call ptr @uiLayoutColumn(ptr noundef %233, i32 noundef 1) #14
  %235 = call ptr @uiLayoutRow(ptr noundef %234, i32 noundef 0) #14
  %236 = call ptr @uiLayoutColumn(ptr noundef %235, i32 noundef 1) #14
  call fastcc void @prepare_list(ptr noundef %101, i32 noundef %230, i32 noundef %229, i32 noundef %8, i32 noundef %9, i32 noundef 1, ptr noundef nonnull %13)
  %237 = load ptr, ptr %32, align 8, !tbaa !58
  %238 = icmp ne ptr %237, null
  %239 = and i1 %51, %238
  br i1 %239, label %240, label %276

240:                                              ; preds = %232
  %241 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %242 = load i32, ptr %241, align 4, !tbaa !194
  %243 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 2
  %244 = load i32, ptr %243, align 4, !tbaa !196
  %245 = icmp slt i32 %242, %244
  br i1 %245, label %246, label %276

246:                                              ; preds = %240
  %247 = sext i32 %242 to i64
  %248 = sext i32 %229 to i64
  br label %249

249:                                              ; preds = %246, %269
  %250 = phi i64 [ %247, %246 ], [ %270, %269 ]
  %251 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %250
  %252 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %250, i32 1
  %253 = load i32, ptr %252, align 8, !tbaa !190
  %254 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %250, i32 2
  %255 = load i32, ptr %254, align 4, !tbaa !192
  %256 = call ptr @uiLayoutGetBlock(ptr noundef %236) #14
  %257 = call ptr @uiLayoutOverlap(ptr noundef %236) #14
  call void @uiBlockSetFlag(ptr noundef %256, i32 noundef 524288) #14
  %258 = call ptr @uiLayoutRow(ptr noundef %257, i32 noundef 0) #14
  %259 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %260 = mul i16 %259, 10
  %261 = sitofp i32 %253 to float
  %262 = call ptr @uiDefButR_prop(ptr noundef %256, i32 noundef 18432, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %260, i16 noundef signext %259, ptr noundef %6, ptr noundef nonnull %44, i32 noundef 0, float noundef 0.000000e+00, float noundef %261, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.40) #14
  %263 = call ptr @uiLayoutRow(ptr noundef %257, i32 noundef 0) #14
  %264 = call i32 @UI_rnaptr_icon_get(ptr noundef %1, ptr noundef %251, i32 noundef %68, i8 noundef zeroext 0) #14
  %265 = icmp eq i32 %264, 17
  %266 = select i1 %265, i32 0, i32 %264
  call void %77(ptr noundef %101, ptr noundef %1, ptr noundef %263, ptr noundef %4, ptr noundef %251, i32 noundef %266, ptr noundef %6, ptr noundef %7, i32 noundef %253, i32 noundef %255) #14
  %267 = icmp eq i64 %250, %248
  br i1 %267, label %268, label %269

268:                                              ; preds = %249
  call void @ui_layout_list_set_labels_active(ptr noundef %263) #14
  br label %269

269:                                              ; preds = %268, %249
  call void @uiBlockClearFlag(ptr noundef %256, i32 noundef 524288) #14
  %270 = add nsw i64 %250, 1
  %271 = load i32, ptr %243, align 4, !tbaa !196
  %272 = sext i32 %271 to i64
  %273 = icmp slt i64 %270, %272
  br i1 %273, label %249, label %274, !llvm.loop !197

274:                                              ; preds = %269
  %275 = trunc i64 %270 to i32
  br label %276

276:                                              ; preds = %274, %240, %232
  %277 = phi i32 [ %228, %232 ], [ %242, %240 ], [ %275, %274 ]
  %278 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %279 = load i32, ptr %278, align 4, !tbaa !194
  %280 = load i32, ptr %13, align 4, !tbaa !198
  %281 = add nsw i32 %280, %279
  %282 = icmp slt i32 %277, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %276, %283
  %284 = phi i32 [ %285, %283 ], [ %277, %276 ]
  call void @uiItemL(ptr noundef %236, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %285 = add i32 %284, 1
  %286 = icmp eq i32 %285, %281
  br i1 %286, label %287, label %283, !llvm.loop !199

287:                                              ; preds = %283, %276
  %288 = icmp sgt i32 %230, %280
  br i1 %288, label %289, label %426

289:                                              ; preds = %287
  %290 = call ptr @uiLayoutColumn(ptr noundef %235, i32 noundef 0) #14
  %291 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %292 = sitofp i16 %291 to double
  %293 = fmul double %292, 7.500000e-01
  %294 = fptosi double %293 to i16
  %295 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !200
  %297 = trunc i32 %296 to i16
  %298 = mul i16 %291, %297
  %299 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 6
  %300 = load i32, ptr %109, align 8, !tbaa !201
  %301 = sub nsw i32 %300, %296
  %302 = sitofp i32 %301 to float
  %303 = sitofp i32 %296 to float
  %304 = call ptr @uiDefButI(ptr noundef %26, i32 noundef 9216, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %294, i16 noundef signext %298, ptr noundef nonnull %299, float noundef 0.000000e+00, float noundef %302, float noundef %303, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %426

305:                                              ; preds = %227
  %306 = call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 1) #14
  %307 = load ptr, ptr %32, align 8, !tbaa !58
  %308 = icmp ne ptr %307, null
  %309 = and i1 %51, %308
  br i1 %309, label %310, label %325

310:                                              ; preds = %305
  %311 = load i32, ptr %124, align 8, !tbaa !182
  %312 = icmp sgt i32 %311, 0
  %313 = icmp sgt i32 %229, -1
  %314 = select i1 %312, i1 %313, i1 false
  %315 = icmp slt i32 %229, %311
  %316 = select i1 %314, i1 %315, i1 false
  br i1 %316, label %317, label %325

317:                                              ; preds = %310
  %318 = zext nneg i32 %229 to i64
  %319 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %318
  %320 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %318, i32 1
  %321 = load i32, ptr %320, align 8, !tbaa !190
  %322 = call i32 @UI_rnaptr_icon_get(ptr noundef %1, ptr noundef %319, i32 noundef %68, i8 noundef zeroext 0) #14
  %323 = icmp eq i32 %322, 17
  %324 = select i1 %323, i32 0, i32 %322
  call void %77(ptr noundef %101, ptr noundef %1, ptr noundef %306, ptr noundef %4, ptr noundef %319, i32 noundef %324, ptr noundef %6, ptr noundef %7, i32 noundef %321, i32 noundef 0) #14
  br label %326

325:                                              ; preds = %310, %305
  call void @uiItemL(ptr noundef %306, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %326

326:                                              ; preds = %325, %317
  %327 = load i32, ptr %124, align 8, !tbaa !182
  %328 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %15, i64 noundef 32, ptr noundef nonnull @.str.41, i32 noundef %327) #14
  %329 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %330 = mul i16 %329, 5
  %331 = call ptr @uiDefIconTextButR_prop(ptr noundef %26, i32 noundef 2560, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %15, i32 noundef 0, i32 noundef 0, i16 noundef signext %330, i16 noundef signext %329, ptr noundef %6, ptr noundef nonnull %44, i32 noundef 0, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %332 = load i32, ptr %124, align 8, !tbaa !182
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %426

334:                                              ; preds = %326
  call void @uiButSetFlag(ptr noundef %331, i32 noundef 2048) #14
  br label %426

335:                                              ; preds = %227
  %336 = call ptr @uiLayoutListBox(ptr noundef %0, ptr noundef %101, ptr noundef %4, ptr noundef %43, ptr noundef %6, ptr noundef nonnull %44) #14
  %337 = call ptr @uiLayoutColumn(ptr noundef %336, i32 noundef 1) #14
  %338 = call ptr @uiLayoutRow(ptr noundef %337, i32 noundef 0) #14
  %339 = call ptr @uiLayoutColumn(ptr noundef %338, i32 noundef 1) #14
  call fastcc void @prepare_list(ptr noundef %101, i32 noundef %230, i32 noundef %229, i32 noundef %8, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %13)
  %340 = load ptr, ptr %32, align 8, !tbaa !58
  %341 = icmp ne ptr %340, null
  %342 = and i1 %51, %341
  br i1 %342, label %343, label %385

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %345 = load i32, ptr %344, align 4, !tbaa !194
  %346 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 2
  %347 = load i32, ptr %346, align 4, !tbaa !196
  %348 = icmp slt i32 %345, %347
  br i1 %348, label %349, label %385

349:                                              ; preds = %343
  %350 = sext i32 %345 to i64
  %351 = sext i32 %229 to i64
  br label %352

352:                                              ; preds = %349, %378
  %353 = phi i64 [ %350, %349 ], [ %379, %378 ]
  %354 = phi ptr [ null, %349 ], [ %366, %378 ]
  %355 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %353
  %356 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %353, i32 1
  %357 = load i32, ptr %356, align 8, !tbaa !190
  %358 = getelementptr inbounds %struct._uilist_item, ptr %231, i64 %353, i32 2
  %359 = load i32, ptr %358, align 4, !tbaa !192
  %360 = trunc i64 %353 to i32
  %361 = srem i32 %360, %11
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %365

363:                                              ; preds = %352
  %364 = call ptr @uiLayoutRow(ptr noundef %339, i32 noundef 0) #14
  br label %365

365:                                              ; preds = %363, %352
  %366 = phi ptr [ %354, %352 ], [ %364, %363 ]
  %367 = call ptr @uiLayoutGetBlock(ptr noundef %366) #14
  %368 = call ptr @uiLayoutOverlap(ptr noundef %366) #14
  call void @uiBlockSetFlag(ptr noundef %367, i32 noundef 524288) #14
  %369 = call ptr @uiLayoutRow(ptr noundef %368, i32 noundef 0) #14
  %370 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %371 = mul i16 %370, 10
  %372 = sitofp i32 %357 to float
  %373 = call ptr @uiDefButR_prop(ptr noundef %367, i32 noundef 18432, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %371, i16 noundef signext %370, ptr noundef %6, ptr noundef nonnull %44, i32 noundef 0, float noundef 0.000000e+00, float noundef %372, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #14
  call void @uiButSetDrawFlag(ptr noundef %373, i32 noundef 16) #14
  %374 = call ptr @uiLayoutRow(ptr noundef %368, i32 noundef 0) #14
  %375 = call i32 @UI_rnaptr_icon_get(ptr noundef %1, ptr noundef %355, i32 noundef %68, i8 noundef zeroext 0) #14
  call void %77(ptr noundef %101, ptr noundef %1, ptr noundef %374, ptr noundef %4, ptr noundef %355, i32 noundef %375, ptr noundef %6, ptr noundef %7, i32 noundef %357, i32 noundef %359) #14
  %376 = icmp eq i64 %353, %351
  br i1 %376, label %377, label %378

377:                                              ; preds = %365
  call void @ui_layout_list_set_labels_active(ptr noundef %374) #14
  br label %378

378:                                              ; preds = %377, %365
  call void @uiBlockClearFlag(ptr noundef %367, i32 noundef 524288) #14
  %379 = add nsw i64 %353, 1
  %380 = load i32, ptr %346, align 4, !tbaa !196
  %381 = sext i32 %380 to i64
  %382 = icmp slt i64 %379, %381
  br i1 %382, label %352, label %383, !llvm.loop !202

383:                                              ; preds = %378
  %384 = trunc i64 %379 to i32
  br label %385

385:                                              ; preds = %383, %343, %335
  %386 = phi i32 [ %228, %335 ], [ %345, %343 ], [ %384, %383 ]
  %387 = phi ptr [ null, %335 ], [ null, %343 ], [ %366, %383 ]
  %388 = getelementptr inbounds %struct.uiListLayoutdata, ptr %13, i64 0, i32 1
  %389 = load i32, ptr %388, align 4, !tbaa !194
  %390 = load i32, ptr %13, align 4, !tbaa !198
  %391 = add nsw i32 %390, %389
  %392 = icmp slt i32 %386, %391
  br i1 %392, label %393, label %407

393:                                              ; preds = %385, %400
  %394 = phi ptr [ %401, %400 ], [ %387, %385 ]
  %395 = phi i32 [ %402, %400 ], [ %386, %385 ]
  %396 = srem i32 %395, %11
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %400

398:                                              ; preds = %393
  %399 = call ptr @uiLayoutRow(ptr noundef %339, i32 noundef 0) #14
  br label %400

400:                                              ; preds = %398, %393
  %401 = phi ptr [ %394, %393 ], [ %399, %398 ]
  call void @uiItemL(ptr noundef %401, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %402 = add nsw i32 %395, 1
  %403 = load i32, ptr %388, align 4, !tbaa !194
  %404 = load i32, ptr %13, align 4, !tbaa !198
  %405 = add nsw i32 %404, %403
  %406 = icmp slt i32 %402, %405
  br i1 %406, label %393, label %407, !llvm.loop !203

407:                                              ; preds = %400, %385
  %408 = phi i32 [ %390, %385 ], [ %404, %400 ]
  %409 = icmp sgt i32 %230, %408
  br i1 %409, label %410, label %426

410:                                              ; preds = %407
  %411 = call ptr @uiLayoutColumn(ptr noundef %338, i32 noundef 0) #14
  %412 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %413 = sitofp i16 %412 to double
  %414 = fmul double %413, 7.500000e-01
  %415 = fptosi double %414 to i16
  %416 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 1
  %417 = load i32, ptr %416, align 4, !tbaa !200
  %418 = trunc i32 %417 to i16
  %419 = mul i16 %412, %418
  %420 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 6
  %421 = load i32, ptr %109, align 8, !tbaa !201
  %422 = sub nsw i32 %421, %417
  %423 = sitofp i32 %422 to float
  %424 = sitofp i32 %417 to float
  %425 = call ptr @uiDefButI(ptr noundef %26, i32 noundef 9216, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %415, i16 noundef signext %419, ptr noundef nonnull %420, float noundef 0.000000e+00, float noundef %423, float noundef %424, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %426

426:                                              ; preds = %407, %410, %326, %334, %287, %289, %227
  %427 = phi ptr [ null, %227 ], [ %337, %410 ], [ %337, %407 ], [ null, %334 ], [ null, %326 ], [ %234, %289 ], [ %234, %287 ]
  %428 = icmp eq ptr %427, null
  br i1 %428, label %477, label %429

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 6
  %431 = load i32, ptr %430, align 8, !tbaa !204
  %432 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 1
  %433 = load i32, ptr %432, align 4, !tbaa !200
  %434 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 7
  %435 = load i32, ptr %434, align 4, !tbaa !174
  %436 = sub nsw i32 %433, %435
  %437 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %438 = sext i16 %437 to i32
  %439 = mul nsw i32 %436, %438
  %440 = add nsw i32 %439, %431
  %441 = getelementptr inbounds %struct.uiListDyn, ptr %109, i64 0, i32 5
  store i32 %440, ptr %441, align 4, !tbaa !205
  %442 = call ptr @uiLayoutRow(ptr noundef nonnull %427, i32 noundef 1) #14
  %443 = call ptr @uiLayoutGetBlock(ptr noundef %442) #14
  call void @uiBlockSetEmboss(ptr noundef %443, i8 noundef zeroext 1) #14
  %444 = getelementptr inbounds %struct.uiList, ptr %101, i64 0, i32 11
  %445 = load i32, ptr %444, align 8, !tbaa !186
  %446 = and i32 %445, 1
  %447 = icmp eq i32 %446, 0
  %448 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %449 = sitofp i16 %448 to float
  %450 = fmul float %449, 5.000000e-01
  %451 = fptosi float %450 to i16
  br i1 %447, label %468, label %452

452:                                              ; preds = %429
  %453 = call ptr @uiDefIconButBitI(ptr noundef %443, i32 noundef 1536, i32 noundef 1, i32 noundef 0, i32 noundef 10, i32 noundef 0, i32 noundef 0, i16 noundef signext %448, i16 noundef signext %451, ptr noundef nonnull %444, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.42) #14
  call void @uiButClearFlag(ptr noundef %453, i32 noundef 524288) #14
  %454 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %455 = sitofp i16 %454 to float
  %456 = fmul float %455, 1.000000e+01
  %457 = fptosi float %456 to i16
  %458 = fmul float %455, 5.000000e-01
  %459 = fptosi float %458 to i16
  %460 = call ptr @uiDefIconButI(ptr noundef %443, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %457, i16 noundef signext %459, ptr noundef nonnull %441, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %460, ptr noundef nonnull @ui_list_resize_update_cb, ptr noundef %101, ptr noundef null) #14
  call void @uiBlockSetEmboss(ptr noundef %443, i8 noundef zeroext 0) #14
  %461 = call ptr @uiLayoutColumn(ptr noundef nonnull %427, i32 noundef 0) #14
  %462 = call ptr @uiLayoutGetBlock(ptr noundef %461) #14
  %463 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %464 = sitofp i16 %463 to float
  %465 = fmul float %464, 0x3FA99999A0000000
  %466 = fptosi float %465 to i16
  %467 = call ptr @uiDefBut(ptr noundef %462, i32 noundef 10752, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %463, i16 noundef signext %466, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void %81(ptr noundef %101, ptr noundef %1, ptr noundef %461) #14
  br label %477

468:                                              ; preds = %429
  %469 = call ptr @uiDefIconButBitI(ptr noundef %443, i32 noundef 1536, i32 noundef 1, i32 noundef 0, i32 noundef 11, i32 noundef 0, i32 noundef 0, i16 noundef signext %448, i16 noundef signext %451, ptr noundef nonnull %444, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.43) #14
  call void @uiButClearFlag(ptr noundef %469, i32 noundef 524288) #14
  %470 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %471 = sitofp i16 %470 to float
  %472 = fmul float %471, 1.000000e+01
  %473 = fptosi float %472 to i16
  %474 = fmul float %471, 5.000000e-01
  %475 = fptosi float %474 to i16
  %476 = call ptr @uiDefIconButI(ptr noundef %443, i32 noundef 28160, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i16 noundef signext %473, i16 noundef signext %475, ptr noundef nonnull %441, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  call void @uiButSetFunc(ptr noundef %476, ptr noundef nonnull @ui_list_resize_update_cb, ptr noundef %101, ptr noundef null) #14
  call void @uiBlockSetEmboss(ptr noundef %443, i8 noundef zeroext 0) #14
  br label %477

477:                                              ; preds = %452, %468, %426
  %478 = icmp eq ptr %231, null
  br i1 %478, label %481, label %479

479:                                              ; preds = %477
  %480 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %480(ptr noundef nonnull %231) #14
  br label %481

481:                                              ; preds = %477, %479, %72, %59, %55, %46, %38, %30, %24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare ptr @RNA_property_pointer_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_struct_ui_icon(ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @WM_uilisttype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @uilist_draw_item_default(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 %8, i32 %9) unnamed_addr #1 {
  %11 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = tail call ptr @RNA_struct_name_property(ptr noundef %12) #14
  %14 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !178
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @uiItemL(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5) #14
  br label %22

18:                                               ; preds = %10
  %19 = icmp eq ptr %13, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @uiItemFullR(ptr noundef %2, ptr noundef %4, ptr noundef nonnull %13, i32 noundef -1, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @.str.3, i32 noundef %5) #14
  br label %22

21:                                               ; preds = %18
  tail call void @uiItemL(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %5) #14
  br label %22

22:                                               ; preds = %20, %21, %17
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @uilist_draw_filter_default(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_UIList, ptr noundef %0, ptr noundef nonnull %4) #14
  %5 = call ptr @uiLayoutRow(ptr noundef %2, i32 noundef 0) #14
  %6 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #14
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.187, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %7 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !186
  %9 = icmp sgt i32 %8, -1
  %10 = select i1 %9, i32 61, i32 62
  call void @uiItemR(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull @.str.188, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef %10) #14
  %11 = call ptr @uiLayoutRow(ptr noundef %5, i32 noundef 1) #14
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull @.str.189, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %12 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 12
  %13 = load i32, ptr %12, align 4, !tbaa !187
  %14 = icmp sgt i32 %13, -1
  %15 = select i1 %14, i32 5, i32 7
  call void @uiItemR(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull @.str.190, i32 noundef 24, ptr noundef nonnull @.str.3, i32 noundef %15) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @uilist_filter_items_default(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.CollectionPropertyIterator, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #14
  %11 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %12 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 11
  %13 = load i32, ptr %12, align 8, !tbaa !186
  %14 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !187
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = tail call i32 @RNA_property_collection_length(ptr noundef %2, ptr noundef %10) #14
  %19 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 3
  store i32 %18, ptr %19, align 4, !tbaa !183
  %20 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 4
  store i32 %18, ptr %20, align 8, !tbaa !182
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %145, label %22

22:                                               ; preds = %4
  %23 = and i32 %15, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8, ptr %11, align 1, !tbaa !70
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %145, label %28

28:                                               ; preds = %25, %22
  %29 = icmp eq i8 %17, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = sext i32 %18 to i64
  %33 = mul nsw i64 %32, 68
  %34 = tail call ptr %31(i64 noundef %33, ptr noundef nonnull @.str.191) #14
  br label %35

35:                                               ; preds = %30, %28
  %36 = phi ptr [ %34, %30 ], [ null, %28 ]
  %37 = load i8, ptr %11, align 1, !tbaa !70
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #15
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %42 = sext i32 %18 to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call ptr %41(i64 noundef %43, ptr noundef nonnull @.str.192) #14
  %45 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 7
  store ptr %44, ptr %45, align 8, !tbaa !179
  store i32 0, ptr %20, align 8, !tbaa !182
  %46 = add i64 %40, 3
  %47 = icmp ult i64 %46, 33
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %50 = tail call ptr %49(i64 noundef %46, ptr noundef nonnull @.str.193) #14
  br label %51

51:                                               ; preds = %39, %48
  %52 = phi ptr [ %50, %48 ], [ null, %39 ]
  %53 = phi ptr [ %50, %48 ], [ %5, %39 ]
  %54 = load i8, ptr %11, align 1, !tbaa !70
  %55 = icmp eq i8 %54, 42
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i8 42, ptr %53, align 1, !tbaa !70
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i64 [ 1, %56 ], [ 0, %51 ]
  %59 = getelementptr inbounds i8, ptr %53, i64 %58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr nonnull align 1 %11, i64 %40, i1 false)
  %60 = add i64 %58, %40
  %61 = add i64 %60, -1
  %62 = getelementptr inbounds i8, ptr %53, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !70
  %64 = icmp eq i8 %63, 42
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = add i64 %60, 1
  %67 = getelementptr inbounds i8, ptr %53, i64 %60
  store i8 42, ptr %67, align 1, !tbaa !70
  br label %68

68:                                               ; preds = %65, %57
  %69 = phi i64 [ %66, %65 ], [ %60, %57 ]
  %70 = getelementptr inbounds i8, ptr %53, i64 %69
  store i8 0, ptr %70, align 1, !tbaa !70
  br label %71

71:                                               ; preds = %68, %35
  %72 = phi ptr [ %52, %68 ], [ null, %35 ]
  %73 = phi ptr [ %53, %68 ], [ %11, %35 ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %6) #14
  call void @RNA_property_collection_begin(ptr noundef %2, ptr noundef %10, ptr noundef nonnull %6) #14
  %74 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !188
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %117, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %6, i64 0, i32 6
  %79 = icmp sgt i32 %13, -1
  %80 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 7
  %81 = icmp sgt i32 %13, -1
  br label %82

82:                                               ; preds = %77, %113
  %83 = phi i64 [ 0, %77 ], [ %114, %113 ]
  %84 = phi i32 [ 0, %77 ], [ %110, %113 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %78, i64 24, i1 false), !tbaa.struct !50
  %85 = call ptr @RNA_struct_name_get_alloc(ptr noundef nonnull %7, ptr noundef null, i32 noundef 0, ptr noundef null) #14
  %86 = icmp eq ptr %85, null
  %87 = select i1 %86, ptr @.str.3, ptr %85
  %88 = load i8, ptr %73, align 1, !tbaa !70
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %82
  %91 = call i32 @fnmatch(ptr noundef nonnull %73, ptr noundef nonnull %87, i32 noundef 16) #14
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load ptr, ptr %80, align 8, !tbaa !179
  %95 = getelementptr inbounds i32, ptr %94, i64 %83
  store i32 -2147483648, ptr %95, align 4, !tbaa !80
  br i1 %81, label %97, label %100

96:                                               ; preds = %90
  br i1 %79, label %100, label %97

97:                                               ; preds = %96, %93
  %98 = load i32, ptr %20, align 8, !tbaa !182
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %20, align 8, !tbaa !182
  br label %100

100:                                              ; preds = %97, %82, %93, %96
  %101 = phi i8 [ 0, %93 ], [ 0, %96 ], [ %17, %82 ], [ %17, %97 ]
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = sext i32 %84 to i64
  %105 = getelementptr inbounds %struct.StringCmp, ptr %36, i64 %104
  %106 = getelementptr inbounds %struct.StringCmp, ptr %36, i64 %104, i32 1
  store i32 %84, ptr %106, align 4, !tbaa !206
  %107 = add nsw i32 %84, 1
  %108 = call ptr @BLI_strncpy(ptr noundef %105, ptr noundef nonnull %87, i64 noundef 64) #14
  br label %109

109:                                              ; preds = %103, %100
  %110 = phi i32 [ %107, %103 ], [ %84, %100 ]
  br i1 %86, label %113, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %112(ptr noundef nonnull %85) #14
  br label %113

113:                                              ; preds = %111, %109
  %114 = add nuw i64 %83, 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @RNA_property_collection_next(ptr noundef nonnull %6) #14
  %115 = load i32, ptr %74, align 8, !tbaa !188
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %82, !llvm.loop !208

117:                                              ; preds = %113, %71
  %118 = phi i32 [ 0, %71 ], [ %110, %113 ]
  call void @RNA_property_collection_end(ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %6) #14
  br i1 %29, label %137, label %119

119:                                              ; preds = %117
  %120 = sext i32 %118 to i64
  call void @qsort(ptr noundef %36, i64 noundef %120, i64 noundef 68, ptr noundef nonnull @cmpstringp) #14
  %121 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %122 = shl nsw i64 %120, 2
  %123 = call ptr %121(i64 noundef %122, ptr noundef nonnull @.str.194) #14
  %124 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 8
  store ptr %123, ptr %124, align 8, !tbaa !181
  %125 = icmp sgt i32 %118, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %119
  %127 = zext nneg i32 %118 to i64
  br label %128

128:                                              ; preds = %126, %128
  %129 = phi i64 [ 0, %126 ], [ %135, %128 ]
  %130 = getelementptr inbounds %struct.StringCmp, ptr %36, i64 %129, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !206
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %123, i64 %132
  %134 = trunc i64 %129 to i32
  store i32 %134, ptr %133, align 4, !tbaa !80
  %135 = add nuw nsw i64 %129, 1
  %136 = icmp eq i64 %135, %127
  br i1 %136, label %137, label %128, !llvm.loop !209

137:                                              ; preds = %128, %119, %117
  %138 = icmp eq ptr %72, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %140(ptr noundef nonnull %72) #14
  br label %141

141:                                              ; preds = %139, %137
  %142 = icmp eq ptr %36, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %141
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %144(ptr noundef nonnull %36) #14
  br label %145

145:                                              ; preds = %141, %143, %25, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  ret void
}

declare i32 @RNA_property_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_collection_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_property_collection_next(ptr noundef) local_unnamed_addr #3

declare void @RNA_property_collection_end(ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutListBox(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @prepare_list(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #7 {
  %8 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !174
  %12 = add nsw i32 %3, -1
  %13 = icmp slt i32 %11, %12
  %14 = icmp slt i32 %3, 1
  %15 = select i1 %14, i32 5, i32 %3
  %16 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 2
  store i32 %15, ptr %16, align 8, !tbaa !210
  %17 = icmp sgt i32 %15, %4
  %18 = tail call i32 @llvm.smax.i32(i32 %15, i32 5)
  %19 = select i1 %17, i32 %18, i32 %4
  %20 = icmp slt i32 %5, 1
  %21 = select i1 %20, i32 9, i32 %5
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = sitofp i32 %1 to double
  %25 = sitofp i32 %21 to double
  %26 = fdiv double %24, %25
  %27 = tail call double @llvm.ceil.f64(double %26)
  %28 = fptosi double %27 to i32
  store i32 %28, ptr %9, align 8, !tbaa !201
  %29 = sitofp i32 %2 to double
  %30 = fdiv double %29, %25
  %31 = tail call double @llvm.floor.f64(double %30)
  %32 = fptosi double %31 to i32
  br label %34

33:                                               ; preds = %7
  store i32 %1, ptr %9, align 8, !tbaa !201
  br label %34

34:                                               ; preds = %33, %23
  %35 = phi i32 [ %32, %23 ], [ %2, %33 ]
  br i1 %13, label %38, label %36

36:                                               ; preds = %34
  %37 = tail call i32 @llvm.smax.i32(i32 %15, i32 %11)
  br label %45

38:                                               ; preds = %34
  %39 = icmp eq i32 %15, %19
  br i1 %39, label %45, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %9, align 8, !tbaa !201
  %42 = icmp sgt i32 %41, %15
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = tail call i32 @llvm.smin.i32(i32 %41, i32 %19)
  br label %45

45:                                               ; preds = %38, %40, %43, %36
  %46 = phi i32 [ %44, %43 ], [ %15, %40 ], [ %15, %38 ], [ %37, %36 ]
  %47 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !211
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !185
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %50, %45
  %56 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !212
  %58 = icmp slt i32 %35, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = add nsw i32 %57, %46
  %61 = icmp slt i32 %35, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = add i32 %35, 1
  %64 = sub i32 %63, %46
  br label %65

65:                                               ; preds = %55, %62
  %66 = phi i32 [ %64, %62 ], [ %35, %55 ]
  store i32 %66, ptr %56, align 8, !tbaa !212
  br label %67

67:                                               ; preds = %65, %59
  %68 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 5
  %69 = load i32, ptr %68, align 4, !tbaa !185
  %70 = and i32 %69, -2
  store i32 %70, ptr %68, align 4, !tbaa !185
  br label %71

71:                                               ; preds = %67, %50
  %72 = getelementptr inbounds %struct.uiList, ptr %0, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !212
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load i32, ptr %9, align 8, !tbaa !201
  %77 = sub nsw i32 %76, %46
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 0)
  %79 = icmp sgt i32 %73, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %75, %71
  %81 = phi i32 [ 0, %71 ], [ %78, %75 ]
  store i32 %81, ptr %72, align 8, !tbaa !212
  br label %82

82:                                               ; preds = %80, %75
  store i32 %1, ptr %47, align 8, !tbaa !211
  %83 = getelementptr inbounds %struct.uiListDyn, ptr %9, i64 0, i32 1
  store i32 %46, ptr %83, align 4, !tbaa !200
  %84 = mul nsw i32 %46, %21
  store i32 %84, ptr %6, align 4, !tbaa !198
  %85 = load i32, ptr %72, align 8, !tbaa !212
  %86 = mul nsw i32 %85, %21
  %87 = getelementptr inbounds %struct.uiListLayoutdata, ptr %6, i64 0, i32 1
  store i32 %86, ptr %87, align 4, !tbaa !194
  %88 = add nsw i32 %86, %84
  %89 = tail call i32 @llvm.smin.i32(i32 %88, i32 %1)
  %90 = getelementptr inbounds %struct.uiListLayoutdata, ptr %6, i64 0, i32 2
  store i32 %89, ptr %90, align 4, !tbaa !196
  ret void
}

declare ptr @uiLayoutOverlap(ptr noundef) local_unnamed_addr #3

declare void @uiBlockSetFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @UI_rnaptr_icon_get(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @ui_layout_list_set_labels_active(ptr noundef) local_unnamed_addr #3

declare void @uiBlockClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiDefButI(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefIconTextButR_prop(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @uiButSetDrawFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiBlockSetEmboss(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @uiDefIconButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare void @uiButClearFlag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @ui_list_resize_update_cb(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #7 {
  %4 = getelementptr inbounds %struct.uiList, ptr %1, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !176
  %6 = getelementptr inbounds %struct.uiListDyn, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !205
  %8 = getelementptr inbounds %struct.uiListDyn, ptr %5, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !204
  %10 = sub nsw i32 %7, %9
  %11 = sitofp i32 %10 to float
  %12 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %13 = sitofp i16 %12 to float
  %14 = fdiv float %11, %13
  %15 = fadd float %14, 5.000000e-01
  %16 = tail call float @llvm.floor.f32(float %15)
  %17 = fptosi float %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.uiList, ptr %1, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !174
  %22 = add nsw i32 %21, %17
  store i32 %22, ptr %20, align 4, !tbaa !174
  %23 = sext i16 %12 to i32
  %24 = mul nsw i32 %17, %23
  %25 = add nsw i32 %24, %9
  store i32 %25, ptr %8, align 8, !tbaa !204
  %26 = getelementptr inbounds %struct.uiList, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !185
  %28 = or i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !185
  br label %29

29:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiOperatorSearch_But(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @uiButSetSearchFunc(ptr noundef %0, ptr noundef nonnull @operator_search_cb, ptr noundef null, ptr noundef nonnull @operator_call_cb, ptr noundef null) #14
  ret void
}

declare void @uiButSetSearchFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @operator_search_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.GHashIterator, align 8
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @WM_operatortype_iter(ptr noundef nonnull %5) #14
  %7 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = icmp eq ptr %8, null
  br i1 %9, label %54, label %10

10:                                               ; preds = %4, %51
  %11 = phi ptr [ %52, %51 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct._gh_Entry, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !215
  %14 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 19
  %15 = load i16, ptr %14, align 8, !tbaa !217
  %16 = and i16 %15, 64
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !219
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18, %10
  %23 = load ptr, ptr %13, align 8, !tbaa !221
  %24 = call ptr @BLI_strcasestr(ptr noundef %23, ptr noundef %2) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = call i32 @WM_operator_poll(ptr noundef %0, ptr noundef nonnull %13) #14
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #14
  %30 = load ptr, ptr %13, align 8, !tbaa !221
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #15
  %32 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %30, i64 noundef 256) #14
  %33 = shl i64 %31, 32
  %34 = ashr exact i64 %33, 32
  %35 = icmp ult i64 %34, 250
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.wmOperatorType, ptr %13, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !222
  %39 = add i64 %33, 4294967296
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %40
  %42 = trunc i64 %31 to i32
  %43 = xor i32 %42, 255
  %44 = call ptr @WM_key_event_operator_string(ptr noundef %0, ptr noundef %38, i32 noundef 6, ptr noundef null, i8 noundef zeroext 1, ptr noundef nonnull %41, i32 noundef %43) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 %34
  store i8 124, ptr %47, align 1, !tbaa !70
  br label %48

48:                                               ; preds = %36, %46, %29
  %49 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %13, i32 noundef 0) #14
  %50 = icmp eq i8 %49, 0
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #14
  br i1 %50, label %54, label %51

51:                                               ; preds = %22, %48, %26, %18
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #14
  %52 = load ptr, ptr %7, align 8, !tbaa !213
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %10, !llvm.loop !223

54:                                               ; preds = %51, %48, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @operator_call_cb(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @WM_operator_name_call_ptr(ptr noundef %0, ptr noundef nonnull %2, i16 noundef signext 0, ptr noundef null) #14
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateOperatorSearch(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  tail call void @uiBlockSetCurLayout(ptr noundef %2, ptr noundef %0) #14
  %3 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %4 = mul i16 %3, 6
  %5 = tail call ptr @uiDefSearchBut(ptr noundef %2, ptr noundef nonnull @uiTemplateOperatorSearch.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 0, i32 noundef 0, i16 noundef signext %4, i16 noundef signext %3, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  tail call void @uiButSetSearchFunc(ptr noundef %5, ptr noundef nonnull @operator_search_cb, ptr noundef null, ptr noundef nonnull @operator_call_cb, ptr noundef null) #14
  ret void
}

declare void @uiBlockSetCurLayout(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefSearchBut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateRunningJobs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @CTX_wm_screen(ptr noundef %1) #14
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %1) #14
  %5 = tail call ptr @CTX_wm_area(ptr noundef %1) #14
  %6 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  tail call void @uiBlockSetCurLayout(ptr noundef %6, ptr noundef %0) #14
  tail call void @uiBlockSetHandleFunc(ptr noundef %6, ptr noundef nonnull @do_running_jobs, ptr noundef null) #14
  %7 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !224
  switch i8 %8, label %10 [
    i8 8, label %37
    i8 20, label %9
  ]

9:                                                ; preds = %2
  br label %37

10:                                               ; preds = %2
  %11 = tail call ptr @CTX_data_main(ptr noundef %1) #14
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %10, %34
  %16 = phi ptr [ %35, %34 ], [ %13, %10 ]
  %17 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %16, i32 noundef 2) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %16, i32 noundef 1) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %16, i32 noundef 7) #14
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %16, i32 noundef 8) #14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22
  %29 = load i8, ptr %7, align 8, !tbaa !224
  %30 = icmp eq i8 %29, 16
  br i1 %30, label %34, label %42

31:                                               ; preds = %25
  %32 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef nonnull %16, i32 noundef 0) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28, %31
  %35 = load ptr, ptr %16, align 8, !tbaa !34
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %15, !llvm.loop !227

37:                                               ; preds = %2, %9
  %38 = phi i32 [ 6, %9 ], [ 5, %2 ]
  %39 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 0) #14
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr null, ptr %5
  br label %42

42:                                               ; preds = %31, %28, %19, %15, %34, %37, %10
  %43 = phi i32 [ undef, %10 ], [ %38, %37 ], [ undef, %34 ], [ 1, %15 ], [ 4, %19 ], [ 7, %28 ], [ 7, %31 ]
  %44 = phi ptr [ %13, %10 ], [ %41, %37 ], [ %35, %34 ], [ %16, %15 ], [ %16, %19 ], [ %16, %28 ], [ %16, %31 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @uiLayoutAbsolute(ptr noundef %0, i32 noundef 0) #14
  %48 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %49 = sitofp i16 %48 to double
  %50 = fmul double %49, 1.000000e-01
  %51 = fptosi double %50 to i32
  %52 = fmul double %49, 8.000000e-01
  %53 = fptosi double %52 to i16
  %54 = tail call ptr @uiDefIconBut(ptr noundef %6, i32 noundef 512, i32 noundef %43, i32 noundef 33, i32 noundef 0, i32 noundef %51, i16 noundef signext %53, i16 noundef signext %53, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.44) #14
  %55 = tail call ptr @WM_jobs_name(ptr noundef %4, ptr noundef nonnull %44) #14
  %56 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %57 = sext i16 %56 to i32
  %58 = mul i16 %56, 5
  %59 = tail call float @WM_jobs_progress(ptr noundef %4, ptr noundef nonnull %44) #14
  %60 = tail call ptr @uiDefBut(ptr noundef %6, i32 noundef 26112, i32 noundef 0, ptr noundef %55, i32 noundef %57, i32 noundef 0, i16 noundef signext %58, i16 noundef signext %56, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %59, float noundef 0.000000e+00, ptr noundef nonnull @.str.45) #14
  %61 = tail call ptr @uiLayoutRow(ptr noundef %0, i32 noundef 0) #14
  br label %62

62:                                               ; preds = %46, %42
  %63 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %3, i32 noundef 4) #14
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %67 = sitofp i16 %66 to float
  %68 = fmul float %67, 4.250000e+00
  %69 = fptosi float %68 to i16
  %70 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 512, i32 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef 0, i16 noundef signext %69, i16 noundef signext %66, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.47) #14
  br label %71

71:                                               ; preds = %65, %62
  %72 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 21
  %73 = load ptr, ptr %72, align 8, !tbaa !228
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %77 = mul i16 %76, 5
  %78 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 512, i32 noundef 3, i32 noundef 3, ptr noundef nonnull @.str.48, i32 noundef 0, i32 noundef 0, i16 noundef signext %77, i16 noundef signext %76, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.49) #14
  br label %79

79:                                               ; preds = %75, %71
  ret void
}

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_running_jobs(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #1 {
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
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !230
  br label %20

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %7 = tail call ptr @CTX_wm_screen(ptr noundef %0) #14
  tail call void @WM_jobs_stop(ptr noundef %6, ptr noundef %7, ptr noundef null) #14
  br label %20

8:                                                ; preds = %3
  %9 = tail call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.195, i16 noundef signext 5, ptr noundef null) #14
  br label %20

10:                                               ; preds = %3
  %11 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #14
  tail call void @WM_jobs_stop(ptr noundef %11, ptr noundef %12, ptr noundef null) #14
  br label %20

13:                                               ; preds = %3
  %14 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %15 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @WM_jobs_stop(ptr noundef %14, ptr noundef %15, ptr noundef null) #14
  br label %20

16:                                               ; preds = %3
  %17 = tail call ptr @CTX_wm_manager(ptr noundef %0) #14
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @WM_jobs_stop(ptr noundef %17, ptr noundef %18, ptr noundef null) #14
  br label %20

19:                                               ; preds = %3
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !230
  br label %20

20:                                               ; preds = %3, %19, %16, %13, %10, %8, %5, %4
  ret void
}

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutAbsolute(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiDefIconBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare ptr @WM_jobs_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @WM_jobs_progress(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiDefIconTextBut(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateReportsBanner(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @CTX_wm_reports(ptr noundef %1) #14
  %4 = tail call ptr @BKE_reports_last_displayable(ptr noundef %3) #14
  %5 = tail call ptr @UI_GetStyle() #14
  %6 = getelementptr inbounds %struct.ReportList, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !231
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmTimer, ptr %7, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !233
  %12 = icmp eq ptr %11, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ReportTimerInfo, ptr %11, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !235
  %16 = fcmp une float %15, 0.000000e+00
  %17 = icmp ne ptr %4, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %83

19:                                               ; preds = %13
  %20 = tail call ptr @uiLayoutAbsolute(ptr noundef %0, i32 noundef 0) #14
  %21 = tail call ptr @uiLayoutGetBlock(ptr noundef %20) #14
  %22 = getelementptr inbounds %struct.uiStyle, ptr %5, i64 0, i32 6
  %23 = load i16, ptr %22, align 8, !tbaa !237
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.Report, ptr %4, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !240
  %27 = getelementptr inbounds %struct.Report, ptr %4, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !242
  %29 = sext i32 %28 to i64
  %30 = tail call float @BLF_width(i32 noundef %24, ptr noundef %26, i64 noundef %29) #14
  %31 = fptosi float %30 to i32
  %32 = load float, ptr %14, align 4, !tbaa !235
  %33 = sitofp i32 %31 to float
  %34 = fmul float %32, %33
  %35 = fptosi float %34 to i32
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 %31)
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 10)
  tail call void @uiBlockBeginAlign(ptr noundef %21) #14
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %39 = add i16 %38, 10
  %40 = tail call ptr @uiDefBut(ptr noundef %21, i32 noundef 14336, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %39, i16 noundef signext %38, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %41 = getelementptr inbounds %struct.uiBut, ptr %40, i64 0, i32 26
  tail call void @rgb_float_to_uchar(ptr noundef nonnull %41, ptr noundef nonnull %11) #14
  %42 = getelementptr inbounds %struct.uiBut, ptr %40, i64 0, i32 26, i64 3
  store i8 -1, ptr %42, align 1, !tbaa !70
  %43 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %44, 10
  %46 = trunc i32 %37 to i16
  %47 = add i16 %43, %46
  %48 = tail call ptr @uiDefBut(ptr noundef %21, i32 noundef 14336, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %45, i32 noundef 0, i16 noundef signext %47, i16 noundef signext %43, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %49 = getelementptr inbounds %struct.ReportTimerInfo, ptr %11, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !243
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
  store i8 %58, ptr %60, align 2, !tbaa !70
  %61 = getelementptr inbounds %struct.uiBut, ptr %48, i64 0, i32 26, i64 1
  store i8 %58, ptr %61, align 1, !tbaa !70
  store i8 %58, ptr %59, align 8, !tbaa !70
  %62 = getelementptr inbounds %struct.uiBut, ptr %48, i64 0, i32 26, i64 3
  store i8 -1, ptr %62, align 1, !tbaa !70
  tail call void @uiBlockEndAlign(ptr noundef %21) #14
  %63 = getelementptr inbounds %struct.Report, ptr %4, i64 0, i32 2
  %64 = load i16, ptr %63, align 8, !tbaa !244
  %65 = sext i16 %64 to i32
  %66 = tail call i32 @uiIconFromReportType(i32 noundef %65) #14
  tail call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 1) #14
  %67 = load ptr, ptr %3, align 8, !tbaa !245
  %68 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !246
  %70 = icmp eq ptr %67, %69
  %71 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  br i1 %70, label %74, label %72

72:                                               ; preds = %57
  %73 = tail call ptr @uiDefIconButO(ptr noundef %21, i32 noundef 512, ptr noundef nonnull @.str.50, i32 noundef 1, i32 noundef %66, i32 noundef 2, i32 noundef 0, i16 noundef signext %71, i16 noundef signext %71, ptr noundef nonnull @.str.51) #14
  br label %76

74:                                               ; preds = %57
  %75 = tail call ptr @uiDefIconBut(ptr noundef %21, i32 noundef 5120, i32 noundef 0, i32 noundef %66, i32 noundef 2, i32 noundef 0, i16 noundef signext %71, i16 noundef signext %71, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %76

76:                                               ; preds = %74, %72
  tail call void @uiBlockSetEmboss(ptr noundef %21, i8 noundef zeroext 0) #14
  %77 = load ptr, ptr %25, align 8, !tbaa !240
  %78 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %79 = sext i16 %78 to i32
  %80 = add nsw i32 %79, 10
  %81 = add i16 %78, %46
  %82 = tail call ptr @uiDefBut(ptr noundef %21, i32 noundef 5120, i32 noundef 0, ptr noundef %77, i32 noundef %80, i32 noundef 0, i16 noundef signext %81, i16 noundef signext %78, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %83

83:                                               ; preds = %9, %13, %2, %76
  ret void
}

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_reports_last_displayable(ptr noundef) local_unnamed_addr #3

declare ptr @UI_GetStyle() local_unnamed_addr #3

declare float @BLF_width(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @uiBlockBeginAlign(ptr noundef) local_unnamed_addr #3

declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @uiBlockEndAlign(ptr noundef) local_unnamed_addr #3

declare i32 @uiIconFromReportType(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateKeymapItemProperties(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @RNA_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %1, ptr noundef nonnull @.str.52) #14
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  %9 = getelementptr inbounds %struct.uiBlock, ptr %8, i64 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  call fastcc void @template_keymap_item_properties(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  br label %14

14:                                               ; preds = %12, %21
  %15 = phi ptr [ %10, %12 ], [ %22, %21 ]
  %16 = getelementptr inbounds %struct.uiBut, ptr %15, i64 0, i32 55
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %13, align 8, !tbaa !58
  call void @uiButSetFunc(ptr noundef nonnull %15, ptr noundef nonnull @keymap_item_modified, ptr noundef %20, ptr noundef null) #14
  br label %21

21:                                               ; preds = %14, %19
  %22 = load ptr, ptr %15, align 8, !tbaa !247
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !248

24:                                               ; preds = %21, %7, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

declare void @RNA_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @template_keymap_item_properties(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  tail call void @uiItemS(ptr noundef %0) #14
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @uiItemL(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #14
  br label %8

8:                                                ; preds = %7, %3
  %9 = tail call ptr @uiLayoutColumnFlow(ptr noundef %0, i32 noundef 2, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #14
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = tail call ptr @RNA_struct_iterator_property(ptr noundef %11) #14
  call void @RNA_property_collection_begin(ptr noundef %2, ptr noundef %12, ptr noundef nonnull %4) #14
  %13 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !188
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  %18 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %19 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 1
  br label %20

20:                                               ; preds = %16, %45
  %21 = load ptr, ptr %17, align 8, !tbaa !249
  %22 = call zeroext i8 @RNA_property_is_set(ptr noundef %2, ptr noundef %21) #14
  %23 = call i32 @RNA_property_type(ptr noundef %21) #14
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef %21) #14
  %26 = load ptr, ptr %18, align 8, !tbaa !58
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %19, align 8, !tbaa !54
  %30 = call zeroext i8 @RNA_struct_is_a(ptr noundef %29, ptr noundef nonnull @RNA_OperatorProperties) #14
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call ptr @RNA_property_ui_name(ptr noundef %21) #14
  call fastcc void @template_keymap_item_properties(ptr noundef %0, ptr noundef %33, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %45

34:                                               ; preds = %25, %28
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %35

35:                                               ; preds = %34, %20
  %36 = call ptr @uiLayoutBox(ptr noundef %9) #14
  call void @uiLayoutSetActive(ptr noundef %36, i8 noundef zeroext %22) #14
  %37 = call ptr @uiLayoutRow(ptr noundef %36, i32 noundef 0) #14
  call void @uiItemFullR(ptr noundef %37, ptr noundef %2, ptr noundef %21, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %38 = icmp eq i8 %22, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = call ptr @uiLayoutGetBlock(ptr noundef %37) #14
  call void @uiBlockSetEmboss(ptr noundef %40, i8 noundef zeroext 1) #14
  %41 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %42 = call ptr @uiDefIconButO(ptr noundef %40, i32 noundef 512, ptr noundef nonnull @.str.196, i32 noundef 6, i32 noundef 19, i32 noundef 0, i32 noundef 0, i16 noundef signext %41, i16 noundef signext %41, ptr noundef null) #14
  %43 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !50
  %44 = getelementptr inbounds %struct.uiBut, ptr %42, i64 0, i32 55
  store ptr %21, ptr %44, align 8, !tbaa !164
  call void @uiBlockSetEmboss(ptr noundef %40, i8 noundef zeroext 0) #14
  br label %45

45:                                               ; preds = %35, %39, %32
  call void @RNA_property_collection_next(ptr noundef nonnull %4) #14
  %46 = load i32, ptr %13, align 8, !tbaa !188
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %20, !llvm.loop !250

48:                                               ; preds = %45, %8
  call void @RNA_property_collection_end(ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @keymap_item_modified(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateColorspaceSettings(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %5 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = tail call ptr @RNA_struct_identifier(ptr noundef %9) #14
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @__func__.uiTemplateColorspaceSettings, ptr noundef %10, ptr noundef %2)
  br label %13

12:                                               ; preds = %3
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef nonnull %5) #14
  call void @uiItemL(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  br label %13

13:                                               ; preds = %12, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateColormanagedViewSettings(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %6 = tail call ptr @RNA_struct_find_property(ptr noundef %2, ptr noundef %3) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call ptr @RNA_struct_identifier(ptr noundef %10) #14
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @__func__.uiTemplateColormanagedViewSettings, ptr noundef %11, ptr noundef %3)
  br label %24

13:                                               ; preds = %4
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %2, ptr noundef nonnull %6) #14
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #14
  %17 = call ptr @uiLayoutRow(ptr noundef %16, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef 0) #14
  %18 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %18, ptr noundef nonnull %5, ptr noundef nonnull @.str.59, i32 noundef 0, ptr noundef nonnull @.str.60, i32 noundef 0) #14
  %19 = call ptr @uiLayoutColumn(ptr noundef %0, i32 noundef 0) #14
  call void @uiItemR(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %20 = load i32, ptr %15, align 8, !tbaa !251
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  call void @uiTemplateCurveMapping(ptr noundef %19, ptr noundef nonnull %5, ptr noundef nonnull @.str.62, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  br label %24

24:                                               ; preds = %13, %23, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateComponentMenu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 88, ptr noundef nonnull @.str.63) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %7 = getelementptr inbounds %struct.ComponentMenuArgs, ptr %6, i64 0, i32 1
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 64) #14
  %9 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  tail call void @uiBlockBeginAlign(ptr noundef %9) #14
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %11 = mul i16 %10, 6
  %12 = tail call ptr @uiDefBlockButN(ptr noundef %9, ptr noundef nonnull @component_menu, ptr noundef %6, ptr noundef %3, i32 noundef 0, i32 noundef 0, i16 noundef signext %11, i16 noundef signext %10, ptr noundef nonnull @.str.3) #14
  %13 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !50
  %14 = tail call ptr @RNA_struct_find_property(ptr noundef %1, ptr noundef %2) #14
  %15 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 55
  store ptr %14, ptr %15, align 8, !tbaa !164
  %16 = getelementptr inbounds %struct.uiBut, ptr %12, i64 0, i32 56
  store i32 0, ptr %16, align 8, !tbaa !253
  tail call void @uiBlockEndAlign(ptr noundef %9) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @component_menu(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.component_menu, i16 noundef signext 0) #14
  tail call void @uiBlockSetFlag(ptr noundef %4, i32 noundef 256) #14
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %6 = sext i16 %5 to i32
  %7 = mul nsw i32 %6, 6
  %8 = tail call ptr @UI_GetStyle() #14
  %9 = tail call ptr @uiBlockLayout(ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %7, i32 noundef %6, i32 noundef 0, ptr noundef %8) #14
  %10 = tail call ptr @uiLayoutColumn(ptr noundef %9, i32 noundef 0) #14
  %11 = getelementptr inbounds %struct.ComponentMenuArgs, ptr %2, i64 0, i32 1
  tail call void @uiItemR(ptr noundef %10, ptr noundef %2, ptr noundef nonnull %11, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  tail call void @uiBoundsBlock(ptr noundef %4, i32 noundef 6) #14
  tail call void @uiBlockSetDirection(ptr noundef %4, i8 noundef zeroext 2) #14
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define dso_local void @uiTemplateNodeSocket(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = tail call ptr @uiLayoutGetBlock(ptr noundef %0) #14
  tail call void @uiBlockBeginAlign(ptr noundef %4) #14
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %6 = tail call ptr @uiDefBut(ptr noundef %4, i32 noundef 27136, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 0, i16 noundef signext %5, i16 noundef signext %5, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %7 = getelementptr inbounds %struct.uiBut, ptr %6, i64 0, i32 26
  tail call void @rgba_float_to_uchar(ptr noundef nonnull %7, ptr noundef %2) #14
  tail call void @uiBlockEndAlign(ptr noundef %4) #14
  ret void
}

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

declare signext i16 @RNA_type_to_ID_code(ptr noundef) local_unnamed_addr #3

declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare zeroext i8 @RNA_property_editable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @id_search_menu(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #14
  store i8 0, ptr @id_search_menu.search, align 16, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @id_search_menu.template, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !254
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %6 = load ptr, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 1), align 8, !tbaa !51
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull @id_search_menu.template, ptr noundef %6) #14
  %7 = getelementptr inbounds i8, ptr %4, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa.struct !114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %9 = call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.78, i16 noundef signext 0) #14
  call void @uiBlockSetFlag(ptr noundef %9, i32 noundef 7) #14
  %10 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 3), align 8, !tbaa !55
  %11 = icmp sgt i32 %10, 0
  %12 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 4), align 4
  %13 = icmp sgt i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %17 = sext i16 %16 to i32
  %18 = shl nsw i32 %17, 2
  %19 = mul nsw i32 %18, %12
  %20 = mul nsw i32 %18, %10
  %21 = trunc i32 %19 to i16
  %22 = trunc i32 %20 to i16
  %23 = add i16 %16, %22
  %24 = call ptr @uiDefBut(ptr noundef %9, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 10, i32 noundef 15, i16 noundef signext %21, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #14
  %25 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %26 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 3), align 8, !tbaa !55
  %27 = sitofp i32 %26 to float
  %28 = load i32, ptr getelementptr inbounds (%struct.TemplateID, ptr @id_search_menu.template, i64 0, i32 4), align 4, !tbaa !56
  %29 = sitofp i32 %28 to float
  %30 = call ptr @uiDefSearchBut(ptr noundef %9, ptr noundef nonnull @id_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 0, i16 noundef signext %21, i16 noundef signext %25, float noundef %27, float noundef %29, ptr noundef nonnull @.str.3) #14
  br label %40

31:                                               ; preds = %3
  %32 = call i32 @uiSearchBoxWidth() #14
  %33 = call i32 @uiSearchBoxHeight() #14
  %34 = trunc i32 %32 to i16
  %35 = trunc i32 %33 to i16
  %36 = call ptr @uiDefBut(ptr noundef %9, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 10, i32 noundef 15, i16 noundef signext %34, i16 noundef signext %35, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef null) #14
  %37 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %38 = add i16 %37, -1
  %39 = call ptr @uiDefSearchBut(ptr noundef %9, ptr noundef nonnull @id_search_menu.search, i32 noundef 0, i32 noundef 30, i32 noundef 256, i32 noundef 10, i32 noundef 0, i16 noundef signext %34, i16 noundef signext %38, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  br label %40

40:                                               ; preds = %31, %15
  %41 = phi ptr [ %39, %31 ], [ %30, %15 ]
  call void @uiButSetSearchFunc(ptr noundef %41, ptr noundef nonnull @id_search_cb, ptr noundef nonnull @id_search_menu.template, ptr noundef nonnull @id_search_call_cb, ptr noundef %8) #14
  %42 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %43 = sitofp i16 %42 to float
  %44 = fmul float %43, 0x3FD3333340000000
  %45 = fptosi float %44 to i32
  call void @uiBoundsBlock(ptr noundef %9, i32 noundef %45) #14
  call void @uiBlockSetDirection(ptr noundef %9, i8 noundef zeroext 2) #14
  call void @uiButSetFocusOnEnter(ptr noundef %5, ptr noundef %41) #14
  %46 = getelementptr inbounds %struct.uiBut, ptr %41, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !41
  %48 = or i32 %47, 524288
  store i32 %48, ptr %46, align 8, !tbaa !41
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @template_id_browse_tip(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = tail call signext i16 @RNA_type_to_ID_code(ptr noundef nonnull %0) #14
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

declare i32 @ui_id_icon_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @uiButSetDragID(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_struct_ui_description(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @template_id_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %1, ptr noundef %7) #14
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !58
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
  call void (ptr, ...) @_RNA_warning(ptr noundef nonnull @.str.105, ptr noundef nonnull @__func__.template_id_cb, i32 noundef %11) #14
  br label %60

13:                                               ; preds = %3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %14 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_property_pointer_set(ptr noundef %1, ptr noundef %14, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #14
  %15 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %15) #14
  %16 = icmp eq ptr %9, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = call ptr @CTX_wm_window(ptr noundef %0) #14
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !160
  %21 = getelementptr inbounds %struct.wmEvent, ptr %20, i64 0, i32 17
  %22 = load i16, ptr %21, align 8, !tbaa !162
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 6
  store i32 0, ptr %25, align 4, !tbaa !69
  br label %60

26:                                               ; preds = %3
  %27 = icmp eq ptr %9, null
  br i1 %27, label %60, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 5
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = and i16 %30, 512
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  call void @id_us_plus(ptr noundef nonnull %9) #14
  br label %60

34:                                               ; preds = %28
  call void @id_us_min(ptr noundef nonnull %9) #14
  br label %60

35:                                               ; preds = %3
  %36 = icmp eq ptr %9, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %35
  %38 = call zeroext i8 @id_make_local(ptr noundef nonnull %9, i8 noundef zeroext 0) #14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %41 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef %41) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %42 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_property_pointer_set(ptr noundef %1, ptr noundef %42, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #14
  %43 = load ptr, ptr %6, align 8, !tbaa !51
  call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %43) #14
  br label %60

44:                                               ; preds = %3
  %45 = icmp eq ptr %9, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  %48 = load i16, ptr %47, align 8, !tbaa !72
  %49 = icmp eq i16 %48, 16975
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !255
  %53 = icmp eq ptr %52, @RNA_SceneObjects
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call ptr @CTX_data_main(ptr noundef %0) #14
  %56 = call ptr @CTX_data_scene(ptr noundef %0) #14
  call void @ED_object_single_user(ptr noundef %55, ptr noundef %56, ptr noundef nonnull %9) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67567616, ptr noundef %56) #14
  call void @DAG_relations_tag_update(ptr noundef %55) #14
  br label %60

57:                                               ; preds = %50, %46
  %58 = load ptr, ptr %6, align 8, !tbaa !51
  %59 = call zeroext i8 @id_single_user(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %58) #14
  br label %60

60:                                               ; preds = %12, %3, %24, %17, %13, %33, %34, %37, %40, %35, %44, %57, %54, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

declare zeroext i8 @id_make_local(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @id_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @uiDefIconTextButO(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_pack_check(ptr noundef) local_unnamed_addr #3

declare ptr @uiButGetOperatorPtrRNA(ptr noundef) local_unnamed_addr #3

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @RNA_property_flag(ptr noundef) local_unnamed_addr #3

declare void @uiTemplateTextureShow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #3

declare ptr @uiBeginBlock(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @id_search_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [67 x i8], align 16
  %7 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = load ptr, ptr %1, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = tail call i32 @RNA_property_flag(ptr noundef %11) #14
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
  %24 = load ptr, ptr %10, align 8, !tbaa !51
  %25 = call i32 @RNA_property_type(ptr noundef %24) #14
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @RNA_id_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull %5) #14
  %28 = load ptr, ptr %10, align 8, !tbaa !51
  %29 = call i32 @RNA_property_pointer_poll(ptr noundef nonnull %1, ptr noundef %28, ptr noundef nonnull %5) #14
  %30 = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br i1 %30, label %54, label %31

31:                                               ; preds = %27, %23
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !256
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  %37 = load i8, ptr %36, align 2, !tbaa !70
  %38 = icmp eq i8 %37, 46
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8, ptr %2, align 1, !tbaa !70
  %41 = icmp eq i8 %40, 46
  br i1 %41, label %42, label %54

42:                                               ; preds = %35, %39, %31
  %43 = load i8, ptr %2, align 1, !tbaa !70
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.ID, ptr %20, i64 0, i32 4, i64 2
  %47 = call ptr @BLI_strcasestr(ptr noundef nonnull %46, ptr noundef nonnull %2) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45, %42
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %6) #14
  call void @name_uiprefix_id(ptr noundef nonnull %6, ptr noundef nonnull %20) #14
  %50 = load i8, ptr %18, align 8, !tbaa !60
  %51 = call i32 @ui_id_icon_get(ptr noundef %0, ptr noundef nonnull %20, i8 noundef zeroext %50) #14
  %52 = call zeroext i8 @uiSearchItemAdd(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %20, i32 noundef %51) #14
  %53 = icmp eq i8 %52, 0
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %6) #14
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %27, %19, %45, %39
  %55 = load ptr, ptr %20, align 8, !tbaa !34
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %19, !llvm.loop !257

57:                                               ; preds = %54, %49, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @id_search_call_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @RNA_id_pointer_create(ptr noundef nonnull %2, ptr noundef nonnull %4) #14
  %7 = getelementptr inbounds %struct.TemplateID, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  call void @RNA_property_pointer_set(ptr noundef %1, ptr noundef %8, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #14
  %9 = load ptr, ptr %7, align 8, !tbaa !51
  call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %9) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  br label %10

10:                                               ; preds = %6, %3
  ret void
}

declare i32 @uiSearchBoxWidth() local_unnamed_addr #3

declare i32 @uiSearchBoxHeight() local_unnamed_addr #3

declare void @uiBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiBlockSetDirection(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @uiButSetFocusOnEnter(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @RNA_property_pointer_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @name_uiprefix_id(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @uiSearchItemAdd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #3

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

declare void @id_us_min(ptr noundef) local_unnamed_addr #3

declare void @ED_object_single_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @id_single_user(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #3

declare void @uiLayoutSetContextPointer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutBox(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @modifiers_convertToReal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.ModifierData, ptr %2, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !81
  %6 = tail call ptr @modifier_new(i32 noundef %5) #14
  tail call void @modifier_copyData(ptr noundef %2, ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.ModifierData, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !83
  %9 = and i32 %8, -33
  store i32 %9, ptr %7, align 4, !tbaa !83
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @BLI_addhead(ptr noundef nonnull %10, ptr noundef %6) #14
  tail call void @modifier_unique_name(ptr noundef nonnull %10, ptr noundef %6) #14
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  store i16 0, ptr %11, align 2, !tbaa !258
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %1) #14
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 2) #14
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.134) #14
  ret void
}

declare void @uiLayoutSetRedAlert(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @uiLayoutSetActive(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @modifier_supportsCage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @modifier_couldBeCage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @uiItemO(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uiItemStringO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef) local_unnamed_addr #3

declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @uiItemEnumO(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @modifier_isSameTopology(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @modifier_isNonGeometrical(ptr noundef) local_unnamed_addr #3

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #3

declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #3

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BKE_constraints_proxylocked_owner(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @do_constraint_panels(ptr noundef %0, ptr noundef %1, i32 %2) #1 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i16 %5, 25
  %7 = select i1 %6, i16 3, i16 1
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext %7) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85590016, ptr noundef %1) #14
  ret void
}

declare void @uiBlockSetFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @constraint_active_func(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #1 {
  tail call void @ED_object_constraint_set_active(ptr noundef %1, ptr noundef %2) #14
  ret void
}

declare void @ED_object_constraint_set_active(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @colorband_add_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i16, ptr %2, align 4, !tbaa !119
  %5 = icmp sgt i16 %4, 1
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !120
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
  %20 = load float, ptr %19, align 4, !tbaa !259
  %21 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %17, i32 4
  %22 = load float, ptr %21, align 4, !tbaa !259
  %23 = fadd float %20, %22
  %24 = fmul float %23, 5.000000e-01
  br label %25

25:                                               ; preds = %6, %3
  %26 = phi float [ 5.000000e-01, %3 ], [ %24, %6 ]
  %27 = tail call ptr @colorband_element_add(ptr noundef nonnull %2, float noundef %26) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %31) #14
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.153) #14
  br label %32

32:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorband_del_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !120
  %6 = sext i16 %5 to i32
  %7 = tail call i32 @colorband_element_remove(ptr noundef %2, i32 noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.154) #14
  %10 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !115
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %11) #14
  br label %12

12:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorband_flip_cb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = alloca [32 x %struct.CBData], align 16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #14
  %5 = load i16, ptr %2, align 4, !tbaa !119
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i16 %5, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = zext nneg i16 %5 to i64
  %10 = zext nneg i32 %6 to i64
  br label %15

11:                                               ; preds = %15, %3
  %12 = icmp sgt i16 %5, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %11
  %14 = zext nneg i32 %6 to i64
  br label %22

15:                                               ; preds = %8, %15
  %16 = phi i64 [ 0, %8 ], [ %18, %15 ]
  %17 = getelementptr inbounds [32 x %struct.CBData], ptr %4, i64 0, i64 %16
  %18 = add nuw nsw i64 %16, 1
  %19 = sub nsw i64 %9, %18
  %20 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 4 dereferenceable(24) %20, i64 24, i1 false), !tbaa.struct !261
  %21 = icmp eq i64 %18, %10
  br i1 %21, label %11, label %15, !llvm.loop !262

22:                                               ; preds = %13, %22
  %23 = phi i64 [ 0, %13 ], [ %29, %22 ]
  %24 = getelementptr inbounds [32 x %struct.CBData], ptr %4, i64 0, i64 %23
  %25 = getelementptr inbounds [32 x %struct.CBData], ptr %4, i64 0, i64 %23, i32 4
  %26 = load float, ptr %25, align 8, !tbaa !259
  %27 = fsub float 1.000000e+00, %26
  store float %27, ptr %25, align 8, !tbaa !259
  %28 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6, i64 %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false), !tbaa.struct !261
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %14
  br i1 %30, label %31, label %22, !llvm.loop !263

31:                                               ; preds = %22, %11
  %32 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !120
  %34 = xor i16 %33, -1
  %35 = add i16 %5, %34
  store i16 %35, ptr %32, align 2, !tbaa !120
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.155) #14
  %36 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !115
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %37) #14
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @colorband_update_cb(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #1 {
  tail call void @colorband_update_sort(ptr noundef %2) #14
  %4 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 6
  %5 = getelementptr inbounds %struct.ColorBand, ptr %2, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !120
  %7 = sext i16 %6 to i64
  %8 = getelementptr inbounds %struct.CBData, ptr %4, i64 %7
  %9 = getelementptr inbounds %struct.uiBut, ptr %1, i64 0, i32 54, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !264
  ret void
}

declare ptr @colorband_element_add(ptr noundef, float noundef) local_unnamed_addr #3

declare i32 @colorband_element_remove(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @colorband_update_sort(ptr noundef) local_unnamed_addr #3

declare void @RNA_property_enum_items(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @curvemap_buttons_redraw(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %4) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @curvemap_buttons_zoom_in(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !265
  %7 = load float, ptr %4, align 4, !tbaa !266
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !265
  %12 = load float, ptr %9, align 4, !tbaa !266
  %13 = fsub float %11, %12
  %14 = fmul float %13, 0x3FA47AE140000000
  %15 = fcmp ogt float %8, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = fmul float %8, 0x3FBD8ADAC0000000
  %18 = fadd float %7, %17
  store float %18, ptr %4, align 8, !tbaa !267
  %19 = fsub float %6, %17
  store float %19, ptr %5, align 4, !tbaa !268
  %20 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !269
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !270
  %24 = fsub float %21, %23
  %25 = fmul float %24, 0x3FBD8ADAC0000000
  %26 = fadd float %23, %25
  store float %26, ptr %22, align 8, !tbaa !271
  %27 = fsub float %21, %25
  store float %27, ptr %20, align 4, !tbaa !272
  br label %28

28:                                               ; preds = %16, %3
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %29) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @curvemap_buttons_zoom_out(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !265
  %7 = load float, ptr %4, align 4, !tbaa !266
  %8 = fsub float %6, %7
  %9 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5
  %10 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5, i32 1
  %11 = load float, ptr %10, align 4, !tbaa !265
  %12 = load float, ptr %9, align 4, !tbaa !266
  %13 = fsub float %11, %12
  %14 = fmul float %13, 2.000000e+01
  %15 = fcmp olt float %8, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %3
  %17 = fmul float %8, 0x3FC3333340000000
  %18 = load i32, ptr %1, align 8, !tbaa !139
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = fsub float %7, %17
  %22 = fcmp olt float %21, %12
  %23 = and i1 %22, %20
  %24 = fsub float %7, %12
  %25 = select i1 %23, float %24, float %17
  %26 = fsub float %7, %25
  store float %26, ptr %4, align 8, !tbaa !267
  %27 = icmp ne i32 %19, 0
  %28 = fadd float %6, %17
  %29 = fcmp ogt float %28, %11
  %30 = and i1 %29, %27
  %31 = fsub float %11, %6
  %32 = select i1 %30, float %31, float %17
  %33 = fadd float %6, %32
  store float %33, ptr %5, align 4, !tbaa !268
  %34 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !269
  %36 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4, i32 2
  %37 = load float, ptr %36, align 4, !tbaa !270
  %38 = fsub float %35, %37
  %39 = fmul float %38, 0x3FC3333340000000
  %40 = fsub float %37, %39
  br i1 %27, label %41, label %54

41:                                               ; preds = %16
  %42 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5, i32 2
  %43 = load float, ptr %42, align 8, !tbaa !273
  %44 = fcmp olt float %40, %43
  %45 = fsub float %37, %43
  %46 = select i1 %44, float %45, float %39
  %47 = fsub float %37, %46
  store float %47, ptr %36, align 8, !tbaa !271
  %48 = fadd float %35, %39
  %49 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5, i32 3
  %50 = load float, ptr %49, align 4, !tbaa !274
  %51 = fcmp ogt float %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = fsub float %50, %35
  br label %55

54:                                               ; preds = %16
  store float %40, ptr %36, align 8, !tbaa !271
  br label %55

55:                                               ; preds = %54, %41, %52
  %56 = phi float [ %53, %52 ], [ %39, %41 ], [ %39, %54 ]
  %57 = fadd float %35, %56
  store float %57, ptr %34, align 4, !tbaa !272
  br label %58

58:                                               ; preds = %55, %3
  %59 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %59) #14
  ret void
}

declare ptr @uiDefIconBlockBut(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef ptr @curvemap_brush_tools_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %5 = mul i16 %4, 10
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_brush_tools_func, i16 noundef signext 0) #14
  tail call void @uiBlockSetButmFunc(ptr noundef %6, ptr noundef nonnull @curvemap_tools_dofunc, ptr noundef %2) #14
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %8 = sub i16 0, %7
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef %9, i16 noundef signext %5, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #14
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %12 = sub i16 %8, %11
  %13 = sext i16 %12 to i32
  %14 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.176, i32 noundef 0, i32 noundef %13, i16 noundef signext %5, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #14
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %16 = sub i16 %12, %15
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.177, i32 noundef 0, i32 noundef %17, i16 noundef signext %5, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 4.000000e+00, ptr noundef nonnull @.str.3) #14
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %20 = sub i16 %16, %19
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.178, i32 noundef 0, i32 noundef %21, i16 noundef signext %5, i16 noundef signext %19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  tail call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 8) #14
  tail call void @uiTextBoundsBlock(ptr noundef %6, i32 noundef 50) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @curvemap_tools_negslope_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %5 = mul i16 %4, 10
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_tools_negslope_func, i16 noundef signext 0) #14
  tail call void @uiBlockSetButmFunc(ptr noundef %6, ptr noundef nonnull @curvemap_tools_dofunc, ptr noundef %2) #14
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %8 = sub i16 0, %7
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef %9, i16 noundef signext %5, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #14
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %12 = sub i16 %8, %11
  %13 = sext i16 %12 to i32
  %14 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.176, i32 noundef 0, i32 noundef %13, i16 noundef signext %5, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #14
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %16 = sub i16 %12, %15
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.177, i32 noundef 0, i32 noundef %17, i16 noundef signext %5, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 4.000000e+00, ptr noundef nonnull @.str.3) #14
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %20 = sub i16 %16, %19
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.180, i32 noundef 0, i32 noundef %21, i16 noundef signext %5, i16 noundef signext %19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #14
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %24 = sub i16 %20, %23
  %25 = sext i16 %24 to i32
  %26 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.181, i32 noundef 0, i32 noundef %25, i16 noundef signext %5, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 6.000000e+00, ptr noundef nonnull @.str.3) #14
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %28 = sub i16 %24, %27
  %29 = sext i16 %28 to i32
  %30 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.178, i32 noundef 0, i32 noundef %29, i16 noundef signext %5, i16 noundef signext %27, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  tail call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 8) #14
  tail call void @uiTextBoundsBlock(ptr noundef %6, i32 noundef 50) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @curvemap_tools_posslope_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %5 = mul i16 %4, 10
  %6 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_tools_posslope_func, i16 noundef signext 0) #14
  tail call void @uiBlockSetButmFunc(ptr noundef %6, ptr noundef nonnull @curvemap_tools_dofunc, ptr noundef %2) #14
  %7 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %8 = sub i16 0, %7
  %9 = sext i16 %8 to i32
  %10 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef %9, i16 noundef signext %5, i16 noundef signext %7, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #14
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %12 = sub i16 %8, %11
  %13 = sext i16 %12 to i32
  %14 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.176, i32 noundef 0, i32 noundef %13, i16 noundef signext %5, i16 noundef signext %11, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 3.000000e+00, ptr noundef nonnull @.str.3) #14
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %16 = sub i16 %12, %15
  %17 = sext i16 %16 to i32
  %18 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.177, i32 noundef 0, i32 noundef %17, i16 noundef signext %5, i16 noundef signext %15, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 4.000000e+00, ptr noundef nonnull @.str.3) #14
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %20 = sub i16 %16, %19
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.180, i32 noundef 0, i32 noundef %21, i16 noundef signext %5, i16 noundef signext %19, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 5.000000e+00, ptr noundef nonnull @.str.3) #14
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %24 = sub i16 %20, %23
  %25 = sext i16 %24 to i32
  %26 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.181, i32 noundef 0, i32 noundef %25, i16 noundef signext %5, i16 noundef signext %23, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 6.000000e+00, ptr noundef nonnull @.str.3) #14
  %27 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %28 = sub i16 %24, %27
  %29 = sext i16 %28 to i32
  %30 = tail call ptr @uiDefIconTextBut(ptr noundef %6, i32 noundef 10240, i32 noundef 1, i32 noundef 77, ptr noundef nonnull @.str.178, i32 noundef 0, i32 noundef %29, i16 noundef signext %5, i16 noundef signext %27, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.3) #14
  tail call void @uiBlockSetDirection(ptr noundef %6, i8 noundef zeroext 8) #14
  tail call void @uiTextBoundsBlock(ptr noundef %6, i32 noundef 50) #14
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @curvemap_clipping_func(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %5 = sext i16 %4 to i32
  %6 = shl nsw i32 %5, 3
  %7 = sitofp i32 %6 to float
  %8 = tail call ptr @uiBeginBlock(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__func__.curvemap_clipping_func, i16 noundef signext 0) #14
  %9 = fadd float %7, 8.000000e+00
  %10 = fptosi float %9 to i16
  %11 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %12 = mul i16 %11, 6
  %13 = tail call ptr @uiDefBut(ptr noundef %8, i32 noundef 5120, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef -4, i32 noundef 16, i16 noundef signext %10, i16 noundef signext %12, ptr noundef null, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  %14 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 5
  %17 = trunc i32 %6 to i16
  %18 = tail call ptr @uiDefButBitI(ptr noundef %8, i32 noundef 1536, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.182, i32 noundef 0, i32 noundef %16, i16 noundef signext %17, i16 noundef signext %14, ptr noundef %2, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+01, float noundef 0.000000e+00, ptr noundef nonnull @.str.3) #14
  tail call void @uiButSetFunc(ptr noundef %18, ptr noundef nonnull @curvemap_buttons_setclip, ptr noundef %2, ptr noundef null) #14
  tail call void @uiBlockBeginAlign(ptr noundef %8) #14
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %20 = sext i16 %19 to i32
  %21 = shl nsw i32 %20, 2
  %22 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5
  %23 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5, i32 1
  %24 = load float, ptr %23, align 4, !tbaa !275
  %25 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.183, i32 noundef 0, i32 noundef %21, i16 noundef signext %17, i16 noundef signext %19, ptr noundef nonnull %22, float noundef -1.000000e+02, float noundef %24, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #14
  %26 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %27 = sext i16 %26 to i32
  %28 = mul nsw i32 %27, 3
  %29 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5, i32 2
  %30 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !274
  %32 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.184, i32 noundef 0, i32 noundef %28, i16 noundef signext %17, i16 noundef signext %26, ptr noundef nonnull %29, float noundef -1.000000e+02, float noundef %31, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #14
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %34 = sext i16 %33 to i32
  %35 = shl nsw i32 %34, 1
  %36 = load float, ptr %22, align 8, !tbaa !276
  %37 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.185, i32 noundef 0, i32 noundef %35, i16 noundef signext %17, i16 noundef signext %33, ptr noundef nonnull %23, float noundef %36, float noundef 1.000000e+02, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #14
  %38 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !61
  %39 = sext i16 %38 to i32
  %40 = load float, ptr %29, align 8, !tbaa !273
  %41 = tail call ptr @uiDefButF(ptr noundef %8, i32 noundef 2560, i32 noundef 0, ptr noundef nonnull @.str.186, i32 noundef 0, i32 noundef %39, i16 noundef signext %17, i16 noundef signext %38, ptr noundef nonnull %30, float noundef %40, float noundef 1.000000e+02, float noundef 1.000000e+01, float noundef 2.000000e+00, ptr noundef nonnull @.str.3) #14
  tail call void @uiBlockSetDirection(ptr noundef %8, i8 noundef zeroext 8) #14
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal void @curvemap_buttons_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 6
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !135
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7
  tail call void @curvemap_remove(ptr noundef nonnull %8, i16 noundef signext 1) #14
  tail call void @curvemapping_changed(ptr noundef %2, i8 noundef zeroext 0) #14
  %9 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %10) #14
  ret void
}

declare void @uiBlockSetNFunc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @curvemap_buttons_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  tail call void @curvemapping_changed(ptr noundef %2, i8 noundef zeroext 1) #14
  %4 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !115
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %5) #14
  ret void
}

declare ptr @uiDefButF(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @curvemap_buttons_reset(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !277
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 6
  %6 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 5
  br label %7

7:                                                ; preds = %3, %7
  %8 = phi i64 [ 0, %3 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.CurveMap, ptr %5, i64 %8
  %10 = load i32, ptr %4, align 8, !tbaa !277
  tail call void @curvemap_reset(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef %10, i32 noundef 1) #14
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %7, !llvm.loop !278

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 7
  %15 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 7, i64 2
  store float 0.000000e+00, ptr %15, align 8, !tbaa !145
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 7, i64 1
  store float 0.000000e+00, ptr %16, align 4, !tbaa !145
  store float 0.000000e+00, ptr %14, align 8, !tbaa !145
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 8
  %18 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 8, i64 2
  store float 1.000000e+00, ptr %18, align 4, !tbaa !145
  %19 = getelementptr inbounds %struct.CurveMapping, ptr %2, i64 0, i32 8, i64 1
  store float 1.000000e+00, ptr %19, align 4, !tbaa !145
  store float 1.000000e+00, ptr %17, align 4, !tbaa !145
  tail call void @curvemapping_set_black_white(ptr noundef %2, ptr noundef null, ptr noundef null) #14
  tail call void @curvemapping_changed(ptr noundef %2, i8 noundef zeroext 0) #14
  %20 = getelementptr inbounds %struct.RNAUpdateCb, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  tail call void @RNA_property_update(ptr noundef %0, ptr noundef %1, ptr noundef %21) #14
  ret void
}

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #3

declare void @uiBlockSetButmFunc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @curvemap_tools_dofunc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !135
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
  %12 = load i32, ptr %11, align 8, !tbaa !277
  %13 = icmp ne i32 %2, 0
  %14 = zext i1 %13 to i32
  tail call void @curvemap_reset(ptr noundef nonnull %8, ptr noundef nonnull %10, i32 noundef %12, i32 noundef %14) #14
  tail call void @curvemapping_changed(ptr noundef %1, i8 noundef zeroext 0) #14
  br label %28

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !144
  br label %28

18:                                               ; preds = %3
  tail call void @curvemap_sethandle(ptr noundef nonnull %8, i32 noundef 1) #14
  tail call void @curvemapping_changed(ptr noundef %1, i8 noundef zeroext 0) #14
  br label %28

19:                                               ; preds = %3
  tail call void @curvemap_sethandle(ptr noundef nonnull %8, i32 noundef 0) #14
  tail call void @curvemapping_changed(ptr noundef %1, i8 noundef zeroext 0) #14
  br label %28

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !279
  %23 = and i16 %22, -2
  store i16 %23, ptr %21, align 2, !tbaa !279
  tail call void @curvemapping_changed(ptr noundef %1, i8 noundef zeroext 0) #14
  br label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.CurveMap, ptr %4, i64 %7, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !279
  %27 = or i16 %26, 1
  store i16 %27, ptr %25, align 2, !tbaa !279
  tail call void @curvemapping_changed(ptr noundef %1, i8 noundef zeroext 0) #14
  br label %28

28:                                               ; preds = %3, %24, %20, %19, %18, %15, %9
  tail call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.179) #14
  %29 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @ED_region_tag_redraw(ptr noundef %29) #14
  ret void
}

declare void @uiTextBoundsBlock(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @curvemap_sethandle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uiDefButBitI(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @curvemap_buttons_setclip(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  tail call void @curvemapping_changed(ptr noundef %1, i8 noundef zeroext 0) #14
  ret void
}

declare void @curvemap_remove(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare void @curvemapping_set_black_white(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare void @RNA_property_boolean_set_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RNA_struct_name_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @RNA_struct_name_get_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal i32 @cmpstringp(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @BLI_strcasecmp(ptr noundef %0, ptr noundef %1) #14
  ret i32 %3
}

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

declare void @WM_operatortype_iter(ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_poll(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @WM_key_event_operator_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_name_call_ptr(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare void @WM_jobs_stop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @uiLayoutColumnFlow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @RNA_struct_iterator_property(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @RNA_property_ui_name(ptr noundef) local_unnamed_addr #3

declare void @WM_keyconfig_update_tag(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @uiBlockLayout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !43, i64 16}
!42 = !{!"uiBut", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !44, i64 32, !44, i64 34, !44, i64 36, !44, i64 38, !44, i64 40, !44, i64 42, !44, i64 44, !44, i64 46, !44, i64 48, !35, i64 56, !36, i64 64, !36, i64 192, !45, i64 592, !35, i64 608, !46, i64 616, !46, i64 620, !46, i64 624, !46, i64 628, !46, i64 632, !46, i64 636, !36, i64 640, !35, i64 648, !35, i64 656, !35, i64 664, !35, i64 672, !35, i64 680, !35, i64 688, !35, i64 696, !35, i64 704, !35, i64 712, !35, i64 720, !35, i64 728, !35, i64 736, !35, i64 744, !35, i64 752, !36, i64 760, !35, i64 768, !35, i64 776, !43, i64 784, !36, i64 788, !36, i64 789, !36, i64 790, !36, i64 791, !36, i64 792, !44, i64 794, !44, i64 796, !35, i64 800, !35, i64 808, !47, i64 816, !35, i64 840, !43, i64 848, !47, i64 856, !35, i64 880, !35, i64 888, !35, i64 896, !44, i64 904, !36, i64 906, !36, i64 907, !35, i64 912, !35, i64 920, !46, i64 928, !35, i64 936, !35, i64 944, !35, i64 952, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992}
!43 = !{!"int", !36, i64 0}
!44 = !{!"short", !36, i64 0}
!45 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!46 = !{!"float", !36, i64 0}
!47 = !{!"PointerRNA", !48, i64 0, !35, i64 8, !35, i64 16}
!48 = !{!"", !35, i64 0}
!49 = !{!42, !35, i64 680}
!50 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34}
!51 = !{!52, !35, i64 24}
!52 = !{!"TemplateID", !47, i64 0, !35, i64 24, !35, i64 32, !43, i64 40, !43, i64 44, !36, i64 48}
!53 = distinct !{!53, !39, !40}
!54 = !{!47, !35, i64 8}
!55 = !{!52, !43, i64 40}
!56 = !{!52, !43, i64 44}
!57 = !{!52, !35, i64 32}
!58 = !{!47, !35, i64 16}
!59 = !{!52, !35, i64 0}
!60 = !{!52, !36, i64 48}
!61 = !{!62, !44, i64 8948}
!62 = !{!"UserDef", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !43, i64 8468, !44, i64 8472, !44, i64 8474, !44, i64 8476, !44, i64 8478, !44, i64 8480, !44, i64 8482, !43, i64 8484, !43, i64 8488, !43, i64 8492, !44, i64 8496, !44, i64 8498, !43, i64 8500, !43, i64 8504, !43, i64 8508, !43, i64 8512, !43, i64 8516, !43, i64 8520, !43, i64 8524, !44, i64 8528, !44, i64 8530, !44, i64 8532, !44, i64 8534, !63, i64 8536, !63, i64 8552, !63, i64 8568, !63, i64 8584, !63, i64 8600, !63, i64 8616, !63, i64 8632, !36, i64 8648, !44, i64 8712, !44, i64 8714, !44, i64 8716, !44, i64 8718, !44, i64 8720, !44, i64 8722, !44, i64 8724, !44, i64 8726, !36, i64 8728, !44, i64 8896, !44, i64 8898, !44, i64 8900, !44, i64 8902, !44, i64 8904, !44, i64 8906, !44, i64 8908, !44, i64 8910, !43, i64 8912, !43, i64 8916, !44, i64 8920, !44, i64 8922, !44, i64 8924, !44, i64 8926, !44, i64 8928, !44, i64 8930, !44, i64 8932, !44, i64 8934, !44, i64 8936, !44, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !44, i64 8944, !44, i64 8946, !44, i64 8948, !44, i64 8950, !44, i64 8952, !44, i64 8954, !46, i64 8956, !46, i64 8960, !43, i64 8964, !44, i64 8968, !44, i64 8970, !46, i64 8972, !44, i64 8976, !44, i64 8978, !44, i64 8980, !44, i64 8982, !64, i64 8984, !36, i64 9760, !36, i64 9772, !44, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !43, i64 10896, !43, i64 10900, !46, i64 10904, !46, i64 10908, !43, i64 10912, !44, i64 10916, !44, i64 10918, !44, i64 10920, !44, i64 10922, !44, i64 10924, !44, i64 10926, !65, i64 10928}
!63 = !{!"ListBase", !35, i64 0, !35, i64 8}
!64 = !{!"ColorBand", !44, i64 0, !44, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!65 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !44, i64 24, !36, i64 26}
!66 = !{!42, !43, i64 784}
!67 = !{!68, !35, i64 24}
!68 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !44, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!69 = !{!68, !43, i64 100}
!70 = !{!36, !36, i64 0}
!71 = !{!68, !44, i64 98}
!72 = !{!44, !44, i64 0}
!73 = !{!74, !43, i64 432}
!74 = !{!"Object", !68, i64 0, !35, i64 120, !35, i64 128, !44, i64 136, !44, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !75, i64 312, !35, i64 360, !63, i64 368, !63, i64 384, !63, i64 400, !63, i64 416, !43, i64 432, !43, i64 436, !35, i64 440, !35, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !46, i64 616, !46, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !44, i64 948, !44, i64 950, !44, i64 952, !44, i64 954, !44, i64 956, !44, i64 958, !44, i64 960, !44, i64 962, !44, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !46, i64 988, !46, i64 992, !46, i64 996, !46, i64 1000, !46, i64 1004, !46, i64 1008, !46, i64 1012, !46, i64 1016, !46, i64 1020, !46, i64 1024, !46, i64 1028, !46, i64 1032, !44, i64 1036, !44, i64 1038, !44, i64 1040, !36, i64 1042, !36, i64 1043, !44, i64 1044, !36, i64 1046, !36, i64 1047, !46, i64 1048, !46, i64 1052, !63, i64 1056, !63, i64 1072, !63, i64 1088, !63, i64 1104, !46, i64 1120, !44, i64 1124, !44, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !44, i64 1162, !36, i64 1164, !63, i64 1176, !63, i64 1192, !63, i64 1208, !63, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !44, i64 1266, !46, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !76, i64 1304, !76, i64 1312, !43, i64 1320, !43, i64 1324, !63, i64 1328, !63, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !63, i64 1400, !35, i64 1416}
!75 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !44, i64 24, !44, i64 26, !44, i64 28, !44, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!76 = !{!"long", !36, i64 0}
!77 = !{!42, !35, i64 896}
!78 = !{!47, !35, i64 0}
!79 = !{!74, !35, i64 24}
!80 = !{!43, !43, i64 0}
!81 = !{!82, !43, i64 16}
!82 = !{!"ModifierData", !35, i64 0, !35, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !35, i64 96, !35, i64 104}
!83 = !{!82, !43, i64 20}
!84 = !{!85, !35, i64 160}
!85 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !43, i64 64, !43, i64 68, !43, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208}
!86 = !{!74, !35, i64 1240}
!87 = !{!88, !44, i64 4}
!88 = !{!"PartDeflect", !43, i64 0, !44, i64 4, !44, i64 6, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !46, i64 64, !46, i64 68, !46, i64 72, !46, i64 76, !46, i64 80, !46, i64 84, !46, i64 88, !46, i64 92, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124, !35, i64 128, !35, i64 136, !46, i64 144, !43, i64 148, !35, i64 152}
!89 = !{!85, !43, i64 72}
!90 = !{!74, !44, i64 136}
!91 = !{!85, !43, i64 68}
!92 = !{!93, !35, i64 112}
!93 = !{!"ParticleSystemModifierData", !82, i64 0, !35, i64 112, !35, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !44, i64 140, !44, i64 142}
!94 = !{!95, !35, i64 16}
!95 = !{!"ParticleSystem", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !63, i64 72, !63, i64 88, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !63, i64 152, !36, i64 168, !36, i64 232, !46, i64 296, !46, i64 300, !46, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !44, i64 340, !44, i64 342, !44, i64 344, !44, i64 346, !36, i64 348, !36, i64 540, !44, i64 564, !44, i64 566, !35, i64 568, !35, i64 576, !63, i64 584, !35, i64 600, !35, i64 608, !43, i64 616, !43, i64 620, !35, i64 624, !35, i64 632, !35, i64 640, !46, i64 648, !46, i64 652}
!96 = !{!97, !44, i64 160}
!97 = !{!"ParticleSettings", !68, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !43, i64 152, !43, i64 156, !44, i64 160, !44, i64 162, !44, i64 164, !44, i64 166, !44, i64 168, !44, i64 170, !44, i64 172, !44, i64 174, !43, i64 176, !43, i64 180, !44, i64 184, !44, i64 186, !44, i64 188, !44, i64 190, !44, i64 192, !44, i64 194, !44, i64 196, !44, i64 198, !44, i64 200, !44, i64 202, !44, i64 204, !44, i64 206, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !46, i64 232, !46, i64 236, !36, i64 240, !36, i64 248, !46, i64 256, !46, i64 260, !46, i64 264, !44, i64 268, !44, i64 270, !46, i64 272, !46, i64 276, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !46, i64 308, !46, i64 312, !46, i64 316, !36, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !44, i64 340, !36, i64 342, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !46, i64 368, !46, i64 372, !36, i64 376, !46, i64 388, !46, i64 392, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !46, i64 412, !36, i64 416, !46, i64 428, !46, i64 432, !46, i64 436, !46, i64 440, !43, i64 444, !43, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !46, i64 464, !46, i64 468, !46, i64 472, !46, i64 476, !46, i64 480, !46, i64 484, !46, i64 488, !46, i64 492, !46, i64 496, !46, i64 500, !46, i64 504, !46, i64 508, !46, i64 512, !46, i64 516, !46, i64 520, !46, i64 524, !46, i64 528, !46, i64 532, !46, i64 536, !46, i64 540, !46, i64 544, !46, i64 548, !36, i64 552, !46, i64 560, !46, i64 564, !43, i64 568, !43, i64 572, !36, i64 576, !35, i64 720, !63, i64 728, !35, i64 744, !35, i64 752, !35, i64 760, !35, i64 768, !35, i64 776, !35, i64 784, !44, i64 792, !36, i64 794}
!98 = !{!97, !44, i64 192}
!99 = !{!95, !35, i64 56}
!100 = !{!82, !35, i64 104}
!101 = !{!82, !35, i64 0}
!102 = distinct !{!102, !39, !40}
!103 = !{!104, !44, i64 24}
!104 = !{!"bConstraint", !35, i64 0, !35, i64 8, !35, i64 16, !44, i64 24, !44, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !44, i64 94, !46, i64 96, !46, i64 100, !35, i64 104, !46, i64 112, !46, i64 116}
!105 = !{!104, !35, i64 16}
!106 = !{!107, !44, i64 10}
!107 = !{!"bKinematicConstraint", !35, i64 0, !44, i64 8, !44, i64 10, !44, i64 12, !44, i64 14, !36, i64 16, !35, i64 80, !36, i64 88, !46, i64 152, !46, i64 156, !46, i64 160, !36, i64 164, !44, i64 176, !44, i64 178, !46, i64 180}
!108 = !{!104, !44, i64 26}
!109 = !{!104, !35, i64 8}
!110 = !{!104, !35, i64 0}
!111 = !{!112, !44, i64 80}
!112 = !{!"uiPreview", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 80, !36, i64 82}
!113 = !{i64 0, i64 8, !34, i64 8, i64 8, !34}
!114 = !{i64 0, i64 8, !34}
!115 = !{!116, !35, i64 24}
!116 = !{!"RNAUpdateCb", !47, i64 0, !35, i64 24}
!117 = !{!116, !35, i64 0}
!118 = !{!64, !36, i64 6}
!119 = !{!64, !44, i64 0}
!120 = !{!64, !44, i64 2}
!121 = !{!122, !35, i64 24}
!122 = !{!"uiBlock", !35, i64 0, !35, i64 8, !63, i64 16, !35, i64 32, !35, i64 40, !63, i64 48, !63, i64 64, !35, i64 80, !63, i64 88, !36, i64 104, !36, i64 232, !45, i64 296, !46, i64 312, !43, i64 316, !35, i64 320, !35, i64 328, !35, i64 336, !35, i64 344, !35, i64 352, !35, i64 360, !35, i64 368, !35, i64 376, !35, i64 384, !35, i64 392, !35, i64 400, !35, i64 408, !35, i64 416, !43, i64 424, !44, i64 428, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !123, i64 440, !35, i64 448, !36, i64 456, !36, i64 457, !36, i64 458, !36, i64 459, !43, i64 460, !43, i64 464, !43, i64 468, !43, i64 472, !43, i64 476, !45, i64 480, !63, i64 496, !35, i64 512, !35, i64 520, !35, i64 528, !35, i64 536, !36, i64 544, !36, i64 556, !36, i64 557, !124, i64 624}
!123 = !{!"double", !36, i64 0}
!124 = !{!"PieMenuData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !123, i64 32, !43, i64 40, !43, i64 44, !46, i64 48}
!125 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34}
!126 = !{!127, !35, i64 8}
!127 = !{!"EnumPropertyItem", !43, i64 0, !35, i64 8, !43, i64 16, !35, i64 24, !35, i64 32}
!128 = !{!127, !43, i64 16}
!129 = distinct !{!129, !39, !40}
!130 = !{!131, !43, i64 5140}
!131 = !{!"Histogram", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 3080, !36, i64 4104, !46, i64 5128, !46, i64 5132, !44, i64 5136, !44, i64 5138, !43, i64 5140, !36, i64 5144}
!132 = !{!133, !43, i64 28}
!133 = !{!"Scopes", !43, i64 0, !43, i64 4, !43, i64 8, !46, i64 12, !43, i64 16, !46, i64 20, !46, i64 24, !43, i64 28, !46, i64 32, !43, i64 36, !36, i64 40, !131, i64 64, !35, i64 5224, !35, i64 5232, !35, i64 5240, !35, i64 5248, !43, i64 5256, !43, i64 5260}
!134 = !{!133, !43, i64 36}
!135 = !{!136, !43, i64 4}
!136 = !{!"CurveMapping", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !45, i64 16, !45, i64 32, !36, i64 48, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372}
!137 = !{!138, !35, i64 32}
!138 = !{!"CurveMap", !44, i64 0, !44, i64 2, !46, i64 4, !46, i64 8, !46, i64 12, !36, i64 16, !36, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !36, i64 64}
!139 = !{!136, !43, i64 0}
!140 = !{!138, !44, i64 0}
!141 = distinct !{!141, !39, !40}
!142 = !{!143, !44, i64 8}
!143 = !{!"CurveMapPoint", !46, i64 0, !46, i64 4, !44, i64 8, !44, i64 10}
!144 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145, i64 12, i64 4, !145}
!145 = !{!46, !46, i64 0}
!146 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145}
!147 = !{i64 0, i64 4, !145, i64 4, i64 4, !145}
!148 = !{i64 0, i64 4, !145}
!149 = !{!62, !44, i64 8938}
!150 = !{!42, !46, i64 636}
!151 = !{!152, !35, i64 120}
!152 = !{!"Palette", !68, i64 0, !63, i64 120, !63, i64 136, !43, i64 152, !43, i64 156}
!153 = !{!154, !35, i64 0}
!154 = !{!"PaletteColor", !35, i64 0, !35, i64 8, !36, i64 16, !46, i64 28}
!155 = distinct !{!155, !39, !40}
!156 = !{!42, !43, i64 24}
!157 = distinct !{!157, !39, !40}
!158 = distinct !{!158, !39, !40}
!159 = distinct !{!159, !39, !40}
!160 = !{!161, !35, i64 136}
!161 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !44, i64 104, !44, i64 106, !44, i64 108, !44, i64 110, !44, i64 112, !44, i64 114, !44, i64 116, !44, i64 118, !44, i64 120, !44, i64 122, !44, i64 124, !44, i64 126, !43, i64 128, !44, i64 132, !44, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !43, i64 160, !43, i64 164, !35, i64 168, !63, i64 176, !63, i64 192, !63, i64 208, !63, i64 224, !63, i64 240}
!162 = !{!163, !44, i64 72}
!163 = !{!"wmEvent", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 18, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !44, i64 44, !44, i64 46, !43, i64 48, !43, i64 52, !123, i64 56, !43, i64 64, !43, i64 68, !44, i64 72, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !35, i64 88, !35, i64 96, !44, i64 104, !44, i64 106, !43, i64 108, !35, i64 112}
!164 = !{!42, !35, i64 840}
!165 = distinct !{!165, !39, !40}
!166 = distinct !{!166, !39, !40}
!167 = distinct !{!167, !39, !40}
!168 = distinct !{!168, !39, !40}
!169 = !{!170, !35, i64 80}
!170 = !{!"uiListType", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !171, i64 104}
!171 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!172 = !{!170, !35, i64 88}
!173 = !{!170, !35, i64 96}
!174 = !{!175, !43, i64 100}
!175 = !{!"uiList", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !43, i64 88, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112, !43, i64 176, !43, i64 180, !35, i64 184, !35, i64 192}
!176 = !{!175, !35, i64 192}
!177 = !{!175, !35, i64 16}
!178 = !{!175, !43, i64 88}
!179 = !{!180, !35, i64 32}
!180 = !{!"uiListDyn", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !35, i64 32, !35, i64 40}
!181 = !{!180, !35, i64 40}
!182 = !{!180, !43, i64 16}
!183 = !{!180, !43, i64 12}
!184 = !{!175, !43, i64 108}
!185 = !{!175, !43, i64 92}
!186 = !{!175, !43, i64 176}
!187 = !{!175, !43, i64 180}
!188 = !{!189, !43, i64 128}
!189 = !{!"CollectionPropertyIterator", !47, i64 0, !47, i64 24, !35, i64 48, !36, i64 56, !43, i64 96, !43, i64 100, !47, i64 104, !43, i64 128}
!190 = !{!191, !43, i64 24}
!191 = !{!"", !47, i64 0, !43, i64 24, !43, i64 28}
!192 = !{!191, !43, i64 28}
!193 = distinct !{!193, !39, !40}
!194 = !{!195, !43, i64 4}
!195 = !{!"", !43, i64 0, !43, i64 4, !43, i64 8}
!196 = !{!195, !43, i64 8}
!197 = distinct !{!197, !39, !40}
!198 = !{!195, !43, i64 0}
!199 = distinct !{!199, !39, !40}
!200 = !{!180, !43, i64 4}
!201 = !{!180, !43, i64 0}
!202 = distinct !{!202, !39, !40}
!203 = distinct !{!203, !39, !40}
!204 = !{!180, !43, i64 24}
!205 = !{!180, !43, i64 20}
!206 = !{!207, !43, i64 64}
!207 = !{!"", !36, i64 0, !43, i64 64}
!208 = distinct !{!208, !39, !40}
!209 = distinct !{!209, !39, !40}
!210 = !{!180, !43, i64 8}
!211 = !{!175, !43, i64 104}
!212 = !{!175, !43, i64 96}
!213 = !{!214, !35, i64 8}
!214 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !43, i64 16}
!215 = !{!216, !35, i64 16}
!216 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!217 = !{!218, !44, i64 184}
!218 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !63, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !171, i64 152, !44, i64 184}
!219 = !{!220, !43, i64 2100}
!220 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !63, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !44, i64 2084, !44, i64 2086, !44, i64 2088, !36, i64 2090, !44, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!221 = !{!218, !35, i64 0}
!222 = !{!218, !35, i64 8}
!223 = distinct !{!223, !39, !40}
!224 = !{!225, !36, i64 72}
!225 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !226, i64 56, !36, i64 72, !36, i64 73, !44, i64 74, !44, i64 76, !44, i64 78, !44, i64 80, !44, i64 82, !44, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !63, i64 96, !63, i64 112, !63, i64 128, !63, i64 144}
!226 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!227 = distinct !{!227, !39, !40}
!228 = !{!229, !35, i64 232}
!229 = !{!"bScreen", !68, i64 0, !63, i64 120, !63, i64 136, !63, i64 152, !63, i64 168, !35, i64 184, !35, i64 192, !43, i64 200, !43, i64 204, !44, i64 208, !44, i64 210, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230, !35, i64 232, !35, i64 240}
!230 = !{!220, !36, i64 2080}
!231 = !{!232, !35, i64 32}
!232 = !{!"ReportList", !63, i64 0, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !35, i64 32}
!233 = !{!234, !35, i64 40}
!234 = !{!"wmTimer", !35, i64 0, !35, i64 8, !35, i64 16, !123, i64 24, !43, i64 32, !35, i64 40, !123, i64 48, !123, i64 56, !123, i64 64, !123, i64 72, !123, i64 80, !43, i64 88}
!235 = !{!236, !46, i64 16}
!236 = !{!"ReportTimerInfo", !36, i64 0, !46, i64 12, !46, i64 16}
!237 = !{!238, !44, i64 176}
!238 = !{!"uiStyle", !35, i64 0, !35, i64 8, !36, i64 16, !239, i64 80, !239, i64 112, !239, i64 144, !239, i64 176, !46, i64 208, !44, i64 212, !44, i64 214, !44, i64 216, !44, i64 218, !44, i64 220, !44, i64 222, !44, i64 224, !44, i64 226, !44, i64 228, !44, i64 230}
!239 = !{!"uiFontStyle", !44, i64 0, !44, i64 2, !44, i64 4, !36, i64 6, !44, i64 12, !44, i64 14, !44, i64 16, !44, i64 18, !44, i64 20, !44, i64 22, !46, i64 24, !46, i64 28}
!240 = !{!241, !35, i64 32}
!241 = !{!"Report", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 18, !43, i64 20, !35, i64 24, !35, i64 32}
!242 = !{!241, !43, i64 20}
!243 = !{!236, !46, i64 12}
!244 = !{!241, !44, i64 16}
!245 = !{!232, !35, i64 0}
!246 = !{!232, !35, i64 8}
!247 = !{!42, !35, i64 0}
!248 = distinct !{!248, !39, !40}
!249 = !{!189, !35, i64 120}
!250 = distinct !{!250, !39, !40}
!251 = !{!252, !43, i64 0}
!252 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !46, i64 136, !46, i64 140, !35, i64 144, !35, i64 152}
!253 = !{!42, !43, i64 848}
!254 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 4, !80, i64 44, i64 4, !80, i64 48, i64 1, !70}
!255 = !{!52, !35, i64 8}
!256 = !{!62, !43, i64 8484}
!257 = distinct !{!257, !39, !40}
!258 = !{!74, !44, i64 138}
!259 = !{!260, !46, i64 16}
!260 = !{!"CBData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !43, i64 20}
!261 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145, i64 12, i64 4, !145, i64 16, i64 4, !145, i64 20, i64 4, !80}
!262 = distinct !{!262, !39, !40}
!263 = distinct !{!263, !39, !40}
!264 = !{!42, !35, i64 832}
!265 = !{!45, !46, i64 4}
!266 = !{!45, !46, i64 0}
!267 = !{!136, !46, i64 16}
!268 = !{!136, !46, i64 20}
!269 = !{!45, !46, i64 12}
!270 = !{!45, !46, i64 8}
!271 = !{!136, !46, i64 24}
!272 = !{!136, !46, i64 28}
!273 = !{!136, !46, i64 40}
!274 = !{!136, !46, i64 44}
!275 = !{!136, !46, i64 36}
!276 = !{!136, !46, i64 32}
!277 = !{!136, !43, i64 8}
!278 = distinct !{!278, !39, !40}
!279 = !{!138, !44, i64 2}
