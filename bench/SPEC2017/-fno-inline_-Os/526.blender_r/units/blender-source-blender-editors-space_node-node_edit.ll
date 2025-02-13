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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_composite_job(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %5 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !34
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !42
  %8 = tail call ptr @BKE_image_verify_viewer(i32 noundef 4, ptr noundef nonnull @.str) #19
  tail call void @BKE_image_backup_render(ptr noundef %4, ptr noundef %8) #19
  %9 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %10 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %11 = tail call ptr @WM_jobs_get(ptr noundef %9, ptr noundef %10, ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 6, i32 noundef 1) #19
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %13 = tail call ptr %12(i64 noundef 56, ptr noundef nonnull @.str.2) #19
  store ptr %4, ptr %13, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.CompoJob, ptr %13, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !46
  %15 = tail call fastcc i32 @compo_get_recalc_flags(ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.CompoJob, ptr %13, i64 0, i32 7
  store i32 %15, ptr %16, align 4, !tbaa !47
  tail call void @WM_jobs_customdata_set(ptr noundef %11, ptr noundef nonnull %13, ptr noundef nonnull @compo_freejob) #19
  tail call void @WM_jobs_timer(ptr noundef %11, double noundef 1.000000e-01, i32 noundef 67960832, i32 noundef 67960832) #19
  tail call void @WM_jobs_callbacks(ptr noundef %11, ptr noundef nonnull @compo_startjob, ptr noundef nonnull @compo_initjob, ptr noundef nonnull @compo_updatejob, ptr noundef null) #19
  %17 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  tail call void @WM_jobs_start(ptr noundef %17, ptr noundef %11) #19
  br label %18

18:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_backup_render(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_verify_viewer(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compo_get_recalc_flags(ptr noundef %0) unnamed_addr #0 !PGOFuncName !48 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %10

6:                                                ; preds = %44, %10
  %7 = phi i32 [ %12, %10 ], [ %45, %44 ]
  %8 = load ptr, ptr %11, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10, !llvm.loop !49

10:                                               ; preds = %1, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %12 = phi i32 [ %7, %6 ], [ 0, %1 ]
  %13 = getelementptr inbounds %struct.wmWindow, ptr %11, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.bScreen, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %6, label %18

18:                                               ; preds = %10, %44
  %19 = phi ptr [ %46, %44 ], [ %16, %10 ]
  %20 = phi i32 [ %45, %44 ], [ %12, %10 ]
  %21 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 8
  %22 = load i8, ptr %21, align 8, !tbaa !53
  switch i8 %22, label %44 [
    i8 6, label %23
    i8 16, label %36
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.SpaceImage, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Image, ptr %27, i64 0, i32 12
  %31 = load i16, ptr %30, align 2, !tbaa !64
  switch i16 %31, label %44 [
    i16 4, label %32
    i16 5, label %34
  ]

32:                                               ; preds = %29
  %33 = or i32 %20, 1
  br label %44

34:                                               ; preds = %29
  %35 = or i32 %20, 2
  br label %44

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.ScrArea, ptr %19, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !56
  %39 = getelementptr inbounds %struct.SpaceNode, ptr %38, i64 0, i32 9
  %40 = load i16, ptr %39, align 8, !tbaa !68
  %41 = and i16 %40, 2
  %42 = zext nneg i16 %41 to i32
  %43 = or i32 %20, %42
  br label %44

44:                                               ; preds = %18, %23, %34, %32, %29, %36
  %45 = phi i32 [ %43, %36 ], [ %33, %32 ], [ %35, %34 ], [ %20, %23 ], [ %20, %29 ], [ %20, %18 ]
  %46 = load ptr, ptr %19, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %6, label %18, !llvm.loop !72

48:                                               ; preds = %6, %1
  %49 = phi i32 [ 0, %1 ], [ %7, %6 ]
  ret i32 %49
}

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @compo_freejob(ptr noundef %0) #0 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  tail call void @ntreeLocalMerge(ptr noundef nonnull %3, ptr noundef %7) #19
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  tail call void %9(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @compo_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !75 {
  %5 = load ptr, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 16
  %7 = load i8, ptr %6, align 2, !tbaa !76
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 3
  store ptr %1, ptr %12, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 4
  store ptr %2, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 5
  store ptr %3, ptr %14, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 30
  store ptr @compo_breakjob, ptr %15, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 32
  store ptr %0, ptr %16, align 8, !tbaa !99
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 29
  store ptr @compo_statsdrawjob, ptr %17, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 34
  store ptr %0, ptr %18, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 28
  store ptr @compo_progressjob, ptr %19, align 8, !tbaa !102
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 33
  store ptr %0, ptr %20, align 8, !tbaa !103
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 31
  store ptr @compo_redrawjob, ptr %21, align 8, !tbaa !104
  %22 = getelementptr inbounds %struct.bNodeTree, ptr %11, i64 0, i32 35
  store ptr %0, ptr %22, align 8, !tbaa !105
  %23 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22
  %24 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 44
  %25 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 45
  tail call void @ntreeCompositExecTree(ptr noundef nonnull %5, ptr noundef %11, ptr noundef nonnull %23, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %24, ptr noundef nonnull %25) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br label %26

26:                                               ; preds = %4, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @compo_initjob(ptr nocapture noundef %0) #0 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = tail call ptr @ntreeLocalize(ptr noundef %3) #19
  %5 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !47
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call fastcc void @compo_tag_output_nodes(ptr noundef %4, i32 noundef %7) #20
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @compo_updatejob(ptr nocapture noundef %0) #0 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 6
  %3 = load i16, ptr %2, align 8, !tbaa !108
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void @ntreeLocalSync(ptr noundef %7, ptr noundef %9) #19
  store i16 0, ptr %2, align 8, !tbaa !108
  br label %10

10:                                               ; preds = %5, %1
  tail call void @WM_main_add_notifier(i32 noundef 67960832, ptr noundef null) #19
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @composite_node_active(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_active(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %6 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #20, !range !109
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 1, %4 ], [ 0, %8 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @ED_operator_node_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_node_is_compositor(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %3, i64 0, i32 1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @composite_node_editable(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_node_editable(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %6 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %5) #20, !range !109
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi i32 [ 1, %4 ], [ 0, %8 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @ED_operator_node_editable(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @snode_dag_update(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.NodeTreeIterStore, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %3, ptr noundef %6) #19
  %13 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %12, %24
  %16 = load ptr, ptr %4, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 8, !tbaa !110
  %20 = call zeroext i8 @ntreeHasTree(ptr noundef nonnull %16, ptr noundef %19) #19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !43
  call void @DAG_id_tag_update(ptr noundef %23, i16 noundef signext 0) #19
  br label %24

24:                                               ; preds = %18, %22, %15
  %25 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %15, label %27, !llvm.loop !112

27:                                               ; preds = %24, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  br label %28

28:                                               ; preds = %27, %2
  %29 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !113
  call void @DAG_id_tag_update(ptr noundef %30, i16 noundef signext 0) #19
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ntreeHasTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @snode_notify(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 285212673, ptr noundef null) #19
  %3 = tail call zeroext i8 @ED_node_is_shader(ptr noundef %1) #20, !range !109
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @ED_node_is_compositor(ptr noundef %1) #20, !range !109
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = tail call zeroext i8 @ED_node_is_texture(ptr noundef %1) #20, !range !109
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8, %5, %2
  %12 = phi i32 [ 100990976, %2 ], [ 67436544, %5 ], [ 117768192, %8 ]
  %13 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !113
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef %12, ptr noundef %14) #19
  br label %15

15:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_node_is_shader(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr @ntreeType_Shader, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %3, i64 0, i32 1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ED_node_is_texture(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr @ntreeType_Texture, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.bNodeTreeType, ptr %3, i64 0, i32 1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %4) #21
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_set_tree_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 20
  br i1 %3, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bNodeTreeType, ptr %1, i64 0, i32 1
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %6, i64 noundef 64) #19
  br label %9

8:                                                ; preds = %2
  store i8 0, ptr %4, align 8, !tbaa !114
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_shader_default(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) @__const.ED_node_shader_default.color, i64 16, i1 false)
  %6 = load ptr, ptr @ntreeType_Shader, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.bNodeTreeType, ptr %6, i64 0, i32 1
  %8 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #19
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %10 = load i16, ptr %9, align 8, !tbaa !115
  switch i16 %10, label %27 [
    i16 16717, label %11
    i16 20311, label %18
    i16 16716, label %21
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 103
  store ptr %8, ptr %12, align 8, !tbaa !116
  %13 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %5) #19
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 100, i32 132
  %16 = select i1 %14, i32 1, i32 124
  %17 = getelementptr inbounds %struct.Material, ptr %1, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %17) #20
  br label %33

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 75
  store ptr %8, ptr %19, align 8, !tbaa !120
  %20 = getelementptr inbounds %struct.World, ptr %1, i64 0, i32 6
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %20) #20
  br label %33

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 74
  store ptr %8, ptr %22, align 8, !tbaa !122
  %23 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 7
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %23) #20
  %24 = getelementptr inbounds %struct.Lamp, ptr %1, i64 0, i32 2
  %25 = load i16, ptr %24, align 8, !tbaa !124
  %26 = icmp ult i16 %25, 5
  br i1 %26, label %29, label %33

27:                                               ; preds = %2
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %58

29:                                               ; preds = %21
  %30 = zext nneg i16 %25 to i64
  %31 = getelementptr inbounds [5 x float], ptr @switch.table.ED_node_shader_default, i64 0, i64 %30
  %32 = load float, ptr %31, align 4
  br label %33

33:                                               ; preds = %21, %29, %18, %11
  %34 = phi float [ 1.000000e+00, %18 ], [ 0.000000e+00, %11 ], [ %32, %29 ], [ 1.000000e+00, %21 ]
  %35 = phi i32 [ 130, %18 ], [ %15, %11 ], [ 140, %29 ], [ 140, %21 ]
  %36 = phi i32 [ 125, %18 ], [ %16, %11 ], [ 126, %29 ], [ 126, %21 ]
  %37 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %8, i32 noundef %36) #19
  %38 = getelementptr inbounds %struct.bNode, ptr %37, i64 0, i32 24
  store <2 x float> <float 3.000000e+02, float 3.000000e+02>, ptr %38, align 8, !tbaa !125
  %39 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %8, i32 noundef %35) #19
  %40 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 24
  store <2 x float> <float 1.000000e+01, float 3.000000e+02>, ptr %40, align 8, !tbaa !125
  tail call void @nodeSetActive(ptr noundef %8, ptr noundef %39) #19
  %41 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !126
  %43 = getelementptr inbounds %struct.bNode, ptr %37, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = tail call ptr @nodeAddLink(ptr noundef %8, ptr noundef %39, ptr noundef %42, ptr noundef %37, ptr noundef %44) #19
  %46 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %5) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %49 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !128
  call void @RNA_pointer_create(ptr noundef %8, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %50, ptr noundef nonnull %4) #19
  call void @RNA_float_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #19
  %51 = fcmp une float %34, 0.000000e+00
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 17, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !129
  call void @RNA_pointer_create(ptr noundef %8, ptr noundef nonnull @RNA_NodeSocket, ptr noundef %54, ptr noundef nonnull %4) #19
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, float noundef %34) #19
  br label %55

55:                                               ; preds = %52, %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  br label %56

56:                                               ; preds = %55, %33
  %57 = call ptr @CTX_data_main(ptr noundef %0) #19
  call void @ntreeUpdateTree(ptr noundef %57, ptr noundef %8) #19
  br label %58

58:                                               ; preds = %56, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @ntreeAddTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !130 {
  %3 = load float, ptr %1, align 4, !tbaa !125
  store float %3, ptr %0, align 4, !tbaa !125
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !125
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !125
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !125
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare ptr @nodeAddStaticNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeSetActive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeAddLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeUpdateTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_composit_default(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !131
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !132
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.114)
  br label %33

12:                                               ; preds = %2
  %13 = load ptr, ptr @ntreeType_Composite, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.bNodeTreeType, ptr %13, i64 0, i32 1
  %15 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull %14) #19
  store ptr %15, ptr %3, align 8, !tbaa !131
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 20
  store i32 256, ptr %16, align 4, !tbaa !133
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 18
  store i16 0, ptr %17, align 8, !tbaa !134
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %15, i64 0, i32 19
  store i16 0, ptr %18, align 2, !tbaa !135
  %19 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %15, i32 noundef 222) #19
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 24
  store <2 x float> <float 3.000000e+02, float 4.000000e+02>, ptr %20, align 8, !tbaa !125
  %21 = load ptr, ptr %3, align 8, !tbaa !131
  %22 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %21, i32 noundef 221) #19
  %23 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 24
  store <2 x float> <float 1.000000e+01, float 4.000000e+02>, ptr %23, align 8, !tbaa !125
  %24 = load ptr, ptr %3, align 8, !tbaa !131
  tail call void @nodeSetActive(ptr noundef %24, ptr noundef %22) #19
  %25 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  %27 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 17
  %28 = load ptr, ptr %27, align 8, !tbaa !128
  %29 = load ptr, ptr %3, align 8, !tbaa !131
  %30 = tail call ptr @nodeAddLink(ptr noundef %29, ptr noundef %22, ptr noundef %26, ptr noundef %19, ptr noundef %28) #19
  %31 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %32 = load ptr, ptr %3, align 8, !tbaa !131
  tail call void @ntreeUpdateTree(ptr noundef %31, ptr noundef %32) #19
  br label %33

33:                                               ; preds = %6, %10, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_texture_default(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Tex, ptr %1, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !132
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.115)
  br label %30

12:                                               ; preds = %2
  %13 = load ptr, ptr @ntreeType_Texture, align 8, !tbaa !43
  %14 = getelementptr inbounds %struct.bNodeTreeType, ptr %13, i64 0, i32 1
  %15 = tail call ptr @ntreeAddTree(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull %14) #19
  store ptr %15, ptr %3, align 8, !tbaa !136
  %16 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %15, i32 noundef 401) #19
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 24
  store <2 x float> <float 3.000000e+02, float 3.000000e+02>, ptr %17, align 8, !tbaa !125
  %18 = load ptr, ptr %3, align 8, !tbaa !136
  %19 = tail call ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %18, i32 noundef 402) #19
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 24
  store <2 x float> <float 1.000000e+01, float 3.000000e+02>, ptr %20, align 8, !tbaa !125
  %21 = load ptr, ptr %3, align 8, !tbaa !136
  tail call void @nodeSetActive(ptr noundef %21, ptr noundef %19) #19
  %22 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !126
  %24 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  %26 = load ptr, ptr %3, align 8, !tbaa !136
  %27 = tail call ptr @nodeAddLink(ptr noundef %26, ptr noundef %19, ptr noundef %23, ptr noundef %16, ptr noundef %25) #19
  %28 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %29 = load ptr, ptr %3, align 8, !tbaa !136
  tail call void @ntreeUpdateTree(ptr noundef %28, ptr noundef %29) #19
  br label %30

