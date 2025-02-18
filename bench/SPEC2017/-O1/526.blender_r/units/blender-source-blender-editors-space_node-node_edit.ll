; ModuleID = 'blender/source/blender/editors/space_node/node_edit.c'
source_filename = "blender/source/blender/editors/space_node/node_edit.c"
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
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CompoJob = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i32 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.RenderSlot = type { [64 x i8] }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.bNodeTreePath = type { ptr, ptr, ptr, %struct.bNodeInstanceKey, i32, [2 x float], [64 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.NodeSizeWidget = type { float, float, float, float, float, float, float, float, float, i32 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.NodeImageMultiFile = type { [1024 x i8], %struct.ImageFormatData, i32, i32, i32, i32 }
%struct.RenderEngine = type { ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.ListBase, [512 x i8], i32, i32, ptr, i32, i32, %struct.rctf, %struct.rcti, [4 x [4 x float]], i32, i32 }
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.NodeShaderScript = type { i32, i32, [1024 x i8], [64 x i8], ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [14 x i8] c"Render Result\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Compositing\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"compo job\00", align 1
@ntreeType_Composite = external local_unnamed_addr global ptr, align 8
@ntreeType_Shader = external local_unnamed_addr global ptr, align 8
@ntreeType_Texture = external local_unnamed_addr global ptr, align 8
@__const.ED_node_shader_default.color = private unnamed_addr constant [4 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"Shader Nodetree\00", align 1
@RNA_NodeSocket = external global %struct.StructRNA, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"default_value\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Compositing Nodetree\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Texture Nodetree\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Viewer Node\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Resize Node\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"NODE_OT_resize\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Resize a node\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.14 = private unnamed_addr constant [16 x i8] c"Duplicate Nodes\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Duplicate selected nodes\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"NODE_OT_duplicate\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"keep_inputs\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Keep Inputs\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Keep the input links to duplicated nodes\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Read Render Layers\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"NODE_OT_read_renderlayers\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Read all render layers of all used scenes\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Read Full Sample Layers\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"NODE_OT_read_fullsamplelayers\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"Read all render layers of current scene, in full sample\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"RENDER_OT_render\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"scene\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Render Changed Layer\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"NODE_OT_render_changed\00", align 1
@.str.31 = private unnamed_addr constant [63 x i8] c"Render current scene, when input node's layer has been changed\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Hide\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Toggle hiding of selected nodes\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"NODE_OT_hide_toggle\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"Toggle Node Preview\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Toggle preview display for selected nodes\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"NODE_OT_preview_toggle\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Toggle Node Options\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"Toggle option buttons display for selected nodes\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"NODE_OT_options_toggle\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"Toggle Hidden Node Sockets\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Toggle unused node socket display\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"NODE_OT_hide_socket_toggle\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"Toggle Node Mute\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"Toggle muting of the nodes\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"NODE_OT_mute_toggle\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"Delete selected nodes\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"NODE_OT_delete\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Delete with Reconnect\00", align 1
@.str.51 = private unnamed_addr constant [60 x i8] c"Delete nodes; will reconnect nodes as if deletion was muted\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"NODE_OT_delete_reconnect\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Add File Node Socket\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"Add a new input to a file output node\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"NODE_OT_output_file_add_socket\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"file_path\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"File Path\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"Sub-path of the output file\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"Remove File Node Socket\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"Remove active input from a file output node\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"NODE_OT_output_file_remove_active_socket\00", align 1
@NODE_OT_output_file_move_active_socket.direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.65 }, %struct.EnumPropertyItem { i32 2, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str.65 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.63 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"Move File Node Socket\00", align 1
@.str.69 = private unnamed_addr constant [64 x i8] c"Move the active input of a file output node up or down the list\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"NODE_OT_output_file_move_active_socket\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"Copy Color\00", align 1
@.str.74 = private unnamed_addr constant [33 x i8] c"Copy color to all selected nodes\00", align 1
@.str.75 = private unnamed_addr constant [24 x i8] c"NODE_OT_node_copy_color\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"Copy to Clipboard\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"Copies selected nodes to the clipboard\00", align 1
@.str.78 = private unnamed_addr constant [23 x i8] c"NODE_OT_clipboard_copy\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"Paste from Clipboard\00", align 1
@.str.80 = private unnamed_addr constant [56 x i8] c"Pastes nodes from the clipboard to the active node tree\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"NODE_OT_clipboard_paste\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"Add Node Tree Interface Socket\00", align 1
@.str.83 = private unnamed_addr constant [55 x i8] c"Add an input or output socket to the current node tree\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"NODE_OT_tree_socket_add\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"in_out\00", align 1
@node_socket_in_out_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.86 = private unnamed_addr constant [12 x i8] c"Socket Type\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"Remove Node Tree Interface Socket\00", align 1
@.str.88 = private unnamed_addr constant [58 x i8] c"Remove an input or output socket to the current node tree\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"NODE_OT_tree_socket_remove\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"Move Node Tree Socket\00", align 1
@.str.91 = private unnamed_addr constant [66 x i8] c"Move a socket up or down in the current node tree's sockets stack\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"NODE_OT_tree_socket_move\00", align 1
@move_direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.65 }, %struct.EnumPropertyItem { i32 2, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str.65 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.93 = private unnamed_addr constant [19 x i8] c"Script Node Update\00", align 1
@.str.94 = private unnamed_addr constant [71 x i8] c"Update shader script node with new sockets and options from the script\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"NODE_OT_shader_script_update\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"Viewer Border\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"Set the boundaries for viewer operations\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"NODE_OT_viewer_border\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"Clear Viewer Border\00", align 1
@.str.100 = private unnamed_addr constant [43 x i8] c"Clear the boundaries for viewer operations\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"NODE_OT_clear_viewer_border\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.102 = private unnamed_addr constant [20 x i8] c"size widget op data\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"bNodeLink\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"Clipboard is empty\00", align 1
@.str.106 = private unnamed_addr constant [41 x i8] c"Clipboard nodes are an incompatible type\00", align 1
@.str.107 = private unnamed_addr constant [64 x i8] c"Some nodes references could not be restored, will be left empty\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"Cannot add node %s into node tree %s\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"NodeSocketFloat\00", align 1
@RNA_ShaderNodeScript = external global %struct.StructRNA, align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"edit_text\00", align 1
@RNA_Text = external global %struct.StructRNA, align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"Text not used by any node, no update done\00", align 1
@str = private unnamed_addr constant [48 x i8] c"ED_node_shader_default called on wrong ID type.\00", align 1
@str.114 = private unnamed_addr constant [30 x i8] c"error in composite initialize\00", align 1
@str.115 = private unnamed_addr constant [28 x i8] c"error in texture initialize\00", align 1
@switch.table.ED_node_shader_default = private unnamed_addr constant [5 x float] [float 1.000000e+02, float 1.000000e+00, float 1.000000e+02, float 1.000000e+00, float 1.000000e+02], align 4

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_composite_job(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %65

7:                                                ; preds = %3
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !42
  %8 = tail call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str) #15
  tail call void @BKE_image_backup_render(ptr noundef %4, ptr noundef %8) #15
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %11 = tail call ptr @WM_jobs_get(ptr noundef %9, ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef 1) #15
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %13 = tail call ptr %12(i64 noundef 56, ptr noundef nonnull @.str.2) #15
  store ptr %4, ptr %13, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.CompoJob, ptr %13, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !46
  %15 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  %16 = getelementptr inbounds %struct.wmWindowManager, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %61, label %23

19:                                               ; preds = %57, %23
  %20 = phi i32 [ %25, %23 ], [ %58, %57 ]
  %21 = load ptr, ptr %24, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %61, label %23, !llvm.loop !47

23:                                               ; preds = %7, %19
  %24 = phi ptr [ %21, %19 ], [ %17, %7 ]
  %25 = phi i32 [ %20, %19 ], [ 0, %7 ]
  %26 = getelementptr inbounds %struct.wmWindow, ptr %24, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.bScreen, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %19, label %31

31:                                               ; preds = %23, %57
  %32 = phi ptr [ %59, %57 ], [ %29, %23 ]
  %33 = phi i32 [ %58, %57 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 8
  %35 = load i8, ptr %34, align 8, !tbaa !52
  switch i8 %35, label %57 [
    i8 6, label %36
    i8 16, label %49
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = getelementptr inbounds %struct.SpaceImage, ptr %38, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.Image, ptr %40, i64 0, i32 12
  %44 = load i16, ptr %43, align 2, !tbaa !63
  switch i16 %44, label %57 [
    i16 4, label %45
    i16 5, label %47
  ]

45:                                               ; preds = %42
  %46 = or i32 %33, 1
  br label %57

47:                                               ; preds = %42
  %48 = or i32 %33, 2
  br label %57

49:                                               ; preds = %31
  %50 = getelementptr inbounds %struct.ScrArea, ptr %32, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !55
  %52 = getelementptr inbounds %struct.SpaceNode, ptr %51, i64 0, i32 9
  %53 = load i16, ptr %52, align 8, !tbaa !67
  %54 = and i16 %53, 2
  %55 = zext nneg i16 %54 to i32
  %56 = or i32 %33, %55
  br label %57

57:                                               ; preds = %49, %47, %45, %42, %36, %31
  %58 = phi i32 [ %56, %49 ], [ %46, %45 ], [ %48, %47 ], [ %33, %36 ], [ %33, %42 ], [ %33, %31 ]
  %59 = load ptr, ptr %32, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %19, label %31, !llvm.loop !71

61:                                               ; preds = %19, %7
  %62 = phi i32 [ 0, %7 ], [ %20, %19 ]
  %63 = getelementptr inbounds %struct.CompoJob, ptr %13, i64 0, i32 7
  store i32 %62, ptr %63, align 4, !tbaa !72
  tail call void @WM_jobs_customdata_set(ptr noundef %11, ptr noundef nonnull %13, ptr noundef nonnull @compo_freejob) #15
  tail call void @WM_jobs_timer(ptr noundef %11, double noundef 1.000000e-01, i32 noundef 67960832, i32 noundef 67960832) #15
  tail call void @WM_jobs_callbacks(ptr noundef %11, ptr noundef nonnull @compo_startjob, ptr noundef nonnull @compo_initjob, ptr noundef nonnull @compo_updatejob, ptr noundef null) #15
  %64 = tail call ptr @CTX_wm_manager(ptr noundef %0) #15
  tail call void @WM_jobs_start(ptr noundef %64, ptr noundef %11) #15
  br label %65

65:                                               ; preds = %3, %61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BKE_image_backup_render(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @compo_freejob(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @ntreeLocalMerge(ptr noundef nonnull %3, ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %9(ptr noundef %0) #15
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @compo_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 16
  %7 = load i8, ptr %6, align 2, !tbaa !74
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 3
  store ptr %1, ptr %12, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 4
  store ptr %2, ptr %13, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 5
  store ptr %3, ptr %14, align 8, !tbaa !93
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 30
  store ptr @compo_breakjob, ptr %15, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 32
  store ptr %0, ptr %16, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 29
  store ptr @compo_statsdrawjob, ptr %17, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 34
  store ptr %0, ptr %18, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 28
  store ptr @compo_progressjob, ptr %19, align 8, !tbaa !100
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 33
  store ptr %0, ptr %20, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 31
  store ptr @compo_redrawjob, ptr %21, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 35
  store ptr %0, ptr %22, align 8, !tbaa !103
  %23 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22
  %24 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 44
  %25 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 45
  tail call void @ntreeCompositExecTree(ptr noundef %5, ptr noundef %11, ptr noundef nonnull %23, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %24, ptr noundef nonnull %25) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br label %26

26:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compo_initjob(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call ptr @ntreeLocalize(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !72
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @compo_tag_output_nodes(ptr noundef %4, i32 noundef %7)
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compo_updatejob(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 6
  %3 = load i16, ptr %2, align 8, !tbaa !104
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void @ntreeLocalSync(ptr noundef %7, ptr noundef %9) #15
  store i16 0, ptr %2, align 8, !tbaa !104
  br label %10

10:                                               ; preds = %5, %1
  tail call void @WM_main_add_notifier(i32 noundef 67960832, ptr noundef null) #15
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @composite_node_active(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_active(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.bNodeTreeType, ptr %7, i64 0, i32 1
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4, %1
  br label %12

12:                                               ; preds = %4, %11
  %13 = phi i32 [ 1, %4 ], [ 0, %11 ]
  ret i32 %13
}

declare i32 @ED_operator_node_active(ptr noundef) #2

declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_node_is_compositor(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %3, i64 0, i32 1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @composite_node_editable(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_editable(ptr noundef %0) #15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.bNodeTreeType, ptr %7, i64 0, i32 1
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4, %1
  br label %12

12:                                               ; preds = %4, %11
  %13 = phi i32 [ 1, %4 ], [ 0, %11 ]
  ret i32 %13
}

declare i32 @ED_operator_node_editable(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @snode_dag_update(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.NodeTreeIterStore, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !106
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %3, ptr noundef %6) #15
  %13 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %12, %24
  %16 = load ptr, ptr %4, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 8, !tbaa !105
  %20 = call zeroext i8 @ntreeHasTree(ptr noundef nonnull %16, ptr noundef %19) #15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !43
  call void @DAG_id_tag_update(ptr noundef %23, i16 noundef signext 0) #15
  br label %24

24:                                               ; preds = %18, %22, %15
  %25 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %15, label %27, !llvm.loop !107

27:                                               ; preds = %24, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  br label %28

28:                                               ; preds = %27, %2
  %29 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  call void @DAG_id_tag_update(ptr noundef %30, i16 noundef signext 0) #15
  ret void
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ntreeHasTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @snode_notify(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212673, ptr noundef null) #15
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 20
  %4 = load ptr, ptr @ntreeType_Shader, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.bNodeTreeType, ptr %4, i64 0, i32 1
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.bNodeTreeType, ptr %9, i64 0, i32 1
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @ntreeType_Texture, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.bNodeTreeType, ptr %14, i64 0, i32 1
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %15) #16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %8, %2
  %19 = phi i32 [ 100990976, %2 ], [ 67436544, %8 ], [ 117768192, %13 ]
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %19, ptr noundef %21) #15
  br label %22

22:                                               ; preds = %18, %13
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_node_is_shader(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr @ntreeType_Shader, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %3, i64 0, i32 1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_node_is_texture(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr @ntreeType_Texture, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %3, i64 0, i32 1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #16
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_set_tree_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  br i1 %3, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bNodeTreeType, ptr %1, i64 0, i32 1
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %6, i64 noundef 64) #15
  br label %9

8:                                                ; preds = %2
  store i8 0, ptr %4, align 8, !tbaa !109
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_shader_default(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.ED_node_shader_default.color, i64 16, i1 false)
  %6 = load ptr, ptr @ntreeType_Shader, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.bNodeTreeType, ptr %6, i64 0, i32 1
  %8 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #15
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !110
  switch i16 %10, label %48 [
    i16 16717, label %11
    i16 20311, label %25
    i16 16716, label %35
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  store ptr %8, ptr %12, align 8, !tbaa !111
  %13 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %5) #15
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 100, i32 132
  %16 = select i1 %14, i32 1, i32 124
  %17 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  %18 = load float, ptr %17, align 4, !tbaa !115
  store float %18, ptr %3, align 16, !tbaa !115
  %19 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 5
  %20 = load float, ptr %19, align 4, !tbaa !115
  %21 = getelementptr inbounds float, ptr %3, i64 1
  store float %20, ptr %21, align 4, !tbaa !115
  %22 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 6
  %23 = load float, ptr %22, align 4, !tbaa !115
  %24 = getelementptr inbounds float, ptr %3, i64 2
  store float %23, ptr %24, align 8, !tbaa !115
  br label %54

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 75
  store ptr %8, ptr %26, align 8, !tbaa !116
  %27 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 6
  %28 = load float, ptr %27, align 4, !tbaa !115
  store float %28, ptr %3, align 16, !tbaa !115
  %29 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 7
  %30 = load float, ptr %29, align 4, !tbaa !115
  %31 = getelementptr inbounds float, ptr %3, i64 1
  store float %30, ptr %31, align 4, !tbaa !115
  %32 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 8
  %33 = load float, ptr %32, align 4, !tbaa !115
  %34 = getelementptr inbounds float, ptr %3, i64 2
  store float %33, ptr %34, align 8, !tbaa !115
  br label %54

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 74
  store ptr %8, ptr %36, align 8, !tbaa !118
  %37 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 7
  %38 = load float, ptr %37, align 4, !tbaa !115
  store float %38, ptr %3, align 16, !tbaa !115
  %39 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 8
  %40 = load float, ptr %39, align 4, !tbaa !115
  %41 = getelementptr inbounds float, ptr %3, i64 1
  store float %40, ptr %41, align 4, !tbaa !115
  %42 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 9
  %43 = load float, ptr %42, align 4, !tbaa !115
  %44 = getelementptr inbounds float, ptr %3, i64 2
  store float %43, ptr %44, align 8, !tbaa !115
  %45 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 2
  %46 = load i16, ptr %45, align 8, !tbaa !120
  %47 = icmp ult i16 %46, 5
  br i1 %47, label %50, label %54

48:                                               ; preds = %2
  %49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %81

50:                                               ; preds = %35
  %51 = zext nneg i16 %46 to i64
  %52 = getelementptr inbounds [5 x float], ptr @switch.table.ED_node_shader_default, i64 0, i64 %51
  %53 = load float, ptr %52, align 4
  br label %54

54:                                               ; preds = %35, %50, %25, %11
  %55 = phi float [ 1.000000e+00, %25 ], [ 0.000000e+00, %11 ], [ %53, %50 ], [ 1.000000e+00, %35 ]
  %56 = phi i32 [ 130, %25 ], [ %15, %11 ], [ 140, %50 ], [ 140, %35 ]
  %57 = phi i32 [ 125, %25 ], [ %16, %11 ], [ 126, %50 ], [ 126, %35 ]
  %58 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %8, i32 noundef %57) #15
  %59 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 24
  store float 3.000000e+02, ptr %59, align 8, !tbaa !121
  %60 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 25
  store float 3.000000e+02, ptr %60, align 4, !tbaa !123
  %61 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %8, i32 noundef %56) #15
  %62 = getelementptr inbounds %struct.bNode, ptr %61, i64 0, i32 24
  store float 1.000000e+01, ptr %62, align 8, !tbaa !121
  %63 = getelementptr inbounds %struct.bNode, ptr %61, i64 0, i32 25
  store float 3.000000e+02, ptr %63, align 4, !tbaa !123
  tail call void @nodeSetActive(ptr noundef %8, ptr noundef %61) #15
  %64 = getelementptr inbounds %struct.bNode, ptr %61, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !124
  %66 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 17
  %67 = load ptr, ptr %66, align 8, !tbaa !125
  %68 = tail call ptr @nodeAddLink(ptr noundef %8, ptr noundef %61, ptr noundef %65, ptr noundef %58, ptr noundef %67) #15
  %69 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %5) #15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %72 = getelementptr inbounds %struct.bNode, ptr %61, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !125
  call void @RNA_pointer_create(ptr noundef %8, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %73, ptr noundef nonnull %4) #15
  call void @RNA_float_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #15
  %74 = fcmp une float %55, 0.000000e+00
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.bNode, ptr %61, i64 0, i32 17, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !126
  call void @RNA_pointer_create(ptr noundef %8, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %77, ptr noundef nonnull %4) #15
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, float noundef %55) #15
  br label %78

78:                                               ; preds = %75, %71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %79

79:                                               ; preds = %78, %54
  %80 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @ntreeUpdateTree(ptr noundef %80, ptr noundef %8) #15
  br label %81

81:                                               ; preds = %79, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_composit_default(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !128
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.114)
  br label %35

12:                                               ; preds = %2
  %13 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.bNodeTreeType, ptr %13, i64 0, i32 1
  %15 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %14) #15
  store ptr %15, ptr %3, align 8, !tbaa !127
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 20
  store i32 256, ptr %16, align 4, !tbaa !129
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 18
  store i16 0, ptr %17, align 8, !tbaa !130
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 19
  store i16 0, ptr %18, align 2, !tbaa !131
  %19 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %15, i32 noundef 222) #15
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 24
  store float 3.000000e+02, ptr %20, align 8, !tbaa !121
  %21 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 25
  store float 4.000000e+02, ptr %21, align 4, !tbaa !123
  %22 = load ptr, ptr %3, align 8, !tbaa !127
  %23 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %22, i32 noundef 221) #15
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 24
  store float 1.000000e+01, ptr %24, align 8, !tbaa !121
  %25 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 25
  store float 4.000000e+02, ptr %25, align 4, !tbaa !123
  %26 = load ptr, ptr %3, align 8, !tbaa !127
  tail call void @nodeSetActive(ptr noundef %26, ptr noundef %23) #15
  %27 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 18
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !125
  %31 = load ptr, ptr %3, align 8, !tbaa !127
  %32 = tail call ptr @nodeAddLink(ptr noundef %31, ptr noundef %23, ptr noundef %28, ptr noundef %19, ptr noundef %30) #15
  %33 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %34 = load ptr, ptr %3, align 8, !tbaa !127
  tail call void @ntreeUpdateTree(ptr noundef %33, ptr noundef %34) #15
  br label %35

35:                                               ; preds = %6, %10, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_texture_default(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !132
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !128
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.115)
  br label %32

12:                                               ; preds = %2
  %13 = load ptr, ptr @ntreeType_Texture, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.bNodeTreeType, ptr %13, i64 0, i32 1
  %15 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull %14) #15
  store ptr %15, ptr %3, align 8, !tbaa !132
  %16 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %15, i32 noundef 401) #15
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 24
  store float 3.000000e+02, ptr %17, align 8, !tbaa !121
  %18 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 25
  store float 3.000000e+02, ptr %18, align 4, !tbaa !123
  %19 = load ptr, ptr %3, align 8, !tbaa !132
  %20 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %19, i32 noundef 402) #15
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 24
  store float 1.000000e+01, ptr %21, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 25
  store float 3.000000e+02, ptr %22, align 4, !tbaa !123
  %23 = load ptr, ptr %3, align 8, !tbaa !132
  tail call void @nodeSetActive(ptr noundef %23, ptr noundef %20) #15
  %24 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !124
  %26 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = load ptr, ptr %3, align 8, !tbaa !132
  %29 = tail call ptr @nodeAddLink(ptr noundef %28, ptr noundef %20, ptr noundef %25, ptr noundef %16, ptr noundef %27) #15
  %30 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %31 = load ptr, ptr %3, align 8, !tbaa !132
  tail call void @ntreeUpdateTree(ptr noundef %30, ptr noundef %31) #15
  br label %32

32:                                               ; preds = %6, %10, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @snode_set_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = tail call ptr @ntreeTypeFind(ptr noundef nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  store ptr %9, ptr %2, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  store ptr %11, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  store ptr %13, ptr %4, align 8, !tbaa !43
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %15 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %14) #15
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !67
  %19 = and i16 %18, -2049
  %20 = select i1 %16, i16 0, i16 2048
  %21 = or disjoint i16 %19, %20
  store i16 %21, ptr %17, align 8, !tbaa !67
  %22 = icmp eq ptr %7, null
  br i1 %22, label %75, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.bNodeTreeType, ptr %7, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef nonnull %7) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %75, label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %8, align 8, !tbaa !106
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bNodeTree, ptr %31, i64 0, i32 3
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %6) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store ptr null, ptr %2, align 8, !tbaa !43
  store ptr null, ptr %3, align 8, !tbaa !43
  store ptr null, ptr %4, align 8, !tbaa !43
  br label %38

38:                                               ; preds = %37, %33, %30
  %39 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %40 = load i16, ptr %39, align 8, !tbaa !67
  %41 = and i16 %40, 4096
  %42 = icmp eq i16 %41, 0
  %43 = load ptr, ptr %2, align 8
  %44 = icmp eq ptr %43, null
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.bNodeTreeType, ptr %7, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !138
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store ptr null, ptr %2, align 8, !tbaa !43
  store ptr null, ptr %3, align 8, !tbaa !43
  store ptr null, ptr %4, align 8, !tbaa !43
  call void %48(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  br label %51

51:                                               ; preds = %46, %50, %38
  %52 = load ptr, ptr %8, align 8, !tbaa !106
  %53 = load ptr, ptr %2, align 8, !tbaa !43
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load ptr, ptr %10, align 8, !tbaa !108
  %57 = load ptr, ptr %3, align 8, !tbaa !43
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load ptr, ptr %12, align 8, !tbaa !134
  %61 = load ptr, ptr %4, align 8, !tbaa !43
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %55, %51
  %64 = load ptr, ptr %3, align 8, !tbaa !43
  %65 = load ptr, ptr %4, align 8, !tbaa !43
  call void @ED_node_tree_start(ptr noundef %5, ptr noundef %53, ptr noundef %64, ptr noundef %65) #15
  br label %66

66:                                               ; preds = %63, %59
  %67 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct.bNodeTreeType, ptr %67, i64 0, i32 1
  %69 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %68) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load ptr, ptr %8, align 8, !tbaa !106
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void @ntreeCompositForceHidden(ptr noundef nonnull %72) #15
  br label %75

75:                                               ; preds = %66, %71, %74, %1, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret void
}

declare ptr @ntreeTypeFind(ptr noundef) local_unnamed_addr #2

declare void @ED_node_tree_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeCompositForceHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @snode_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTreePath, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTreePath, ptr %4, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %20, %12 ], [ %8, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %11, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !142
  %16 = getelementptr inbounds %struct.bNodeTreePath, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !142
  %18 = tail call zeroext i8 @nodeUpdateID(ptr noundef %17, ptr noundef %15) #15
  %19 = getelementptr inbounds %struct.bNodeTreePath, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !143

22:                                               ; preds = %12, %6, %2
  %23 = icmp eq ptr %1, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  tail call void @nodeUpdate(ptr noundef %26, ptr noundef nonnull %1) #15
  br label %27

27:                                               ; preds = %24, %22
  ret void
}

declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_node_set_active(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !144
  tail call void @nodeSetActive(ptr noundef %1, ptr noundef %2) #15
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 8
  %7 = load i16, ptr %6, align 4, !tbaa !145
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %188, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 8, !tbaa !144
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 6
  %13 = and i8 %12, 1
  %14 = icmp eq i16 %7, 8
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %15, %28
  %20 = phi ptr [ %29, %28 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !145
  %23 = icmp eq i16 %22, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !144
  %27 = and i32 %26, -65
  store i32 %27, ptr %25, align 8, !tbaa !144
  br label %28

28:                                               ; preds = %19, %24
  %29 = load ptr, ptr %20, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !146

31:                                               ; preds = %28, %15
  %32 = load i32, ptr %4, align 8, !tbaa !144
  %33 = or i32 %32, 64
  store i32 %33, ptr %4, align 8, !tbaa !144
  %34 = xor i8 %13, 1
  br label %35

35:                                               ; preds = %31, %9
  %36 = phi i8 [ %34, %31 ], [ 0, %9 ]
  %37 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !147
  switch i32 %38, label %188 [
    i32 0, label %39
    i32 1, label %102
  ]

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !148
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ID, ptr %41, i64 0, i32 4
  %45 = load i16, ptr %44, align 8, !tbaa !110
  switch i16 %45, label %47 [
    i16 16717, label %46
    i16 16716, label %46
    i16 20311, label %46
  ]

46:                                               ; preds = %43, %43, %43
  tail call void @nodeClearActiveID(ptr noundef %1, i16 noundef signext 17748) #15
  br label %47

47:                                               ; preds = %43, %46, %39
  %48 = load i16, ptr %6, align 4, !tbaa !145
  switch i16 %48, label %69 [
    i16 1, label %49
    i16 124, label %49
    i16 125, label %49
    i16 126, label %49
    i16 190, label %49
  ]

49:                                               ; preds = %47, %47, %47, %47, %47
  %50 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %49, %62
  %54 = phi ptr [ %63, %62 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 8
  %56 = load i16, ptr %55, align 4, !tbaa !145
  %57 = icmp eq i16 %56, %48
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !144
  %61 = and i32 %60, -65
  store i32 %61, ptr %59, align 8, !tbaa !144
  br label %62

62:                                               ; preds = %53, %58
  %63 = load ptr, ptr %54, align 8, !tbaa !43
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %53, !llvm.loop !149

65:                                               ; preds = %62, %49
  %66 = load i32, ptr %4, align 8, !tbaa !144
  %67 = or i32 %66, 64
  store i32 %67, ptr %4, align 8, !tbaa !144
  %68 = icmp eq i8 %13, 0
  br i1 %68, label %71, label %72

69:                                               ; preds = %47
  %70 = icmp eq i8 %36, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %69, %65
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #15
  br label %72

72:                                               ; preds = %71, %65, %69
  %73 = load i32, ptr %4, align 8, !tbaa !144
  %74 = and i32 %73, 16384
  %75 = icmp eq i32 %74, 0
  %76 = and i32 %5, 16384
  %77 = icmp ne i32 %76, 0
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %100, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %81 = load ptr, ptr %80, align 8, !tbaa !43
  %82 = icmp eq ptr %81, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %79, %96
  %84 = phi ptr [ %97, %96 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.Material, ptr %84, i64 0, i32 103
  %86 = load ptr, ptr %85, align 8, !tbaa !111
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.Material, ptr %84, i64 0, i32 77
  %90 = load i8, ptr %89, align 1, !tbaa !150
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = tail call zeroext i8 @ntreeHasTree(ptr noundef nonnull %86, ptr noundef %1) #15
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void @GPU_material_free(ptr noundef nonnull %84) #15
  br label %96

96:                                               ; preds = %83, %88, %92, %95
  %97 = load ptr, ptr %84, align 8, !tbaa !43
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %83, !llvm.loop !151

99:                                               ; preds = %96, %79
  tail call void @WM_main_add_notifier(i32 noundef 167772160, ptr noundef null) #15
  br label %100

100:                                              ; preds = %99, %72
  %101 = load ptr, ptr %40, align 8, !tbaa !148
  tail call void @WM_main_add_notifier(i32 noundef 100990976, ptr noundef %101) #15
  br label %188

102:                                              ; preds = %35
  switch i16 %7, label %185 [
    i16 201, label %103
    i16 240, label %103
    i16 221, label %126
    i16 222, label %164
  ]

103:                                              ; preds = %102, %102
  %104 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !43
  %106 = icmp eq ptr %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %103, %115
  %108 = phi ptr [ %116, %115 ], [ %105, %103 ]
  %109 = getelementptr inbounds %struct.bNode, ptr %108, i64 0, i32 8
  %110 = load i16, ptr %109, align 4, !tbaa !145
  switch i16 %110, label %115 [
    i16 201, label %111
    i16 240, label %111
  ]

111:                                              ; preds = %107, %107
  %112 = getelementptr inbounds %struct.bNode, ptr %108, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !144
  %114 = and i32 %113, -65
  store i32 %114, ptr %112, align 8, !tbaa !144
  br label %115

115:                                              ; preds = %107, %111
  %116 = load ptr, ptr %108, align 8, !tbaa !43
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %107, !llvm.loop !152

118:                                              ; preds = %115, %103
  %119 = load i32, ptr %4, align 8, !tbaa !144
  %120 = or i32 %119, 64
  store i32 %120, ptr %4, align 8, !tbaa !144
  %121 = icmp eq i8 %13, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #15
  br label %123

123:                                              ; preds = %122, %118
  %124 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.10) #15
  %125 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  store ptr %124, ptr %125, align 8, !tbaa !148
  br label %188

126:                                              ; preds = %102
  %127 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %128 = load ptr, ptr %127, align 8, !tbaa !43
  %129 = icmp eq ptr %128, null
  br i1 %129, label %188, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %132 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  br label %133

133:                                              ; preds = %130, %161
  %134 = phi ptr [ %128, %130 ], [ %162, %161 ]
  %135 = getelementptr inbounds %struct.Scene, ptr %134, i64 0, i32 18
  %136 = load ptr, ptr %135, align 8, !tbaa !127
  %137 = icmp eq ptr %136, null
  br i1 %137, label %161, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.Scene, ptr %134, i64 0, i32 16
  %140 = load i8, ptr %139, align 2, !tbaa !74
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %138
  %143 = tail call zeroext i8 @ntreeHasTree(ptr noundef nonnull %136, ptr noundef %1) #15
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %131, align 8, !tbaa !148
  %147 = icmp eq ptr %146, null
  %148 = icmp eq ptr %146, %134
  %149 = or i1 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.Scene, ptr %134, i64 0, i32 22, i32 60
  %152 = tail call i32 @BLI_countlist(ptr noundef nonnull %151) #15
  %153 = load i16, ptr %132, align 8, !tbaa !153
  %154 = getelementptr inbounds %struct.Scene, ptr %134, i64 0, i32 22, i32 61
  %155 = sitofp i16 %153 to float
  %156 = add nsw i32 %152, -1
  %157 = sitofp i32 %156 to float
  %158 = fcmp olt float %155, %157
  %159 = select i1 %158, float %155, float %157
  %160 = fptosi float %159 to i16
  store i16 %160, ptr %154, align 8, !tbaa !154
  br label %161

161:                                              ; preds = %145, %133, %138, %142, %150
  %162 = load ptr, ptr %134, align 8, !tbaa !43
  %163 = icmp eq ptr %162, null
  br i1 %163, label %188, label %133, !llvm.loop !155

164:                                              ; preds = %102
  %165 = icmp eq i8 %13, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !43
  %169 = icmp eq ptr %168, null
  br i1 %169, label %182, label %170

170:                                              ; preds = %166, %179
  %171 = phi ptr [ %180, %179 ], [ %168, %166 ]
  %172 = getelementptr inbounds %struct.bNode, ptr %171, i64 0, i32 8
  %173 = load i16, ptr %172, align 4, !tbaa !145
  %174 = icmp eq i16 %173, 222
  br i1 %174, label %175, label %179

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.bNode, ptr %171, i64 0, i32 7
  %177 = load i32, ptr %176, align 8, !tbaa !144
  %178 = and i32 %177, -65
  store i32 %178, ptr %176, align 8, !tbaa !144
  br label %179

179:                                              ; preds = %170, %175
  %180 = load ptr, ptr %171, align 8, !tbaa !43
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %170, !llvm.loop !156

182:                                              ; preds = %179, %166
  %183 = load i32, ptr %4, align 8, !tbaa !144
  %184 = or i32 %183, 64
  store i32 %184, ptr %4, align 8, !tbaa !144
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #15
  br label %188

185:                                              ; preds = %102
  %186 = icmp eq i8 %36, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %185
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #15
  br label %188

188:                                              ; preds = %161, %126, %100, %123, %182, %164, %187, %185, %35, %3
  ret void
}

declare void @nodeClearActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_material_free(ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ED_node_post_apply_transform(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_resize(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !159
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !160
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_resize_invoke, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @node_resize_modal, ptr %5, align 8, !tbaa !162
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %6, align 8, !tbaa !163
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @node_resize_cancel, ptr %7, align 8, !tbaa !164
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_resize_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = tail call ptr @nodeGetActive(ptr noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %65, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !166
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !166
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16
  %19 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %11, float noundef %14, float noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #15
  %20 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !167
  %22 = getelementptr inbounds %struct.bNodeType, ptr %21, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !168
  %24 = load float, ptr %18, align 8, !tbaa !115
  %25 = fptosi float %24 to i32
  %26 = load float, ptr %19, align 4, !tbaa !115
  %27 = fptosi float %26 to i32
  %28 = tail call i32 %23(ptr noundef nonnull %8, i32 noundef %25, i32 noundef %27) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %10
  %31 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %33 = tail call ptr %32(i64 noundef 40, ptr noundef nonnull @.str.102) #15
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !170
  %35 = getelementptr inbounds %struct.SpaceNode, ptr %31, i64 0, i32 16
  %36 = load float, ptr %35, align 8, !tbaa !115
  store float %36, ptr %33, align 4, !tbaa !172
  %37 = getelementptr inbounds %struct.SpaceNode, ptr %31, i64 0, i32 16, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !115
  %39 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !174
  %40 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 24
  %41 = load float, ptr %40, align 8, !tbaa !121
  %42 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 2
  store float %41, ptr %42, align 4, !tbaa !175
  %43 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 25
  %44 = load float, ptr %43, align 4, !tbaa !123
  %45 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 3
  store float %44, ptr %45, align 4, !tbaa !176
  %46 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 29
  %47 = load float, ptr %46, align 4, !tbaa !177
  %48 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 4
  store float %47, ptr %48, align 4, !tbaa !178
  %49 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 30
  %50 = load float, ptr %49, align 8, !tbaa !179
  %51 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 5
  store float %50, ptr %51, align 4, !tbaa !180
  %52 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 26
  %53 = load float, ptr %52, align 8, !tbaa !181
  %54 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 6
  store float %53, ptr %54, align 4, !tbaa !182
  %55 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 27
  %56 = load float, ptr %55, align 4, !tbaa !183
  %57 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 7
  store float %56, ptr %57, align 4, !tbaa !184
  %58 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 28
  %59 = load float, ptr %58, align 8, !tbaa !185
  %60 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 8
  store float %59, ptr %60, align 4, !tbaa !186
  %61 = getelementptr inbounds %struct.NodeSizeWidget, ptr %33, i64 0, i32 9
  store i32 %28, ptr %61, align 4, !tbaa !187
  %62 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  %63 = tail call i32 @node_get_resize_cursor(i32 noundef %28) #15
  tail call void @WM_cursor_modal_set(ptr noundef %62, i32 noundef %63) #15
  %64 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  br label %65

65:                                               ; preds = %3, %10, %30
  %66 = phi i32 [ 1, %30 ], [ 10, %10 ], [ 10, %3 ]
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_resize_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = tail call ptr @nodeGetActive(ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !188
  switch i16 %14, label %187 [
    i16 4, label %15
    i16 1, label %183
    i16 2, label %183
    i16 3, label %183
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !166
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !166
  %22 = sitofp i32 %21 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %19, float noundef %22, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %23 = load float, ptr %4, align 4, !tbaa !115
  %24 = load float, ptr %12, align 4, !tbaa !172
  %25 = fsub float %23, %24
  %26 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !191
  %27 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !195
  %28 = sitofp i32 %27 to float
  %29 = fmul float %26, %28
  %30 = fdiv float %29, 7.200000e+01
  %31 = fdiv float %25, %30
  %32 = load float, ptr %5, align 4, !tbaa !115
  %33 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !174
  %35 = fsub float %32, %34
  %36 = fdiv float %35, %30
  %37 = icmp eq ptr %10, null
  br i1 %37, label %182, label %38

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %40 = load i16, ptr %39, align 4, !tbaa !145
  %41 = icmp eq i16 %40, 5
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !144
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 28
  %49 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 8
  br label %59

50:                                               ; preds = %42, %38
  %51 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 26
  %52 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 6
  %53 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !167
  %55 = getelementptr inbounds %struct.bNodeType, ptr %54, i64 0, i32 9
  %56 = load float, ptr %55, align 8, !tbaa !196
  %57 = getelementptr inbounds %struct.bNodeType, ptr %54, i64 0, i32 10
  %58 = load float, ptr %57, align 4, !tbaa !197
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi float [ 1.000000e+02, %47 ], [ %58, %50 ]
  %61 = phi float [ 0.000000e+00, %47 ], [ %56, %50 ]
  %62 = phi ptr [ %49, %47 ], [ %52, %50 ]
  %63 = phi ptr [ %48, %47 ], [ %51, %50 ]
  %64 = load float, ptr %62, align 4, !tbaa !115
  %65 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 9
  %66 = load i32, ptr %65, align 4, !tbaa !187
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %59
  %70 = fadd float %31, %64
  store float %70, ptr %63, align 4, !tbaa !115
  %71 = fcmp olt float %70, %61
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = fcmp ogt float %70, %60
  br i1 %73, label %74, label %76

74:                                               ; preds = %72, %69
  %75 = phi float [ %61, %69 ], [ %60, %72 ]
  store float %75, ptr %63, align 4, !tbaa !115
  br label %76

76:                                               ; preds = %74, %72, %59
  %77 = and i32 %66, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 2
  %81 = load float, ptr %80, align 4, !tbaa !175
  %82 = fadd float %64, %81
  %83 = fadd float %31, %81
  %84 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 24
  store float %83, ptr %84, align 8, !tbaa !121
  %85 = fsub float %82, %60
  %86 = fcmp olt float %83, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = fsub float %82, %61
  %89 = fcmp ogt float %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %79
  %91 = phi float [ %85, %79 ], [ %88, %87 ]
  store float %91, ptr %84, align 8, !tbaa !121
  br label %92

92:                                               ; preds = %90, %87
  %93 = load float, ptr %84, align 8, !tbaa !121
  %94 = fsub float %82, %93
  store float %94, ptr %63, align 4, !tbaa !115
  br label %95

95:                                               ; preds = %92, %76
  %96 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !191
  %97 = fmul float %96, %28
  %98 = fdiv float %97, 7.200000e+01
  %99 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !167
  %101 = getelementptr inbounds %struct.bNodeType, ptr %100, i64 0, i32 12
  %102 = load float, ptr %101, align 4, !tbaa !198
  %103 = fmul float %98, %102
  %104 = getelementptr inbounds %struct.bNodeType, ptr %100, i64 0, i32 13
  %105 = load float, ptr %104, align 8, !tbaa !199
  %106 = fmul float %98, %105
  %107 = and i32 %66, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 3
  %111 = load float, ptr %110, align 4, !tbaa !176
  %112 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 7
  %113 = load float, ptr %112, align 4, !tbaa !184
  %114 = fsub float %111, %113
  %115 = fadd float %36, %111
  %116 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 25
  store float %115, ptr %116, align 4, !tbaa !123
  %117 = fadd float %103, %114
  %118 = fcmp olt float %115, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %109
  %120 = fadd float %106, %114
  %121 = fcmp ogt float %115, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %119, %109
  %123 = phi float [ %117, %109 ], [ %120, %119 ]
  store float %123, ptr %116, align 4, !tbaa !123
  br label %124

124:                                              ; preds = %122, %119
  %125 = load float, ptr %116, align 4, !tbaa !123
  %126 = fsub float %125, %114
  %127 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 27
  store float %126, ptr %127, align 4, !tbaa !183
  br label %128

128:                                              ; preds = %124, %95
  %129 = and i32 %66, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 7
  %133 = load float, ptr %132, align 4, !tbaa !184
  %134 = fsub float %133, %36
  %135 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 27
  store float %134, ptr %135, align 4, !tbaa !183
  %136 = fcmp olt float %134, %103
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = fcmp ogt float %134, %106
  br i1 %138, label %139, label %141

139:                                              ; preds = %137, %131
  %140 = phi float [ %103, %131 ], [ %106, %137 ]
  store float %140, ptr %135, align 4, !tbaa !183
  br label %141

141:                                              ; preds = %139, %137, %128
  br i1 %41, label %142, label %182

142:                                              ; preds = %141
  br i1 %78, label %152, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 2
  %145 = load float, ptr %144, align 4, !tbaa !175
  %146 = call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float %145)
  %147 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 24
  store float %146, ptr %147, align 8, !tbaa !121
  %148 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 4
  %149 = load float, ptr %148, align 4, !tbaa !178
  %150 = call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float %149)
  %151 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 29
  store float %150, ptr %151, align 4, !tbaa !177
  br label %152

152:                                              ; preds = %143, %142
  br i1 %68, label %162, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 2
  %155 = load float, ptr %154, align 4, !tbaa !175
  %156 = call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float %155)
  %157 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 24
  store float %156, ptr %157, align 8, !tbaa !121
  %158 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 4
  %159 = load float, ptr %158, align 4, !tbaa !178
  %160 = call float @llvm.fmuladd.f32(float %31, float -5.000000e-01, float %159)
  %161 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 29
  store float %160, ptr %161, align 4, !tbaa !177
  br label %162

162:                                              ; preds = %153, %152
  br i1 %108, label %172, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 3
  %165 = load float, ptr %164, align 4, !tbaa !176
  %166 = call float @llvm.fmuladd.f32(float %36, float 5.000000e-01, float %165)
  %167 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 25
  store float %166, ptr %167, align 4, !tbaa !123
  %168 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 5
  %169 = load float, ptr %168, align 4, !tbaa !180
  %170 = call float @llvm.fmuladd.f32(float %36, float 5.000000e-01, float %169)
  %171 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 30
  store float %170, ptr %171, align 8, !tbaa !179
  br label %172

172:                                              ; preds = %163, %162
  br i1 %130, label %182, label %173

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 3
  %175 = load float, ptr %174, align 4, !tbaa !176
  %176 = call float @llvm.fmuladd.f32(float %36, float 5.000000e-01, float %175)
  %177 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 25
  store float %176, ptr %177, align 4, !tbaa !123
  %178 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 5
  %179 = load float, ptr %178, align 4, !tbaa !180
  %180 = call float @llvm.fmuladd.f32(float %36, float -5.000000e-01, float %179)
  %181 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 30
  store float %180, ptr %181, align 8, !tbaa !179
  br label %182

182:                                              ; preds = %141, %173, %172, %15
  call void @ED_region_tag_redraw(ptr noundef %7) #15
  br label %187

183:                                              ; preds = %3, %3, %3
  %184 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_modal_restore(ptr noundef %184) #15
  %185 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %186 = load ptr, ptr %11, align 8, !tbaa !170
  tail call void %185(ptr noundef %186) #15
  store ptr null, ptr %11, align 8, !tbaa !170
  br label %187

187:                                              ; preds = %182, %3, %183
  %188 = phi i32 [ 4, %183 ], [ 1, %3 ], [ 1, %182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %188
}

; Function Attrs: nounwind uwtable
define internal void @node_resize_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #15
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #15
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !170
  tail call void %4(ptr noundef %6) #15
  store ptr null, ptr %5, align 8, !tbaa !170
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @node_has_hidden_sockets(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !200
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %3, label %23, !llvm.loop !203

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %16, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !200
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %14, label %23, !llvm.loop !204

23:                                               ; preds = %7, %14, %18
  %24 = phi i32 [ 1, %18 ], [ 0, %14 ], [ 1, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define dso_local void @node_set_hidden_sockets(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %4, label %8, label %27

8:                                                ; preds = %3
  br i1 %7, label %16, label %9

9:                                                ; preds = %8, %9
  %10 = phi ptr [ %14, %9 ], [ %6, %8 ]
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !200
  %13 = and i16 %12, -3
  store i16 %13, ptr %11, align 2, !tbaa !200
  %14 = load ptr, ptr %10, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !205

16:                                               ; preds = %9, %8
  %17 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 2, !tbaa !200
  %24 = and i16 %23, -3
  store i16 %24, ptr %22, align 2, !tbaa !200
  %25 = load ptr, ptr %21, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %20, !llvm.loop !206

27:                                               ; preds = %3
  br i1 %7, label %40, label %28

28:                                               ; preds = %27, %37
  %29 = phi ptr [ %38, %37 ], [ %6, %27 ]
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !207
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !200
  %36 = or i16 %35, 2
  store i16 %36, ptr %34, align 2, !tbaa !200
  br label %37

37:                                               ; preds = %28, %33
  %38 = load ptr, ptr %29, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28, !llvm.loop !208

40:                                               ; preds = %37, %27
  %41 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  br label %46

46:                                               ; preds = %44, %55
  %47 = phi ptr [ %42, %44 ], [ %56, %55 ]
  %48 = load ptr, ptr %45, align 8, !tbaa !105
  %49 = tail call i32 @nodeCountSocketLinks(ptr noundef %48, ptr noundef nonnull %47) #15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !200
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 2, !tbaa !200
  br label %55

55:                                               ; preds = %46, %51
  %56 = load ptr, ptr %47, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %46, !llvm.loop !209

58:                                               ; preds = %55, %20, %40, %16
  ret void
}

declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @node_find_indicated_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  store ptr null, ptr %1, align 8, !tbaa !43
  store ptr null, ptr %2, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %122, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds float, ptr %3, i64 1
  %14 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 2
  %15 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 1
  %16 = getelementptr inbounds %struct.rctf, ptr %6, i64 0, i32 3
  %17 = and i32 %4, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %4, 2
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %12, %117
  %22 = phi ptr [ %10, %12 ], [ %118, %117 ]
  %23 = load float, ptr %3, align 4, !tbaa !115
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !210
  %25 = sitofp i16 %24 to float
  %26 = call float @llvm.fmuladd.f32(float %25, float 2.500000e-01, float 4.000000e+00)
  %27 = fsub float %23, %26
  store float %27, ptr %6, align 4, !tbaa !211
  %28 = load float, ptr %13, align 4, !tbaa !115
  %29 = fsub float %28, %26
  store float %29, ptr %14, align 4, !tbaa !212
  %30 = fadd float %23, %26
  store float %30, ptr %15, align 4, !tbaa !213
  %31 = fadd float %28, %26
  store float %31, ptr %16, align 4, !tbaa !214
  %32 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !144
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  switch i32 %4, label %45 [
    i32 1, label %37
    i32 2, label %41
  ]

37:                                               ; preds = %36
  %38 = call float @llvm.fmuladd.f32(float %25, float 2.500000e-01, float %30)
  store float %38, ptr %15, align 4, !tbaa !213
  %39 = fmul float %25, -2.500000e-01
  %40 = call float @llvm.fmuladd.f32(float %39, float 4.000000e+00, float %27)
  store float %40, ptr %6, align 4, !tbaa !211
  br label %45

41:                                               ; preds = %36
  %42 = fmul float %25, 2.500000e-01
  %43 = call float @llvm.fmuladd.f32(float %42, float 4.000000e+00, float %30)
  store float %43, ptr %15, align 4, !tbaa !213
  %44 = call float @llvm.fmuladd.f32(float %25, float -2.500000e-01, float %27)
  store float %44, ptr %6, align 4, !tbaa !211
  br label %45

45:                                               ; preds = %36, %37, %41, %21
  br i1 %18, label %81, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  %49 = icmp eq ptr %48, null
  br i1 %49, label %81, label %50

50:                                               ; preds = %46, %78
  %51 = phi ptr [ %79, %78 ], [ %48, %46 ]
  %52 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %51) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 13
  %56 = load float, ptr %55, align 8, !tbaa !215
  %57 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 14
  %58 = load float, ptr %57, align 4, !tbaa !216
  %59 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %6, float noundef %56, float noundef %58) #15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %7, align 8, !tbaa !105
  %63 = getelementptr inbounds %struct.bNodeTree, ptr %62, i64 0, i32 7, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !43
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %61, %71
  %67 = phi ptr [ %73, %71 ], [ %64, %61 ]
  %68 = getelementptr inbounds %struct.bNode, ptr %67, i64 0, i32 40
  %69 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %68, ptr noundef nonnull %6, ptr noundef null) #15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.bNode, ptr %67, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !217

75:                                               ; preds = %66, %71, %61
  %76 = phi ptr [ %64, %61 ], [ %67, %66 ], [ %73, %71 ]
  %77 = icmp eq ptr %22, %76
  br i1 %77, label %120, label %78

78:                                               ; preds = %50, %75, %54
  %79 = load ptr, ptr %51, align 8, !tbaa !43
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %50, !llvm.loop !218

81:                                               ; preds = %78, %46, %45
  br i1 %20, label %117, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 18
  %84 = load ptr, ptr %83, align 8, !tbaa !43
  %85 = icmp eq ptr %84, null
  br i1 %85, label %117, label %86

86:                                               ; preds = %82, %114
  %87 = phi ptr [ %115, %114 ], [ %84, %82 ]
  %88 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %87) #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.bNodeSocket, ptr %87, i64 0, i32 13
  %92 = load float, ptr %91, align 8, !tbaa !215
  %93 = getelementptr inbounds %struct.bNodeSocket, ptr %87, i64 0, i32 14
  %94 = load float, ptr %93, align 4, !tbaa !216
  %95 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %6, float noundef %92, float noundef %94) #15
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr %7, align 8, !tbaa !105
  %99 = getelementptr inbounds %struct.bNodeTree, ptr %98, i64 0, i32 7, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !43
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %97, %107
  %103 = phi ptr [ %109, %107 ], [ %100, %97 ]
  %104 = getelementptr inbounds %struct.bNode, ptr %103, i64 0, i32 40
  %105 = call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %104, ptr noundef nonnull %6, ptr noundef null) #15
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.bNode, ptr %103, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !43
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %102, !llvm.loop !217

111:                                              ; preds = %102, %107, %97
  %112 = phi ptr [ %100, %97 ], [ %103, %102 ], [ %109, %107 ]
  %113 = icmp eq ptr %22, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %86, %111, %90
  %115 = load ptr, ptr %87, align 8, !tbaa !43
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %86, !llvm.loop !219

117:                                              ; preds = %114, %82, %81
  %118 = load ptr, ptr %22, align 8, !tbaa !43
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %21, !llvm.loop !220

120:                                              ; preds = %75, %111
  %121 = phi ptr [ %87, %111 ], [ %51, %75 ]
  store ptr %22, ptr %1, align 8, !tbaa !43
  store ptr %121, ptr %2, align 8, !tbaa !43
  br label %122

122:                                              ; preds = %117, %120, %5
  %123 = phi i32 [ 0, %5 ], [ 1, %120 ], [ 0, %117 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i32 %123
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_duplicate_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.17) #15
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !224
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 7
  br label %13

13:                                               ; preds = %29, %2
  %14 = phi ptr [ %9, %2 ], [ %15, %29 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !144
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = tail call ptr @nodeCopyNode(ptr noundef %5, ptr noundef nonnull %15) #15
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !148
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  tail call void @id_us_plus(ptr noundef nonnull %25) #15
  %28 = load ptr, ptr %12, align 8, !tbaa !108
  tail call void @ED_node_tag_update_id(ptr noundef %28) #15
  br label %29

29:                                               ; preds = %22, %27, %17
  %30 = icmp eq ptr %15, %11
  br i1 %30, label %31, label %13, !llvm.loop !225

31:                                               ; preds = %29, %13
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !226
  %35 = and i32 %8, 255
  %36 = icmp eq i32 %35, 0
  br label %37

37:                                               ; preds = %97, %31
  %38 = phi ptr [ %32, %31 ], [ %39, %97 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = icmp eq ptr %39, null
  br i1 %40, label %99, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !227
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !144
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %97, label %50

50:                                               ; preds = %45
  br i1 %36, label %51, label %60

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !229
  %54 = icmp eq ptr %53, null
  br i1 %54, label %97, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !144
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %55, %50
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %62 = tail call ptr %61(i64 noundef 56, ptr noundef nonnull @.str.103) #15
  %63 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !230
  %65 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 6
  store i32 %64, ptr %65, align 8, !tbaa !230
  %66 = load ptr, ptr %42, align 8, !tbaa !227
  %67 = getelementptr inbounds %struct.bNode, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !231
  %69 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 3
  store ptr %68, ptr %69, align 8, !tbaa !227
  %70 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !232
  %72 = getelementptr inbounds %struct.bNodeSocket, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !233
  %74 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 5
  store ptr %73, ptr %74, align 8, !tbaa !232
  %75 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !229
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %60
  %79 = getelementptr inbounds %struct.bNode, ptr %76, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !144
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.bNode, ptr %76, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !231
  %86 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !229
  %87 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !234
  %89 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 2
  br label %93

90:                                               ; preds = %78, %60
  %91 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 2
  store ptr %76, ptr %91, align 8, !tbaa !229
  %92 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 4
  br label %93

93:                                               ; preds = %90, %83
  %94 = phi ptr [ %92, %90 ], [ %89, %83 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !43
  %96 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 4
  store ptr %95, ptr %96, align 8, !tbaa !234
  tail call void @BLI_addtail(ptr noundef nonnull %32, ptr noundef %62) #15
  br label %97

97:                                               ; preds = %93, %55, %51, %45, %41
  %98 = icmp eq ptr %39, %34
  br i1 %98, label %99, label %37, !llvm.loop !235

99:                                               ; preds = %97, %37
  %100 = load ptr, ptr %9, align 8, !tbaa !43
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %107, %102 ], [ %100, %99 ]
  %104 = getelementptr inbounds %struct.bNode, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !144
  %106 = and i32 %105, -257
  store i32 %106, ptr %104, align 8, !tbaa !144
  %107 = load ptr, ptr %103, align 8, !tbaa !43
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %102, !llvm.loop !236

109:                                              ; preds = %102, %99
  br label %110

110:                                              ; preds = %109, %120
  %111 = phi ptr [ %112, %120 ], [ %9, %109 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !43
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.bNode, ptr %112, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !144
  %117 = and i32 %116, 257
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  tail call fastcc void @node_duplicate_reparent_recursive(ptr noundef nonnull %112)
  br label %120

120:                                              ; preds = %119, %114
  %121 = icmp eq ptr %112, %11
  br i1 %121, label %122, label %110, !llvm.loop !237

122:                                              ; preds = %120, %110
  br label %123

123:                                              ; preds = %122, %137
  %124 = phi ptr [ %125, %137 ], [ %9, %122 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !43
  %126 = icmp eq ptr %125, null
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.bNode, ptr %125, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !144
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.bNode, ptr %125, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !231
  tail call void @nodeSetSelected(ptr noundef nonnull %125, i8 noundef zeroext 0) #15
  %135 = load i32, ptr %128, align 8, !tbaa !144
  %136 = and i32 %135, -17
  store i32 %136, ptr %128, align 8, !tbaa !144
  tail call void @nodeSetSelected(ptr noundef %134, i8 noundef zeroext 1) #15
  br label %137

137:                                              ; preds = %132, %127
  %138 = icmp eq ptr %125, %11
  br i1 %138, label %139, label %123, !llvm.loop !238

139:                                              ; preds = %137, %123
  %140 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %141 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @ntreeUpdateTree(ptr noundef %140, ptr noundef %141) #15
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3)
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3)
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_node_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !144
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %2, label %11, !llvm.loop !239

11:                                               ; preds = %2, %6
  %12 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_read_renderlayers(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !159
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !160
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_read_renderlayers_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_read_renderlayers_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 5
  %12 = load i16, ptr %11, align 2, !tbaa !240
  %13 = or i16 %12, 1024
  store i16 %13, ptr %11, align 2, !tbaa !240
  %14 = load ptr, ptr %10, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !241

16:                                               ; preds = %9, %2
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %16, %38
  %23 = phi ptr [ %39, %38 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !145
  %26 = icmp eq i16 %25, 221
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !242
  %32 = and i16 %31, 1024
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef %5, ptr noundef %29) #15
  tail call void @ntreeCompositTagRender(ptr noundef %29) #15
  %36 = load i16, ptr %30, align 2, !tbaa !242
  %37 = and i16 %36, -1025
  store i16 %37, ptr %30, align 2, !tbaa !242
  br label %38

38:                                               ; preds = %27, %34, %22
  %39 = load ptr, ptr %23, align 8, !tbaa !43
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %22, !llvm.loop !243

41:                                               ; preds = %38, %16
  tail call void @snode_notify(ptr noundef %0, ptr noundef %4)
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %4)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_read_fullsamplelayers(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !159
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !160
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_read_fullsamplelayers_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_read_fullsamplelayers_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %7 = tail call ptr @RE_NewRender(ptr noundef nonnull %6) #15
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #15
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  tail call void @RE_MergeFullSample(ptr noundef %7, ptr noundef %3, ptr noundef %5, ptr noundef %9) #15
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67960832, ptr noundef null) #15
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @node_render_changed_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %2, %19
  %11 = phi ptr [ %20, %19 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !148
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 37
  %17 = load i16, ptr %16, align 4, !tbaa !244
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %10, !llvm.loop !245

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 60
  %24 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 33
  %25 = load i16, ptr %24, align 8, !tbaa !153
  %26 = sext i16 %25 to i32
  %27 = tail call ptr @BLI_findlink(ptr noundef nonnull %23, i32 noundef %26) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @WM_operator_properties_create(ptr noundef nonnull %3, ptr noundef nonnull @.str.26) #15
  %30 = getelementptr inbounds %struct.SceneRenderLayer, ptr %27, i64 0, i32 2
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.27, ptr noundef nonnull %30) #15
  %31 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %31) #15
  %32 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 46
  %33 = load i32, ptr %32, align 4, !tbaa !246
  %34 = or i32 %33, 16384
  store i32 %34, ptr %32, align 4, !tbaa !246
  %35 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.26, i16 noundef signext 0, ptr noundef nonnull %3) #15
  call void @WM_operator_properties_free(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %36

36:                                               ; preds = %19, %2, %22, %29
  %37 = phi i32 [ 4, %29 ], [ 2, %22 ], [ 2, %2 ], [ 2, %19 ]
  ret i32 %37
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_render_changed(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !159
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !160
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_render_changed_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_hide_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_hide_toggle_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_hide_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %53, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %20

13:                                               ; preds = %35
  %14 = icmp ne i32 %37, 0
  %15 = icmp eq i32 %36, 0
  %16 = select i1 %15, i1 true, i1 %14
  %17 = select i1 %16, i32 8, i32 0
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ 8, %9 ], [ %17, %13 ]
  br i1 %12, label %52, label %40

20:                                               ; preds = %9, %35
  %21 = phi ptr [ %38, %35 ], [ %11, %9 ]
  %22 = phi i32 [ %37, %35 ], [ 0, %9 ]
  %23 = phi i32 [ %36, %35 ], [ 0, %9 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !144
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = and i32 %25, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = add nsw i32 %23, 1
  br label %35

33:                                               ; preds = %28
  %34 = add nsw i32 %22, 1
  br label %35

35:                                               ; preds = %33, %31, %20
  %36 = phi i32 [ %32, %31 ], [ %23, %33 ], [ %23, %20 ]
  %37 = phi i32 [ %22, %31 ], [ %34, %33 ], [ %22, %20 ]
  %38 = load ptr, ptr %21, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %13, label %20, !llvm.loop !247

40:                                               ; preds = %18, %49
  %41 = phi ptr [ %50, %49 ], [ %11, %18 ]
  %42 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !144
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = and i32 %43, -9
  %48 = or disjoint i32 %47, %19
  store i32 %48, ptr %42, align 8, !tbaa !144
  br label %49

49:                                               ; preds = %46, %40
  %50 = load ptr, ptr %41, align 8, !tbaa !43
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %40, !llvm.loop !248

52:                                               ; preds = %49, %18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  br label %53

53:                                               ; preds = %2, %5, %52
  %54 = phi i32 [ 4, %52 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_preview_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_preview_toggle_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_preview_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %68, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %5
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %10 = load ptr, ptr %6, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %21

14:                                               ; preds = %43
  %15 = icmp ne i32 %45, 0
  %16 = icmp eq i32 %44, 0
  %17 = select i1 %16, i1 true, i1 %15
  %18 = select i1 %17, i32 4, i32 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ 4, %9 ], [ %18, %14 ]
  br i1 %13, label %67, label %48

21:                                               ; preds = %9, %43
  %22 = phi ptr [ %46, %43 ], [ %12, %9 ]
  %23 = phi i32 [ %45, %43 ], [ 0, %9 ]
  %24 = phi i32 [ %44, %43 ], [ 0, %9 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !144
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !167
  %32 = getelementptr inbounds %struct.bNodeType, ptr %31, i64 0, i32 15
  %33 = load i16, ptr %32, align 2, !tbaa !249
  %34 = and i16 %33, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = and i32 %26, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = add nsw i32 %24, 1
  br label %43

41:                                               ; preds = %36
  %42 = add nsw i32 %23, 1
  br label %43

43:                                               ; preds = %41, %39, %29, %21
  %44 = phi i32 [ %24, %29 ], [ %40, %39 ], [ %24, %41 ], [ %24, %21 ]
  %45 = phi i32 [ %23, %29 ], [ %23, %39 ], [ %42, %41 ], [ %23, %21 ]
  %46 = load ptr, ptr %22, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %14, label %21, !llvm.loop !247

48:                                               ; preds = %19, %64
  %49 = phi ptr [ %65, %64 ], [ %12, %19 ]
  %50 = getelementptr inbounds %struct.bNode, ptr %49, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !144
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.bNode, ptr %49, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !167
  %57 = getelementptr inbounds %struct.bNodeType, ptr %56, i64 0, i32 15
  %58 = load i16, ptr %57, align 2, !tbaa !249
  %59 = and i16 %58, 4
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = and i32 %51, -5
  %63 = or disjoint i32 %62, %20
  store i32 %63, ptr %50, align 8, !tbaa !144
  br label %64

64:                                               ; preds = %61, %54, %48
  %65 = load ptr, ptr %49, align 8, !tbaa !43
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %48, !llvm.loop !248

67:                                               ; preds = %64, %19
  tail call void @snode_notify(ptr noundef %0, ptr noundef nonnull %3)
  br label %68

68:                                               ; preds = %2, %5, %67
  %69 = phi i32 [ 4, %67 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_options_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_options_toggle_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_options_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %7, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %20

13:                                               ; preds = %45
  %14 = icmp ne i32 %47, 0
  %15 = icmp eq i32 %46, 0
  %16 = select i1 %15, i1 true, i1 %14
  %17 = select i1 %16, i32 2, i32 0
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ 2, %9 ], [ %17, %13 ]
  br i1 %12, label %72, label %50

20:                                               ; preds = %9, %45
  %21 = phi ptr [ %48, %45 ], [ %11, %9 ]
  %22 = phi i32 [ %47, %45 ], [ 0, %9 ]
  %23 = phi i32 [ %46, %45 ], [ 0, %9 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !144
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !167
  %31 = getelementptr inbounds %struct.bNodeType, ptr %30, i64 0, i32 22
  %32 = load ptr, ptr %31, align 8, !tbaa !250
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.bNodeType, ptr %30, i64 0, i32 23
  %36 = load ptr, ptr %35, align 8, !tbaa !251
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34, %28
  %39 = and i32 %25, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = add nsw i32 %23, 1
  br label %45

43:                                               ; preds = %38
  %44 = add nsw i32 %22, 1
  br label %45

45:                                               ; preds = %43, %41, %34, %20
  %46 = phi i32 [ %42, %41 ], [ %23, %43 ], [ %23, %34 ], [ %23, %20 ]
  %47 = phi i32 [ %22, %41 ], [ %44, %43 ], [ %22, %34 ], [ %22, %20 ]
  %48 = load ptr, ptr %21, align 8, !tbaa !43
  %49 = icmp eq ptr %48, null
  br i1 %49, label %13, label %20, !llvm.loop !247

50:                                               ; preds = %18, %69
  %51 = phi ptr [ %70, %69 ], [ %11, %18 ]
  %52 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !144
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !167
  %59 = getelementptr inbounds %struct.bNodeType, ptr %58, i64 0, i32 22
  %60 = load ptr, ptr %59, align 8, !tbaa !250
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.bNodeType, ptr %58, i64 0, i32 23
  %64 = load ptr, ptr %63, align 8, !tbaa !251
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62, %56
  %67 = and i32 %53, -3
  %68 = or disjoint i32 %67, %19
  store i32 %68, ptr %52, align 8, !tbaa !144
  br label %69

69:                                               ; preds = %66, %62, %50
  %70 = load ptr, ptr %51, align 8, !tbaa !43
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %50, !llvm.loop !248

72:                                               ; preds = %69, %18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  br label %73

73:                                               ; preds = %2, %5, %72
  %74 = phi i32 [ 4, %72 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_hide_socket_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_socket_toggle_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_socket_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %114, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %114, label %9

9:                                                ; preds = %5
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %10 = load ptr, ptr %6, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %9, %43
  %15 = phi i1 [ %45, %43 ], [ %13, %9 ]
  %16 = phi ptr [ %44, %43 ], [ %12, %9 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !144
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 17
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !200
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %23, label %46, !llvm.loop !203

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 18
  br label %34

34:                                               ; preds = %38, %32
  %35 = phi ptr [ %33, %32 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %36, i64 0, i32 8
  %40 = load i16, ptr %39, align 2, !tbaa !200
  %41 = and i16 %40, 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %34, label %46, !llvm.loop !204

43:                                               ; preds = %34, %14
  %44 = load ptr, ptr %16, align 8, !tbaa !43
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %14, !llvm.loop !252

46:                                               ; preds = %43, %27, %38, %9
  %47 = phi i1 [ %13, %9 ], [ %15, %38 ], [ %15, %27 ], [ %45, %43 ]
  %48 = load ptr, ptr %11, align 8, !tbaa !43
  %49 = icmp eq ptr %48, null
  br i1 %49, label %111, label %50

50:                                               ; preds = %46, %108
  %51 = phi ptr [ %109, %108 ], [ %48, %46 ]
  %52 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !144
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %108, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 17
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = icmp eq ptr %58, null
  br i1 %47, label %79, label %60

60:                                               ; preds = %56
  br i1 %59, label %68, label %61

61:                                               ; preds = %60, %61
  %62 = phi ptr [ %66, %61 ], [ %58, %60 ]
  %63 = getelementptr inbounds %struct.bNodeSocket, ptr %62, i64 0, i32 8
  %64 = load i16, ptr %63, align 2, !tbaa !200
  %65 = and i16 %64, -3
  store i16 %65, ptr %63, align 2, !tbaa !200
  %66 = load ptr, ptr %62, align 8, !tbaa !43
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %61, !llvm.loop !205

68:                                               ; preds = %61, %60
  %69 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 18
  %70 = load ptr, ptr %69, align 8, !tbaa !43
  %71 = icmp eq ptr %70, null
  br i1 %71, label %108, label %72

72:                                               ; preds = %68, %72
  %73 = phi ptr [ %77, %72 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.bNodeSocket, ptr %73, i64 0, i32 8
  %75 = load i16, ptr %74, align 2, !tbaa !200
  %76 = and i16 %75, -3
  store i16 %76, ptr %74, align 2, !tbaa !200
  %77 = load ptr, ptr %73, align 8, !tbaa !43
  %78 = icmp eq ptr %77, null
  br i1 %78, label %108, label %72, !llvm.loop !206

79:                                               ; preds = %56
  br i1 %59, label %92, label %80

80:                                               ; preds = %79, %89
  %81 = phi ptr [ %90, %89 ], [ %58, %79 ]
  %82 = getelementptr inbounds %struct.bNodeSocket, ptr %81, i64 0, i32 23
  %83 = load ptr, ptr %82, align 8, !tbaa !207
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bNodeSocket, ptr %81, i64 0, i32 8
  %87 = load i16, ptr %86, align 2, !tbaa !200
  %88 = or i16 %87, 2
  store i16 %88, ptr %86, align 2, !tbaa !200
  br label %89

89:                                               ; preds = %85, %80
  %90 = load ptr, ptr %81, align 8, !tbaa !43
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %80, !llvm.loop !208

92:                                               ; preds = %89, %79
  %93 = getelementptr inbounds %struct.bNode, ptr %51, i64 0, i32 18
  %94 = load ptr, ptr %93, align 8, !tbaa !43
  %95 = icmp eq ptr %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %92, %105
  %97 = phi ptr [ %106, %105 ], [ %94, %92 ]
  %98 = load ptr, ptr %6, align 8, !tbaa !105
  %99 = tail call i32 @nodeCountSocketLinks(ptr noundef %98, ptr noundef nonnull %97) #15
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.bNodeSocket, ptr %97, i64 0, i32 8
  %103 = load i16, ptr %102, align 2, !tbaa !200
  %104 = or i16 %103, 2
  store i16 %104, ptr %102, align 2, !tbaa !200
  br label %105

105:                                              ; preds = %101, %96
  %106 = load ptr, ptr %97, align 8, !tbaa !43
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %96, !llvm.loop !209

108:                                              ; preds = %72, %105, %92, %68, %50
  %109 = load ptr, ptr %51, align 8, !tbaa !43
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %50, !llvm.loop !253

111:                                              ; preds = %108, %46
  %112 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %113 = load ptr, ptr %6, align 8, !tbaa !105
  tail call void @ntreeUpdateTree(ptr noundef %112, ptr noundef %113) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  br label %114

114:                                              ; preds = %2, %5, %111
  %115 = phi i32 [ 4, %111 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_mute_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_mute_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_mute_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 17, i32 1
  br label %11

11:                                               ; preds = %9, %45
  %12 = phi ptr [ %7, %9 ], [ %46, %45 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !144
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !167
  %20 = getelementptr inbounds %struct.bNodeType, ptr %19, i64 0, i32 39
  %21 = load ptr, ptr %20, align 8, !tbaa !254
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = xor i32 %14, 512
  store i32 %24, ptr %13, align 8, !tbaa !144
  %25 = load ptr, ptr %10, align 8, !tbaa !139
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bNodeTreePath, ptr %25, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !140
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bNodeTreePath, ptr %25, i64 0, i32 2
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %41, %33 ], [ %29, %31 ]
  %35 = phi ptr [ %37, %33 ], [ %32, %31 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !142
  %37 = getelementptr inbounds %struct.bNodeTreePath, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !142
  %39 = tail call zeroext i8 @nodeUpdateID(ptr noundef %38, ptr noundef %36) #15
  %40 = getelementptr inbounds %struct.bNodeTreePath, ptr %34, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !140
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !143

43:                                               ; preds = %33, %23, %27
  %44 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @nodeUpdate(ptr noundef %44, ptr noundef nonnull %12) #15
  br label %45

45:                                               ; preds = %11, %17, %43
  %46 = load ptr, ptr %12, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %11, !llvm.loop !255

48:                                               ; preds = %45, %2
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3)
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_delete_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !256
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2, %26
  %10 = phi ptr [ %11, %26 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !257
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !144
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !148
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !258
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !258
  br label %24

24:                                               ; preds = %20, %16
  %25 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @nodeFreeNode(ptr noundef %25, ptr noundef nonnull %10) #15
  br label %26

26:                                               ; preds = %9, %24
  %27 = icmp eq ptr %11, null
  br i1 %27, label %28, label %9, !llvm.loop !259

28:                                               ; preds = %26, %2
  %29 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %30 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @ntreeUpdateTree(ptr noundef %29, ptr noundef %30) #15
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3)
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_delete_reconnect(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_delete_reconnect_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_delete_reconnect_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !256
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2, %27
  %10 = phi ptr [ %11, %27 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !257
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !144
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @nodeInternalRelink(ptr noundef %17, ptr noundef nonnull %10) #15
  %18 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !148
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !258
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4, !tbaa !258
  br label %25

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @nodeFreeNode(ptr noundef %26, ptr noundef nonnull %10) #15
  br label %27

27:                                               ; preds = %9, %25
  %28 = icmp eq ptr %11, null
  br i1 %28, label %29, label %9, !llvm.loop !260

29:                                               ; preds = %27, %2
  %30 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %31 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @ntreeUpdateTree(ptr noundef %30, ptr noundef %31) #15
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3)
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_output_file_add_socket(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_output_file_add_socket_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 64, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_output_file_add_socket_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !261
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !264
  br label %20

12:                                               ; preds = %2
  %13 = icmp eq ptr %6, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call ptr @nodeGetActive(ptr noundef nonnull %16) #15
  br label %20

20:                                               ; preds = %12, %14, %18, %10
  %21 = phi ptr [ %11, %10 ], [ %16, %18 ], [ null, %14 ], [ null, %12 ]
  %22 = phi ptr [ %8, %10 ], [ %19, %18 ], [ null, %14 ], [ null, %12 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %26 = load i16, ptr %25, align 4, !tbaa !145
  %27 = icmp eq i16 %26, 223
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !223
  call void @RNA_string_get(ptr noundef %30, ptr noundef nonnull @.str.56, ptr noundef nonnull %4) #15
  %31 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22
  %32 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %21, ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef nonnull %31) #15
  call void @snode_notify(ptr noundef %0, ptr noundef %6)
  br label %33

33:                                               ; preds = %20, %24, %28
  %34 = phi i32 [ 4, %28 ], [ 2, %24 ], [ 2, %20 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %34
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_output_file_remove_active_socket(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_output_file_remove_active_socket_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_output_file_remove_active_socket_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104) #15
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !261
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !264
  br label %18

10:                                               ; preds = %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = call ptr @nodeGetActive(ptr noundef nonnull %14) #15
  br label %18

18:                                               ; preds = %10, %12, %16, %8
  %19 = phi ptr [ %9, %8 ], [ %14, %16 ], [ null, %12 ], [ null, %10 ]
  %20 = phi ptr [ %6, %8 ], [ %17, %16 ], [ null, %12 ], [ null, %10 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 8
  %24 = load i16, ptr %23, align 4, !tbaa !145
  %25 = icmp eq i16 %24, 223
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = call i32 @ntreeCompositOutputFileRemoveActiveSocket(ptr noundef %19, ptr noundef nonnull %20) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @snode_notify(ptr noundef %0, ptr noundef %4)
  br label %30

30:                                               ; preds = %26, %18, %22, %29
  %31 = phi i32 [ 4, %29 ], [ 2, %22 ], [ 2, %18 ], [ 2, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_output_file_move_active_socket(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_output_file_move_active_socket_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.71, ptr noundef nonnull @NODE_OT_output_file_move_active_socket.direction_items, i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_output_file_move_active_socket_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104) #15
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !261
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !105
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call ptr @nodeGetActive(ptr noundef nonnull %12) #15
  br label %16

16:                                               ; preds = %2, %8, %10, %14
  %17 = phi ptr [ %15, %14 ], [ null, %10 ], [ null, %8 ], [ %6, %2 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %21 = load i16, ptr %20, align 4, !tbaa !145
  %22 = icmp eq i16 %21, 223
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !265
  %26 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 17
  %27 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %25, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !266
  %29 = call ptr @BLI_findlink(ptr noundef nonnull %26, i32 noundef %28) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !223
  %34 = call i32 @RNA_enum_get(ptr noundef %33, ptr noundef nonnull @.str.71) #15
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !268
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  call void @BLI_remlink(ptr noundef nonnull %26, ptr noundef nonnull %29) #15
  call void @BLI_insertlinkbefore(ptr noundef nonnull %26, ptr noundef nonnull %38, ptr noundef nonnull %29) #15
  br label %45

41:                                               ; preds = %31
  %42 = load ptr, ptr %29, align 8, !tbaa !269
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  call void @BLI_remlink(ptr noundef nonnull %26, ptr noundef nonnull %29) #15
  call void @BLI_insertlinkafter(ptr noundef nonnull %26, ptr noundef nonnull %42, ptr noundef nonnull %29) #15
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ 1, %44 ], [ -1, %40 ]
  %47 = load i32, ptr %27, align 8, !tbaa !266
  %48 = add nsw i32 %47, %46
  store i32 %48, ptr %27, align 8, !tbaa !266
  call void @snode_notify(ptr noundef %0, ptr noundef %4)
  br label %49

49:                                               ; preds = %41, %36, %23, %16, %19, %45
  %50 = phi i32 [ 4, %45 ], [ 2, %19 ], [ 2, %16 ], [ 2, %23 ], [ 2, %36 ], [ 2, %41 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %50
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_node_copy_color(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.73, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.75, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_copy_color_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_copy_color_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @nodeGetActive(ptr noundef nonnull %5) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %16 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 16
  %17 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 16, i64 1
  %18 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 16, i64 2
  br label %19

19:                                               ; preds = %14, %41
  %20 = phi ptr [ %12, %14 ], [ %42, %41 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !144
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq ptr %20, %8
  %26 = or i1 %25, %24
  br i1 %26, label %41, label %27

27:                                               ; preds = %19
  %28 = load i32, ptr %15, align 8, !tbaa !144
  %29 = and i32 %28, 32768
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = or i32 %22, 32768
  store i32 %32, ptr %21, align 8, !tbaa !144
  %33 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 16
  %34 = load float, ptr %16, align 4, !tbaa !115
  store float %34, ptr %33, align 4, !tbaa !115
  %35 = load float, ptr %17, align 4, !tbaa !115
  %36 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 16, i64 1
  store float %35, ptr %36, align 4, !tbaa !115
  %37 = load float, ptr %18, align 4, !tbaa !115
  %38 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 16, i64 2
  store float %37, ptr %38, align 4, !tbaa !115
  br label %41

39:                                               ; preds = %27
  %40 = and i32 %22, -32769
  store i32 %40, ptr %21, align 8, !tbaa !144
  br label %41

41:                                               ; preds = %19, %39, %31
  %42 = load ptr, ptr %20, align 8, !tbaa !43
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %19, !llvm.loop !270

44:                                               ; preds = %41, %10
  tail call void @ED_node_sort(ptr noundef nonnull %5) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  br label %45

45:                                               ; preds = %7, %2, %44
  %46 = phi i32 [ 4, %44 ], [ 2, %2 ], [ 2, %7 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_clipboard_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_clipboard_copy_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_clipboard_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  tail call void @BKE_node_clipboard_clear() #15
  tail call void @BKE_node_clipboard_init(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %20, %2
  %10 = load ptr, ptr %6, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %23

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !144
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @nodeCopyNode(ptr noundef null, ptr noundef nonnull %13) #15
  tail call void @BKE_node_clipboard_add_node(ptr noundef %19) #15
  br label %20

20:                                               ; preds = %12, %18
  %21 = load ptr, ptr %13, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %9, label %12, !llvm.loop !271

23:                                               ; preds = %9, %44
  %24 = phi ptr [ %45, %44 ], [ %10, %9 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !144
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !231
  %32 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !272
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !144
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !231
  store ptr %42, ptr %32, align 8, !tbaa !272
  br label %44

43:                                               ; preds = %35
  tail call void @nodeDetachNode(ptr noundef %31) #15
  br label %44

44:                                               ; preds = %29, %43, %40, %23
  %45 = load ptr, ptr %24, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %23, !llvm.loop !273

47:                                               ; preds = %44, %9
  %48 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %47, %94
  %52 = phi ptr [ %95, %94 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !227
  %55 = icmp eq ptr %54, null
  br i1 %55, label %94, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !144
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %94, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !229
  %64 = icmp eq ptr %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.bNode, ptr %63, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !144
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %72 = tail call ptr %71(i64 noundef 56, ptr noundef nonnull @.str.103) #15
  %73 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !230
  %75 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 6
  store i32 %74, ptr %75, align 8, !tbaa !230
  %76 = load ptr, ptr %53, align 8, !tbaa !227
  %77 = getelementptr inbounds %struct.bNode, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !231
  %79 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 3
  store ptr %78, ptr %79, align 8, !tbaa !227
  %80 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !232
  %82 = getelementptr inbounds %struct.bNodeSocket, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !233
  %84 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 5
  store ptr %83, ptr %84, align 8, !tbaa !232
  %85 = load ptr, ptr %62, align 8, !tbaa !229
  %86 = getelementptr inbounds %struct.bNode, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !231
  %88 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !229
  %89 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !234
  %91 = getelementptr inbounds %struct.bNodeSocket, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !233
  %93 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 4
  store ptr %92, ptr %93, align 8, !tbaa !234
  tail call void @BKE_node_clipboard_add_link(ptr noundef %72) #15
  br label %94

94:                                               ; preds = %51, %56, %61, %65, %70
  %95 = load ptr, ptr %52, align 8, !tbaa !43
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %51, !llvm.loop !274

97:                                               ; preds = %94, %47
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_clipboard_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_clipboard_paste_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_clipboard_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = tail call zeroext i8 @BKE_node_clipboard_validate() #15
  %7 = tail call ptr @BKE_node_clipboard_get_nodes() #15
  %8 = tail call ptr @BKE_node_clipboard_get_links() #15
  %9 = load ptr, ptr %7, align 8, !tbaa !275
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !276
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.105) #15
  br label %104

14:                                               ; preds = %2
  %15 = tail call i32 @BKE_node_clipboard_get_type() #15
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 9
  %17 = load i32, ptr %16, align 8, !tbaa !147
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !276
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.106) #15
  br label %104

22:                                               ; preds = %14
  %23 = icmp eq i8 %6, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !276
  tail call void @BKE_report(ptr noundef %26, i32 noundef 16, ptr noundef nonnull @.str.107) #15
  br label %27

27:                                               ; preds = %24, %22
  %28 = load ptr, ptr %7, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4, i64 2
  br label %33

33:                                               ; preds = %30, %45
  %34 = phi ptr [ %28, %30 ], [ %47, %45 ]
  %35 = phi i8 [ 1, %30 ], [ %46, %45 ]
  %36 = getelementptr inbounds %struct.bNode, ptr %34, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !167
  %38 = getelementptr inbounds %struct.bNodeType, ptr %37, i64 0, i32 38
  %39 = load ptr, ptr %38, align 8, !tbaa !277
  %40 = tail call i32 %39(ptr noundef nonnull %34, ptr noundef %5) #15
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load ptr, ptr %31, align 8, !tbaa !276
  %44 = getelementptr inbounds %struct.bNode, ptr %34, i64 0, i32 6
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.108, ptr noundef nonnull %44, ptr noundef nonnull %32) #15
  br label %45

45:                                               ; preds = %33, %42
  %46 = phi i8 [ %35, %33 ], [ 0, %42 ]
  %47 = load ptr, ptr %34, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %33, !llvm.loop !278

49:                                               ; preds = %45
  %50 = icmp eq i8 %46, 0
  br i1 %50, label %104, label %51

51:                                               ; preds = %27, %49
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  tail call void @node_deselect_all(ptr noundef %3) #15
  %52 = load ptr, ptr %7, align 8, !tbaa !43
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %57, %51
  %55 = load ptr, ptr %7, align 8, !tbaa !43
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %67

57:                                               ; preds = %51, %57
  %58 = phi ptr [ %62, %57 ], [ %52, %51 ]
  %59 = tail call ptr @nodeCopyNode(ptr noundef %5, ptr noundef nonnull %58) #15
  %60 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 20
  %61 = load ptr, ptr %60, align 8, !tbaa !148
  tail call void @id_us_plus(ptr noundef %61) #15
  tail call void @nodeSetSelected(ptr noundef %59, i8 noundef zeroext 1) #15
  %62 = load ptr, ptr %58, align 8, !tbaa !43
  %63 = icmp eq ptr %62, null
  br i1 %63, label %54, label %57, !llvm.loop !279

64:                                               ; preds = %77, %54
  %65 = load ptr, ptr %8, align 8, !tbaa !43
  %66 = icmp eq ptr %65, null
  br i1 %66, label %101, label %80

67:                                               ; preds = %54, %77
  %68 = phi ptr [ %78, %77 ], [ %55, %54 ]
  %69 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !231
  %71 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !272
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.bNode, ptr %72, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !231
  store ptr %76, ptr %71, align 8, !tbaa !272
  br label %77

77:                                               ; preds = %74, %67
  %78 = load ptr, ptr %68, align 8, !tbaa !43
  %79 = icmp eq ptr %78, null
  br i1 %79, label %64, label %67, !llvm.loop !280

80:                                               ; preds = %64, %80
  %81 = phi ptr [ %99, %80 ], [ %65, %64 ]
  %82 = getelementptr inbounds %struct.bNodeLink, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !229
  %84 = getelementptr inbounds %struct.bNode, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !231
  %86 = getelementptr inbounds %struct.bNodeLink, ptr %81, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !234
  %88 = getelementptr inbounds %struct.bNodeSocket, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !233
  %90 = getelementptr inbounds %struct.bNodeLink, ptr %81, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !227
  %92 = getelementptr inbounds %struct.bNode, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !231
  %94 = getelementptr inbounds %struct.bNodeLink, ptr %81, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !232
  %96 = getelementptr inbounds %struct.bNodeSocket, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !233
  %98 = tail call ptr @nodeAddLink(ptr noundef %5, ptr noundef %85, ptr noundef %89, ptr noundef %93, ptr noundef %97) #15
  %99 = load ptr, ptr %81, align 8, !tbaa !43
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %80, !llvm.loop !281

101:                                              ; preds = %80, %64
  %102 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %103 = load ptr, ptr %4, align 8, !tbaa !105
  tail call void @ntreeUpdateTree(ptr noundef %102, ptr noundef %103) #15
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3)
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3)
  br label %104

104:                                              ; preds = %49, %101, %19, %11
  %105 = phi i32 [ 2, %11 ], [ 2, %19 ], [ 4, %101 ], [ 2, %49 ]
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_tree_socket_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.82, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.84, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ntree_socket_add_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.85, ptr noundef nonnull @node_socket_in_out_items, i32 noundef 1, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.65) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ntree_socket_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !223
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.85) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @RNA_id_pointer_create(ptr noundef %6, ptr noundef nonnull %3) #15
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 22
  br label %13

13:                                               ; preds = %17, %11
  %14 = phi ptr [ %12, %11 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 8
  %19 = load i16, ptr %18, align 2, !tbaa !200
  %20 = and i16 %19, 1
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %13, label %33, !llvm.loop !282

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 23
  br label %24

24:                                               ; preds = %28, %22
  %25 = phi ptr [ %23, %22 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !200
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %24, label %33, !llvm.loop !282

33:                                               ; preds = %28, %24, %17, %13
  %34 = phi ptr [ %15, %17 ], [ null, %13 ], [ %26, %28 ], [ null, %24 ]
  %35 = phi ptr [ @.str.109, %13 ], [ @.str.109, %17 ], [ @.str.110, %24 ], [ @.str.110, %28 ]
  %36 = icmp eq ptr %34, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %34, i64 0, i32 12
  %39 = load ptr, ptr %34, align 8, !tbaa !269
  %40 = getelementptr inbounds %struct.bNodeSocket, ptr %34, i64 0, i32 5
  %41 = call ptr @ntreeInsertSocketInterface(ptr noundef %6, i32 noundef %9, ptr noundef nonnull %38, ptr noundef %39, ptr noundef nonnull %40) #15
  br label %44

42:                                               ; preds = %33
  %43 = call ptr @ntreeAddSocketInterface(ptr noundef %6, i32 noundef %9, ptr noundef nonnull @.str.111, ptr noundef nonnull %35) #15
  br label %44

44:                                               ; preds = %42, %37
  %45 = phi ptr [ %41, %37 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 22
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44, %49
  %50 = phi ptr [ %54, %49 ], [ %47, %44 ]
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 8
  %52 = load i16, ptr %51, align 2, !tbaa !200
  %53 = and i16 %52, -2
  store i16 %53, ptr %51, align 2, !tbaa !200
  %54 = load ptr, ptr %50, align 8, !tbaa !43
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %49, !llvm.loop !283

56:                                               ; preds = %49, %44
  %57 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 23
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %65, %60 ], [ %58, %56 ]
  %62 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 8
  %63 = load i16, ptr %62, align 2, !tbaa !200
  %64 = and i16 %63, -2
  store i16 %64, ptr %62, align 2, !tbaa !200
  %65 = load ptr, ptr %61, align 8, !tbaa !43
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %60, !llvm.loop !284

67:                                               ; preds = %60, %56
  %68 = getelementptr inbounds %struct.bNodeSocket, ptr %45, i64 0, i32 8
  %69 = load i16, ptr %68, align 2, !tbaa !200
  %70 = or i16 %69, 1
  store i16 %70, ptr %68, align 2, !tbaa !200
  %71 = call ptr @CTX_data_main(ptr noundef %0) #15
  call void @ntreeUpdateTree(ptr noundef %71, ptr noundef %6) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_tree_socket_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.87, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.88, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.89, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ntree_socket_remove_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ntree_socket_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 22
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %6, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 8
  %13 = load i16, ptr %12, align 2, !tbaa !200
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %7, label %16, !llvm.loop !282

16:                                               ; preds = %7, %11
  %17 = phi ptr [ %9, %11 ], [ null, %7 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 23
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ %20, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !200
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %21, label %30, !llvm.loop !282

30:                                               ; preds = %25, %21, %16
  %31 = phi ptr [ %17, %16 ], [ %23, %25 ], [ null, %21 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !269
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !268
  br label %39

39:                                               ; preds = %33, %36
  %40 = phi ptr [ %38, %36 ], [ %34, %33 ]
  tail call void @ntreeRemoveSocketInterface(ptr noundef %5, ptr noundef nonnull %31) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %40, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !200
  %45 = or i16 %44, 1
  store i16 %45, ptr %43, align 2, !tbaa !200
  br label %46

46:                                               ; preds = %42, %39
  %47 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  tail call void @ntreeUpdateTree(ptr noundef %47, ptr noundef %5) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  br label %48

48:                                               ; preds = %30, %46
  %49 = phi i32 [ 4, %46 ], [ 2, %30 ]
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_tree_socket_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.90, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.92, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ntree_socket_move_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.71, ptr noundef nonnull @move_direction_items, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ntree_socket_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !223
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.71) #15
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 22
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %9, %2 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !200
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %10, label %19, !llvm.loop !282

19:                                               ; preds = %10, %14
  %20 = phi ptr [ %12, %14 ], [ null, %10 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 23
  br label %24

24:                                               ; preds = %28, %22
  %25 = phi ptr [ %23, %22 ], [ %26, %28 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 2, !tbaa !200
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %24, label %33, !llvm.loop !282

33:                                               ; preds = %28, %24, %19
  %34 = phi ptr [ %9, %19 ], [ %23, %24 ], [ %23, %28 ]
  %35 = phi ptr [ %20, %19 ], [ %26, %28 ], [ null, %24 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  switch i32 %8, label %49 [
    i32 1, label %38
    i32 2, label %44
  ]

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !268
  tail call void @BLI_remlink(ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %34, ptr noundef nonnull %40, ptr noundef nonnull %35) #15
  br label %49

43:                                               ; preds = %38
  tail call void @BLI_addhead(ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  br label %49

44:                                               ; preds = %37
  %45 = load ptr, ptr %35, align 8, !tbaa !269
  tail call void @BLI_remlink(ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %34, ptr noundef nonnull %45, ptr noundef nonnull %35) #15
  br label %49

48:                                               ; preds = %44
  tail call void @BLI_addtail(ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  br label %49

49:                                               ; preds = %47, %48, %42, %43, %37
  %50 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  tail call void @ntreeUpdateTree(ptr noundef %50, ptr noundef %5) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  br label %51

51:                                               ; preds = %33, %49
  %52 = phi i32 [ 4, %49 ], [ 2, %33 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_shader_script_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.93, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.95, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_shader_script_update_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_shader_script_update_poll, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @node_shader_script_update_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.NodeTreeIterStore, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.NodeTreeIterStore, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %13 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef nonnull @RNA_ShaderNodeScript) #15
  %14 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 115
  %15 = call ptr @RE_engines_find(ptr noundef nonnull %14) #15
  %16 = call ptr @RE_engine_create(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !276
  %19 = getelementptr inbounds %struct.RenderEngine, ptr %16, i64 0, i32 12
  store ptr %18, ptr %19, align 8, !tbaa !285
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !261
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8, !tbaa !264
  br label %33

25:                                               ; preds = %2
  %26 = icmp eq ptr %13, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.SpaceNode, ptr %13, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !105
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call ptr @nodeGetActive(ptr noundef nonnull %29) #15
  br label %33

33:                                               ; preds = %25, %27, %31, %23
  %34 = phi ptr [ %21, %23 ], [ %32, %31 ], [ null, %27 ], [ null, %25 ]
  %35 = phi ptr [ %24, %23 ], [ %29, %31 ], [ null, %27 ], [ null, %25 ]
  %36 = icmp eq ptr %34, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.RenderEngineType, ptr %15, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !287
  call void %39(ptr noundef %16, ptr noundef %35, ptr noundef nonnull %34) #15
  br label %86

40:                                               ; preds = %33
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef nonnull @RNA_Text) #15
  %41 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !261
  %43 = icmp eq ptr %42, null
  br i1 %43, label %86, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %5, ptr noundef %11) #15
  %45 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %59

47:                                               ; preds = %44, %56
  %48 = load ptr, ptr %6, align 8, !tbaa !43
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %48, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !147
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bNodeTree, ptr %48, i64 0, i32 15
  store i16 0, ptr %55, align 2, !tbaa !289
  br label %56

56:                                               ; preds = %50, %54, %47
  %57 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #15
  %58 = icmp eq i8 %57, 1
  br i1 %58, label %47, label %59, !llvm.loop !290

59:                                               ; preds = %56, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %8, ptr noundef %11) #15
  %60 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %62, label %83

62:                                               ; preds = %59, %77
  %63 = phi i8 [ %78, %77 ], [ 0, %59 ]
  %64 = load ptr, ptr %9, align 8, !tbaa !43
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.bNodeTree, ptr %64, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !147
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.bNodeTree, ptr %64, i64 0, i32 15
  %72 = load i16, ptr %71, align 2, !tbaa !289
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = call fastcc zeroext i8 @node_shader_script_update_text_recursive(ptr noundef %16, ptr noundef %15, ptr noundef nonnull %64, ptr noundef nonnull %42), !range !291
  %76 = or i8 %75, %63
  br label %77

77:                                               ; preds = %66, %74, %70, %62
  %78 = phi i8 [ %63, %70 ], [ %76, %74 ], [ %63, %66 ], [ %63, %62 ]
  %79 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #15
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %62, label %81, !llvm.loop !292

81:                                               ; preds = %77
  %82 = icmp eq i8 %78, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #15
  br i1 %82, label %84, label %86

83:                                               ; preds = %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #15
  br label %84

84:                                               ; preds = %83, %81
  %85 = load ptr, ptr %17, align 8, !tbaa !276
  call void @BKE_report(ptr noundef %85, i32 noundef 2, ptr noundef nonnull @.str.113) #15
  br label %86

86:                                               ; preds = %40, %84, %81, %37
  %87 = phi i32 [ 4, %37 ], [ 4, %81 ], [ 2, %84 ], [ 2, %40 ]
  call void @RE_engine_free(ptr noundef %16) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal i32 @node_shader_script_update_poll(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 115
  %6 = tail call ptr @RE_engines_find(ptr noundef nonnull %5) #15
  %7 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %8 = icmp eq ptr %6, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.RenderEngineType, ptr %6, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !287
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef nonnull @RNA_ShaderNodeScript) #15
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !261
  %16 = icmp eq ptr %15, null
  %17 = icmp ne ptr %7, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = call ptr @nodeGetActive(ptr noundef nonnull %21) #15
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = phi ptr [ %24, %23 ], [ null, %19 ], [ %15, %13 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !145
  %31 = icmp eq i16 %30, 171
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !148
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 21
  %38 = load ptr, ptr %37, align 8, !tbaa !265
  %39 = getelementptr inbounds %struct.NodeShaderScript, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !109
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36, %32
  %43 = call i32 @ED_operator_node_editable(ptr noundef %0) #15
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi i1 [ false, %42 ], [ true, %36 ]
  %46 = phi i32 [ %43, %42 ], [ undef, %36 ]
  br i1 %45, label %47, label %52

47:                                               ; preds = %44, %28, %25
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef nonnull @RNA_Text) #15
  %48 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !261
  %50 = icmp ne ptr %49, null
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %47, %1, %9, %44
  %53 = phi i32 [ %46, %44 ], [ 0, %9 ], [ 0, %1 ], [ %51, %47 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local void @NODE_OT_viewer_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.96, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.97, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.98, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewer_border_exec, ptr %5, align 8, !tbaa !221
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !164
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %8, align 8, !tbaa !163
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !165
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  ret void
}

declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @viewer_border_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.rcti, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #15
  %5 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.10) #15
  %6 = call ptr @BKE_image_acquire_ibuf(ptr noundef %5, ptr noundef null, ptr noundef nonnull %3) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %117, label %8

8:                                                ; preds = %2
  %9 = call ptr @CTX_wm_region(ptr noundef %0) #15
  %10 = call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %4) #15
  %13 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !293
  %15 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !294
  %17 = getelementptr inbounds %struct.ImBuf, ptr %6, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !297
  %19 = sitofp i32 %16 to float
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 15
  %21 = load float, ptr %20, align 4, !tbaa !298
  %22 = fmul float %21, %19
  %23 = sitofp i32 %18 to float
  %24 = fmul float %21, %23
  %25 = fcmp ogt float %22, 0.000000e+00
  br i1 %25, label %26, label %38

26:                                               ; preds = %8
  %27 = load i32, ptr %4, align 4, !tbaa !299
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !300
  %31 = sitofp i16 %30 to float
  %32 = call float @llvm.fmuladd.f32(float %31, float -5.000000e-01, float %28)
  %33 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 13
  %34 = load float, ptr %33, align 4, !tbaa !302
  %35 = fsub float %32, %34
  %36 = fdiv float %35, %22
  %37 = fadd float %36, 5.000000e-01
  br label %38

38:                                               ; preds = %26, %8
  %39 = phi float [ %37, %26 ], [ 0.000000e+00, %8 ]
  %40 = fcmp ogt float %24, 0.000000e+00
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = sitofp i32 %14 to float
  %43 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 6
  %44 = load i16, ptr %43, align 2, !tbaa !303
  %45 = sitofp i16 %44 to float
  %46 = call float @llvm.fmuladd.f32(float %45, float -5.000000e-01, float %42)
  %47 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 14
  %48 = load float, ptr %47, align 8, !tbaa !304
  %49 = fsub float %46, %48
  %50 = fdiv float %49, %24
  %51 = fadd float %50, 5.000000e-01
  br label %52

52:                                               ; preds = %38, %41
  %53 = phi float [ %51, %41 ], [ 0.000000e+00, %38 ]
  %54 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !305
  br i1 %25, label %56, label %69

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !306
  %59 = sitofp i32 %58 to float
  %60 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 5
  %61 = load i16, ptr %60, align 8, !tbaa !300
  %62 = sitofp i16 %61 to float
  %63 = call float @llvm.fmuladd.f32(float %62, float -5.000000e-01, float %59)
  %64 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 13
  %65 = load float, ptr %64, align 4, !tbaa !302
  %66 = fsub float %63, %65
  %67 = fdiv float %66, %22
  %68 = fadd float %67, 5.000000e-01
  br label %69

69:                                               ; preds = %56, %52
  %70 = phi float [ %68, %56 ], [ 0.000000e+00, %52 ]
  br i1 %40, label %71, label %82

71:                                               ; preds = %69
  %72 = sitofp i32 %55 to float
  %73 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 6
  %74 = load i16, ptr %73, align 2, !tbaa !303
  %75 = sitofp i16 %74 to float
  %76 = call float @llvm.fmuladd.f32(float %75, float -5.000000e-01, float %72)
  %77 = getelementptr inbounds %struct.SpaceNode, ptr %10, i64 0, i32 14
  %78 = load float, ptr %77, align 8, !tbaa !304
  %79 = fsub float %76, %78
  %80 = fdiv float %79, %24
  %81 = fadd float %80, 5.000000e-01
  br label %82

82:                                               ; preds = %69, %71
  %83 = phi float [ %81, %71 ], [ 0.000000e+00, %69 ]
  %84 = fcmp ogt float %39, 0.000000e+00
  %85 = select i1 %84, float %39, float 0.000000e+00
  %86 = fcmp ogt float %53, 0.000000e+00
  %87 = select i1 %86, float %53, float 0.000000e+00
  %88 = fcmp olt float %70, 1.000000e+00
  %89 = select i1 %88, float %70, float 1.000000e+00
  %90 = fcmp olt float %83, 1.000000e+00
  %91 = select i1 %90, float %83, float 1.000000e+00
  %92 = fcmp olt float %85, %89
  %93 = fcmp olt float %87, %91
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %112

95:                                               ; preds = %82
  %96 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 21
  store float %85, ptr %96, align 8, !tbaa.struct !307
  %97 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 21, i32 1
  store float %89, ptr %97, align 4, !tbaa.struct !308
  %98 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 21, i32 2
  store float %87, ptr %98, align 8, !tbaa.struct !309
  %99 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 21, i32 3
  store float %91, ptr %99, align 4, !tbaa.struct !310
  %100 = fcmp oeq float %85, 0.000000e+00
  %101 = fcmp oeq float %87, 0.000000e+00
  %102 = select i1 %100, i1 %101, i1 false
  %103 = fcmp oeq float %89, 1.000000e+00
  %104 = and i1 %102, %103
  %105 = fcmp oeq float %91, 1.000000e+00
  %106 = select i1 %104, i1 %105, i1 false
  %107 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 12
  %108 = load i32, ptr %107, align 4, !tbaa !311
  %109 = and i32 %108, -17
  %110 = select i1 %106, i32 0, i32 16
  %111 = or disjoint i32 %109, %110
  store i32 %111, ptr %107, align 4, !tbaa !311
  call void @snode_notify(ptr noundef %0, ptr noundef %10)
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  br label %116

112:                                              ; preds = %82
  %113 = getelementptr inbounds %struct.bNodeTree, ptr %12, i64 0, i32 12
  %114 = load i32, ptr %113, align 4, !tbaa !311
  %115 = and i32 %114, -17
  store i32 %115, ptr %113, align 4, !tbaa !311
  br label %116

116:                                              ; preds = %112, %95
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %117

117:                                              ; preds = %116, %2
  %118 = load ptr, ptr %3, align 8, !tbaa !43
  call void @BKE_image_release_ibuf(ptr noundef %5, ptr noundef %6, ptr noundef %118) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 4
}

declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_clear_viewer_border(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !157
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.100, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %3, align 8, !tbaa !159
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_viewer_border_exec, ptr %4, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !163
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !165
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_viewer_border_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !311
  %8 = and i32 %7, -17
  store i32 %8, ptr %6, align 4, !tbaa !311
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3)
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #15
  ret i32 4
}

declare void @ntreeLocalMerge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compo_breakjob(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = load i16, ptr %3, align 2, !tbaa !110
  %5 = icmp ne i16 %4, 0
  %6 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @compo_statsdrawjob(ptr nocapture noundef %0, ptr nocapture readnone %1) #11 {
  %3 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  store i16 1, ptr %4, align 2, !tbaa !110
  %5 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 6
  store i16 1, ptr %5, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @compo_progressjob(ptr nocapture noundef readonly %0, float noundef %1) #11 {
  %3 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  store float %1, ptr %4, align 4, !tbaa !115
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @compo_redrawjob(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  store i16 1, ptr %3, align 2, !tbaa !110
  ret void
}

declare void @ntreeCompositExecTree(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compo_tag_output_nodes(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = and i32 %1, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %1, 1
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %6, %30
  %12 = phi ptr [ %4, %6 ], [ %31, %30 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 8
  %14 = load i16, ptr %13, align 4, !tbaa !145
  switch i16 %14, label %30 [
    i16 222, label %15
    i16 201, label %20
    i16 240, label %20
    i16 2, label %25
  ]

15:                                               ; preds = %11
  br i1 %10, label %30, label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !144
  %19 = or i32 %18, 131072
  store i32 %19, ptr %17, align 8, !tbaa !144
  br label %30

20:                                               ; preds = %11, %11
  br i1 %8, label %30, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !144
  %24 = or i32 %23, 131072
  store i32 %24, ptr %22, align 8, !tbaa !144
  br label %30

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !148
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @compo_tag_output_nodes(ptr noundef nonnull %27, i32 noundef %1)
  br label %30

30:                                               ; preds = %11, %16, %15, %29, %25, %20, %21
  %31 = load ptr, ptr %12, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %11, !llvm.loop !312

33:                                               ; preds = %30, %2
  ret void
}

declare void @ntreeLocalSync(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @node_get_resize_cursor(i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #2

declare ptr @nodeCopyNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

declare void @ED_node_tag_update_id(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @node_duplicate_reparent_recursive(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !144
  %4 = or i32 %3, 256
  store i32 %4, ptr %2, align 8, !tbaa !144
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi ptr [ %0, %1 ], [ %8, %10 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !272
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !144
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %5, label %15, !llvm.loop !313

15:                                               ; preds = %10
  %16 = and i32 %12, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call fastcc void @node_duplicate_reparent_recursive(ptr noundef nonnull %8)
  br label %19

19:                                               ; preds = %18, %15
  %20 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !231
  tail call void @nodeDetachNode(ptr noundef %21) #15
  %22 = load ptr, ptr %20, align 8, !tbaa !231
  %23 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !231
  tail call void @nodeAttachNode(ptr noundef %22, ptr noundef %24) #15
  br label %25

25:                                               ; preds = %5, %19
  ret void
}

declare void @nodeSetSelected(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @nodeDetachNode(ptr noundef) local_unnamed_addr #2

declare void @nodeAttachNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RE_ReadRenderResult(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeCompositTagRender(ptr noundef) local_unnamed_addr #2

declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

declare void @RE_MergeFullSample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeInternalRelink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ntreeCompositOutputFileAddSocket(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ntreeCompositOutputFileRemoveActiveSocket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_node_sort(ptr noundef) local_unnamed_addr #2

declare void @BKE_node_clipboard_clear() local_unnamed_addr #2

declare void @BKE_node_clipboard_init(ptr noundef) local_unnamed_addr #2

declare void @BKE_node_clipboard_add_node(ptr noundef) local_unnamed_addr #2

declare void @BKE_node_clipboard_add_link(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_node_clipboard_validate() local_unnamed_addr #2

declare ptr @BKE_node_clipboard_get_nodes() local_unnamed_addr #2

declare ptr @BKE_node_clipboard_get_links() local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_node_clipboard_get_type() local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @node_deselect_all(ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ntreeInsertSocketInterface(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ntreeAddSocketInterface(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeRemoveSocketInterface(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

declare ptr @RE_engine_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @node_shader_script_update_text_recursive(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 15
  store i16 1, ptr %5, align 2, !tbaa !289
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderEngineType, ptr %1, i64 0, i32 10
  br label %11

11:                                               ; preds = %9, %33
  %12 = phi ptr [ %7, %9 ], [ %35, %33 ]
  %13 = phi i8 [ 0, %9 ], [ %34, %33 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !145
  switch i16 %15, label %33 [
    i16 2, label %16
    i16 171, label %27
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !148
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 15
  %22 = load i16, ptr %21, align 2, !tbaa !289
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = tail call fastcc zeroext i8 @node_shader_script_update_text_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %18, ptr noundef %3), !range !291
  %26 = or i8 %25, %13
  br label %33

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !148
  %30 = icmp eq ptr %29, %3
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 8, !tbaa !287
  tail call void %32(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %12) #15
  br label %33

33:                                               ; preds = %11, %16, %20, %24, %31, %27
  %34 = phi i8 [ 1, %31 ], [ %13, %27 ], [ %13, %20 ], [ %26, %24 ], [ %13, %16 ], [ %13, %11 ]
  %35 = load ptr, ptr %12, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11, !llvm.loop !314

37:                                               ; preds = %33, %4
  %38 = phi i8 [ 0, %4 ], [ %34, %33 ]
  ret i8 %38
}

declare void @RE_engine_free(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !37, i64 2090}
!35 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !37, i64 2104, !41, i64 2108, !41, i64 2112, !37, i64 2116}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!"int", !37, i64 0}
!42 = !{!35, !37, i64 2080}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !36, i64 0}
!45 = !{!"CompoJob", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !41, i64 52}
!46 = !{!45, !36, i64 8}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !36, i64 24}
!51 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!52 = !{!53, !37, i64 72}
!53 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !37, i64 72, !37, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!54 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!55 = !{!53, !36, i64 96}
!56 = !{!57, !36, i64 40}
!57 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !41, i64 36, !36, i64 40, !58, i64 48, !36, i64 88, !59, i64 96, !61, i64 5360, !36, i64 10520, !37, i64 10528, !60, i64 10536, !60, i64 10540, !60, i64 10544, !60, i64 10548, !60, i64 10552, !37, i64 10556, !37, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !62, i64 10568}
!58 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!59 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !60, i64 12, !41, i64 16, !60, i64 20, !60, i64 24, !41, i64 28, !60, i64 32, !41, i64 36, !37, i64 40, !61, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !41, i64 5256, !41, i64 5260}
!60 = !{!"float", !37, i64 0}
!61 = !{!"Histogram", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !60, i64 5128, !60, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !37, i64 5144}
!62 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!63 = !{!64, !40, i64 1250}
!64 = !{!"Image", !65, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !60, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !37, i64 1316, !37, i64 1317, !40, i64 1318, !37, i64 1320, !60, i64 1336, !60, i64 1340, !66, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!65 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!66 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!67 = !{!68, !40, i64 232}
!68 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !60, i64 36, !37, i64 40, !69, i64 56, !36, i64 216, !36, i64 224, !40, i64 232, !40, i64 234, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !60, i64 252, !37, i64 256, !39, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !41, i64 360, !41, i64 364, !40, i64 368, !40, i64 370, !40, i64 372, !40, i64 374, !39, i64 376, !36, i64 392}
!69 = !{!"View2D", !70, i64 0, !70, i64 16, !54, i64 32, !54, i64 48, !54, i64 64, !37, i64 80, !37, i64 88, !60, i64 96, !60, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!70 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!71 = distinct !{!71, !48, !49}
!72 = !{!45, !41, i64 52}
!73 = !{!45, !36, i64 16}
!74 = !{!75, !37, i64 246}
!75 = !{!"Scene", !65, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !76, i64 280, !83, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !84, i64 4400, !85, i64 4416, !88, i64 4600, !36, i64 4608, !89, i64 4616, !36, i64 4640, !90, i64 4648, !90, i64 4656, !78, i64 4664, !79, i64 4824, !66, i64 4888, !36, i64 4952}
!76 = !{!"RenderData", !77, i64 0, !36, i64 248, !36, i64 256, !80, i64 264, !81, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !60, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !70, i64 544, !70, i64 560, !54, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !60, i64 612, !60, i64 616, !60, i64 620, !60, i64 624, !41, i64 628, !60, i64 632, !60, i64 636, !60, i64 640, !60, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !60, i64 660, !60, i64 664, !40, i64 668, !40, i64 670, !60, i64 672, !60, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !60, i64 2528, !60, i64 2532, !40, i64 2536, !40, i64 2538, !60, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !60, i64 2560, !60, i64 2564, !36, i64 2568, !41, i64 2576, !60, i64 2580, !37, i64 2584, !82, i64 2616, !41, i64 3976, !41, i64 3980}
!77 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !60, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !78, i64 24, !79, i64 184}
!78 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !60, i64 136, !60, i64 140, !36, i64 144, !36, i64 152}
!79 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!80 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!81 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !60, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!82 = !{!"BakeData", !77, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !60, i64 1280, !60, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!83 = !{!"AudioData", !41, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !60, i64 24, !60, i64 28}
!84 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!85 = !{!"GameData", !84, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !86, i64 40, !40, i64 64, !40, i64 66, !60, i64 68, !87, i64 72, !60, i64 128, !60, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180}
!86 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !60, i64 8, !60, i64 12, !36, i64 16}
!87 = !{!"RecastData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !41, i64 40, !60, i64 44, !60, i64 48, !40, i64 52, !40, i64 54}
!88 = !{!"UnitSettings", !60, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!89 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!90 = !{!"long", !37, i64 0}
!91 = !{!45, !36, i64 24}
!92 = !{!45, !36, i64 32}
!93 = !{!45, !36, i64 40}
!94 = !{!95, !36, i64 384}
!95 = !{!"bNodeTree", !65, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !39, i64 224, !39, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !70, i64 296, !39, i64 312, !39, i64 328, !36, i64 344, !96, i64 352, !41, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!96 = !{!"bNodeInstanceKey", !41, i64 0}
!97 = !{!95, !36, i64 400}
!98 = !{!95, !36, i64 376}
!99 = !{!95, !36, i64 416}
!100 = !{!95, !36, i64 368}
!101 = !{!95, !36, i64 408}
!102 = !{!95, !36, i64 392}
!103 = !{!95, !36, i64 424}
!104 = !{!45, !40, i64 48}
!105 = !{!68, !36, i64 288}
!106 = !{!68, !36, i64 280}
!107 = distinct !{!107, !48, !49}
!108 = !{!68, !36, i64 216}
!109 = !{!37, !37, i64 0}
!110 = !{!40, !40, i64 0}
!111 = !{!112, !36, i64 768}
!112 = !{!"Material", !65, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !60, i64 216, !60, i64 220, !113, i64 224, !114, i64 312, !60, i64 328, !60, i64 332, !60, i64 336, !60, i64 340, !60, i64 344, !60, i64 348, !60, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !60, i64 364, !60, i64 368, !40, i64 372, !40, i64 374, !60, i64 376, !60, i64 380, !60, i64 384, !60, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !60, i64 420, !60, i64 424, !60, i64 428, !60, i64 432, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !60, i64 456, !37, i64 460, !60, i64 524, !60, i64 528, !60, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !60, i64 556, !60, i64 560, !37, i64 564, !60, i64 580, !60, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !60, i64 616, !60, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !60, i64 800, !60, i64 804, !60, i64 808, !60, i64 812, !60, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !60, i64 848, !60, i64 852, !60, i64 856, !60, i64 860, !60, i64 864, !60, i64 868, !60, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!113 = !{!"VolumeSettings", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !60, i64 52, !60, i64 56, !60, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !60, i64 72, !60, i64 76, !60, i64 80, !60, i64 84}
!114 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!115 = !{!60, !60, i64 0}
!116 = !{!117, !36, i64 520}
!117 = !{!"World", !65, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !60, i64 216, !60, i64 220, !60, i64 224, !60, i64 228, !60, i64 232, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !60, i64 252, !60, i64 256, !60, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !60, i64 272, !60, i64 276, !60, i64 280, !60, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!118 = !{!119, !36, i64 512}
!119 = !{!"Lamp", !65, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !60, i64 212, !60, i64 216, !60, i64 220, !60, i64 224, !60, i64 228, !60, i64 232, !60, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !60, i64 260, !60, i64 264, !60, i64 268, !60, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !60, i64 308, !60, i64 312, !60, i64 316, !60, i64 320, !60, i64 324, !60, i64 328, !60, i64 332, !60, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!120 = !{!119, !40, i64 128}
!121 = !{!122, !60, i64 280}
!122 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !39, i64 200, !39, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !60, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !60, i64 296, !60, i64 300, !60, i64 304, !41, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !60, i64 380, !60, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !70, i64 400, !70, i64 416, !70, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !36, i64 456}
!123 = !{!122, !60, i64 284}
!124 = !{!122, !36, i64 216}
!125 = !{!122, !36, i64 200}
!126 = !{!122, !36, i64 208}
!127 = !{!75, !36, i64 248}
!128 = !{!35, !41, i64 2100}
!129 = !{!95, !41, i64 292}
!130 = !{!95, !40, i64 288}
!131 = !{!95, !40, i64 290}
!132 = !{!133, !36, i64 336}
!133 = !{!"Tex", !65, i64 0, !36, i64 120, !60, i64 128, !60, i64 132, !60, i64 136, !60, i64 140, !60, i64 144, !60, i64 148, !60, i64 152, !60, i64 156, !60, i64 160, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180, !60, i64 184, !60, i64 188, !60, i64 192, !60, i64 196, !60, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !60, i64 236, !60, i64 240, !60, i64 244, !60, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !60, i64 284, !60, i64 288, !60, i64 292, !58, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!134 = !{!68, !36, i64 224}
!135 = !{!136, !36, i64 416}
!136 = !{!"bNodeTreeType", !41, i64 0, !37, i64 4, !37, i64 68, !37, i64 132, !41, i64 388, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !137, i64 480}
!137 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!138 = !{!136, !36, i64 424}
!139 = !{!68, !36, i64 272}
!140 = !{!141, !36, i64 8}
!141 = !{!"bNodeTreePath", !36, i64 0, !36, i64 8, !36, i64 16, !96, i64 24, !41, i64 28, !37, i64 32, !37, i64 40}
!142 = !{!141, !36, i64 16}
!143 = distinct !{!143, !48, !49}
!144 = !{!122, !41, i64 168}
!145 = !{!122, !40, i64 172}
!146 = distinct !{!146, !48, !49}
!147 = !{!95, !41, i64 256}
!148 = !{!122, !36, i64 240}
!149 = distinct !{!149, !48, !49}
!150 = !{!112, !37, i64 543}
!151 = distinct !{!151, !48, !49}
!152 = distinct !{!152, !48, !49}
!153 = !{!122, !40, i64 376}
!154 = !{!75, !40, i64 888}
!155 = distinct !{!155, !48, !49}
!156 = distinct !{!156, !48, !49}
!157 = !{!158, !36, i64 0}
!158 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !137, i64 152, !40, i64 184}
!159 = !{!158, !36, i64 8}
!160 = !{!158, !36, i64 24}
!161 = !{!158, !36, i64 48}
!162 = !{!158, !36, i64 64}
!163 = !{!158, !36, i64 72}
!164 = !{!158, !36, i64 56}
!165 = !{!158, !40, i64 184}
!166 = !{!41, !41, i64 0}
!167 = !{!122, !36, i64 32}
!168 = !{!169, !36, i64 576}
!169 = !{!"bNodeType", !36, i64 0, !36, i64 8, !40, i64 16, !37, i64 18, !41, i64 84, !37, i64 88, !37, i64 152, !41, i64 408, !60, i64 412, !60, i64 416, !60, i64 420, !60, i64 424, !60, i64 428, !60, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !137, i64 720}
!170 = !{!171, !36, i64 96}
!171 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!172 = !{!173, !60, i64 0}
!173 = !{!"NodeSizeWidget", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !41, i64 36}
!174 = !{!173, !60, i64 4}
!175 = !{!173, !60, i64 8}
!176 = !{!173, !60, i64 12}
!177 = !{!122, !60, i64 300}
!178 = !{!173, !60, i64 16}
!179 = !{!122, !60, i64 304}
!180 = !{!173, !60, i64 20}
!181 = !{!122, !60, i64 288}
!182 = !{!173, !60, i64 24}
!183 = !{!122, !60, i64 292}
!184 = !{!173, !60, i64 28}
!185 = !{!122, !60, i64 296}
!186 = !{!173, !60, i64 32}
!187 = !{!173, !41, i64 36}
!188 = !{!189, !40, i64 16}
!189 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !190, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !36, i64 112}
!190 = !{!"double", !37, i64 0}
!191 = !{!192, !60, i64 10908}
!192 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !60, i64 8956, !60, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !60, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !193, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !60, i64 10904, !60, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !194, i64 10928}
!193 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!194 = !{!"WalkNavigation", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !40, i64 24, !37, i64 26}
!195 = !{!192, !41, i64 8524}
!196 = !{!169, !60, i64 416}
!197 = !{!169, !60, i64 420}
!198 = !{!169, !60, i64 428}
!199 = !{!169, !60, i64 432}
!200 = !{!201, !40, i64 170}
!201 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176, !37, i64 184, !60, i64 248, !60, i64 252, !36, i64 256, !40, i64 264, !40, i64 266, !41, i64 268, !36, i64 272, !41, i64 280, !41, i64 284, !36, i64 288, !36, i64 296, !202, i64 304}
!202 = !{!"bNodeStack", !37, i64 0, !60, i64 16, !60, i64 20, !36, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !37, i64 44}
!203 = distinct !{!203, !48, !49}
!204 = distinct !{!204, !48, !49}
!205 = distinct !{!205, !48, !49}
!206 = distinct !{!206, !48, !49}
!207 = !{!201, !36, i64 296}
!208 = distinct !{!208, !48, !49}
!209 = distinct !{!209, !48, !49}
!210 = !{!192, !40, i64 8948}
!211 = !{!70, !60, i64 0}
!212 = !{!70, !60, i64 8}
!213 = !{!70, !60, i64 4}
!214 = !{!70, !60, i64 12}
!215 = !{!201, !60, i64 248}
!216 = !{!201, !60, i64 252}
!217 = distinct !{!217, !48, !49}
!218 = distinct !{!218, !48, !49}
!219 = distinct !{!219, !48, !49}
!220 = distinct !{!220, !48, !49}
!221 = !{!158, !36, i64 32}
!222 = !{!158, !36, i64 88}
!223 = !{!171, !36, i64 112}
!224 = !{!95, !36, i64 232}
!225 = distinct !{!225, !48, !49}
!226 = !{!95, !36, i64 248}
!227 = !{!228, !36, i64 24}
!228 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52}
!229 = !{!228, !36, i64 16}
!230 = !{!228, !41, i64 48}
!231 = !{!122, !36, i64 16}
!232 = !{!228, !36, i64 40}
!233 = !{!201, !36, i64 16}
!234 = !{!228, !36, i64 32}
!235 = distinct !{!235, !48, !49}
!236 = distinct !{!236, !48, !49}
!237 = distinct !{!237, !48, !49}
!238 = distinct !{!238, !48, !49}
!239 = distinct !{!239, !48, !49}
!240 = !{!75, !40, i64 98}
!241 = distinct !{!241, !48, !49}
!242 = !{!65, !40, i64 98}
!243 = distinct !{!243, !48, !49}
!244 = !{!122, !40, i64 388}
!245 = distinct !{!245, !48, !49}
!246 = !{!75, !41, i64 796}
!247 = distinct !{!247, !48, !49}
!248 = distinct !{!248, !48, !49}
!249 = !{!169, !40, i64 438}
!250 = !{!169, !36, i64 544}
!251 = !{!169, !36, i64 552}
!252 = distinct !{!252, !48, !49}
!253 = distinct !{!253, !48, !49}
!254 = !{!169, !36, i64 680}
!255 = distinct !{!255, !48, !49}
!256 = !{!95, !36, i64 224}
!257 = !{!122, !36, i64 0}
!258 = !{!65, !41, i64 100}
!259 = distinct !{!259, !48, !49}
!260 = distinct !{!260, !48, !49}
!261 = !{!262, !36, i64 16}
!262 = !{!"PointerRNA", !263, i64 0, !36, i64 8, !36, i64 16}
!263 = !{!"", !36, i64 0}
!264 = !{!262, !36, i64 0}
!265 = !{!122, !36, i64 248}
!266 = !{!267, !41, i64 1280}
!267 = !{!"NodeImageMultiFile", !37, i64 0, !77, i64 1024, !41, i64 1272, !41, i64 1276, !41, i64 1280, !41, i64 1284}
!268 = !{!201, !36, i64 8}
!269 = !{!201, !36, i64 0}
!270 = distinct !{!270, !48, !49}
!271 = distinct !{!271, !48, !49}
!272 = !{!122, !36, i64 232}
!273 = distinct !{!273, !48, !49}
!274 = distinct !{!274, !48, !49}
!275 = !{!39, !36, i64 0}
!276 = !{!171, !36, i64 120}
!277 = !{!169, !36, i64 672}
!278 = distinct !{!278, !48, !49}
!279 = distinct !{!279, !48, !49}
!280 = distinct !{!280, !48, !49}
!281 = distinct !{!281, !48, !49}
!282 = distinct !{!282, !48, !49}
!283 = distinct !{!283, !48, !49}
!284 = distinct !{!284, !48, !49}
!285 = !{!286, !36, i64 592}
!286 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !41, i64 584, !41, i64 588, !36, i64 592, !41, i64 600, !41, i64 604, !70, i64 608, !54, i64 624, !37, i64 640, !41, i64 704, !41, i64 708}
!287 = !{!288, !36, i64 192}
!288 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !41, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !137, i64 200}
!289 = !{!95, !40, i64 278}
!290 = distinct !{!290, !48, !49}
!291 = !{i8 0, i8 2}
!292 = distinct !{!292, !48, !49}
!293 = !{!54, !41, i64 8}
!294 = !{!295, !41, i64 16}
!295 = !{!"ImBuf", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !60, i64 112, !37, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !36, i64 296, !36, i64 304, !41, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !41, i64 2376, !36, i64 2384, !41, i64 2392, !41, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !41, i64 2432, !54, i64 2436, !296, i64 2456}
!296 = !{!"DDSData", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16}
!297 = !{!295, !41, i64 20}
!298 = !{!68, !60, i64 252}
!299 = !{!54, !41, i64 0}
!300 = !{!301, !40, i64 208}
!301 = !{!"ARegion", !36, i64 0, !36, i64 8, !69, i64 16, !54, i64 176, !54, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !60, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!302 = !{!68, !60, i64 244}
!303 = !{!301, !40, i64 210}
!304 = !{!68, !60, i64 248}
!305 = !{!54, !41, i64 12}
!306 = !{!54, !41, i64 4}
!307 = !{i64 0, i64 4, !115, i64 4, i64 4, !115, i64 8, i64 4, !115, i64 12, i64 4, !115}
!308 = !{i64 0, i64 4, !115, i64 4, i64 4, !115, i64 8, i64 4, !115}
!309 = !{i64 0, i64 4, !115, i64 4, i64 4, !115}
!310 = !{i64 0, i64 4, !115}
!311 = !{!95, !41, i64 268}
!312 = distinct !{!312, !48, !49}
!313 = distinct !{!313, !48, !49}
!314 = distinct !{!314, !48, !49}