30:                                               ; preds = %6, %10, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @snode_set_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 20
  %7 = tail call ptr @ntreeTypeFind(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  store ptr %9, ptr %2, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  store ptr %11, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  store ptr %13, ptr %4, align 8, !tbaa !43
  %14 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %15 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %14) #19
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !68
  %19 = and i16 %18, -2049
  %20 = select i1 %16, i16 0, i16 2048
  %21 = or disjoint i16 %19, %20
  store i16 %21, ptr %17, align 8, !tbaa !68
  %22 = icmp eq ptr %7, null
  br i1 %22, label %78, label %23

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.bNodeTreeType, ptr %7, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !139
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, ptr noundef nonnull %7) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %78, label %30

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %8, align 8, !tbaa !111
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.bNodeTree, ptr %31, i64 0, i32 3
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %6) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store ptr null, ptr %2, align 8, !tbaa !43
  store ptr null, ptr %3, align 8, !tbaa !43
  store ptr null, ptr %4, align 8, !tbaa !43
  br label %45

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 9
  %40 = load i16, ptr %39, align 8, !tbaa !68
  %41 = and i16 %40, 4096
  %42 = icmp eq i16 %41, 0
  %43 = icmp eq ptr %9, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %37, %38
  %46 = phi ptr [ null, %37 ], [ %9, %38 ]
  %47 = phi ptr [ null, %37 ], [ %11, %38 ]
  %48 = getelementptr inbounds %struct.bNodeTreeType, ptr %7, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !142
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  store ptr null, ptr %2, align 8, !tbaa !43
  store ptr null, ptr %3, align 8, !tbaa !43
  store ptr null, ptr %4, align 8, !tbaa !43
  call void %49(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %52 = load ptr, ptr %8, align 8, !tbaa !111
  %53 = load ptr, ptr %2, align 8, !tbaa !43
  %54 = load ptr, ptr %3, align 8, !tbaa !43
  br label %55

55:                                               ; preds = %45, %51, %38
  %56 = phi ptr [ %47, %45 ], [ %54, %51 ], [ %11, %38 ]
  %57 = phi ptr [ %46, %45 ], [ %53, %51 ], [ %9, %38 ]
  %58 = phi ptr [ %31, %45 ], [ %52, %51 ], [ %31, %38 ]
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %4, align 8, !tbaa !43
  br label %69

62:                                               ; preds = %55
  %63 = load ptr, ptr %10, align 8, !tbaa !113
  %64 = icmp eq ptr %63, %56
  %65 = load ptr, ptr %4, align 8, !tbaa !43
  br i1 %64, label %66, label %69

66:                                               ; preds = %62
  %67 = load ptr, ptr %12, align 8, !tbaa !138
  %68 = icmp eq ptr %67, %65
  br i1 %68, label %71, label %69

69:                                               ; preds = %60, %66, %62
  %70 = phi ptr [ %61, %60 ], [ %65, %66 ], [ %65, %62 ]
  call void @ED_node_tree_start(ptr noundef nonnull %5, ptr noundef %57, ptr noundef %56, ptr noundef %70) #19
  br label %71

71:                                               ; preds = %69, %66
  %72 = call zeroext i8 @ED_node_is_compositor(ptr noundef nonnull %5) #20, !range !109
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %8, align 8, !tbaa !111
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call void @ntreeCompositForceHidden(ptr noundef nonnull %75) #19
  br label %78

78:                                               ; preds = %71, %74, %77, %1, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @ntreeTypeFind(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_tree_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeCompositForceHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @snode_update(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 17, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTreePath, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeTreePath, ptr %4, i64 0, i32 2
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %20, %12 ], [ %8, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %11, %10 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !146
  %16 = getelementptr inbounds %struct.bNodeTreePath, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  %18 = tail call zeroext i8 @nodeUpdateID(ptr noundef %17, ptr noundef %15) #19
  %19 = getelementptr inbounds %struct.bNodeTreePath, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !144
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !147

22:                                               ; preds = %12, %6, %2
  %23 = icmp eq ptr %1, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  tail call void @nodeUpdate(ptr noundef %26, ptr noundef nonnull %1) #19
  br label %27

27:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @nodeUpdateID(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeUpdate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_node_set_active(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !148
  tail call void @nodeSetActive(ptr noundef %1, ptr noundef %2) #19
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 8
  %7 = load i16, ptr %6, align 4, !tbaa !149
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %196, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 8, !tbaa !148
  %11 = trunc i32 %10 to i8
  %12 = lshr i8 %11, 6
  %13 = and i8 %12, 1
  %14 = icmp eq i16 %7, 8
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %15, %28
  %20 = phi ptr [ %29, %28 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !149
  %23 = icmp eq i16 %22, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !148
  %27 = and i32 %26, -65
  store i32 %27, ptr %25, align 8, !tbaa !148
  br label %28

28:                                               ; preds = %19, %24
  %29 = load ptr, ptr %20, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !150

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 8, !tbaa !148
  br label %33

33:                                               ; preds = %31, %15
  %34 = phi i32 [ %32, %31 ], [ %10, %15 ]
  %35 = or i32 %34, 64
  store i32 %35, ptr %4, align 8, !tbaa !148
  %36 = xor i8 %13, 1
  br label %37

37:                                               ; preds = %33, %9
  %38 = phi i32 [ %35, %33 ], [ %10, %9 ]
  %39 = phi i8 [ %36, %33 ], [ 0, %9 ]
  %40 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !151
  switch i32 %41, label %196 [
    i32 0, label %42
    i32 1, label %107
  ]

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !152
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ID, ptr %44, i64 0, i32 4
  %48 = load i16, ptr %47, align 8, !tbaa !115
  switch i16 %48, label %51 [
    i16 16717, label %49
    i16 16716, label %49
    i16 20311, label %49
  ]

49:                                               ; preds = %46, %46, %46
  tail call void @nodeClearActiveID(ptr noundef nonnull %1, i16 noundef signext 17748) #19
  %50 = load i16, ptr %6, align 4, !tbaa !149
  br label %51

51:                                               ; preds = %46, %49, %42
  %52 = phi i16 [ %7, %46 ], [ %50, %49 ], [ %7, %42 ]
  switch i16 %52, label %74 [
    i16 1, label %53
    i16 124, label %53
    i16 125, label %53
    i16 126, label %53
    i16 190, label %53
  ]

53:                                               ; preds = %51, %51, %51, %51, %51
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %53, %66
  %58 = phi ptr [ %67, %66 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 8
  %60 = load i16, ptr %59, align 4, !tbaa !149
  %61 = icmp eq i16 %60, %52
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.bNode, ptr %58, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !148
  %65 = and i32 %64, -65
  store i32 %65, ptr %63, align 8, !tbaa !148
  br label %66

66:                                               ; preds = %57, %62
  %67 = load ptr, ptr %58, align 8, !tbaa !43
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %57, !llvm.loop !153

69:                                               ; preds = %66, %53
  %70 = load i32, ptr %4, align 8, !tbaa !148
  %71 = or i32 %70, 64
  store i32 %71, ptr %4, align 8, !tbaa !148
  %72 = icmp eq i8 %13, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #19
  br label %77

74:                                               ; preds = %51
  %75 = icmp eq i8 %39, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %77

77:                                               ; preds = %69, %73, %74, %76
  %78 = load i32, ptr %4, align 8, !tbaa !148
  %79 = and i32 %78, 16384
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %5, 16384
  %82 = icmp ne i32 %81, 0
  %83 = select i1 %80, i1 true, i1 %82
  br i1 %83, label %105, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !43
  %87 = icmp eq ptr %86, null
  br i1 %87, label %104, label %88

88:                                               ; preds = %84, %101
  %89 = phi ptr [ %102, %101 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.Material, ptr %89, i64 0, i32 103
  %91 = load ptr, ptr %90, align 8, !tbaa !116
  %92 = icmp eq ptr %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.Material, ptr %89, i64 0, i32 77
  %95 = load i8, ptr %94, align 1, !tbaa !154
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = tail call zeroext i8 @ntreeHasTree(ptr noundef nonnull %91, ptr noundef %1) #19
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  tail call void @GPU_material_free(ptr noundef nonnull %89) #19
  br label %101

101:                                              ; preds = %88, %93, %97, %100
  %102 = load ptr, ptr %89, align 8, !tbaa !43
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %88, !llvm.loop !155

104:                                              ; preds = %101, %84
  tail call void @WM_main_add_notifier(i32 noundef 167772160, ptr noundef null) #19
  br label %105

105:                                              ; preds = %104, %77
  %106 = load ptr, ptr %43, align 8, !tbaa !152
  tail call void @WM_main_add_notifier(i32 noundef 100990976, ptr noundef %106) #19
  br label %196

107:                                              ; preds = %37
  switch i16 %7, label %193 [
    i16 201, label %108
    i16 240, label %108
    i16 221, label %133
    i16 222, label %170
  ]

108:                                              ; preds = %107, %107
  %109 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !43
  %111 = icmp eq ptr %110, null
  br i1 %111, label %125, label %112

112:                                              ; preds = %108, %120
  %113 = phi ptr [ %121, %120 ], [ %110, %108 ]
  %114 = getelementptr inbounds %struct.bNode, ptr %113, i64 0, i32 8
  %115 = load i16, ptr %114, align 4, !tbaa !149
  switch i16 %115, label %120 [
    i16 201, label %116
    i16 240, label %116
  ]

116:                                              ; preds = %112, %112
  %117 = getelementptr inbounds %struct.bNode, ptr %113, i64 0, i32 7
  %118 = load i32, ptr %117, align 8, !tbaa !148
  %119 = and i32 %118, -65
  store i32 %119, ptr %117, align 8, !tbaa !148
  br label %120

120:                                              ; preds = %112, %116
  %121 = load ptr, ptr %113, align 8, !tbaa !43
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %112, !llvm.loop !156

123:                                              ; preds = %120
  %124 = load i32, ptr %4, align 8, !tbaa !148
  br label %125

125:                                              ; preds = %123, %108
  %126 = phi i32 [ %124, %123 ], [ %38, %108 ]
  %127 = or i32 %126, 64
  store i32 %127, ptr %4, align 8, !tbaa !148
  %128 = icmp eq i8 %13, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #19
  br label %130

130:                                              ; preds = %129, %125
  %131 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.10) #19
  %132 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  store ptr %131, ptr %132, align 8, !tbaa !152
  br label %196

133:                                              ; preds = %107
  %134 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %135 = load ptr, ptr %134, align 8, !tbaa !43
  %136 = icmp eq ptr %135, null
  br i1 %136, label %196, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %139 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  br label %140

140:                                              ; preds = %137, %167
  %141 = phi ptr [ %135, %137 ], [ %168, %167 ]
  %142 = getelementptr inbounds %struct.Scene, ptr %141, i64 0, i32 18
  %143 = load ptr, ptr %142, align 8, !tbaa !131
  %144 = icmp eq ptr %143, null
  br i1 %144, label %167, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.Scene, ptr %141, i64 0, i32 16
  %147 = load i8, ptr %146, align 2, !tbaa !76
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %145
  %150 = tail call zeroext i8 @ntreeHasTree(ptr noundef nonnull %143, ptr noundef %1) #19
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr %138, align 8, !tbaa !152
  %154 = icmp eq ptr %153, null
  %155 = icmp eq ptr %153, %141
  %156 = or i1 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.Scene, ptr %141, i64 0, i32 22, i32 60
  %159 = tail call i32 @BLI_countlist(ptr noundef nonnull %158) #19
  %160 = load i16, ptr %139, align 8, !tbaa !157
  %161 = getelementptr inbounds %struct.Scene, ptr %141, i64 0, i32 22, i32 61
  %162 = sitofp i16 %160 to float
  %163 = add nsw i32 %159, -1
  %164 = sitofp i32 %163 to float
  %165 = tail call fastcc float @min_ff(float noundef %162, float noundef %164) #20
  %166 = fptosi float %165 to i16
  store i16 %166, ptr %161, align 8, !tbaa !158
  br label %167

167:                                              ; preds = %152, %140, %145, %149, %157
  %168 = load ptr, ptr %141, align 8, !tbaa !43
  %169 = icmp eq ptr %168, null
  br i1 %169, label %196, label %140, !llvm.loop !159

170:                                              ; preds = %107
  %171 = icmp eq i8 %13, 0
  br i1 %171, label %172, label %196

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %174 = load ptr, ptr %173, align 8, !tbaa !43
  %175 = icmp eq ptr %174, null
  br i1 %175, label %190, label %176

176:                                              ; preds = %172, %185
  %177 = phi ptr [ %186, %185 ], [ %174, %172 ]
  %178 = getelementptr inbounds %struct.bNode, ptr %177, i64 0, i32 8
  %179 = load i16, ptr %178, align 4, !tbaa !149
  %180 = icmp eq i16 %179, 222
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.bNode, ptr %177, i64 0, i32 7
  %183 = load i32, ptr %182, align 8, !tbaa !148
  %184 = and i32 %183, -65
  store i32 %184, ptr %182, align 8, !tbaa !148
  br label %185

185:                                              ; preds = %176, %181
  %186 = load ptr, ptr %177, align 8, !tbaa !43
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %176, !llvm.loop !160

188:                                              ; preds = %185
  %189 = load i32, ptr %4, align 8, !tbaa !148
  br label %190

190:                                              ; preds = %188, %172
  %191 = phi i32 [ %189, %188 ], [ %38, %172 ]
  %192 = or i32 %191, 64
  store i32 %192, ptr %4, align 8, !tbaa !148
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef %1) #19
  br label %196

193:                                              ; preds = %107
  %194 = icmp eq i8 %39, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %193
  tail call void @ED_node_tag_update_nodetree(ptr noundef %0, ptr noundef nonnull %1) #19
  br label %196

196:                                              ; preds = %167, %133, %105, %130, %190, %170, %195, %193, %37, %3
  ret void
}

; Function Attrs: optsize
declare void @nodeClearActiveID(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_tag_update_nodetree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GPU_material_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #7 !PGOFuncName !161 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @ED_node_post_apply_transform(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #7 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_resize(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.12, ptr %2, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %3, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @node_resize_invoke, ptr %4, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @node_resize_modal, ptr %5, align 8, !tbaa !167
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %6, align 8, !tbaa !168
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @node_resize_cancel, ptr %7, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %8, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_resize_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !171 {
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = tail call ptr @nodeGetActive(ptr noundef %7) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !172
  %14 = sitofp i32 %13 to float
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !172
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16
  %19 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 16, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %11, float noundef %14, float noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #19
  %20 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !173
  %22 = getelementptr inbounds %struct.bNodeType, ptr %21, i64 0, i32 26
  %23 = load ptr, ptr %22, align 8, !tbaa !174
  %24 = load float, ptr %18, align 8, !tbaa !125
  %25 = fptosi float %24 to i32
  %26 = load float, ptr %19, align 4, !tbaa !125
  %27 = fptosi float %26 to i32
  %28 = tail call i32 %23(ptr noundef nonnull %8, i32 noundef %25, i32 noundef %27) #19
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %10
  tail call fastcc void @node_resize_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef %28) #20
  br label %31

31:                                               ; preds = %3, %10, %30
  %32 = phi i32 [ 1, %30 ], [ 10, %10 ], [ 10, %3 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_resize_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !176 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = tail call ptr @nodeGetActive(ptr noundef %9) #19
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !179
  switch i16 %14, label %184 [
    i16 4, label %15
    i16 1, label %183
    i16 2, label %183
    i16 3, label %183
  ]

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !172
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !172
  %22 = sitofp i32 %21 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %19, float noundef %22, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %23 = load float, ptr %4, align 4, !tbaa !125
  %24 = load float, ptr %12, align 4, !tbaa !182
  %25 = fsub float %23, %24
  %26 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !184
  %27 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !188
  %28 = sitofp i32 %27 to float
  %29 = fmul float %26, %28
  %30 = fdiv float %29, 7.200000e+01
  %31 = fdiv float %25, %30
  %32 = load float, ptr %5, align 4, !tbaa !125
  %33 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !189
  %35 = fsub float %32, %34
  %36 = fdiv float %35, %30
  %37 = icmp eq ptr %10, null
  br i1 %37, label %182, label %38

38:                                               ; preds = %15
  %39 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 8
  %40 = load i16, ptr %39, align 4, !tbaa !149
  %41 = icmp eq i16 %40, 5
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !148
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
  %54 = load ptr, ptr %53, align 8, !tbaa !173
  %55 = getelementptr inbounds %struct.bNodeType, ptr %54, i64 0, i32 9
  %56 = load float, ptr %55, align 8, !tbaa !190
  %57 = getelementptr inbounds %struct.bNodeType, ptr %54, i64 0, i32 10
  %58 = load float, ptr %57, align 4, !tbaa !191
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi float [ 1.000000e+02, %47 ], [ %58, %50 ]
  %61 = phi float [ 0.000000e+00, %47 ], [ %56, %50 ]
  %62 = phi ptr [ %49, %47 ], [ %52, %50 ]
  %63 = phi ptr [ %48, %47 ], [ %51, %50 ]
  %64 = load float, ptr %62, align 4, !tbaa !125
  %65 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 9
  %66 = load i32, ptr %65, align 4, !tbaa !192
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %59
  %70 = fadd float %31, %64
  store float %70, ptr %63, align 4, !tbaa !125
  %71 = fcmp olt float %70, %61
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = fcmp ogt float %70, %60
  br i1 %73, label %74, label %76

74:                                               ; preds = %72, %69
  %75 = phi float [ %61, %69 ], [ %60, %72 ]
  store float %75, ptr %63, align 4, !tbaa !125
  br label %76

76:                                               ; preds = %74, %72, %59
  %77 = and i32 %66, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 2
  %81 = load float, ptr %80, align 4, !tbaa !193
  %82 = fadd float %64, %81
  %83 = fadd float %31, %81
  %84 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 24
  store float %83, ptr %84, align 8, !tbaa !194
  %85 = fsub float %82, %60
  %86 = fcmp olt float %83, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = fsub float %82, %61
  %89 = fcmp ogt float %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %79
  %91 = phi float [ %85, %79 ], [ %88, %87 ]
  store float %91, ptr %84, align 8, !tbaa !194
  br label %92

92:                                               ; preds = %90, %87
  %93 = phi float [ %83, %87 ], [ %91, %90 ]
  %94 = fsub float %82, %93
  store float %94, ptr %63, align 4, !tbaa !125
  br label %95

95:                                               ; preds = %92, %76
  %96 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !184
  %97 = fmul float %96, %28
  %98 = fdiv float %97, 7.200000e+01
  %99 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !173
  %101 = getelementptr inbounds %struct.bNodeType, ptr %100, i64 0, i32 12
  %102 = load float, ptr %101, align 4, !tbaa !195
  %103 = fmul float %98, %102
  %104 = getelementptr inbounds %struct.bNodeType, ptr %100, i64 0, i32 13
  %105 = load float, ptr %104, align 8, !tbaa !196
  %106 = fmul float %98, %105
  %107 = and i32 %66, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 3
  %111 = load float, ptr %110, align 4, !tbaa !197
  %112 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 7
  %113 = load float, ptr %112, align 4, !tbaa !198
  %114 = fsub float %111, %113
  %115 = fadd float %36, %111
  %116 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 25
  store float %115, ptr %116, align 4, !tbaa !199
  %117 = fadd float %103, %114
  %118 = fcmp olt float %115, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %109
  %120 = fadd float %106, %114
  %121 = fcmp ogt float %115, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %119, %109
  %123 = phi float [ %117, %109 ], [ %120, %119 ]
  store float %123, ptr %116, align 4, !tbaa !199
  br label %124

124:                                              ; preds = %122, %119
  %125 = phi float [ %115, %119 ], [ %123, %122 ]
  %126 = fsub float %125, %114
  %127 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 27
  store float %126, ptr %127, align 4, !tbaa !200
  br label %128

128:                                              ; preds = %124, %95
  %129 = and i32 %66, 2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 7
  %133 = load float, ptr %132, align 4, !tbaa !198
  %134 = fsub float %133, %36
  %135 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 27
  store float %134, ptr %135, align 4, !tbaa !200
  %136 = fcmp olt float %134, %103
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = fcmp ogt float %134, %106
  br i1 %138, label %139, label %141

139:                                              ; preds = %137, %131
  %140 = phi float [ %103, %131 ], [ %106, %137 ]
  store float %140, ptr %135, align 4, !tbaa !200
  br label %141

141:                                              ; preds = %139, %137, %128
  br i1 %41, label %142, label %182

142:                                              ; preds = %141
  br i1 %78, label %152, label %143

143:                                              ; preds = %142
  %144 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 2
  %145 = load float, ptr %144, align 4, !tbaa !193
  %146 = call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float %145)
  %147 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 24
  store float %146, ptr %147, align 8, !tbaa !194
  %148 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 4
  %149 = load float, ptr %148, align 4, !tbaa !201
  %150 = call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float %149)
  %151 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 29
  store float %150, ptr %151, align 4, !tbaa !202
  br label %152

152:                                              ; preds = %143, %142
  br i1 %68, label %162, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 2
  %155 = load float, ptr %154, align 4, !tbaa !193
  %156 = call float @llvm.fmuladd.f32(float %31, float 5.000000e-01, float %155)
  %157 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 24
  store float %156, ptr %157, align 8, !tbaa !194
  %158 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 4
  %159 = load float, ptr %158, align 4, !tbaa !201
  %160 = call float @llvm.fmuladd.f32(float %31, float -5.000000e-01, float %159)
  %161 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 29
  store float %160, ptr %161, align 4, !tbaa !202
  br label %162

162:                                              ; preds = %153, %152
  br i1 %108, label %172, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 3
  %165 = load float, ptr %164, align 4, !tbaa !197
  %166 = call float @llvm.fmuladd.f32(float %36, float 5.000000e-01, float %165)
  %167 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 25
  store float %166, ptr %167, align 4, !tbaa !199
  %168 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 5
  %169 = load float, ptr %168, align 4, !tbaa !203
  %170 = call float @llvm.fmuladd.f32(float %36, float 5.000000e-01, float %169)
  %171 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 30
  store float %170, ptr %171, align 8, !tbaa !204
  br label %172

172:                                              ; preds = %163, %162
  br i1 %130, label %182, label %173

173:                                              ; preds = %172
  %174 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 3
  %175 = load float, ptr %174, align 4, !tbaa !197
  %176 = call float @llvm.fmuladd.f32(float %36, float 5.000000e-01, float %175)
  %177 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 25
  store float %176, ptr %177, align 4, !tbaa !199
  %178 = getelementptr inbounds %struct.NodeSizeWidget, ptr %12, i64 0, i32 5
  %179 = load float, ptr %178, align 4, !tbaa !203
  %180 = call float @llvm.fmuladd.f32(float %36, float -5.000000e-01, float %179)
  %181 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 30
  store float %180, ptr %181, align 8, !tbaa !204
  br label %182

182:                                              ; preds = %141, %173, %172, %15
  call void @ED_region_tag_redraw(ptr noundef %7) #19
  br label %184

183:                                              ; preds = %3, %3, %3
  tail call fastcc void @node_resize_exit(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %184

184:                                              ; preds = %182, %3, %183
  %185 = phi i32 [ 4, %183 ], [ 1, %3 ], [ 1, %182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %185
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_resize_cancel(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !205 {
  tail call fastcc void @node_resize_exit(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @node_has_hidden_sockets(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !206
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %3, label %23, !llvm.loop !209

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
  %20 = load i16, ptr %19, align 2, !tbaa !206
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %14, label %23, !llvm.loop !210

23:                                               ; preds = %7, %14, %18
  %24 = phi i32 [ 0, %14 ], [ 1, %18 ], [ 1, %7 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = load i16, ptr %11, align 2, !tbaa !206
  %13 = and i16 %12, -3
  store i16 %13, ptr %11, align 2, !tbaa !206
  %14 = load ptr, ptr %10, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !211

16:                                               ; preds = %9, %8
  %17 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %25, %20 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 2, !tbaa !206
  %24 = and i16 %23, -3
  store i16 %24, ptr %22, align 2, !tbaa !206
  %25 = load ptr, ptr %21, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %20, !llvm.loop !212

27:                                               ; preds = %3
  br i1 %7, label %40, label %28

28:                                               ; preds = %27, %37
  %29 = phi ptr [ %38, %37 ], [ %6, %27 ]
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !213
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 8
  %35 = load i16, ptr %34, align 2, !tbaa !206
  %36 = or i16 %35, 2
  store i16 %36, ptr %34, align 2, !tbaa !206
  br label %37

37:                                               ; preds = %28, %33
  %38 = load ptr, ptr %29, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28, !llvm.loop !214

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
  %48 = load ptr, ptr %45, align 8, !tbaa !110
  %49 = tail call i32 @nodeCountSocketLinks(ptr noundef %48, ptr noundef nonnull %47) #19
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 8
  %53 = load i16, ptr %52, align 2, !tbaa !206
  %54 = or i16 %53, 2
  store i16 %54, ptr %52, align 2, !tbaa !206
  br label %55

55:                                               ; preds = %46, %51
  %56 = load ptr, ptr %47, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %46, !llvm.loop !215

58:                                               ; preds = %55, %20, %40, %16
  ret void
}

; Function Attrs: optsize
declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @node_find_indicated_socket(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rctf, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  store ptr null, ptr %1, align 8, !tbaa !43
  store ptr null, ptr %2, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %95, label %12

12:                                               ; preds = %5
  %13 = and i32 %4, 1
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %4, 2
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %12, %90
  %18 = phi ptr [ %10, %12 ], [ %91, %90 ]
  %19 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !216
  %20 = sitofp i16 %19 to float
  %21 = call float @llvm.fmuladd.f32(float %20, float 2.500000e-01, float 4.000000e+00)
  %22 = load <2 x float>, ptr %3, align 4, !tbaa !125
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %24 = insertelement <4 x float> poison, float %21, i64 0
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %26 = fsub <4 x float> %23, %25
  %27 = fadd <4 x float> %23, %25
  %28 = shufflevector <4 x float> %26, <4 x float> %27, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %28, ptr %6, align 16, !tbaa !125
  %29 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !148
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %17
  switch i32 %4, label %46 [
    i32 1, label %34
    i32 2, label %40
  ]

34:                                               ; preds = %33
  %35 = fmul float %20, -2.500000e-01
  %36 = insertelement <2 x float> poison, float %35, i64 0
  %37 = insertelement <2 x float> %36, float %20, i64 1
  %38 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %39 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> <float 4.000000e+00, float 2.500000e-01>, <2 x float> %38)
  store <2 x float> %39, ptr %6, align 16, !tbaa !125
  br label %47

40:                                               ; preds = %33
  %41 = fmul float %20, 2.500000e-01
  %42 = insertelement <2 x float> poison, float %20, i64 0
  %43 = insertelement <2 x float> %42, float %41, i64 1
  %44 = shufflevector <4 x float> %28, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %45 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> <float -2.500000e-01, float 4.000000e+00>, <2 x float> %44)
  store <2 x float> %45, ptr %6, align 16, !tbaa !125
  br label %69

46:                                               ; preds = %33, %17
  br i1 %14, label %68, label %47

47:                                               ; preds = %34, %46
  %48 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %47, %65
  %52 = phi ptr [ %66, %65 ], [ %49, %47 ]
  %53 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %52) #19
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.bNodeSocket, ptr %52, i64 0, i32 13
  %57 = load float, ptr %56, align 8, !tbaa !217
  %58 = getelementptr inbounds %struct.bNodeSocket, ptr %52, i64 0, i32 14
  %59 = load float, ptr %58, align 4, !tbaa !218
  %60 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %6, float noundef %57, float noundef %59) #19
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = call fastcc ptr @visible_node(ptr noundef %0, ptr noundef nonnull %6) #20
  %64 = icmp eq ptr %18, %63
  br i1 %64, label %93, label %65

65:                                               ; preds = %51, %62, %55
  %66 = load ptr, ptr %52, align 8, !tbaa !43
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %51, !llvm.loop !219

68:                                               ; preds = %65, %47, %46
  br i1 %16, label %90, label %69

69:                                               ; preds = %40, %68
  %70 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 18
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  %72 = icmp eq ptr %71, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %69, %87
  %74 = phi ptr [ %88, %87 ], [ %71, %69 ]
  %75 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %74) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.bNodeSocket, ptr %74, i64 0, i32 13
  %79 = load float, ptr %78, align 8, !tbaa !217
  %80 = getelementptr inbounds %struct.bNodeSocket, ptr %74, i64 0, i32 14
  %81 = load float, ptr %80, align 4, !tbaa !218
  %82 = call zeroext i8 @BLI_rctf_isect_pt(ptr noundef nonnull %6, float noundef %79, float noundef %81) #19
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = call fastcc ptr @visible_node(ptr noundef %0, ptr noundef nonnull %6) #20
  %86 = icmp eq ptr %18, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %73, %84, %77
  %88 = load ptr, ptr %74, align 8, !tbaa !43
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %73, !llvm.loop !220

90:                                               ; preds = %87, %69, %68
  %91 = load ptr, ptr %18, align 8, !tbaa !43
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %17, !llvm.loop !221

93:                                               ; preds = %62, %84
  %94 = phi ptr [ %74, %84 ], [ %52, %62 ]
  store ptr %18, ptr %1, align 8, !tbaa !43
  store ptr %94, ptr %2, align 8, !tbaa !43
  br label %95

95:                                               ; preds = %90, %93, %5
  %96 = phi i32 [ 0, %5 ], [ 1, %93 ], [ 0, %90 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  ret i32 %96
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: optsize
declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @visible_node(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !222 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2, %13
  %9 = phi ptr [ %15, %13 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 40
  %11 = tail call zeroext i8 @BLI_rctf_isect(ptr noundef nonnull %10, ptr noundef %1, ptr noundef null) #19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !223

17:                                               ; preds = %13, %8, %2
  %18 = phi ptr [ null, %2 ], [ %9, %8 ], [ null, %13 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_duplicate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_duplicate_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_duplicate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !226 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !227
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.17) #19
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !228
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 7
  br label %13

13:                                               ; preds = %29, %2
  %14 = phi ptr [ %9, %2 ], [ %15, %29 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !148
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = tail call ptr @nodeCopyNode(ptr noundef %5, ptr noundef nonnull %15) #19
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %25 = load ptr, ptr %24, align 8, !tbaa !152
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  tail call void @id_us_plus(ptr noundef nonnull %25) #19
  %28 = load ptr, ptr %12, align 8, !tbaa !113
  tail call void @ED_node_tag_update_id(ptr noundef %28) #19
  br label %29

29:                                               ; preds = %22, %27, %17
  %30 = icmp eq ptr %15, %11
  br i1 %30, label %31, label %13, !llvm.loop !229

31:                                               ; preds = %29, %13
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !230
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
  %43 = load ptr, ptr %42, align 8, !tbaa !231
  %44 = icmp eq ptr %43, null
  br i1 %44, label %97, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !148
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %97, label %50

50:                                               ; preds = %45
  br i1 %36, label %51, label %60

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !233
  %54 = icmp eq ptr %53, null
  br i1 %54, label %97, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !148
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %97, label %60

60:                                               ; preds = %55, %50
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %62 = tail call ptr %61(i64 noundef 56, ptr noundef nonnull @.str.103) #19
  %63 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !234
  %65 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 6
  store i32 %64, ptr %65, align 8, !tbaa !234
  %66 = load ptr, ptr %42, align 8, !tbaa !231
  %67 = getelementptr inbounds %struct.bNode, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !235
  %69 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 3
  store ptr %68, ptr %69, align 8, !tbaa !231
  %70 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !236
  %72 = getelementptr inbounds %struct.bNodeSocket, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !237
  %74 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 5
  store ptr %73, ptr %74, align 8, !tbaa !236
  %75 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !233
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %60
  %79 = getelementptr inbounds %struct.bNode, ptr %76, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !148
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.bNode, ptr %76, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !235
  %86 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 2
  store ptr %85, ptr %86, align 8, !tbaa !233
  %87 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !238
  %89 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 2
  br label %93

90:                                               ; preds = %78, %60
  %91 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 2
  store ptr %76, ptr %91, align 8, !tbaa !233
  %92 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 4
  br label %93

93:                                               ; preds = %90, %83
  %94 = phi ptr [ %92, %90 ], [ %89, %83 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !43
  %96 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 4
  store ptr %95, ptr %96, align 8, !tbaa !238
  tail call void @BLI_addtail(ptr noundef nonnull %32, ptr noundef nonnull %62) #19
  br label %97

97:                                               ; preds = %93, %55, %51, %45, %41
  %98 = icmp eq ptr %39, %34
  br i1 %98, label %99, label %37, !llvm.loop !239

99:                                               ; preds = %97, %37
  %100 = load ptr, ptr %9, align 8, !tbaa !43
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %107, %102 ], [ %100, %99 ]
  %104 = getelementptr inbounds %struct.bNode, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !148
  %106 = and i32 %105, -257
  store i32 %106, ptr %104, align 8, !tbaa !148
  %107 = load ptr, ptr %103, align 8, !tbaa !43
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %102, !llvm.loop !240

109:                                              ; preds = %102, %99
  br label %110

110:                                              ; preds = %109, %120
  %111 = phi ptr [ %112, %120 ], [ %9, %109 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !43
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.bNode, ptr %112, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !148
  %117 = and i32 %116, 257
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  tail call fastcc void @node_duplicate_reparent_recursive(ptr noundef nonnull %112) #20
  br label %120

120:                                              ; preds = %119, %114
  %121 = icmp eq ptr %112, %11
  br i1 %121, label %122, label %110, !llvm.loop !241

122:                                              ; preds = %120, %110
  br label %123

123:                                              ; preds = %122, %137
  %124 = phi ptr [ %125, %137 ], [ %9, %122 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !43
  %126 = icmp eq ptr %125, null
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.bNode, ptr %125, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !148
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.bNode, ptr %125, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !235
  tail call void @nodeSetSelected(ptr noundef nonnull %125, i8 noundef zeroext 0) #19
  %135 = load i32, ptr %128, align 8, !tbaa !148
  %136 = and i32 %135, -17
  store i32 %136, ptr %128, align 8, !tbaa !148
  tail call void @nodeSetSelected(ptr noundef %134, i8 noundef zeroext 1) #19
  br label %137

137:                                              ; preds = %132, %127
  %138 = icmp eq ptr %125, %11
  br i1 %138, label %139, label %123, !llvm.loop !242

139:                                              ; preds = %137, %123
  %140 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %141 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @ntreeUpdateTree(ptr noundef %140, ptr noundef %141) #19
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #20
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_node_select_check(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !148
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %2, label %11, !llvm.loop !243

11:                                               ; preds = %2, %6
  %12 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_read_renderlayers(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_read_renderlayers_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_read_renderlayers_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !244 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.ID, ptr %10, i64 0, i32 5
  %12 = load i16, ptr %11, align 2, !tbaa !245
  %13 = or i16 %12, 1024
  store i16 %13, ptr %11, align 2, !tbaa !245
  %14 = load ptr, ptr %10, align 8, !tbaa !43
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !246

16:                                               ; preds = %9, %2
  %17 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %16, %38
  %23 = phi ptr [ %39, %38 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !149
  %26 = icmp eq i16 %25, 221
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = getelementptr inbounds %struct.ID, ptr %29, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !247
  %32 = and i16 %31, 1024
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = tail call zeroext i8 @RE_ReadRenderResult(ptr noundef %5, ptr noundef nonnull %29) #19
  tail call void @ntreeCompositTagRender(ptr noundef nonnull %29) #19
  %36 = load i16, ptr %30, align 2, !tbaa !247
  %37 = and i16 %36, -1025
  store i16 %37, ptr %30, align 2, !tbaa !247
  br label %38

38:                                               ; preds = %27, %34, %22
  %39 = load ptr, ptr %23, align 8, !tbaa !43
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %22, !llvm.loop !248

41:                                               ; preds = %38, %16
  tail call void @snode_notify(ptr noundef %0, ptr noundef %4) #20
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %4) #20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_read_fullsamplelayers(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_read_fullsamplelayers_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_read_fullsamplelayers_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !249 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %7 = tail call ptr @RE_NewRender(ptr noundef nonnull %6) #19
  tail call void @WM_cursor_wait(i8 noundef zeroext 1) #19
  %8 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  tail call void @RE_MergeFullSample(ptr noundef %7, ptr noundef %3, ptr noundef %5, ptr noundef %9) #19
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67960832, ptr noundef null) #19
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @node_render_changed_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %2, %19
  %11 = phi ptr [ %20, %19 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !152
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 37
  %17 = load i16, ptr %16, align 4, !tbaa !250
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10, %15
  %20 = load ptr, ptr %11, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %10, !llvm.loop !251

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 60
  %24 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 33
  %25 = load i16, ptr %24, align 8, !tbaa !157
  %26 = sext i16 %25 to i32
  %27 = tail call ptr @BLI_findlink(ptr noundef nonnull %23, i32 noundef %26) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @WM_operator_properties_create(ptr noundef nonnull %3, ptr noundef nonnull @.str.26) #19
  %30 = getelementptr inbounds %struct.SceneRenderLayer, ptr %27, i64 0, i32 2
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.27, ptr noundef nonnull %30) #19
  %31 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %31) #19
  %32 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 46
  %33 = load i32, ptr %32, align 4, !tbaa !252
  %34 = or i32 %33, 16384
  store i32 %34, ptr %32, align 4, !tbaa !252
  %35 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.26, i16 noundef signext 0, ptr noundef nonnull %3) #19
  call void @WM_operator_properties_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %36

36:                                               ; preds = %19, %2, %22, %29
  %37 = phi i32 [ 4, %29 ], [ 2, %22 ], [ 2, %2 ], [ 2, %19 ]
  ret i32 %37
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_render_changed(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.30, ptr %2, align 8, !tbaa !164
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %3, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_render_changed_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_hide_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_hide_toggle_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_hide_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !253 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @node_flag_toggle_exec(ptr noundef nonnull %3, i32 noundef 8) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  br label %10

10:                                               ; preds = %2, %5, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_preview_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_preview_toggle_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_preview_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !254 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  tail call fastcc void @node_flag_toggle_exec(ptr noundef nonnull %3, i32 noundef 4) #20
  tail call void @snode_notify(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %10

10:                                               ; preds = %2, %5, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_options_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.38, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_options_toggle_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_options_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !255 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @node_flag_toggle_exec(ptr noundef nonnull %3, i32 noundef 2) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  br label %10

10:                                               ; preds = %2, %5, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_hide_socket_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.41, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_socket_toggle_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_socket_toggle_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !256 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !110
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  %10 = load ptr, ptr %6, align 8, !tbaa !110
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %9, %23
  %15 = phi ptr [ %24, %23 ], [ %12, %9 ]
  %16 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !148
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @node_has_hidden_sockets(ptr noundef nonnull %15) #20, !range !257
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14, %20
  %24 = load ptr, ptr %15, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !258

26:                                               ; preds = %23, %20
  %27 = phi i32 [ 1, %23 ], [ 0, %20 ]
  br i1 %13, label %38, label %28

28:                                               ; preds = %26, %35
  %29 = phi ptr [ %36, %35 ], [ %12, %26 ]
  %30 = getelementptr inbounds %struct.bNode, ptr %29, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !148
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void @node_set_hidden_sockets(ptr noundef nonnull %3, ptr noundef nonnull %29, i32 noundef %27) #20
  br label %35

35:                                               ; preds = %28, %34
  %36 = load ptr, ptr %29, align 8, !tbaa !43
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %28, !llvm.loop !259

38:                                               ; preds = %35, %9, %26
  %39 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %40 = load ptr, ptr %6, align 8, !tbaa !110
  tail call void @ntreeUpdateTree(ptr noundef %39, ptr noundef %40) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  br label %41

41:                                               ; preds = %2, %5, %38
  %42 = phi i32 [ 4, %38 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_mute_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.44, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_mute_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_mute_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !260 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2, %23
  %10 = phi ptr [ %24, %23 ], [ %7, %2 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !148
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !173
  %18 = getelementptr inbounds %struct.bNodeType, ptr %17, i64 0, i32 39
  %19 = load ptr, ptr %18, align 8, !tbaa !261
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = xor i32 %12, 512
  store i32 %22, ptr %11, align 8, !tbaa !148
  tail call void @snode_update(ptr noundef %3, ptr noundef nonnull %10) #20
  br label %23

23:                                               ; preds = %9, %15, %21
  %24 = load ptr, ptr %10, align 8, !tbaa !43
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9, !llvm.loop !262

26:                                               ; preds = %23, %2
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #20
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.47, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.48, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_delete_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !263 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !264
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2, %26
  %10 = phi ptr [ %11, %26 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !265
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !148
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !266
  %23 = add nsw i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !266
  br label %24

24:                                               ; preds = %20, %16
  %25 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @nodeFreeNode(ptr noundef %25, ptr noundef nonnull %10) #19
  br label %26

26:                                               ; preds = %9, %24
  %27 = icmp eq ptr %11, null
  br i1 %27, label %28, label %9, !llvm.loop !267

28:                                               ; preds = %26, %2
  %29 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %30 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @ntreeUpdateTree(ptr noundef %29, ptr noundef %30) #19
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #20
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_delete_reconnect(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.50, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_delete_reconnect_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_delete_reconnect_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !268 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !264
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2, %27
  %10 = phi ptr [ %11, %27 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !265
  %12 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !148
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @nodeInternalRelink(ptr noundef %17, ptr noundef nonnull %10) #19
  %18 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !152
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !266
  %24 = add nsw i32 %23, -1
  store i32 %24, ptr %22, align 4, !tbaa !266
  br label %25

25:                                               ; preds = %21, %16
  %26 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @nodeFreeNode(ptr noundef %26, ptr noundef nonnull %10) #19
  br label %27

27:                                               ; preds = %9, %25
  %28 = icmp eq ptr %11, null
  br i1 %28, label %29, label %9, !llvm.loop !269

29:                                               ; preds = %27, %2
  %30 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %31 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @ntreeUpdateTree(ptr noundef %30, ptr noundef %31) #19
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #20
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %3) #20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_output_file_add_socket(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_output_file_add_socket_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 64, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_output_file_add_socket_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !270 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %6 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !271
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !274
  br label %21

12:                                               ; preds = %2
  %13 = icmp eq ptr %6, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.SpaceNode, ptr %6, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !110
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = call ptr @nodeGetActive(ptr noundef nonnull %16) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %10, %18
  %22 = phi ptr [ %8, %10 ], [ %19, %18 ]
  %23 = phi ptr [ %11, %10 ], [ %16, %18 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !149
  %26 = icmp eq i16 %25, 223
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !227
  call void @RNA_string_get(ptr noundef %29, ptr noundef nonnull @.str.56, ptr noundef nonnull %4) #19
  %30 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22
  %31 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %23, ptr noundef nonnull %22, ptr noundef nonnull %4, ptr noundef nonnull %30) #19
  call void @snode_notify(ptr noundef %0, ptr noundef %6) #20
  br label %32

32:                                               ; preds = %12, %14, %18, %21, %27
  %33 = phi i32 [ 4, %27 ], [ 2, %21 ], [ 2, %18 ], [ 2, %14 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 %33
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_output_file_remove_active_socket(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_output_file_remove_active_socket_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_output_file_remove_active_socket_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !275 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104) #19
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !271
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !274
  br label %19

10:                                               ; preds = %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = call ptr @nodeGetActive(ptr noundef nonnull %14) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %8, %16
  %20 = phi ptr [ %6, %8 ], [ %17, %16 ]
  %21 = phi ptr [ %9, %8 ], [ %14, %16 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %20, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !149
  %24 = icmp eq i16 %23, 223
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = call i32 @ntreeCompositOutputFileRemoveActiveSocket(ptr noundef %21, ptr noundef nonnull %20) #19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void @snode_notify(ptr noundef %0, ptr noundef %4) #20
  br label %29

29:                                               ; preds = %10, %12, %25, %16, %19, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %19 ], [ 2, %16 ], [ 2, %25 ], [ 2, %12 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_output_file_move_active_socket(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.69, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_output_file_move_active_socket_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.71, ptr noundef nonnull @NODE_OT_output_file_move_active_socket.direction_items, i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_output_file_move_active_socket_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !276 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @CTX_data_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104) #19
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !271
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = call ptr @nodeGetActive(ptr noundef nonnull %12) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %48, label %17

17:                                               ; preds = %2, %14
  %18 = phi ptr [ %15, %14 ], [ %6, %2 ]
  %19 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 8
  %20 = load i16, ptr %19, align 4, !tbaa !149
  %21 = icmp eq i16 %20, 223
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !277
  %25 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 17
  %26 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %24, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !278
  %28 = call ptr @BLI_findlink(ptr noundef nonnull %25, i32 noundef %27) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !227
  %33 = call i32 @RNA_enum_get(ptr noundef %32, ptr noundef nonnull @.str.71) #19
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bNodeSocket, ptr %28, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !280
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %28) #19
  call void @BLI_insertlinkbefore(ptr noundef nonnull %25, ptr noundef nonnull %37, ptr noundef nonnull %28) #19
  br label %44

40:                                               ; preds = %30
  %41 = load ptr, ptr %28, align 8, !tbaa !281
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef nonnull %28) #19
  call void @BLI_insertlinkafter(ptr noundef nonnull %25, ptr noundef nonnull %41, ptr noundef nonnull %28) #19
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i32 [ 1, %43 ], [ -1, %39 ]
  %46 = load i32, ptr %26, align 8, !tbaa !278
  %47 = add nsw i32 %46, %45
  store i32 %47, ptr %26, align 8, !tbaa !278
  call void @snode_notify(ptr noundef %0, ptr noundef %4) #20
  br label %48

48:                                               ; preds = %8, %10, %40, %35, %22, %14, %17, %44
  %49 = phi i32 [ 4, %44 ], [ 2, %17 ], [ 2, %14 ], [ 2, %22 ], [ 2, %35 ], [ 2, %40 ], [ 2, %10 ], [ 2, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 %49
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_node_copy_color(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.73, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.75, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_copy_color_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_copy_color_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !282 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @nodeGetActive(ptr noundef nonnull %5) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %16 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 16
  br label %17

17:                                               ; preds = %14, %34
  %18 = phi ptr [ %12, %14 ], [ %35, %34 ]
  %19 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !148
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq ptr %18, %8
  %24 = or i1 %23, %22
  br i1 %24, label %34, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %15, align 8, !tbaa !148
  %27 = and i32 %26, 32768
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = or i32 %20, 32768
  store i32 %30, ptr %19, align 8, !tbaa !148
  %31 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %31, ptr noundef nonnull %16) #20
  br label %34

32:                                               ; preds = %25
  %33 = and i32 %20, -32769
  store i32 %33, ptr %19, align 8, !tbaa !148
  br label %34

34:                                               ; preds = %17, %32, %29
  %35 = load ptr, ptr %18, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17, !llvm.loop !283

37:                                               ; preds = %34, %10
  tail call void @ED_node_sort(ptr noundef nonnull %5) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  br label %38

38:                                               ; preds = %7, %2, %37
  %39 = phi i32 [ 4, %37 ], [ 2, %2 ], [ 2, %7 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_clipboard_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.76, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.78, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_clipboard_copy_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_clipboard_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !284 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  tail call void @BKE_node_clipboard_clear() #19
  tail call void @BKE_node_clipboard_init(ptr noundef %5) #19
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %12

9:                                                ; preds = %20
  %10 = load ptr, ptr %6, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %23

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %7, %2 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !148
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @nodeCopyNode(ptr noundef null, ptr noundef nonnull %13) #19
  tail call void @BKE_node_clipboard_add_node(ptr noundef %19) #19
  br label %20

20:                                               ; preds = %12, %18
  %21 = load ptr, ptr %13, align 8, !tbaa !43
  %22 = icmp eq ptr %21, null
  br i1 %22, label %9, label %12, !llvm.loop !285

23:                                               ; preds = %9, %44
  %24 = phi ptr [ %45, %44 ], [ %10, %9 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !148
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !235
  %32 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !286
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !148
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !235
  store ptr %42, ptr %32, align 8, !tbaa !286
  br label %44

43:                                               ; preds = %35
  tail call void @nodeDetachNode(ptr noundef nonnull %31) #19
  br label %44

44:                                               ; preds = %29, %43, %40, %23
  %45 = load ptr, ptr %24, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %23, !llvm.loop !287

47:                                               ; preds = %44, %2, %9
  %48 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %97, label %51

51:                                               ; preds = %47, %94
  %52 = phi ptr [ %95, %94 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !231
  %55 = icmp eq ptr %54, null
  br i1 %55, label %94, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !148
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %94, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !233
  %64 = icmp eq ptr %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.bNode, ptr %63, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !148
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %72 = tail call ptr %71(i64 noundef 56, ptr noundef nonnull @.str.103) #19
  %73 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !234
  %75 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 6
  store i32 %74, ptr %75, align 8, !tbaa !234
  %76 = load ptr, ptr %53, align 8, !tbaa !231
  %77 = getelementptr inbounds %struct.bNode, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !235
  %79 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 3
  store ptr %78, ptr %79, align 8, !tbaa !231
  %80 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !236
  %82 = getelementptr inbounds %struct.bNodeSocket, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !237
  %84 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 5
  store ptr %83, ptr %84, align 8, !tbaa !236
  %85 = load ptr, ptr %62, align 8, !tbaa !233
  %86 = getelementptr inbounds %struct.bNode, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !235
  %88 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 2
  store ptr %87, ptr %88, align 8, !tbaa !233
  %89 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !238
  %91 = getelementptr inbounds %struct.bNodeSocket, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !237
  %93 = getelementptr inbounds %struct.bNodeLink, ptr %72, i64 0, i32 4
  store ptr %92, ptr %93, align 8, !tbaa !238
  tail call void @BKE_node_clipboard_add_link(ptr noundef %72) #19
  br label %94

94:                                               ; preds = %51, %56, %61, %65, %70
  %95 = load ptr, ptr %52, align 8, !tbaa !43
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %51, !llvm.loop !288

97:                                               ; preds = %94, %47
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_clipboard_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.79, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.80, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_clipboard_paste_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_clipboard_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !289 {
  %3 = alloca [2 x float], align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %7 = tail call zeroext i8 @BKE_node_clipboard_validate() #19
  %8 = tail call ptr @BKE_node_clipboard_get_nodes() #19
  %9 = tail call ptr @BKE_node_clipboard_get_links() #19
  %10 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %8) #20, !range !109
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !290
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.105) #19
  br label %131

15:                                               ; preds = %2
  %16 = tail call i32 @BKE_node_clipboard_get_type() #19
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !151
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !290
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.106) #19
  br label %131

23:                                               ; preds = %15
  %24 = icmp eq i8 %7, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !290
  tail call void @BKE_report(ptr noundef %27, i32 noundef 16, ptr noundef nonnull @.str.107) #19
  br label %28

28:                                               ; preds = %25, %23
  %29 = load ptr, ptr %8, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  br label %34

34:                                               ; preds = %48, %31
  %35 = phi ptr [ %51, %48 ], [ %29, %31 ]
  %36 = phi i1 [ true, %48 ], [ false, %31 ]
  br label %37

37:                                               ; preds = %34, %45
  %38 = phi ptr [ %46, %45 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !173
  %41 = getelementptr inbounds %struct.bNodeType, ptr %40, i64 0, i32 38
  %42 = load ptr, ptr %41, align 8, !tbaa !291
  %43 = tail call i32 %42(ptr noundef nonnull %38, ptr noundef %6) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %38, align 8, !tbaa !43
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %37, !llvm.loop !292

48:                                               ; preds = %37
  %49 = load ptr, ptr %32, align 8, !tbaa !290
  %50 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 6
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %49, i32 noundef 32, ptr noundef nonnull @.str.108, ptr noundef nonnull %50, ptr noundef nonnull %33) #19
  %51 = load ptr, ptr %38, align 8, !tbaa !43
  %52 = icmp eq ptr %51, null
  br i1 %52, label %131, label %34, !llvm.loop !292

53:                                               ; preds = %45
  br i1 %36, label %131, label %54

54:                                               ; preds = %28, %53
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  tail call void @node_deselect_all(ptr noundef %4) #19
  call fastcc void @zero_v2(ptr noundef nonnull %3) #20
  %55 = load float, ptr %3, align 8, !tbaa !125
  %56 = load ptr, ptr %8, align 8, !tbaa !43
  %57 = icmp eq ptr %56, null
  br i1 %57, label %90, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !125
  %61 = insertelement <2 x float> poison, float %55, i64 0
  %62 = insertelement <2 x float> %61, float %60, i64 1
  br label %63

63:                                               ; preds = %58, %63
  %64 = phi ptr [ %56, %58 ], [ %74, %63 ]
  %65 = phi i32 [ 0, %58 ], [ %73, %63 ]
  %66 = phi <2 x float> [ %62, %58 ], [ %72, %63 ]
  %67 = getelementptr inbounds %struct.bNode, ptr %64, i64 0, i32 40
  %68 = tail call fastcc float @BLI_rctf_cent_x(ptr noundef nonnull %67) #20
  %69 = tail call fastcc float @BLI_rctf_cent_y(ptr noundef nonnull %67) #20
  %70 = insertelement <2 x float> poison, float %68, i64 0
  %71 = insertelement <2 x float> %70, float %69, i64 1
  %72 = fadd <2 x float> %71, %66
  %73 = add nuw nsw i32 %65, 1
  %74 = load ptr, ptr %64, align 8, !tbaa !43
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %63, !llvm.loop !293

76:                                               ; preds = %63
  %77 = sitofp i32 %73 to double
  store <2 x float> %72, ptr %3, align 8, !tbaa !125
  %78 = fdiv double 1.000000e+00, %77
  %79 = fptrunc double %78 to float
  call fastcc void @mul_v2_fl(ptr noundef nonnull %3, float noundef %79) #20
  br i1 %57, label %91, label %83

80:                                               ; preds = %83
  %81 = load ptr, ptr %8, align 8, !tbaa !43
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %94

83:                                               ; preds = %76, %83
  %84 = phi ptr [ %88, %83 ], [ %56, %76 ]
  %85 = tail call ptr @nodeCopyNode(ptr noundef %6, ptr noundef nonnull %84) #19
  %86 = getelementptr inbounds %struct.bNode, ptr %84, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8, !tbaa !152
  tail call void @id_us_plus(ptr noundef %87) #19
  tail call void @nodeSetSelected(ptr noundef %85, i8 noundef zeroext 1) #19
  %88 = load ptr, ptr %84, align 8, !tbaa !43
  %89 = icmp eq ptr %88, null
  br i1 %89, label %80, label %83, !llvm.loop !294

90:                                               ; preds = %54
  store float %55, ptr %3, align 8, !tbaa !125
  call fastcc void @mul_v2_fl(ptr noundef nonnull %3, float noundef 0x7FF0000000000000) #20
  br label %91

91:                                               ; preds = %104, %90, %76, %80
  %92 = load ptr, ptr %9, align 8, !tbaa !43
  %93 = icmp eq ptr %92, null
  br i1 %93, label %128, label %107

94:                                               ; preds = %80, %104
  %95 = phi ptr [ %105, %104 ], [ %81, %80 ]
  %96 = getelementptr inbounds %struct.bNode, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !235
  %98 = getelementptr inbounds %struct.bNode, ptr %97, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !286
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.bNode, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !235
  store ptr %103, ptr %98, align 8, !tbaa !286
  br label %104

104:                                              ; preds = %101, %94
  %105 = load ptr, ptr %95, align 8, !tbaa !43
  %106 = icmp eq ptr %105, null
  br i1 %106, label %91, label %94, !llvm.loop !295

107:                                              ; preds = %91, %107
  %108 = phi ptr [ %126, %107 ], [ %92, %91 ]
  %109 = getelementptr inbounds %struct.bNodeLink, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !233
  %111 = getelementptr inbounds %struct.bNode, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !235
  %113 = getelementptr inbounds %struct.bNodeLink, ptr %108, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !238
  %115 = getelementptr inbounds %struct.bNodeSocket, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !237
  %117 = getelementptr inbounds %struct.bNodeLink, ptr %108, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !231
  %119 = getelementptr inbounds %struct.bNode, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !235
  %121 = getelementptr inbounds %struct.bNodeLink, ptr %108, i64 0, i32 5
  %122 = load ptr, ptr %121, align 8, !tbaa !236
  %123 = getelementptr inbounds %struct.bNodeSocket, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !237
  %125 = tail call ptr @nodeAddLink(ptr noundef %6, ptr noundef %112, ptr noundef %116, ptr noundef %120, ptr noundef %124) #19
  %126 = load ptr, ptr %108, align 8, !tbaa !43
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %107, !llvm.loop !296

128:                                              ; preds = %107, %91
  %129 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %130 = load ptr, ptr %5, align 8, !tbaa !110
  tail call void @ntreeUpdateTree(ptr noundef %129, ptr noundef %130) #19
  tail call void @snode_notify(ptr noundef %0, ptr noundef %4) #20
  tail call void @snode_dag_update(ptr noundef %0, ptr noundef %4) #20
  br label %131

131:                                              ; preds = %48, %53, %128, %20, %12
  %132 = phi i32 [ 2, %12 ], [ 2, %20 ], [ 4, %128 ], [ 2, %53 ], [ 2, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_tree_socket_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.82, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.83, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.84, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ntree_socket_add_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.85, ptr noundef nonnull @node_socket_in_out_items, i32 noundef 1, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.65) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ntree_socket_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !297 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.SpaceNode, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !227
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.85) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @RNA_id_pointer_create(ptr noundef %6, ptr noundef nonnull %3) #19
  %10 = icmp eq i32 %9, 1
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 23
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 22
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = call fastcc ptr @ntree_get_active_interface_socket(ptr noundef nonnull %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 12
  %18 = load ptr, ptr %14, align 8, !tbaa !281
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 5
  %20 = call ptr @ntreeInsertSocketInterface(ptr noundef %6, i32 noundef %9, ptr noundef nonnull %17, ptr noundef %18, ptr noundef nonnull %19) #19
  br label %24

21:                                               ; preds = %2
  %22 = select i1 %10, ptr @.str.109, ptr @.str.110
  %23 = call ptr @ntreeAddSocketInterface(ptr noundef %6, i32 noundef %9, ptr noundef nonnull @.str.111, ptr noundef nonnull %22) #19
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi ptr [ %20, %16 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 22
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24, %29
  %30 = phi ptr [ %34, %29 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.bNodeSocket, ptr %30, i64 0, i32 8
  %32 = load i16, ptr %31, align 2, !tbaa !206
  %33 = and i16 %32, -2
  store i16 %33, ptr %31, align 2, !tbaa !206
  %34 = load ptr, ptr %30, align 8, !tbaa !43
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %29, !llvm.loop !298

36:                                               ; preds = %29, %24
  %37 = getelementptr inbounds %struct.bNodeTree, ptr %6, i64 0, i32 23
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %45, %40 ], [ %38, %36 ]
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %41, i64 0, i32 8
  %43 = load i16, ptr %42, align 2, !tbaa !206
  %44 = and i16 %43, -2
  store i16 %44, ptr %42, align 2, !tbaa !206
  %45 = load ptr, ptr %41, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %40, !llvm.loop !299

47:                                               ; preds = %40, %36
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !206
  %50 = or i16 %49, 1
  store i16 %50, ptr %48, align 2, !tbaa !206
  %51 = call ptr @CTX_data_main(ptr noundef %0) #19
  call void @ntreeUpdateTree(ptr noundef %51, ptr noundef %6) #19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_tree_socket_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.87, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.88, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.89, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ntree_socket_remove_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ntree_socket_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !300 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 22
  %7 = tail call fastcc ptr @ntree_get_active_interface_socket(ptr noundef nonnull %6) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 23
  %11 = tail call fastcc ptr @ntree_get_active_interface_socket(ptr noundef nonnull %10) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %2, %9
  %14 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !281
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @ntreeRemoveSocketInterface(ptr noundef %5, ptr noundef nonnull %14) #19
  br label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !280
  tail call void @ntreeRemoveSocketInterface(ptr noundef %5, ptr noundef nonnull %14) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17, %18
  %23 = phi ptr [ %15, %17 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !206
  %26 = or i16 %25, 1
  store i16 %26, ptr %24, align 2, !tbaa !206
  br label %27

27:                                               ; preds = %22, %18
  %28 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  tail call void @ntreeUpdateTree(ptr noundef %28, ptr noundef %5) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  br label %29

29:                                               ; preds = %9, %27
  %30 = phi i32 [ 4, %27 ], [ 2, %9 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_tree_socket_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.90, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.92, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @ntree_socket_move_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_node_editable, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.71, ptr noundef nonnull @move_direction_items, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ntree_socket_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !301 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !227
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.71) #19
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 22
  %10 = tail call fastcc ptr @ntree_get_active_interface_socket(ptr noundef nonnull %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 23
  %14 = tail call fastcc ptr @ntree_get_active_interface_socket(ptr noundef nonnull %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %2, %12
  %17 = phi ptr [ %14, %12 ], [ %10, %2 ]
  %18 = phi ptr [ %13, %12 ], [ %9, %2 ]
  switch i32 %8, label %30 [
    i32 1, label %19
    i32 2, label %25
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !280
  tail call void @BLI_remlink(ptr noundef nonnull %18, ptr noundef nonnull %17) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %18, ptr noundef nonnull %21, ptr noundef nonnull %17) #19
  br label %30

24:                                               ; preds = %19
  tail call void @BLI_addhead(ptr noundef nonnull %18, ptr noundef nonnull %17) #19
  br label %30

25:                                               ; preds = %16
  %26 = load ptr, ptr %17, align 8, !tbaa !281
  tail call void @BLI_remlink(ptr noundef nonnull %18, ptr noundef nonnull %17) #19
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %18, ptr noundef nonnull %26, ptr noundef nonnull %17) #19
  br label %30

29:                                               ; preds = %25
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef nonnull %17) #19
  br label %30

30:                                               ; preds = %28, %29, %23, %24, %16
  %31 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  tail call void @ntreeUpdateTree(ptr noundef %31, ptr noundef %5) #19
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  br label %32

32:                                               ; preds = %12, %30
  %33 = phi i32 [ 4, %30 ], [ 2, %12 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_shader_script_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.93, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.94, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.95, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @node_shader_script_update_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @node_shader_script_update_poll, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @node_shader_script_update_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !302 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.NodeTreeIterStore, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.NodeTreeIterStore, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = tail call ptr @CTX_data_main(ptr noundef %0) #19
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %13 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef nonnull @RNA_ShaderNodeScript) #19
  %14 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 115
  %15 = call ptr @RE_engines_find(ptr noundef nonnull %14) #19
  %16 = call ptr @RE_engine_create(ptr noundef %15) #19
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !290
  %19 = getelementptr inbounds %struct.RenderEngine, ptr %16, i64 0, i32 12
  store ptr %18, ptr %19, align 8, !tbaa !303
  %20 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !271
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load ptr, ptr %3, align 8, !tbaa !274
  br label %34

25:                                               ; preds = %2
  %26 = icmp eq ptr %13, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.SpaceNode, ptr %13, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !110
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = call ptr @nodeGetActive(ptr noundef nonnull %29) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %23, %31
  %35 = phi ptr [ %24, %23 ], [ %29, %31 ]
  %36 = phi ptr [ %21, %23 ], [ %32, %31 ]
  %37 = getelementptr inbounds %struct.RenderEngineType, ptr %15, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !305
  call void %38(ptr noundef nonnull %16, ptr noundef %35, ptr noundef nonnull %36) #19
  br label %85

39:                                               ; preds = %25, %27, %31
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef nonnull @RNA_Text) #19
  %40 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !271
  %42 = icmp eq ptr %41, null
  br i1 %42, label %85, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %5, ptr noundef %11) #19
  %44 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %46, label %58

46:                                               ; preds = %43, %55
  %47 = load ptr, ptr %6, align 8, !tbaa !43
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.bNodeTree, ptr %47, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !151
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %47, i64 0, i32 15
  store i16 0, ptr %54, align 2, !tbaa !307
  br label %55

55:                                               ; preds = %49, %53, %46
  %56 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %57 = icmp eq i8 %56, 1
  br i1 %57, label %46, label %58, !llvm.loop !308

58:                                               ; preds = %55, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %8, ptr noundef %11) #19
  %59 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %60 = icmp eq i8 %59, 1
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #22
  br label %83

62:                                               ; preds = %58, %77
  %63 = phi i8 [ %78, %77 ], [ 0, %58 ]
  %64 = load ptr, ptr %9, align 8, !tbaa !43
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.bNodeTree, ptr %64, i64 0, i32 9
  %68 = load i32, ptr %67, align 8, !tbaa !151
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.bNodeTree, ptr %64, i64 0, i32 15
  %72 = load i16, ptr %71, align 2, !tbaa !307
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = call fastcc zeroext i8 @node_shader_script_update_text_recursive(ptr noundef %16, ptr noundef %15, ptr noundef nonnull %64, ptr noundef nonnull %41) #20, !range !109
  %76 = or i8 %75, %63
  br label %77

77:                                               ; preds = %66, %74, %70, %62
  %78 = phi i8 [ %63, %70 ], [ %76, %74 ], [ %63, %66 ], [ %63, %62 ]
  %79 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %62, label %81, !llvm.loop !309

81:                                               ; preds = %77
  %82 = icmp eq i8 %78, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #22
  br i1 %82, label %83, label %85

83:                                               ; preds = %61, %81
  %84 = load ptr, ptr %17, align 8, !tbaa !290
  call void @BKE_report(ptr noundef %84, i32 noundef 2, ptr noundef nonnull @.str.113) #19
  br label %85

85:                                               ; preds = %39, %83, %81, %34
  %86 = phi i32 [ 4, %34 ], [ 4, %81 ], [ 2, %83 ], [ 2, %39 ]
  call void @RE_engine_free(ptr noundef %16) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @node_shader_script_update_poll(ptr noundef %0) #0 !PGOFuncName !310 {
  %2 = alloca %struct.PointerRNA, align 8
  %3 = alloca %struct.PointerRNA, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #19
  %5 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 115
  %6 = tail call ptr @RE_engines_find(ptr noundef nonnull %5) #19
  %7 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %8 = icmp eq ptr %6, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.RenderEngineType, ptr %6, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !305
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef nonnull @RNA_ShaderNodeScript) #19
  %14 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !271
  %16 = icmp eq ptr %15, null
  %17 = icmp ne ptr %7, null
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.SpaceNode, ptr %7, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !110
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %19
  %24 = call ptr @nodeGetActive(ptr noundef nonnull %21) #19
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi ptr [ %24, %23 ], [ %15, %13 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !149
  %31 = icmp eq i16 %30, 171
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !152
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bNode, ptr %26, i64 0, i32 21
  %38 = load ptr, ptr %37, align 8, !tbaa !277
  %39 = getelementptr inbounds %struct.NodeShaderScript, ptr %38, i64 0, i32 2
  %40 = load i8, ptr %39, align 8, !tbaa !114
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %32, %36
  %43 = call i32 @ED_operator_node_editable(ptr noundef %0) #19
  br label %49

44:                                               ; preds = %36, %19, %28, %25
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef nonnull @RNA_Text) #19
  %45 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !271
  %47 = icmp ne ptr %46, null
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %42, %44, %1, %9
  %50 = phi i32 [ %43, %42 ], [ 0, %9 ], [ 0, %1 ], [ %48, %44 ]
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @NODE_OT_viewer_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.96, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.97, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.98, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !166
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @viewer_border_exec, ptr %5, align 8, !tbaa !224
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !167
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_border_select_cancel, ptr %7, align 8, !tbaa !169
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %8, align 8, !tbaa !168
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %9, align 8, !tbaa !170
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @viewer_border_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !311 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.rcti, align 4
  %5 = alloca %struct.rctf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  tail call void @ED_preview_kill_jobs(ptr noundef %0) #19
  %6 = tail call ptr @BKE_image_verify_viewer(i32 noundef 5, ptr noundef nonnull @.str.10) #19
  %7 = call ptr @BKE_image_acquire_ibuf(ptr noundef %6, ptr noundef null, ptr noundef nonnull %3) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  %10 = call ptr @CTX_wm_region(ptr noundef %0) #19
  %11 = call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %12 = getelementptr inbounds %struct.SpaceNode, ptr %11, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %4) #19
  %14 = load i32, ptr %4, align 4, !tbaa !312
  %15 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !313
  %17 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !314
  %19 = getelementptr inbounds %struct.ImBuf, ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !317
  %21 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 2
  call fastcc void @viewer_border_corner_to_backdrop(ptr noundef %11, ptr noundef %10, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, ptr noundef nonnull %5, ptr noundef nonnull %21) #20
  %22 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !318
  %24 = getelementptr inbounds %struct.rcti, ptr %4, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !319
  %26 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rctf, ptr %5, i64 0, i32 3
  call fastcc void @viewer_border_corner_to_backdrop(ptr noundef %11, ptr noundef %10, i32 noundef %23, i32 noundef %25, i32 noundef %18, i32 noundef %20, ptr noundef nonnull %26, ptr noundef nonnull %27) #20
  %28 = load float, ptr %5, align 4, !tbaa !320
  %29 = call fastcc float @max_ff(float noundef %28) #20
  store float %29, ptr %5, align 4, !tbaa !320
  %30 = load float, ptr %21, align 4, !tbaa !321
  %31 = call fastcc float @max_ff(float noundef %30) #20
  store float %31, ptr %21, align 4, !tbaa !321
  %32 = load float, ptr %26, align 4, !tbaa !322
  %33 = call fastcc float @min_ff(float noundef %32, float noundef 1.000000e+00) #20
  store float %33, ptr %26, align 4, !tbaa !322
  %34 = load float, ptr %27, align 4, !tbaa !323
  %35 = call fastcc float @min_ff(float noundef %34, float noundef 1.000000e+00) #20
  store float %35, ptr %27, align 4, !tbaa !323
  %36 = fcmp olt float %29, %33
  %37 = fcmp olt float %31, %35
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %9
  %40 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !324
  %41 = fcmp oeq float %29, 0.000000e+00
  %42 = fcmp oeq float %31, 0.000000e+00
  %43 = and i1 %41, %42
  %44 = fcmp oeq float %33, 1.000000e+00
  %45 = and i1 %43, %44
  %46 = fcmp oeq float %35, 1.000000e+00
  %47 = and i1 %45, %46
  %48 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 12
  %49 = load i32, ptr %48, align 4, !tbaa !325
  %50 = and i32 %49, -17
  %51 = select i1 %47, i32 0, i32 16
  %52 = or disjoint i32 %50, %51
  store i32 %52, ptr %48, align 4, !tbaa !325
  call void @snode_notify(ptr noundef %0, ptr noundef nonnull %11) #20
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  br label %57

53:                                               ; preds = %9
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 12
  %55 = load i32, ptr %54, align 4, !tbaa !325
  %56 = and i32 %55, -17
  store i32 %56, ptr %54, align 4, !tbaa !325
  br label %57

57:                                               ; preds = %53, %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %58

58:                                               ; preds = %57, %2
  %59 = load ptr, ptr %3, align 8, !tbaa !43
  call void @BKE_image_release_ibuf(ptr noundef %6, ptr noundef %7, ptr noundef %59) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 4
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_border_select_cancel(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @NODE_OT_clear_viewer_border(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  store ptr @.str.99, ptr %0, align 8, !tbaa !162
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.100, ptr %2, align 8, !tbaa !165
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %3, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_viewer_border_exec, ptr %4, align 8, !tbaa !224
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @composite_node_active, ptr %5, align 8, !tbaa !168
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_viewer_border_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !326 {
  %3 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %4 = getelementptr inbounds %struct.SpaceNode, ptr %3, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !325
  %8 = and i32 %7, -17
  store i32 %8, ptr %6, align 4, !tbaa !325
  tail call void @snode_notify(ptr noundef %0, ptr noundef %3) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 288555008, ptr noundef null) #19
  ret i32 4
}

; Function Attrs: optsize
declare void @ntreeLocalMerge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compo_breakjob(ptr nocapture noundef readonly %0) #11 !PGOFuncName !327 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = load i16, ptr %3, align 2, !tbaa !115
  %5 = icmp ne i16 %4, 0
  %6 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @compo_statsdrawjob(ptr nocapture noundef %0, ptr nocapture readnone %1) #12 !PGOFuncName !328 {
  %3 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  store i16 1, ptr %4, align 2, !tbaa !115
  %5 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 6
  store i16 1, ptr %5, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @compo_progressjob(ptr nocapture noundef readonly %0, float noundef %1) #12 !PGOFuncName !329 {
  %3 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !95
  store float %1, ptr %4, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @compo_redrawjob(ptr nocapture noundef readonly %0) #12 !PGOFuncName !330 {
  %2 = getelementptr inbounds %struct.CompoJob, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  store i16 1, ptr %3, align 2, !tbaa !115
  ret void
}

; Function Attrs: optsize
declare void @ntreeCompositExecTree(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntreeLocalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compo_tag_output_nodes(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !331 {
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
  %14 = load i16, ptr %13, align 4, !tbaa !149
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
  %18 = load i32, ptr %17, align 8, !tbaa !148
  %19 = or i32 %18, 131072
  store i32 %19, ptr %17, align 8, !tbaa !148
  br label %30

20:                                               ; preds = %11, %11
  br i1 %8, label %30, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !148
  %24 = or i32 %23, 131072
  store i32 %24, ptr %22, align 8, !tbaa !148
  br label %30

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !152
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @compo_tag_output_nodes(ptr noundef nonnull %27, i32 noundef %1) #20
  br label %30

30:                                               ; preds = %11, %16, %15, %29, %25, %20, %21
  %31 = load ptr, ptr %12, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %11, !llvm.loop !332

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: optsize
declare void @ntreeLocalSync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeGetActive(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_resize_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !333 {
  %5 = tail call ptr @CTX_wm_space_node(ptr noundef %0) #19
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %7 = tail call ptr %6(i64 noundef 40, ptr noundef nonnull @.str.102) #19
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !177
  %9 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16
  %10 = load float, ptr %9, align 8, !tbaa !125
  store float %10, ptr %7, align 4, !tbaa !182
  %11 = getelementptr inbounds %struct.SpaceNode, ptr %5, i64 0, i32 16, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !125
  %13 = getelementptr inbounds %struct.NodeSizeWidget, ptr %7, i64 0, i32 1
  store float %12, ptr %13, align 4, !tbaa !189
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 24
  %15 = getelementptr inbounds %struct.NodeSizeWidget, ptr %7, i64 0, i32 2
  %16 = load <2 x float>, ptr %14, align 8, !tbaa !125
  %17 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 29
  %18 = load <2 x float>, ptr %17, align 4, !tbaa !125
  %19 = shufflevector <2 x float> %16, <2 x float> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %19, ptr %15, align 4, !tbaa !125
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  %21 = getelementptr inbounds %struct.NodeSizeWidget, ptr %7, i64 0, i32 6
  %22 = load <2 x float>, ptr %20, align 8, !tbaa !125
  store <2 x float> %22, ptr %21, align 4, !tbaa !125
  %23 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 28
  %24 = load float, ptr %23, align 8, !tbaa !334
  %25 = getelementptr inbounds %struct.NodeSizeWidget, ptr %7, i64 0, i32 8
  store float %24, ptr %25, align 4, !tbaa !335
  %26 = getelementptr inbounds %struct.NodeSizeWidget, ptr %7, i64 0, i32 9
  store i32 %3, ptr %26, align 4, !tbaa !192
  %27 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  %28 = tail call i32 @node_get_resize_cursor(i32 noundef %3) #19
  tail call void @WM_cursor_modal_set(ptr noundef %27, i32 noundef %28) #19
  %29 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @node_get_resize_cursor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_resize_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !336 {
  %3 = tail call ptr @CTX_wm_window(ptr noundef %0) #19
  tail call void @WM_cursor_modal_restore(ptr noundef %3) #19
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  tail call void %4(ptr noundef %6) #19
  store ptr null, ptr %5, align 8, !tbaa !177
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_preview_kill_jobs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nodeCopyNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_tag_update_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_duplicate_reparent_recursive(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !337 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !148
  %4 = or i32 %3, 256
  store i32 %4, ptr %2, align 8, !tbaa !148
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi ptr [ %0, %1 ], [ %8, %10 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !286
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !148
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %5, label %15, !llvm.loop !338

15:                                               ; preds = %10
  %16 = and i32 %12, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call fastcc void @node_duplicate_reparent_recursive(ptr noundef nonnull %8) #20
  br label %19

19:                                               ; preds = %18, %15
  %20 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !235
  tail call void @nodeDetachNode(ptr noundef %21) #19
  %22 = load ptr, ptr %20, align 8, !tbaa !235
  %23 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !235
  tail call void @nodeAttachNode(ptr noundef %22, ptr noundef %24) #19
  br label %25

25:                                               ; preds = %5, %19
  ret void
}

; Function Attrs: optsize
declare void @nodeSetSelected(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeDetachNode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeAttachNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RE_ReadRenderResult(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeCompositTagRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RE_MergeFullSample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_flag_toggle_exec(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 !PGOFuncName !339 {
  %3 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %83, label %14

8:                                                ; preds = %47
  %9 = icmp ne i32 %49, 0
  %10 = icmp eq i32 %48, 0
  %11 = select i1 %10, i1 true, i1 %9
  br i1 %7, label %83, label %12

12:                                               ; preds = %8
  %13 = xor i32 %1, -1
  br label %52

14:                                               ; preds = %2, %47
  %15 = phi ptr [ %50, %47 ], [ %6, %2 ]
  %16 = phi i32 [ %49, %47 ], [ 0, %2 ]
  %17 = phi i32 [ %48, %47 ], [ 0, %2 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !148
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %14
  switch i32 %1, label %40 [
    i32 4, label %23
    i32 2, label %30
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !173
  %26 = getelementptr inbounds %struct.bNodeType, ptr %25, i64 0, i32 15
  %27 = load i16, ptr %26, align 2, !tbaa !340
  %28 = and i16 %27, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %47, label %40

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !173
  %33 = getelementptr inbounds %struct.bNodeType, ptr %32, i64 0, i32 22
  %34 = load ptr, ptr %33, align 8, !tbaa !341
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.bNodeType, ptr %32, i64 0, i32 23
  %38 = load ptr, ptr %37, align 8, !tbaa !342
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %23, %22, %36, %30
  %41 = and i32 %19, %1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %17, 1
  br label %47

45:                                               ; preds = %40
  %46 = add nsw i32 %16, 1
  br label %47

47:                                               ; preds = %14, %45, %43, %36, %23
  %48 = phi i32 [ %17, %23 ], [ %44, %43 ], [ %17, %45 ], [ %17, %36 ], [ %17, %14 ]
  %49 = phi i32 [ %16, %23 ], [ %16, %43 ], [ %46, %45 ], [ %16, %36 ], [ %16, %14 ]
  %50 = load ptr, ptr %15, align 8, !tbaa !43
  %51 = icmp eq ptr %50, null
  br i1 %51, label %8, label %14, !llvm.loop !343

52:                                               ; preds = %12, %80
  %53 = phi ptr [ %6, %12 ], [ %81, %80 ]
  %54 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 7
  %55 = load i32, ptr %54, align 8, !tbaa !148
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %52
  switch i32 %1, label %76 [
    i32 4, label %59
    i32 2, label %66
  ]

59:                                               ; preds = %58
  %60 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !173
  %62 = getelementptr inbounds %struct.bNodeType, ptr %61, i64 0, i32 15
  %63 = load i16, ptr %62, align 2, !tbaa !340
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %80, label %76

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.bNode, ptr %53, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !173
  %69 = getelementptr inbounds %struct.bNodeType, ptr %68, i64 0, i32 22
  %70 = load ptr, ptr %69, align 8, !tbaa !341
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bNodeType, ptr %68, i64 0, i32 23
  %74 = load ptr, ptr %73, align 8, !tbaa !342
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %59, %58, %72, %66
  %77 = and i32 %55, %13
  %78 = or i32 %55, %1
  %79 = select i1 %11, i32 %78, i32 %77
  store i32 %79, ptr %54, align 8, !tbaa !148
  br label %80

80:                                               ; preds = %76, %52, %72, %59
  %81 = load ptr, ptr %53, align 8, !tbaa !43
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %52, !llvm.loop !344

83:                                               ; preds = %80, %2, %8
  ret void
}

; Function Attrs: optsize
declare void @nodeFreeNode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @nodeInternalRelink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntreeCompositOutputFileAddSocket(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ntreeCompositOutputFileRemoveActiveSocket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_node_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_clipboard_clear() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_clipboard_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_clipboard_add_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_clipboard_add_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_node_clipboard_validate() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_node_clipboard_get_nodes() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_node_clipboard_get_links() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !345 {
  %2 = load ptr, ptr %0, align 8, !tbaa !346
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_node_clipboard_get_type() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @node_deselect_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !347 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !348 {
  %2 = load float, ptr %0, align 4, !tbaa !320
  %3 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !322
  %5 = fadd float %2, %4
  %6 = fmul float %5, 5.000000e-01
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !349 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 4, !tbaa !321
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !323
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !350 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !125
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ntree_get_active_interface_socket(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !351 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !206
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %2, label %11, !llvm.loop !352

11:                                               ; preds = %2, %6
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @ntreeInsertSocketInterface(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntreeAddSocketInterface(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ntreeRemoveSocketInterface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_engines_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RE_engine_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @node_shader_script_update_text_recursive(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !353 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 15
  store i16 1, ptr %5, align 2, !tbaa !307
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
  %15 = load i16, ptr %14, align 4, !tbaa !149
  switch i16 %15, label %33 [
    i16 2, label %16
    i16 171, label %27
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %18, i64 0, i32 15
  %22 = load i16, ptr %21, align 2, !tbaa !307
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = tail call fastcc zeroext i8 @node_shader_script_update_text_recursive(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %18, ptr noundef %3) #20, !range !109
  %26 = or i8 %25, %13
  br label %33

27:                                               ; preds = %11
  %28 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = icmp eq ptr %29, %3
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 8, !tbaa !305
  tail call void %32(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %12) #19
  br label %33

33:                                               ; preds = %11, %16, %20, %24, %31, %27
  %34 = phi i8 [ 1, %31 ], [ %13, %27 ], [ %13, %20 ], [ %26, %24 ], [ %13, %16 ], [ %13, %11 ]
  %35 = load ptr, ptr %12, align 8, !tbaa !43
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11, !llvm.loop !354

37:                                               ; preds = %33, %4
  %38 = phi i8 [ 0, %4 ], [ %34, %33 ]
  ret i8 %38
}

; Function Attrs: optsize
declare void @RE_engine_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @viewer_border_corner_to_backdrop(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #6 !PGOFuncName !355 {
  %9 = sitofp i32 %4 to float
  %10 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 15
  %11 = load float, ptr %10, align 4, !tbaa !356
  %12 = fmul float %11, %9
  %13 = sitofp i32 %5 to float
  %14 = fmul float %11, %13
  %15 = fcmp ogt float %12, 0.000000e+00
  br i1 %15, label %16, label %27

16:                                               ; preds = %8
  %17 = sitofp i32 %2 to float
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %19 = load i16, ptr %18, align 8, !tbaa !357
  %20 = sitofp i16 %19 to float
  %21 = tail call float @llvm.fmuladd.f32(float %20, float -5.000000e-01, float %17)
  %22 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 13
  %23 = load float, ptr %22, align 4, !tbaa !359
  %24 = fsub float %21, %23
  %25 = fdiv float %24, %12
  %26 = fadd float %25, 5.000000e-01
  br label %27

27:                                               ; preds = %8, %16
  %28 = phi float [ %26, %16 ], [ 0.000000e+00, %8 ]
  store float %28, ptr %6, align 4, !tbaa !125
  %29 = fcmp ogt float %14, 0.000000e+00
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = sitofp i32 %3 to float
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %33 = load i16, ptr %32, align 2, !tbaa !360
  %34 = sitofp i16 %33 to float
  %35 = tail call float @llvm.fmuladd.f32(float %34, float -5.000000e-01, float %31)
  %36 = getelementptr inbounds %struct.SpaceNode, ptr %0, i64 0, i32 14
  %37 = load float, ptr %36, align 8, !tbaa !361
  %38 = fsub float %35, %37
  %39 = fdiv float %38, %14
  %40 = fadd float %39, 5.000000e-01
  br label %41

41:                                               ; preds = %27, %30
  %42 = phi float [ %40, %30 ], [ 0.000000e+00, %27 ]
  store float %42, ptr %7, align 4, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #7 !PGOFuncName !362 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = select i1 %2, float %0, float 0.000000e+00
  ret float %3
}

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }
attributes #22 = { nounwind }

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
!47 = !{!45, !41, i64 52}
!48 = !{!"node_edit.c:compo_get_recalc_flags"}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !36, i64 24}
!52 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !41, i64 160, !41, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!53 = !{!54, !37, i64 72}
!54 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !55, i64 56, !37, i64 72, !37, i64 73, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !40, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!55 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!56 = !{!54, !36, i64 96}
!57 = !{!58, !36, i64 40}
!58 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !41, i64 36, !36, i64 40, !59, i64 48, !36, i64 88, !60, i64 96, !62, i64 5360, !36, i64 10520, !37, i64 10528, !61, i64 10536, !61, i64 10540, !61, i64 10544, !61, i64 10548, !61, i64 10552, !37, i64 10556, !37, i64 10557, !40, i64 10558, !40, i64 10560, !40, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !63, i64 10568}
!59 = !{!"ImageUser", !36, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!60 = !{!"Scopes", !41, i64 0, !41, i64 4, !41, i64 8, !61, i64 12, !41, i64 16, !61, i64 20, !61, i64 24, !41, i64 28, !61, i64 32, !41, i64 36, !37, i64 40, !62, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !41, i64 5256, !41, i64 5260}
!61 = !{!"float", !37, i64 0}
!62 = !{!"Histogram", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !61, i64 5128, !61, i64 5132, !40, i64 5136, !40, i64 5138, !41, i64 5140, !37, i64 5144}
!63 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!64 = !{!65, !40, i64 1250}
!65 = !{!"Image", !66, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !40, i64 1240, !40, i64 1242, !40, i64 1244, !40, i64 1246, !40, i64 1248, !40, i64 1250, !41, i64 1252, !40, i64 1256, !40, i64 1258, !40, i64 1260, !40, i64 1262, !40, i64 1264, !40, i64 1266, !41, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !61, i64 1296, !41, i64 1300, !40, i64 1304, !40, i64 1306, !41, i64 1308, !41, i64 1312, !37, i64 1316, !37, i64 1317, !40, i64 1318, !37, i64 1320, !61, i64 1336, !61, i64 1340, !67, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!66 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !36, i64 112}
!67 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!68 = !{!69, !40, i64 232}
!69 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !61, i64 36, !37, i64 40, !70, i64 56, !36, i64 216, !36, i64 224, !40, i64 232, !40, i64 234, !61, i64 236, !61, i64 240, !61, i64 244, !61, i64 248, !61, i64 252, !37, i64 256, !39, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !41, i64 360, !41, i64 364, !40, i64 368, !40, i64 370, !40, i64 372, !40, i64 374, !39, i64 376, !36, i64 392}
!70 = !{!"View2D", !71, i64 0, !71, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !61, i64 96, !61, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !36, i64 128, !41, i64 136, !41, i64 140, !36, i64 144, !36, i64 152}
!71 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!72 = distinct !{!72, !50}
!73 = !{!"node_edit.c:compo_freejob"}
!74 = !{!45, !36, i64 16}
!75 = !{!"node_edit.c:compo_startjob"}
!76 = !{!77, !37, i64 246}
!77 = !{!"Scene", !66, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !78, i64 280, !85, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !39, i64 4384, !86, i64 4400, !87, i64 4416, !90, i64 4600, !36, i64 4608, !91, i64 4616, !36, i64 4640, !92, i64 4648, !92, i64 4656, !80, i64 4664, !81, i64 4824, !67, i64 4888, !36, i64 4952}
!78 = !{!"RenderData", !79, i64 0, !36, i64 248, !36, i64 256, !82, i64 264, !83, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !61, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !61, i64 436, !61, i64 440, !61, i64 444, !61, i64 448, !61, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !37, i64 514, !37, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !71, i64 544, !71, i64 560, !55, i64 576, !39, i64 592, !40, i64 608, !40, i64 610, !61, i64 612, !61, i64 616, !61, i64 620, !61, i64 624, !41, i64 628, !61, i64 632, !61, i64 636, !61, i64 640, !61, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !61, i64 660, !61, i64 664, !40, i64 668, !40, i64 670, !61, i64 672, !61, i64 676, !37, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !61, i64 2528, !61, i64 2532, !40, i64 2536, !40, i64 2538, !61, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !61, i64 2560, !61, i64 2564, !36, i64 2568, !41, i64 2576, !61, i64 2580, !37, i64 2584, !84, i64 2616, !41, i64 3976, !41, i64 3980}
!79 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !40, i64 8, !40, i64 10, !61, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !80, i64 24, !81, i64 184}
!80 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !37, i64 8, !37, i64 72, !61, i64 136, !61, i64 140, !36, i64 144, !36, i64 152}
!81 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!82 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!83 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !61, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !36, i64 64}
!84 = !{!"BakeData", !79, i64 0, !37, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !61, i64 1280, !61, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!85 = !{!"AudioData", !41, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !61, i64 24, !61, i64 28}
!86 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!87 = !{!"GameData", !86, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !37, i64 34, !88, i64 40, !40, i64 64, !40, i64 66, !61, i64 68, !89, i64 72, !61, i64 128, !61, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180}
!88 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !61, i64 8, !61, i64 12, !36, i64 16}
!89 = !{!"RecastData", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !41, i64 40, !61, i64 44, !61, i64 48, !40, i64 52, !40, i64 54}
!90 = !{!"UnitSettings", !61, i64 0, !37, i64 4, !37, i64 5, !40, i64 6}
!91 = !{!"PhysicsSettings", !37, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!92 = !{!"long", !37, i64 0}
!93 = !{!45, !36, i64 24}
!94 = !{!45, !36, i64 32}
!95 = !{!45, !36, i64 40}
!96 = !{!97, !36, i64 384}
!97 = !{!"bNodeTree", !66, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !39, i64 224, !39, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !71, i64 296, !39, i64 312, !39, i64 328, !36, i64 344, !98, i64 352, !41, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!98 = !{!"bNodeInstanceKey", !41, i64 0}
!99 = !{!97, !36, i64 400}
!100 = !{!97, !36, i64 376}
!101 = !{!97, !36, i64 416}
!102 = !{!97, !36, i64 368}
!103 = !{!97, !36, i64 408}
!104 = !{!97, !36, i64 392}
!105 = !{!97, !36, i64 424}
!106 = !{!"node_edit.c:compo_initjob"}
!107 = !{!"node_edit.c:compo_updatejob"}
!108 = !{!45, !40, i64 48}
!109 = !{i8 0, i8 2}
!110 = !{!69, !36, i64 288}
!111 = !{!69, !36, i64 280}
!112 = distinct !{!112, !50}
!113 = !{!69, !36, i64 216}
!114 = !{!37, !37, i64 0}
!115 = !{!40, !40, i64 0}
!116 = !{!117, !36, i64 768}
!117 = !{!"Material", !66, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !61, i64 132, !61, i64 136, !61, i64 140, !61, i64 144, !61, i64 148, !61, i64 152, !61, i64 156, !61, i64 160, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180, !61, i64 184, !61, i64 188, !61, i64 192, !61, i64 196, !61, i64 200, !61, i64 204, !61, i64 208, !61, i64 212, !61, i64 216, !61, i64 220, !118, i64 224, !119, i64 312, !61, i64 328, !61, i64 332, !61, i64 336, !61, i64 340, !61, i64 344, !61, i64 348, !61, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !37, i64 362, !37, i64 363, !61, i64 364, !61, i64 368, !40, i64 372, !40, i64 374, !61, i64 376, !61, i64 380, !61, i64 384, !61, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !61, i64 420, !61, i64 424, !61, i64 428, !61, i64 432, !61, i64 436, !61, i64 440, !61, i64 444, !61, i64 448, !61, i64 452, !61, i64 456, !37, i64 460, !61, i64 524, !61, i64 528, !61, i64 532, !41, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !37, i64 550, !37, i64 551, !40, i64 552, !40, i64 554, !61, i64 556, !61, i64 560, !37, i64 564, !61, i64 580, !61, i64 584, !40, i64 588, !40, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !40, i64 612, !40, i64 614, !61, i64 616, !61, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !61, i64 800, !61, i64 804, !61, i64 808, !61, i64 812, !61, i64 816, !40, i64 820, !40, i64 822, !37, i64 824, !37, i64 836, !61, i64 848, !61, i64 852, !61, i64 856, !61, i64 860, !61, i64 864, !61, i64 868, !61, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !37, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !37, i64 914, !36, i64 920, !39, i64 928}
!118 = !{!"VolumeSettings", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !61, i64 52, !61, i64 56, !61, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !61, i64 72, !61, i64 76, !61, i64 80, !61, i64 84}
!119 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!120 = !{!121, !36, i64 520}
!121 = !{!"World", !66, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !61, i64 136, !61, i64 140, !61, i64 144, !61, i64 148, !61, i64 152, !61, i64 156, !61, i64 160, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180, !61, i64 184, !61, i64 188, !61, i64 192, !61, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !61, i64 216, !61, i64 220, !61, i64 224, !61, i64 228, !61, i64 232, !61, i64 236, !61, i64 240, !61, i64 244, !61, i64 248, !61, i64 252, !61, i64 256, !61, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !61, i64 272, !61, i64 276, !61, i64 280, !61, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !61, i64 296, !61, i64 300, !61, i64 304, !61, i64 308, !61, i64 312, !61, i64 316, !61, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !40, i64 504, !40, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!122 = !{!123, !36, i64 512}
!123 = !{!"Lamp", !66, i64 0, !36, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !61, i64 140, !61, i64 144, !61, i64 148, !61, i64 152, !61, i64 156, !61, i64 160, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180, !61, i64 184, !61, i64 188, !61, i64 192, !61, i64 196, !36, i64 200, !40, i64 208, !40, i64 210, !61, i64 212, !61, i64 216, !61, i64 220, !61, i64 224, !61, i64 228, !61, i64 232, !61, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !37, i64 248, !37, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !61, i64 260, !61, i64 264, !61, i64 268, !61, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !61, i64 288, !61, i64 292, !61, i64 296, !61, i64 300, !61, i64 304, !61, i64 308, !61, i64 312, !61, i64 316, !61, i64 320, !61, i64 324, !61, i64 328, !61, i64 332, !61, i64 336, !40, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !40, i64 496, !40, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!124 = !{!123, !40, i64 128}
!125 = !{!61, !61, i64 0}
!126 = !{!127, !36, i64 216}
!127 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !39, i64 200, !39, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !39, i64 264, !61, i64 280, !61, i64 284, !61, i64 288, !61, i64 292, !61, i64 296, !61, i64 300, !61, i64 304, !41, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !61, i64 380, !61, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !71, i64 400, !71, i64 416, !71, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !36, i64 456}
!128 = !{!127, !36, i64 200}
!129 = !{!127, !36, i64 208}
!130 = !{!"node_edit.c:copy_v3_v3"}
!131 = !{!77, !36, i64 248}
!132 = !{!35, !41, i64 2100}
!133 = !{!97, !41, i64 292}
!134 = !{!97, !40, i64 288}
!135 = !{!97, !40, i64 290}
!136 = !{!137, !36, i64 336}
!137 = !{!"Tex", !66, i64 0, !36, i64 120, !61, i64 128, !61, i64 132, !61, i64 136, !61, i64 140, !61, i64 144, !61, i64 148, !61, i64 152, !61, i64 156, !61, i64 160, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180, !61, i64 184, !61, i64 188, !61, i64 192, !61, i64 196, !61, i64 200, !61, i64 204, !61, i64 208, !61, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !61, i64 236, !61, i64 240, !61, i64 244, !61, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !61, i64 284, !61, i64 288, !61, i64 292, !59, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!138 = !{!69, !36, i64 224}
!139 = !{!140, !36, i64 416}
!140 = !{!"bNodeTreeType", !41, i64 0, !37, i64 4, !37, i64 68, !37, i64 132, !41, i64 388, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !141, i64 480}
!141 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!142 = !{!140, !36, i64 424}
!143 = !{!69, !36, i64 272}
!144 = !{!145, !36, i64 8}
!145 = !{!"bNodeTreePath", !36, i64 0, !36, i64 8, !36, i64 16, !98, i64 24, !41, i64 28, !37, i64 32, !37, i64 40}
!146 = !{!145, !36, i64 16}
!147 = distinct !{!147, !50}
!148 = !{!127, !41, i64 168}
!149 = !{!127, !40, i64 172}
!150 = distinct !{!150, !50}
!151 = !{!97, !41, i64 256}
!152 = !{!127, !36, i64 240}
!153 = distinct !{!153, !50}
!154 = !{!117, !37, i64 543}
!155 = distinct !{!155, !50}
!156 = distinct !{!156, !50}
!157 = !{!127, !40, i64 376}
!158 = !{!77, !40, i64 888}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = !{!"node_edit.c:min_ff"}
!162 = !{!163, !36, i64 0}
!163 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !141, i64 152, !40, i64 184}
!164 = !{!163, !36, i64 8}
!165 = !{!163, !36, i64 24}
!166 = !{!163, !36, i64 48}
!167 = !{!163, !36, i64 64}
!168 = !{!163, !36, i64 72}
!169 = !{!163, !36, i64 56}
!170 = !{!163, !40, i64 184}
!171 = !{!"node_edit.c:node_resize_invoke"}
!172 = !{!41, !41, i64 0}
!173 = !{!127, !36, i64 32}
!174 = !{!175, !36, i64 576}
!175 = !{!"bNodeType", !36, i64 0, !36, i64 8, !40, i64 16, !37, i64 18, !41, i64 84, !37, i64 88, !37, i64 152, !41, i64 408, !61, i64 412, !61, i64 416, !61, i64 420, !61, i64 424, !61, i64 428, !61, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !141, i64 720}
!176 = !{!"node_edit.c:node_resize_modal"}
!177 = !{!178, !36, i64 96}
!178 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!179 = !{!180, !40, i64 16}
!180 = !{!"wmEvent", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !181, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !36, i64 88, !36, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !36, i64 112}
!181 = !{!"double", !37, i64 0}
!182 = !{!183, !61, i64 0}
!183 = !{!"NodeSizeWidget", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !41, i64 36}
!184 = !{!185, !61, i64 10908}
!185 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !37, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !61, i64 8956, !61, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !61, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !186, i64 8984, !37, i64 9760, !37, i64 9772, !40, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !41, i64 10896, !41, i64 10900, !61, i64 10904, !61, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !187, i64 10928}
!186 = !{!"ColorBand", !40, i64 0, !40, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!187 = !{!"WalkNavigation", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !40, i64 24, !37, i64 26}
!188 = !{!185, !41, i64 8524}
!189 = !{!183, !61, i64 4}
!190 = !{!175, !61, i64 416}
!191 = !{!175, !61, i64 420}
!192 = !{!183, !41, i64 36}
!193 = !{!183, !61, i64 8}
!194 = !{!127, !61, i64 280}
!195 = !{!175, !61, i64 428}
!196 = !{!175, !61, i64 432}
!197 = !{!183, !61, i64 12}
!198 = !{!183, !61, i64 28}
!199 = !{!127, !61, i64 284}
!200 = !{!127, !61, i64 292}
!201 = !{!183, !61, i64 16}
!202 = !{!127, !61, i64 300}
!203 = !{!183, !61, i64 20}
!204 = !{!127, !61, i64 304}
!205 = !{!"node_edit.c:node_resize_cancel"}
!206 = !{!207, !40, i64 170}
!207 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176, !37, i64 184, !61, i64 248, !61, i64 252, !36, i64 256, !40, i64 264, !40, i64 266, !41, i64 268, !36, i64 272, !41, i64 280, !41, i64 284, !36, i64 288, !36, i64 296, !208, i64 304}
!208 = !{!"bNodeStack", !37, i64 0, !61, i64 16, !61, i64 20, !36, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !37, i64 44}
!209 = distinct !{!209, !50}
!210 = distinct !{!210, !50}
!211 = distinct !{!211, !50}
!212 = distinct !{!212, !50}
!213 = !{!207, !36, i64 296}
!214 = distinct !{!214, !50}
!215 = distinct !{!215, !50}
!216 = !{!185, !40, i64 8948}
!217 = !{!207, !61, i64 248}
!218 = !{!207, !61, i64 252}
!219 = distinct !{!219, !50}
!220 = distinct !{!220, !50}
!221 = distinct !{!221, !50}
!222 = !{!"node_edit.c:visible_node"}
!223 = distinct !{!223, !50}
!224 = !{!163, !36, i64 32}
!225 = !{!163, !36, i64 88}
!226 = !{!"node_edit.c:node_duplicate_exec"}
!227 = !{!178, !36, i64 112}
!228 = !{!97, !36, i64 232}
!229 = distinct !{!229, !50}
!230 = !{!97, !36, i64 248}
!231 = !{!232, !36, i64 24}
!232 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !41, i64 48, !41, i64 52}
!233 = !{!232, !36, i64 16}
!234 = !{!232, !41, i64 48}
!235 = !{!127, !36, i64 16}
!236 = !{!232, !36, i64 40}
!237 = !{!207, !36, i64 16}
!238 = !{!232, !36, i64 32}
!239 = distinct !{!239, !50}
!240 = distinct !{!240, !50}
!241 = distinct !{!241, !50}
!242 = distinct !{!242, !50}
!243 = distinct !{!243, !50}
!244 = !{!"node_edit.c:node_read_renderlayers_exec"}
!245 = !{!77, !40, i64 98}
!246 = distinct !{!246, !50}
!247 = !{!66, !40, i64 98}
!248 = distinct !{!248, !50}
!249 = !{!"node_edit.c:node_read_fullsamplelayers_exec"}
!250 = !{!127, !40, i64 388}
!251 = distinct !{!251, !50}
!252 = !{!77, !41, i64 796}
!253 = !{!"node_edit.c:node_hide_toggle_exec"}
!254 = !{!"node_edit.c:node_preview_toggle_exec"}
!255 = !{!"node_edit.c:node_options_toggle_exec"}
!256 = !{!"node_edit.c:node_socket_toggle_exec"}
!257 = !{i32 0, i32 2}
!258 = distinct !{!258, !50}
!259 = distinct !{!259, !50}
!260 = !{!"node_edit.c:node_mute_exec"}
!261 = !{!175, !36, i64 680}
!262 = distinct !{!262, !50}
!263 = !{!"node_edit.c:node_delete_exec"}
!264 = !{!97, !36, i64 224}
!265 = !{!127, !36, i64 0}
!266 = !{!66, !41, i64 100}
!267 = distinct !{!267, !50}
!268 = !{!"node_edit.c:node_delete_reconnect_exec"}
!269 = distinct !{!269, !50}
!270 = !{!"node_edit.c:node_output_file_add_socket_exec"}
!271 = !{!272, !36, i64 16}
!272 = !{!"PointerRNA", !273, i64 0, !36, i64 8, !36, i64 16}
!273 = !{!"", !36, i64 0}
!274 = !{!272, !36, i64 0}
!275 = !{!"node_edit.c:node_output_file_remove_active_socket_exec"}
!276 = !{!"node_edit.c:node_output_file_move_active_socket_exec"}
!277 = !{!127, !36, i64 248}
!278 = !{!279, !41, i64 1280}
!279 = !{!"NodeImageMultiFile", !37, i64 0, !79, i64 1024, !41, i64 1272, !41, i64 1276, !41, i64 1280, !41, i64 1284}
!280 = !{!207, !36, i64 8}
!281 = !{!207, !36, i64 0}
!282 = !{!"node_edit.c:node_copy_color_exec"}
!283 = distinct !{!283, !50}
!284 = !{!"node_edit.c:node_clipboard_copy_exec"}
!285 = distinct !{!285, !50}
!286 = !{!127, !36, i64 232}
!287 = distinct !{!287, !50}
!288 = distinct !{!288, !50}
!289 = !{!"node_edit.c:node_clipboard_paste_exec"}
!290 = !{!178, !36, i64 120}
!291 = !{!175, !36, i64 672}
!292 = distinct !{!292, !50}
!293 = distinct !{!293, !50}
!294 = distinct !{!294, !50}
!295 = distinct !{!295, !50}
!296 = distinct !{!296, !50}
!297 = !{!"node_edit.c:ntree_socket_add_exec"}
!298 = distinct !{!298, !50}
!299 = distinct !{!299, !50}
!300 = !{!"node_edit.c:ntree_socket_remove_exec"}
!301 = !{!"node_edit.c:ntree_socket_move_exec"}
!302 = !{!"node_edit.c:node_shader_script_update_exec"}
!303 = !{!304, !36, i64 592}
!304 = !{!"RenderEngine", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !41, i64 584, !41, i64 588, !36, i64 592, !41, i64 600, !41, i64 604, !71, i64 608, !55, i64 624, !37, i64 640, !41, i64 704, !41, i64 708}
!305 = !{!306, !36, i64 192}
!306 = !{!"RenderEngineType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !41, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !141, i64 200}
!307 = !{!97, !40, i64 278}
!308 = distinct !{!308, !50}
!309 = distinct !{!309, !50}
!310 = !{!"node_edit.c:node_shader_script_update_poll"}
!311 = !{!"node_edit.c:viewer_border_exec"}
!312 = !{!55, !41, i64 0}
!313 = !{!55, !41, i64 8}
!314 = !{!315, !41, i64 16}
!315 = !{!"ImBuf", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !37, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !61, i64 112, !37, i64 120, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !36, i64 296, !36, i64 304, !41, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !41, i64 2376, !36, i64 2384, !41, i64 2392, !41, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !41, i64 2432, !55, i64 2436, !316, i64 2456}
!316 = !{!"DDSData", !41, i64 0, !41, i64 4, !36, i64 8, !41, i64 16}
!317 = !{!315, !41, i64 20}
!318 = !{!55, !41, i64 4}
!319 = !{!55, !41, i64 12}
!320 = !{!71, !61, i64 0}
!321 = !{!71, !61, i64 8}
!322 = !{!71, !61, i64 4}
!323 = !{!71, !61, i64 12}
!324 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 12, i64 4, !125}
!325 = !{!97, !41, i64 268}
!326 = !{!"node_edit.c:clear_viewer_border_exec"}
!327 = !{!"node_edit.c:compo_breakjob"}
!328 = !{!"node_edit.c:compo_statsdrawjob"}
!329 = !{!"node_edit.c:compo_progressjob"}
!330 = !{!"node_edit.c:compo_redrawjob"}
!331 = !{!"node_edit.c:compo_tag_output_nodes"}
!332 = distinct !{!332, !50}
!333 = !{!"node_edit.c:node_resize_init"}
!334 = !{!127, !61, i64 296}
!335 = !{!183, !61, i64 32}
!336 = !{!"node_edit.c:node_resize_exit"}
!337 = !{!"node_edit.c:node_duplicate_reparent_recursive"}
!338 = distinct !{!338, !50}
!339 = !{!"node_edit.c:node_flag_toggle_exec"}
!340 = !{!175, !40, i64 438}
!341 = !{!175, !36, i64 544}
!342 = !{!175, !36, i64 552}
!343 = distinct !{!343, !50}
!344 = distinct !{!344, !50}
!345 = !{!"node_edit.c:BLI_listbase_is_empty"}
!346 = !{!39, !36, i64 0}
!347 = !{!"node_edit.c:zero_v2"}
!348 = !{!"node_edit.c:BLI_rctf_cent_x"}
!349 = !{!"node_edit.c:BLI_rctf_cent_y"}
!350 = !{!"node_edit.c:mul_v2_fl"}
!351 = !{!"node_edit.c:ntree_get_active_interface_socket"}
!352 = distinct !{!352, !50}
!353 = !{!"node_edit.c:node_shader_script_update_text_recursive"}
!354 = distinct !{!354, !50}
!355 = !{!"node_edit.c:viewer_border_corner_to_backdrop"}
!356 = !{!69, !61, i64 252}
!357 = !{!358, !40, i64 208}
!358 = !{!"ARegion", !36, i64 0, !36, i64 8, !70, i64 16, !55, i64 176, !55, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !61, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!359 = !{!69, !61, i64 244}
!360 = !{!358, !40, i64 210}
!361 = !{!69, !61, i64 248}
!362 = !{!"node_edit.c:max_ff"}
