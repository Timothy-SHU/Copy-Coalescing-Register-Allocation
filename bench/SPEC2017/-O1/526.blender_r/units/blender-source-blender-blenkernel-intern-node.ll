; ModuleID = 'blender/source/blender/blenkernel/intern/node.c'
source_filename = "blender/source/blender/blenkernel/intern/node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.bNodeTreeType = type { i32, [64 x i8], [64 x i8], [256 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.bNodeSocketType = type { [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA, %struct.ExtensionRNA, i32, i32 }
%struct.StructRNA = type opaque
%struct.bNodeInstanceKey = type { i32 }
%struct.BlenderRNA = type opaque
%struct.bNodeClipboard = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i32 }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
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
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.bNodePreview = type { %struct.bNodeInstanceHashEntry, ptr, i16, i16, i32 }
%struct.bNodeInstanceHashEntry = type { %struct.bNodeInstanceKey, i16, i16 }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bNodeClipboardExtraInfo = type { ptr, ptr, ptr, [66 x i8], [1024 x i8] }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.bNodeSocketValueFloat = type { i32, float, float, float }
%struct.anon.0 = type { ptr, ptr }
%struct.anon.1 = type { ptr, ptr }

@nodetreetypes_hash = internal unnamed_addr global ptr null, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@NodeTreeTypeUndefined = dso_local global %struct.bNodeTreeType zeroinitializer, align 8
@nodetypes_hash = internal unnamed_addr global ptr null, align 8
@NodeTypeUndefined = dso_local global %struct.bNodeType zeroinitializer, align 8
@nodesockettypes_hash = internal unnamed_addr global ptr null, align 8
@NodeSocketTypeUndefined = dso_local global %struct.bNodeSocketType zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"NodeSocketFloatUnsigned\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"NodeSocketFloatPercentage\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"NodeSocketFloatFactor\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"NodeSocketFloatAngle\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"NodeSocketFloatTime\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"NodeSocketFloat\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"NodeSocketIntUnsigned\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"NodeSocketIntPercentage\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"NodeSocketIntFactor\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"NodeSocketInt\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"NodeSocketBool\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"NodeSocketVectorTranslation\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"NodeSocketVectorDirection\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"NodeSocketVectorVelocity\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"NodeSocketVectorAcceleration\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"NodeSocketVectorEuler\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"NodeSocketVectorXYZ\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"NodeSocketVector\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"NodeSocketColor\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"NodeSocketString\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"NodeSocketShader\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"NodeSocketInterfaceFloatUnsigned\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"NodeSocketInterfaceFloatPercentage\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"NodeSocketInterfaceFloatFactor\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"NodeSocketInterfaceFloatAngle\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"NodeSocketInterfaceFloatTime\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"NodeSocketInterfaceFloat\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"NodeSocketInterfaceIntUnsigned\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"NodeSocketInterfaceIntPercentage\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"NodeSocketInterfaceIntFactor\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"NodeSocketInterfaceInt\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"NodeSocketInterfaceBool\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"NodeSocketInterfaceVectorTranslation\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"NodeSocketInterfaceVectorDirection\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"NodeSocketInterfaceVectorVelocity\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"NodeSocketInterfaceVectorAcceleration\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"NodeSocketInterfaceVectorEuler\00", align 1
@.str.37 = private unnamed_addr constant [29 x i8] c"NodeSocketInterfaceVectorXYZ\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"NodeSocketInterfaceVector\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"NodeSocketInterfaceColor\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"NodeSocketInterfaceString\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"NodeSocketInterfaceShader\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Error: static node socket type %d undefined\0A\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"Node\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [9 x i8] c"new node\00", align 1
@.str.45 = private unnamed_addr constant [38 x i8] c"Error: static node type %d undefined\0A\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"dupli node\00", align 1
@RNA_Node = external global %struct.StructRNA, align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"new node tree\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"node preview\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"node preview rect\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [14 x i8] c"node previews\00", align 1
@NODE_INSTANCE_KEY_BASE = dso_local local_unnamed_addr constant %struct.bNodeInstanceKey { i32 5381 }, align 4
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@BLENDER_RNA = external global %struct.BlenderRNA, align 1
@node_clipboard = internal global %struct.bNodeClipboard zeroinitializer, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [24 x i8] c"bNodeClipboardExtraInfo\00", align 1
@NODE_INSTANCE_KEY_NONE = dso_local local_unnamed_addr constant %struct.bNodeInstanceKey zeroinitializer, align 4
@.str.53 = private unnamed_addr constant [25 x i8] c"node instance hash ghash\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"temporary node instance key list\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"sorted node array\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"NodeFrame\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"NodeGroup\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"NodeGroupInput\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"NodeGroupOutput\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"NodeReroute\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"ShaderNodeOutput\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"ShaderNodeMaterial\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"ShaderNodeRGB\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"ShaderNodeValue\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"ShaderNodeMixRGB\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"ShaderNodeValToRGB\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"ShaderNodeRGBToBW\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"ShaderNodeTexture\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"ShaderNodeNormal\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"ShaderNodeGamma\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"ShaderNodeBrightContrast\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"ShaderNodeGeometry\00", align 1
@.str.73 = private unnamed_addr constant [18 x i8] c"ShaderNodeMapping\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"ShaderNodeVectorCurve\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"ShaderNodeRGBCurve\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"ShaderNodeCameraData\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"ShaderNodeLampData\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ShaderNodeMath\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"ShaderNodeVectorMath\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"ShaderNodeSqueeze\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"ShaderNodeExtendedMaterial\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"ShaderNodeInvert\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"ShaderNodeSeparateRGB\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"ShaderNodeCombineRGB\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"ShaderNodeHueSaturation\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"ShaderNodeOutputMaterial\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"ShaderNodeOutputLamp\00", align 1
@.str.88 = private unnamed_addr constant [22 x i8] c"ShaderNodeOutputWorld\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"ShaderNodeOutputLineStyle\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"ShaderNodeFresnel\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"ShaderNodeLayerWeight\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"ShaderNodeMixShader\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"ShaderNodeAddShader\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"ShaderNodeAttribute\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"ShaderNodeAmbientOcclusion\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"ShaderNodeBackground\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"ShaderNodeHoldout\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"ShaderNodeBsdfAnisotropic\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"ShaderNodeBsdfDiffuse\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"ShaderNodeBsdfGlossy\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"ShaderNodeBsdfGlass\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"ShaderNodeBsdfRefraction\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"ShaderNodeBsdfTranslucent\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"ShaderNodeBsdfTransparent\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"ShaderNodeBsdfVelvet\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"ShaderNodeBsdfToon\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"ShaderNodeBsdfHair\00", align 1
@.str.108 = private unnamed_addr constant [31 x i8] c"ShaderNodeSubsurfaceScattering\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"ShaderNodeVolumeAbsorption\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"ShaderNodeVolumeScatter\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"ShaderNodeEmission\00", align 1
@.str.112 = private unnamed_addr constant [22 x i8] c"ShaderNodeNewGeometry\00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"ShaderNodeLightPath\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"ShaderNodeLightFalloff\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"ShaderNodeObjectInfo\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"ShaderNodeParticleInfo\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"ShaderNodeHairInfo\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"ShaderNodeWireframe\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"ShaderNodeWavelength\00", align 1
@.str.120 = private unnamed_addr constant [20 x i8] c"ShaderNodeBlackbody\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"ShaderNodeBump\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"ShaderNodeNormalMap\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"ShaderNodeTangent\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"ShaderNodeScript\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexImage\00", align 1
@.str.126 = private unnamed_addr constant [25 x i8] c"ShaderNodeTexEnvironment\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"ShaderNodeTexSky\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"ShaderNodeTexGradient\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexNoise\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexMagic\00", align 1
@.str.131 = private unnamed_addr constant [18 x i8] c"ShaderNodeTexWave\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"ShaderNodeTexMusgrave\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"ShaderNodeTexVoronoi\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"ShaderNodeTexChecker\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexBrick\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexCoord\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"ShaderNodeVectorTransform\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"ShaderNodeSeparateHSV\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"ShaderNodeCombineHSV\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"ShaderNodeUVMap\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"ShaderNodeUVAlongStroke\00", align 1
@.str.142 = private unnamed_addr constant [22 x i8] c"ShaderNodeSeparateXYZ\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"ShaderNodeCombineXYZ\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"CompositorNodeViewer\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"CompositorNodeRGB\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"CompositorNodeValue\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"CompositorNodeMixRGB\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"CompositorNodeValToRGB\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"CompositorNodeRGBToBW\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"CompositorNodeNormal\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"CompositorNodeCurveVec\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"CompositorNodeCurveRGB\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"CompositorNodeAlphaOver\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"CompositorNodeBlur\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"CompositorNodeFilter\00", align 1
@.str.156 = private unnamed_addr constant [23 x i8] c"CompositorNodeMapValue\00", align 1
@.str.157 = private unnamed_addr constant [23 x i8] c"CompositorNodeMapRange\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"CompositorNodeTime\00", align 1
@.str.159 = private unnamed_addr constant [22 x i8] c"CompositorNodeVecBlur\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepRGBA\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepHSVA\00", align 1
@.str.162 = private unnamed_addr constant [23 x i8] c"CompositorNodeSetAlpha\00", align 1
@.str.163 = private unnamed_addr constant [21 x i8] c"CompositorNodeHueSat\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"CompositorNodeImage\00", align 1
@.str.165 = private unnamed_addr constant [22 x i8] c"CompositorNodeRLayers\00", align 1
@.str.166 = private unnamed_addr constant [24 x i8] c"CompositorNodeComposite\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"CompositorNodeOutputFile\00", align 1
@.str.168 = private unnamed_addr constant [22 x i8] c"CompositorNodeTexture\00", align 1
@.str.169 = private unnamed_addr constant [24 x i8] c"CompositorNodeTranslate\00", align 1
@.str.170 = private unnamed_addr constant [23 x i8] c"CompositorNodeZcombine\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombRGBA\00", align 1
@.str.172 = private unnamed_addr constant [26 x i8] c"CompositorNodeDilateErode\00", align 1
@.str.173 = private unnamed_addr constant [22 x i8] c"CompositorNodeInpaint\00", align 1
@.str.174 = private unnamed_addr constant [24 x i8] c"CompositorNodeDespeckle\00", align 1
@.str.175 = private unnamed_addr constant [21 x i8] c"CompositorNodeRotate\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"CompositorNodeScale\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepYCCA\00", align 1
@.str.178 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombYCCA\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepYUVA\00", align 1
@.str.180 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombYUVA\00", align 1
@.str.181 = private unnamed_addr constant [24 x i8] c"CompositorNodeDiffMatte\00", align 1
@.str.182 = private unnamed_addr constant [25 x i8] c"CompositorNodeColorSpill\00", align 1
@.str.183 = private unnamed_addr constant [26 x i8] c"CompositorNodeChromaMatte\00", align 1
@.str.184 = private unnamed_addr constant [27 x i8] c"CompositorNodeChannelMatte\00", align 1
@.str.185 = private unnamed_addr constant [19 x i8] c"CompositorNodeFlip\00", align 1
@.str.186 = private unnamed_addr constant [26 x i8] c"CompositorNodeSplitViewer\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"CompositorNodeMapUV\00", align 1
@.str.188 = private unnamed_addr constant [21 x i8] c"CompositorNodeIDMask\00", align 1
@.str.189 = private unnamed_addr constant [29 x i8] c"CompositorNodeDoubleEdgeMask\00", align 1
@.str.190 = private unnamed_addr constant [22 x i8] c"CompositorNodeDefocus\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"CompositorNodeDisplace\00", align 1
@.str.192 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombHSVA\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"CompositorNodeMath\00", align 1
@.str.194 = private unnamed_addr constant [24 x i8] c"CompositorNodeLumaMatte\00", align 1
@.str.195 = private unnamed_addr constant [29 x i8] c"CompositorNodeBrightContrast\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c"CompositorNodeGamma\00", align 1
@.str.197 = private unnamed_addr constant [21 x i8] c"CompositorNodeInvert\00", align 1
@.str.198 = private unnamed_addr constant [24 x i8] c"CompositorNodeNormalize\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"CompositorNodeCrop\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"CompositorNodeDBlur\00", align 1
@.str.201 = private unnamed_addr constant [28 x i8] c"CompositorNodeBilateralblur\00", align 1
@.str.202 = private unnamed_addr constant [24 x i8] c"CompositorNodePremulKey\00", align 1
@.str.203 = private unnamed_addr constant [20 x i8] c"CompositorNodeGlare\00", align 1
@.str.204 = private unnamed_addr constant [22 x i8] c"CompositorNodeTonemap\00", align 1
@.str.205 = private unnamed_addr constant [23 x i8] c"CompositorNodeLensdist\00", align 1
@.str.206 = private unnamed_addr constant [21 x i8] c"CompositorNodeLevels\00", align 1
@.str.207 = private unnamed_addr constant [25 x i8] c"CompositorNodeColorMatte\00", align 1
@.str.208 = private unnamed_addr constant [28 x i8] c"CompositorNodeDistanceMatte\00", align 1
@.str.209 = private unnamed_addr constant [27 x i8] c"CompositorNodeColorBalance\00", align 1
@.str.210 = private unnamed_addr constant [25 x i8] c"CompositorNodeHueCorrect\00", align 1
@.str.211 = private unnamed_addr constant [24 x i8] c"CompositorNodeMovieClip\00", align 1
@.str.212 = private unnamed_addr constant [24 x i8] c"CompositorNodeTransform\00", align 1
@.str.213 = private unnamed_addr constant [24 x i8] c"CompositorNodeStabilize\00", align 1
@.str.214 = private unnamed_addr constant [30 x i8] c"CompositorNodeMovieDistortion\00", align 1
@.str.215 = private unnamed_addr constant [22 x i8] c"CompositorNodeBoxMask\00", align 1
@.str.216 = private unnamed_addr constant [26 x i8] c"CompositorNodeEllipseMask\00", align 1
@.str.217 = private unnamed_addr constant [25 x i8] c"CompositorNodeBokehImage\00", align 1
@.str.218 = private unnamed_addr constant [24 x i8] c"CompositorNodeBokehBlur\00", align 1
@.str.219 = private unnamed_addr constant [21 x i8] c"CompositorNodeSwitch\00", align 1
@.str.220 = private unnamed_addr constant [30 x i8] c"CompositorNodeColorCorrection\00", align 1
@.str.221 = private unnamed_addr constant [19 x i8] c"CompositorNodeMask\00", align 1
@.str.222 = private unnamed_addr constant [27 x i8] c"CompositorNodeKeyingScreen\00", align 1
@.str.223 = private unnamed_addr constant [21 x i8] c"CompositorNodeKeying\00", align 1
@.str.224 = private unnamed_addr constant [23 x i8] c"CompositorNodeTrackPos\00", align 1
@.str.225 = private unnamed_addr constant [23 x i8] c"CompositorNodePixelate\00", align 1
@.str.226 = private unnamed_addr constant [31 x i8] c"CompositorNodePlaneTrackDeform\00", align 1
@.str.227 = private unnamed_addr constant [24 x i8] c"CompositorNodeCornerPin\00", align 1
@.str.228 = private unnamed_addr constant [23 x i8] c"CompositorNodeSunBeams\00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"TextureNodeOutput\00", align 1
@.str.230 = private unnamed_addr constant [19 x i8] c"TextureNodeChecker\00", align 1
@.str.231 = private unnamed_addr constant [19 x i8] c"TextureNodeTexture\00", align 1
@.str.232 = private unnamed_addr constant [18 x i8] c"TextureNodeBricks\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c"TextureNodeMath\00", align 1
@.str.234 = private unnamed_addr constant [18 x i8] c"TextureNodeMixRGB\00", align 1
@.str.235 = private unnamed_addr constant [19 x i8] c"TextureNodeRGBToBW\00", align 1
@.str.236 = private unnamed_addr constant [20 x i8] c"TextureNodeValToRGB\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"TextureNodeImage\00", align 1
@.str.238 = private unnamed_addr constant [20 x i8] c"TextureNodeCurveRGB\00", align 1
@.str.239 = private unnamed_addr constant [18 x i8] c"TextureNodeInvert\00", align 1
@.str.240 = private unnamed_addr constant [25 x i8] c"TextureNodeHueSaturation\00", align 1
@.str.241 = private unnamed_addr constant [21 x i8] c"TextureNodeCurveTime\00", align 1
@.str.242 = private unnamed_addr constant [18 x i8] c"TextureNodeRotate\00", align 1
@.str.243 = private unnamed_addr constant [18 x i8] c"TextureNodeViewer\00", align 1
@.str.244 = private unnamed_addr constant [21 x i8] c"TextureNodeTranslate\00", align 1
@.str.245 = private unnamed_addr constant [23 x i8] c"TextureNodeCoordinates\00", align 1
@.str.246 = private unnamed_addr constant [20 x i8] c"TextureNodeDistance\00", align 1
@.str.247 = private unnamed_addr constant [19 x i8] c"TextureNodeCompose\00", align 1
@.str.248 = private unnamed_addr constant [21 x i8] c"TextureNodeDecompose\00", align 1
@.str.249 = private unnamed_addr constant [20 x i8] c"TextureNodeValToNor\00", align 1
@.str.250 = private unnamed_addr constant [17 x i8] c"TextureNodeScale\00", align 1
@.str.251 = private unnamed_addr constant [14 x i8] c"TextureNodeAt\00", align 1
@.str.252 = private unnamed_addr constant [22 x i8] c"TextureNodeTexVoronoi\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"TextureNodeTexBlend\00", align 1
@.str.254 = private unnamed_addr constant [20 x i8] c"TextureNodeTexMagic\00", align 1
@.str.255 = private unnamed_addr constant [21 x i8] c"TextureNodeTexMarble\00", align 1
@.str.256 = private unnamed_addr constant [21 x i8] c"TextureNodeTexClouds\00", align 1
@.str.257 = private unnamed_addr constant [19 x i8] c"TextureNodeTexWood\00", align 1
@.str.258 = private unnamed_addr constant [23 x i8] c"TextureNodeTexMusgrave\00", align 1
@.str.259 = private unnamed_addr constant [20 x i8] c"TextureNodeTexNoise\00", align 1
@.str.260 = private unnamed_addr constant [21 x i8] c"TextureNodeTexStucci\00", align 1
@.str.261 = private unnamed_addr constant [24 x i8] c"TextureNodeTexDistNoise\00", align 1
@.str.262 = private unnamed_addr constant [22 x i8] c"nodetreetypes_hash gh\00", align 1
@.str.263 = private unnamed_addr constant [18 x i8] c"nodetypes_hash gh\00", align 1
@.str.264 = private unnamed_addr constant [24 x i8] c"nodesockettypes_hash gh\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"nodes[\22%s\22]\00", align 1
@.str.268 = private unnamed_addr constant [16 x i8] c"socket template\00", align 1
@.str.269 = private unnamed_addr constant [9 x i8] c"Input_%d\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"Output_%d\00", align 1
@.str.271 = private unnamed_addr constant [21 x i8] c"NodeTreeInterface_%s\00", align 1
@.str.272 = private unnamed_addr constant [23 x i8] c"Node Tree %s Interface\00", align 1
@.str.273 = private unnamed_addr constant [38 x i8] c"Interface properties of node group %s\00", align 1
@RNA_PropertyGroup = external global %struct.StructRNA, align 1
@.str.274 = private unnamed_addr constant [18 x i8] c"NodeTreeUndefined\00", align 1
@.str.275 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.276 = private unnamed_addr constant [25 x i8] c"Undefined Node Tree Type\00", align 1
@.str.277 = private unnamed_addr constant [14 x i8] c"NodeUndefined\00", align 1
@.str.278 = private unnamed_addr constant [20 x i8] c"NodeSocketUndefined\00", align 1
@reltable.nodeStaticSocketType = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.nodeStaticSocketType to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.nodeStaticSocketType to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.nodeStaticSocketType to i64)) to i32)], align 4
@reltable.nodeStaticSocketInterfaceType = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.nodeStaticSocketInterfaceType to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.28 to i64), i64 ptrtoint (ptr @reltable.nodeStaticSocketInterfaceType to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.29 to i64), i64 ptrtoint (ptr @reltable.nodeStaticSocketInterfaceType to i64)) to i32)], align 4
@switch.table.node_type_size_preset = private unnamed_addr constant [4 x float] [float 1.400000e+02, float 1.000000e+02, float 1.500000e+02, float 2.400000e+02], align 4
@switch.table.node_type_size_preset.279 = private unnamed_addr constant [4 x float] [float 1.000000e+02, float 8.000000e+01, float 1.200000e+02, float 1.400000e+02], align 4

; Function Attrs: nounwind uwtable
define dso_local void @ntreeSetTypes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 10
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %7 = load i8, ptr %6, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %11 = tail call ptr @BLI_ghash_lookup(ptr noundef %10, ptr noundef nonnull %6) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  br label %14

14:                                               ; preds = %9, %13
  %15 = phi ptr [ null, %13 ], [ %11, %9 ]
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  br i1 %16, label %21, label %18

18:                                               ; preds = %14
  store ptr %15, ptr %17, align 8, !tbaa !48
  %19 = load i32, ptr %15, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  store i32 %19, ptr %20, align 8, !tbaa !52
  br label %24

21:                                               ; preds = %14
  store ptr @NodeTreeTypeUndefined, ptr %17, align 8, !tbaa !48
  %22 = load i32, ptr %3, align 4, !tbaa !34
  %23 = and i32 %22, -2
  store i32 %23, ptr %3, align 4, !tbaa !34
  br label %24

24:                                               ; preds = %18, %21
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %108, label %31

28:                                               ; preds = %105, %75
  %29 = load ptr, ptr %32, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %108, label %31, !llvm.loop !53

31:                                               ; preds = %24, %28
  %32 = phi ptr [ %29, %28 ], [ %26, %24 ]
  %33 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 5
  %34 = load i8, ptr %33, align 1, !tbaa !46
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %38 = tail call ptr @BLI_ghash_lookup(ptr noundef %37, ptr noundef nonnull %33) #23
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %36, %40
  %42 = phi ptr [ null, %40 ], [ %38, %36 ]
  tail call fastcc void @node_set_typeinfo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %32, ptr noundef %42)
  %43 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %75, label %46

46:                                               ; preds = %41, %72
  %47 = phi ptr [ %73, %72 ], [ %44, %41 ]
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 12
  %49 = load i8, ptr %48, align 1, !tbaa !46
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %53 = tail call ptr @BLI_ghash_lookup(ptr noundef %52, ptr noundef nonnull %48) #23
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %51, %55
  %57 = phi ptr [ null, %55 ], [ %53, %51 ]
  %58 = icmp eq ptr %57, null
  %59 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 11
  br i1 %58, label %69, label %60

60:                                               ; preds = %56
  store ptr %57, ptr %59, align 8, !tbaa !56
  %61 = getelementptr inbounds %struct.bNodeSocketType, ptr %57, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !59
  %63 = trunc i32 %62 to i16
  %64 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 7
  store i16 %63, ptr %64, align 8, !tbaa !61
  %65 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 15
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  tail call void @node_socket_init_default_value(ptr noundef nonnull %47) #23
  br label %72

69:                                               ; preds = %56
  store ptr @NodeSocketTypeUndefined, ptr %59, align 8, !tbaa !56
  %70 = load i32, ptr %3, align 4, !tbaa !34
  %71 = and i32 %70, -2
  store i32 %71, ptr %3, align 4, !tbaa !34
  br label %72

72:                                               ; preds = %60, %68, %69
  %73 = load ptr, ptr %47, align 8, !tbaa !47
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %46, !llvm.loop !63

75:                                               ; preds = %72, %41
  %76 = getelementptr inbounds %struct.bNode, ptr %32, i64 0, i32 18
  %77 = load ptr, ptr %76, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %28, label %79

79:                                               ; preds = %75, %105
  %80 = phi ptr [ %106, %105 ], [ %77, %75 ]
  %81 = getelementptr inbounds %struct.bNodeSocket, ptr %80, i64 0, i32 12
  %82 = load i8, ptr %81, align 1, !tbaa !46
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %86 = tail call ptr @BLI_ghash_lookup(ptr noundef %85, ptr noundef nonnull %81) #23
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %84, %88
  %90 = phi ptr [ null, %88 ], [ %86, %84 ]
  %91 = icmp eq ptr %90, null
  %92 = getelementptr inbounds %struct.bNodeSocket, ptr %80, i64 0, i32 11
  br i1 %91, label %102, label %93

93:                                               ; preds = %89
  store ptr %90, ptr %92, align 8, !tbaa !56
  %94 = getelementptr inbounds %struct.bNodeSocketType, ptr %90, i64 0, i32 11
  %95 = load i32, ptr %94, align 8, !tbaa !59
  %96 = trunc i32 %95 to i16
  %97 = getelementptr inbounds %struct.bNodeSocket, ptr %80, i64 0, i32 7
  store i16 %96, ptr %97, align 8, !tbaa !61
  %98 = getelementptr inbounds %struct.bNodeSocket, ptr %80, i64 0, i32 15
  %99 = load ptr, ptr %98, align 8, !tbaa !62
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  tail call void @node_socket_init_default_value(ptr noundef nonnull %80) #23
  br label %105

102:                                              ; preds = %89
  store ptr @NodeSocketTypeUndefined, ptr %92, align 8, !tbaa !56
  %103 = load i32, ptr %3, align 4, !tbaa !34
  %104 = and i32 %103, -2
  store i32 %104, ptr %3, align 4, !tbaa !34
  br label %105

105:                                              ; preds = %93, %101, %102
  %106 = load ptr, ptr %80, align 8, !tbaa !47
  %107 = icmp eq ptr %106, null
  br i1 %107, label %28, label %79, !llvm.loop !64

108:                                              ; preds = %28, %24
  %109 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 22
  %110 = load ptr, ptr %109, align 8, !tbaa !47
  %111 = icmp eq ptr %110, null
  br i1 %111, label %141, label %112

112:                                              ; preds = %108, %138
  %113 = phi ptr [ %139, %138 ], [ %110, %108 ]
  %114 = getelementptr inbounds %struct.bNodeSocket, ptr %113, i64 0, i32 12
  %115 = load i8, ptr %114, align 1, !tbaa !46
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %119 = tail call ptr @BLI_ghash_lookup(ptr noundef %118, ptr noundef nonnull %114) #23
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %117, %121
  %123 = phi ptr [ null, %121 ], [ %119, %117 ]
  %124 = icmp eq ptr %123, null
  %125 = getelementptr inbounds %struct.bNodeSocket, ptr %113, i64 0, i32 11
  br i1 %124, label %135, label %126

126:                                              ; preds = %122
  store ptr %123, ptr %125, align 8, !tbaa !56
  %127 = getelementptr inbounds %struct.bNodeSocketType, ptr %123, i64 0, i32 11
  %128 = load i32, ptr %127, align 8, !tbaa !59
  %129 = trunc i32 %128 to i16
  %130 = getelementptr inbounds %struct.bNodeSocket, ptr %113, i64 0, i32 7
  store i16 %129, ptr %130, align 8, !tbaa !61
  %131 = getelementptr inbounds %struct.bNodeSocket, ptr %113, i64 0, i32 15
  %132 = load ptr, ptr %131, align 8, !tbaa !62
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  tail call void @node_socket_init_default_value(ptr noundef nonnull %113) #23
  br label %138

135:                                              ; preds = %122
  store ptr @NodeSocketTypeUndefined, ptr %125, align 8, !tbaa !56
  %136 = load i32, ptr %3, align 4, !tbaa !34
  %137 = and i32 %136, -2
  store i32 %137, ptr %3, align 4, !tbaa !34
  br label %138

138:                                              ; preds = %126, %134, %135
  %139 = load ptr, ptr %113, align 8, !tbaa !47
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %112, !llvm.loop !65

141:                                              ; preds = %138, %108
  %142 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 23
  %143 = load ptr, ptr %142, align 8, !tbaa !47
  %144 = icmp eq ptr %143, null
  br i1 %144, label %174, label %145

145:                                              ; preds = %141, %171
  %146 = phi ptr [ %172, %171 ], [ %143, %141 ]
  %147 = getelementptr inbounds %struct.bNodeSocket, ptr %146, i64 0, i32 12
  %148 = load i8, ptr %147, align 1, !tbaa !46
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %152 = tail call ptr @BLI_ghash_lookup(ptr noundef %151, ptr noundef nonnull %147) #23
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %150, %154
  %156 = phi ptr [ null, %154 ], [ %152, %150 ]
  %157 = icmp eq ptr %156, null
  %158 = getelementptr inbounds %struct.bNodeSocket, ptr %146, i64 0, i32 11
  br i1 %157, label %168, label %159

159:                                              ; preds = %155
  store ptr %156, ptr %158, align 8, !tbaa !56
  %160 = getelementptr inbounds %struct.bNodeSocketType, ptr %156, i64 0, i32 11
  %161 = load i32, ptr %160, align 8, !tbaa !59
  %162 = trunc i32 %161 to i16
  %163 = getelementptr inbounds %struct.bNodeSocket, ptr %146, i64 0, i32 7
  store i16 %162, ptr %163, align 8, !tbaa !61
  %164 = getelementptr inbounds %struct.bNodeSocket, ptr %146, i64 0, i32 15
  %165 = load ptr, ptr %164, align 8, !tbaa !62
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  tail call void @node_socket_init_default_value(ptr noundef nonnull %146) #23
  br label %171

168:                                              ; preds = %155
  store ptr @NodeSocketTypeUndefined, ptr %158, align 8, !tbaa !56
  %169 = load i32, ptr %3, align 4, !tbaa !34
  %170 = and i32 %169, -2
  store i32 %170, ptr %3, align 4, !tbaa !34
  br label %171

171:                                              ; preds = %159, %167, %168
  %172 = load ptr, ptr %146, align 8, !tbaa !47
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %145, !llvm.loop !66

174:                                              ; preds = %171, %141
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeTypeFind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef nonnull %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %6, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal fastcc void @node_set_typeinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !67
  %8 = and i32 %7, 65536
  %9 = icmp ne i32 %8, 0
  %10 = icmp ne ptr %3, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %21

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bNodeType, ptr %3, i64 0, i32 19
  %14 = load i8, ptr %13, align 8, !tbaa !46
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr null, ptr %3
  br label %21

21:                                               ; preds = %16, %12, %4
  %22 = phi ptr [ %3, %12 ], [ %3, %4 ], [ %20, %16 ]
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  br i1 %23, label %103, label %25

25:                                               ; preds = %21
  store ptr %22, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !71
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 8
  store i16 %28, ptr %29, align 4, !tbaa !73
  %30 = icmp ne ptr %22, @NodeTypeUndefined
  %31 = icmp eq i32 %8, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %107

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 15
  %35 = load i16, ptr %34, align 2, !tbaa !74
  %36 = or i16 %35, 3
  %37 = sext i16 %36 to i32
  store i32 %37, ptr %6, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 8
  %39 = load float, ptr %38, align 4, !tbaa !75
  %40 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  store float %39, ptr %40, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 28
  store float 4.200000e+01, ptr %41, align 8, !tbaa !77
  %42 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 11
  %43 = load float, ptr %42, align 8, !tbaa !78
  %44 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 27
  store float %43, ptr %44, align 4, !tbaa !79
  %45 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 16
  %46 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %46, align 4, !tbaa !80
  %47 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 16, i64 1
  store float 0x3FE374BC60000000, ptr %47, align 4, !tbaa !80
  store float 0x3FE374BC60000000, ptr %45, align 4, !tbaa !80
  %48 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 6
  %49 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 5
  %50 = tail call ptr @BLI_strncpy(ptr noundef nonnull %48, ptr noundef nonnull %49, i64 noundef 64) #23
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  tail call void @BLI_uniquename(ptr noundef nonnull %51, ptr noundef %2, ptr noundef nonnull @.str.43, i8 noundef zeroext 46, i32 noundef 104, i32 noundef 64) #23
  %52 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !81
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %33
  %56 = load i32, ptr %53, align 8, !tbaa !82
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %64, label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %61, %58 ], [ %53, %55 ]
  %60 = tail call ptr @node_add_socket_from_template(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %59, i32 noundef 1) #23
  %61 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %59, i64 1
  %62 = load i32, ptr %61, align 8, !tbaa !82
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %58, !llvm.loop !84

64:                                               ; preds = %58, %55, %33
  %65 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 18
  %66 = load ptr, ptr %65, align 8, !tbaa !85
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %66, align 8, !tbaa !82
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %77, label %71

71:                                               ; preds = %68, %71
  %72 = phi ptr [ %74, %71 ], [ %66, %68 ]
  %73 = tail call ptr @node_add_socket_from_template(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %72, i32 noundef 2) #23
  %74 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %72, i64 1
  %75 = load i32, ptr %74, align 8, !tbaa !82
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %71, !llvm.loop !86

77:                                               ; preds = %71, %68, %64
  %78 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 31
  %79 = load ptr, ptr %78, align 8, !tbaa !87
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void %79(ptr noundef %1, ptr noundef %2) #23
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct.bNodeTreeType, ptr %84, i64 0, i32 15
  %86 = load ptr, ptr %85, align 8, !tbaa !88
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  tail call void %86(ptr noundef %1, ptr noundef %2) #23
  br label %89

89:                                               ; preds = %88, %82
  %90 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 34
  %91 = load ptr, ptr %90, align 8, !tbaa !89
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  call void @RNA_pointer_create(ptr noundef %1, ptr noundef nonnull @RNA_Node, ptr noundef %2, ptr noundef nonnull %5) #23
  %94 = load ptr, ptr %90, align 8, !tbaa !89
  call void %94(ptr noundef %0, ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  br label %95

95:                                               ; preds = %93, %89
  %96 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %97 = load ptr, ptr %96, align 8, !tbaa !90
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void @id_us_plus(ptr noundef nonnull %97) #23
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, ptr %6, align 8, !tbaa !67
  %102 = or i32 %101, 65536
  store i32 %102, ptr %6, align 8, !tbaa !67
  br label %107

103:                                              ; preds = %21
  store ptr @NodeTypeUndefined, ptr %24, align 8, !tbaa !70
  %104 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 10
  %105 = load i32, ptr %104, align 4, !tbaa !34
  %106 = and i32 %105, -2
  store i32 %106, ptr %104, align 4, !tbaa !34
  br label %107

107:                                              ; preds = %100, %25, %103
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nodeTypeFind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef nonnull %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %6, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nodeSocketTypeFind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !46
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef nonnull %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %6, %4 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeTypeAdd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %0, i64 0, i32 1
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0) #23
  %4 = load ptr, ptr @G, align 8, !tbaa !91
  tail call fastcc void @update_typeinfo(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0)
  ret void
}

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_typeinfo(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %235, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !96
  %12 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !99
  %18 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = icmp eq ptr %1, null
  %23 = getelementptr inbounds %struct.bNodeTreeType, ptr %1, i64 0, i32 1
  %24 = icmp eq i8 %4, 0
  %25 = icmp eq ptr %2, null
  %26 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 3
  %27 = icmp eq i8 %4, 0
  %28 = select i1 %27, ptr %2, ptr null
  %29 = icmp eq ptr %3, null
  %30 = icmp eq i8 %4, 0
  %31 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 11
  %32 = icmp eq ptr %3, null
  %33 = icmp eq i8 %4, 0
  %34 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 11
  %35 = icmp eq ptr %3, null
  %36 = icmp eq i8 %4, 0
  %37 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 11
  %38 = icmp eq ptr %3, null
  %39 = icmp eq i8 %4, 0
  %40 = getelementptr inbounds %struct.bNodeSocketType, ptr %3, i64 0, i32 11
  br label %41

41:                                               ; preds = %234, %7
  %42 = phi ptr [ %21, %7 ], [ %90, %234 ]
  %43 = phi ptr [ %19, %7 ], [ %91, %234 ]
  %44 = phi ptr [ %17, %7 ], [ %92, %234 ]
  %45 = phi ptr [ %15, %7 ], [ %93, %234 ]
  %46 = phi ptr [ %13, %7 ], [ %94, %234 ]
  %47 = phi ptr [ %11, %7 ], [ %95, %234 ]
  %48 = phi ptr [ %9, %7 ], [ %96, %234 ]
  %49 = phi ptr [ undef, %7 ], [ %97, %234 ]
  %50 = icmp eq ptr %48, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %48, align 8, !tbaa !102
  br label %89

53:                                               ; preds = %41
  %54 = icmp eq ptr %47, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.Scene, ptr %47, i64 0, i32 18
  %57 = load ptr, ptr %56, align 8, !tbaa !103
  %58 = load ptr, ptr %47, align 8, !tbaa !121
  br label %89

59:                                               ; preds = %53
  %60 = icmp eq ptr %46, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.Material, ptr %46, i64 0, i32 103
  %63 = load ptr, ptr %62, align 8, !tbaa !122
  %64 = load ptr, ptr %46, align 8, !tbaa !126
  br label %89

65:                                               ; preds = %59
  %66 = icmp eq ptr %45, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.Tex, ptr %45, i64 0, i32 52
  %69 = load ptr, ptr %68, align 8, !tbaa !127
  %70 = load ptr, ptr %45, align 8, !tbaa !130
  br label %89

71:                                               ; preds = %65
  %72 = icmp eq ptr %44, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds %struct.Lamp, ptr %44, i64 0, i32 74
  %75 = load ptr, ptr %74, align 8, !tbaa !131
  %76 = load ptr, ptr %44, align 8, !tbaa !133
  br label %89

77:                                               ; preds = %71
  %78 = icmp eq ptr %43, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.World, ptr %43, i64 0, i32 75
  %81 = load ptr, ptr %80, align 8, !tbaa !134
  %82 = load ptr, ptr %43, align 8, !tbaa !136
  br label %89

83:                                               ; preds = %77
  %84 = icmp eq ptr %42, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %42, i64 0, i32 40
  %87 = load ptr, ptr %86, align 8, !tbaa !137
  %88 = load ptr, ptr %42, align 8, !tbaa !139
  br label %89

89:                                               ; preds = %51, %55, %61, %67, %73, %79, %83, %85
  %90 = phi ptr [ %42, %83 ], [ %88, %85 ], [ %42, %79 ], [ %42, %73 ], [ %42, %67 ], [ %42, %61 ], [ %42, %55 ], [ %42, %51 ]
  %91 = phi ptr [ %43, %83 ], [ %43, %85 ], [ %82, %79 ], [ %43, %73 ], [ %43, %67 ], [ %43, %61 ], [ %43, %55 ], [ %43, %51 ]
  %92 = phi ptr [ %44, %83 ], [ %44, %85 ], [ %44, %79 ], [ %76, %73 ], [ %44, %67 ], [ %44, %61 ], [ %44, %55 ], [ %44, %51 ]
  %93 = phi ptr [ %45, %83 ], [ %45, %85 ], [ %45, %79 ], [ %45, %73 ], [ %70, %67 ], [ %45, %61 ], [ %45, %55 ], [ %45, %51 ]
  %94 = phi ptr [ %46, %83 ], [ %46, %85 ], [ %46, %79 ], [ %46, %73 ], [ %46, %67 ], [ %64, %61 ], [ %46, %55 ], [ %46, %51 ]
  %95 = phi ptr [ %47, %83 ], [ %47, %85 ], [ %47, %79 ], [ %47, %73 ], [ %47, %67 ], [ %47, %61 ], [ %58, %55 ], [ %47, %51 ]
  %96 = phi ptr [ %48, %83 ], [ %48, %85 ], [ %48, %79 ], [ %48, %73 ], [ %48, %67 ], [ %48, %61 ], [ %48, %55 ], [ %52, %51 ]
  %97 = phi ptr [ %49, %83 ], [ %87, %85 ], [ %81, %79 ], [ %75, %73 ], [ %69, %67 ], [ %63, %61 ], [ %57, %55 ], [ %48, %51 ]
  %98 = phi i1 [ true, %83 ], [ false, %85 ], [ false, %79 ], [ false, %73 ], [ false, %67 ], [ false, %61 ], [ false, %55 ], [ false, %51 ]
  br i1 %98, label %235, label %99

99:                                               ; preds = %89
  %100 = icmp eq ptr %97, null
  br i1 %100, label %234, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.bNodeTree, ptr %97, i64 0, i32 10
  %103 = load i32, ptr %102, align 4, !tbaa !34
  %104 = or i32 %103, 1
  store i32 %104, ptr %102, align 4, !tbaa !34
  br i1 %22, label %116, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.bNodeTree, ptr %97, i64 0, i32 3
  %107 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull dereferenceable(1) %23) #24
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.bNodeTree, ptr %97, i64 0, i32 2
  br i1 %24, label %111, label %114

111:                                              ; preds = %109
  store ptr %1, ptr %110, align 8, !tbaa !48
  %112 = load i32, ptr %1, align 8, !tbaa !49
  %113 = getelementptr inbounds %struct.bNodeTree, ptr %97, i64 0, i32 9
  store i32 %112, ptr %113, align 8, !tbaa !52
  br label %116

114:                                              ; preds = %109
  store ptr @NodeTreeTypeUndefined, ptr %110, align 8, !tbaa !48
  %115 = and i32 %103, -2
  store i32 %115, ptr %102, align 4, !tbaa !34
  br label %116

116:                                              ; preds = %114, %111, %105, %101
  %117 = getelementptr inbounds %struct.bNodeTree, ptr %97, i64 0, i32 7
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = icmp eq ptr %118, null
  br i1 %119, label %182, label %123

120:                                              ; preds = %179, %156
  %121 = load ptr, ptr %124, align 8, !tbaa !47
  %122 = icmp eq ptr %121, null
  br i1 %122, label %182, label %123, !llvm.loop !140

123:                                              ; preds = %116, %120
  %124 = phi ptr [ %121, %120 ], [ %118, %116 ]
  br i1 %25, label %130, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.bNode, ptr %124, i64 0, i32 5
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(1) %26) #24
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  tail call fastcc void @node_set_typeinfo(ptr noundef null, ptr noundef nonnull %97, ptr noundef nonnull %124, ptr noundef %28)
  br label %130

130:                                              ; preds = %129, %125, %123
  %131 = getelementptr inbounds %struct.bNode, ptr %124, i64 0, i32 17
  %132 = load ptr, ptr %131, align 8, !tbaa !47
  %133 = icmp eq ptr %132, null
  br i1 %133, label %156, label %134

134:                                              ; preds = %130, %153
  %135 = phi ptr [ %154, %153 ], [ %132, %130 ]
  br i1 %29, label %153, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.bNodeSocket, ptr %135, i64 0, i32 12
  %138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %137, ptr noundef nonnull dereferenceable(1) %3) #24
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.bNodeSocket, ptr %135, i64 0, i32 11
  br i1 %30, label %142, label %150

142:                                              ; preds = %140
  store ptr %3, ptr %141, align 8, !tbaa !56
  %143 = load i32, ptr %31, align 8, !tbaa !59
  %144 = trunc i32 %143 to i16
  %145 = getelementptr inbounds %struct.bNodeSocket, ptr %135, i64 0, i32 7
  store i16 %144, ptr %145, align 8, !tbaa !61
  %146 = getelementptr inbounds %struct.bNodeSocket, ptr %135, i64 0, i32 15
  %147 = load ptr, ptr %146, align 8, !tbaa !62
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  tail call void @node_socket_init_default_value(ptr noundef nonnull %135) #23
  br label %153

150:                                              ; preds = %140
  store ptr @NodeSocketTypeUndefined, ptr %141, align 8, !tbaa !56
  %151 = load i32, ptr %102, align 4, !tbaa !34
  %152 = and i32 %151, -2
  store i32 %152, ptr %102, align 4, !tbaa !34
  br label %153

153:                                              ; preds = %150, %149, %142, %134, %136
  %154 = load ptr, ptr %135, align 8, !tbaa !47
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %134, !llvm.loop !141

156:                                              ; preds = %153, %130
  %157 = getelementptr inbounds %struct.bNode, ptr %124, i64 0, i32 18
  %158 = load ptr, ptr %157, align 8, !tbaa !47
  %159 = icmp eq ptr %158, null
  br i1 %159, label %120, label %160

160:                                              ; preds = %156, %179
  %161 = phi ptr [ %180, %179 ], [ %158, %156 ]
  br i1 %32, label %179, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.bNodeSocket, ptr %161, i64 0, i32 12
  %164 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) %3) #24
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.bNodeSocket, ptr %161, i64 0, i32 11
  br i1 %33, label %168, label %176

168:                                              ; preds = %166
  store ptr %3, ptr %167, align 8, !tbaa !56
  %169 = load i32, ptr %34, align 8, !tbaa !59
  %170 = trunc i32 %169 to i16
  %171 = getelementptr inbounds %struct.bNodeSocket, ptr %161, i64 0, i32 7
  store i16 %170, ptr %171, align 8, !tbaa !61
  %172 = getelementptr inbounds %struct.bNodeSocket, ptr %161, i64 0, i32 15
  %173 = load ptr, ptr %172, align 8, !tbaa !62
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  tail call void @node_socket_init_default_value(ptr noundef nonnull %161) #23
  br label %179

176:                                              ; preds = %166
  store ptr @NodeSocketTypeUndefined, ptr %167, align 8, !tbaa !56
  %177 = load i32, ptr %102, align 4, !tbaa !34
  %178 = and i32 %177, -2
  store i32 %178, ptr %102, align 4, !tbaa !34
  br label %179

179:                                              ; preds = %176, %175, %168, %160, %162
  %180 = load ptr, ptr %161, align 8, !tbaa !47
  %181 = icmp eq ptr %180, null
  br i1 %181, label %120, label %160, !llvm.loop !142

182:                                              ; preds = %120, %116
  %183 = getelementptr inbounds %struct.bNodeTree, ptr %97, i64 0, i32 22
  %184 = load ptr, ptr %183, align 8, !tbaa !47
  %185 = icmp eq ptr %184, null
  br i1 %185, label %208, label %186

186:                                              ; preds = %182, %205
  %187 = phi ptr [ %206, %205 ], [ %184, %182 ]
  br i1 %35, label %205, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.bNodeSocket, ptr %187, i64 0, i32 12
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %189, ptr noundef nonnull dereferenceable(1) %3) #24
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.bNodeSocket, ptr %187, i64 0, i32 11
  br i1 %36, label %194, label %202

194:                                              ; preds = %192
  store ptr %3, ptr %193, align 8, !tbaa !56
  %195 = load i32, ptr %37, align 8, !tbaa !59
  %196 = trunc i32 %195 to i16
  %197 = getelementptr inbounds %struct.bNodeSocket, ptr %187, i64 0, i32 7
  store i16 %196, ptr %197, align 8, !tbaa !61
  %198 = getelementptr inbounds %struct.bNodeSocket, ptr %187, i64 0, i32 15
  %199 = load ptr, ptr %198, align 8, !tbaa !62
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  tail call void @node_socket_init_default_value(ptr noundef nonnull %187) #23
  br label %205

202:                                              ; preds = %192
  store ptr @NodeSocketTypeUndefined, ptr %193, align 8, !tbaa !56
  %203 = load i32, ptr %102, align 4, !tbaa !34
  %204 = and i32 %203, -2
  store i32 %204, ptr %102, align 4, !tbaa !34
  br label %205

205:                                              ; preds = %202, %201, %194, %186, %188
  %206 = load ptr, ptr %187, align 8, !tbaa !47
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %186, !llvm.loop !143

208:                                              ; preds = %205, %182
  %209 = getelementptr inbounds %struct.bNodeTree, ptr %97, i64 0, i32 23
  %210 = load ptr, ptr %209, align 8, !tbaa !47
  %211 = icmp eq ptr %210, null
  br i1 %211, label %234, label %212

212:                                              ; preds = %208, %231
  %213 = phi ptr [ %232, %231 ], [ %210, %208 ]
  br i1 %38, label %231, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.bNodeSocket, ptr %213, i64 0, i32 12
  %216 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %215, ptr noundef nonnull dereferenceable(1) %3) #24
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.bNodeSocket, ptr %213, i64 0, i32 11
  br i1 %39, label %220, label %228

220:                                              ; preds = %218
  store ptr %3, ptr %219, align 8, !tbaa !56
  %221 = load i32, ptr %40, align 8, !tbaa !59
  %222 = trunc i32 %221 to i16
  %223 = getelementptr inbounds %struct.bNodeSocket, ptr %213, i64 0, i32 7
  store i16 %222, ptr %223, align 8, !tbaa !61
  %224 = getelementptr inbounds %struct.bNodeSocket, ptr %213, i64 0, i32 15
  %225 = load ptr, ptr %224, align 8, !tbaa !62
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  tail call void @node_socket_init_default_value(ptr noundef nonnull %213) #23
  br label %231

228:                                              ; preds = %218
  store ptr @NodeSocketTypeUndefined, ptr %219, align 8, !tbaa !56
  %229 = load i32, ptr %102, align 4, !tbaa !34
  %230 = and i32 %229, -2
  store i32 %230, ptr %102, align 4, !tbaa !34
  br label %231

231:                                              ; preds = %228, %227, %220, %212, %214
  %232 = load ptr, ptr %213, align 8, !tbaa !47
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %212, !llvm.loop !144

234:                                              ; preds = %231, %208, %99
  br label %41, !llvm.loop !145

235:                                              ; preds = %89, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeTypeFreeLink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %0, i64 0, i32 1
  %4 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @ntree_free_type) #23
  ret void
}

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ntree_free_type(ptr noundef %0) #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !91
  tail call fastcc void @update_typeinfo(ptr noundef %2, ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 1)
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %3(ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ntreeIsRegistered(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp ne ptr %3, @NodeTreeTypeUndefined
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeTypeGetIterator() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #23
  ret ptr %2
}

declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @nodeRegisterType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 3
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0) #23
  %4 = load ptr, ptr @G, align 8, !tbaa !91
  tail call fastcc void @update_typeinfo(ptr noundef %4, ptr noundef null, ptr noundef %0, ptr noundef null, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeUnregisterType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 3
  %4 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @node_free_type) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_free_type(ptr noundef %0) #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !91
  tail call fastcc void @update_typeinfo(ptr noundef %2, ptr noundef null, ptr noundef %0, ptr noundef null, i8 noundef zeroext 1)
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i32 %4, 123
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %11(ptr noundef nonnull %8) #23
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %17(ptr noundef nonnull %14) #23
  br label %18

18:                                               ; preds = %16, %12, %1
  %19 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !146
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %23(ptr noundef %0) #23
  br label %24

24:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @nodeIsRegistered(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp ne ptr %3, @NodeTypeUndefined
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nodeTypeGetIterator() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #23
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeRegisterSocketType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef %0, ptr noundef %0) #23
  %3 = load ptr, ptr @G, align 8, !tbaa !91
  tail call fastcc void @update_typeinfo(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef %0, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeUnregisterSocketType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %3 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef %0, ptr noundef null, ptr noundef nonnull @node_free_socket_type) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_free_socket_type(ptr noundef %0) #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !91
  tail call fastcc void @update_typeinfo(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %0, i8 noundef zeroext 1)
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %3(ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @nodeSocketIsRegistered(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp ne ptr %3, @NodeSocketTypeUndefined
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nodeSocketTypeGetIterator() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #23
  ret ptr %2
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeFindSocket(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %1, 1
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %7 = select i1 %4, ptr %5, ptr %6
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 4
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8, !llvm.loop !147

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %10, %12 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nodeAddSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %2, 1
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = tail call fastcc ptr @make_socket(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %10, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  tail call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef %11) #23
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %11) #23
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %13 = load i32, ptr %12, align 4, !tbaa !148
  %14 = or i32 %13, 65535
  store i32 %14, ptr %12, align 4, !tbaa !148
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_socket(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #23
  %8 = icmp eq ptr %4, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %4, align 1, !tbaa !46
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %4, i64 noundef 64) #23
  br label %16

14:                                               ; preds = %9, %6
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %5, i64 noundef 64) #23
  br label %16

16:                                               ; preds = %14, %12
  %17 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_identifier_check, ptr noundef %2, ptr noundef nonnull @.str.265, i8 noundef zeroext 46, ptr noundef nonnull %7, i32 noundef 64) #23
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %19 = call ptr %18(i64 noundef 352, ptr noundef nonnull @.str.266) #23
  %20 = trunc i32 %1 to i16
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 10
  store i16 %20, ptr %21, align 2, !tbaa !149
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 4
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef nonnull %7, i64 noundef 64) #23
  %24 = icmp eq i32 %1, 1
  %25 = select i1 %24, i16 1, i16 4095
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 9
  store i16 %25, ptr %26, align 4, !tbaa !150
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 5
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %5, i64 noundef 64) #23
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 6
  store ptr null, ptr %29, align 8, !tbaa !151
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !152
  %32 = or i16 %31, 64
  store i16 %32, ptr %30, align 2, !tbaa !152
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 7
  store i16 -1, ptr %33, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 12
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef %3, i64 noundef 64) #23
  %36 = load i8, ptr %3, align 1, !tbaa !46
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %16
  %39 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %40 = call ptr @BLI_ghash_lookup(ptr noundef %39, ptr noundef nonnull %3) #23
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %16
  br label %43

43:                                               ; preds = %38, %42
  %44 = phi ptr [ null, %42 ], [ %40, %38 ]
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 11
  br i1 %45, label %55, label %47

47:                                               ; preds = %43
  store ptr %44, ptr %46, align 8, !tbaa !56
  %48 = getelementptr inbounds %struct.bNodeSocketType, ptr %44, i64 0, i32 11
  %49 = load i32, ptr %48, align 8, !tbaa !59
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %33, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  call void @node_socket_init_default_value(ptr noundef %19) #23
  br label %59

55:                                               ; preds = %43
  store ptr @NodeSocketTypeUndefined, ptr %46, align 8, !tbaa !56
  %56 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 10
  %57 = load i32, ptr %56, align 4, !tbaa !34
  %58 = and i32 %57, -2
  store i32 %58, ptr %56, align 4, !tbaa !34
  br label %59

59:                                               ; preds = %47, %54, %55
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #23
  ret ptr %19
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nodeInsertSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %2, 1
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %10 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %11 = select i1 %8, ptr %9, ptr %10
  %12 = tail call fastcc ptr @make_socket(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %11, ptr noundef %3, ptr noundef %5, ptr noundef %6)
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef %12) #23
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %11, ptr noundef %4, ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %14 = load i32, ptr %13, align 4, !tbaa !148
  %15 = or i32 %14, 65535
  store i32 %15, ptr %13, align 4, !tbaa !148
  ret ptr %12
}

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @nodeStaticSocketType(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  switch i32 %0, label %22 [
    i32 0, label %3
    i32 6, label %9
    i32 4, label %27
    i32 1, label %12
    i32 2, label %19
    i32 7, label %20
    i32 3, label %21
  ]

3:                                                ; preds = %2
  switch i32 %1, label %8 [
    i32 13, label %27
    i32 14, label %4
    i32 15, label %5
    i32 327696, label %6
    i32 393233, label %7
  ]

4:                                                ; preds = %3
  br label %27

5:                                                ; preds = %3
  br label %27

6:                                                ; preds = %3
  br label %27

7:                                                ; preds = %3
  br label %27

8:                                                ; preds = %3
  br label %27

9:                                                ; preds = %2
  %10 = add i32 %1, -13
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %23, label %27

12:                                               ; preds = %2
  switch i32 %1, label %18 [
    i32 65557, label %27
    i32 22, label %13
    i32 458775, label %14
    i32 524312, label %15
    i32 327706, label %16
    i32 29, label %17
  ]

13:                                               ; preds = %12
  br label %27

14:                                               ; preds = %12
  br label %27

15:                                               ; preds = %12
  br label %27

16:                                               ; preds = %12
  br label %27

17:                                               ; preds = %12
  br label %27

18:                                               ; preds = %12
  br label %27

19:                                               ; preds = %2
  br label %27

20:                                               ; preds = %2
  br label %27

21:                                               ; preds = %2
  br label %27

22:                                               ; preds = %2
  br label %27

23:                                               ; preds = %9
  %24 = zext nneg i32 %10 to i64
  %25 = shl i64 %24, 2
  %26 = call ptr @llvm.load.relative.i64(ptr @reltable.nodeStaticSocketType, i64 %25)
  br label %27

27:                                               ; preds = %9, %23, %12, %2, %3, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %8, %7, %6, %5, %4
  %28 = phi ptr [ null, %22 ], [ @.str.20, %21 ], [ @.str.19, %20 ], [ @.str.18, %19 ], [ @.str.17, %18 ], [ @.str.16, %17 ], [ @.str.15, %16 ], [ @.str.14, %15 ], [ @.str.13, %14 ], [ @.str.12, %13 ], [ @.str.5, %8 ], [ @.str.4, %7 ], [ @.str.3, %6 ], [ @.str.2, %5 ], [ @.str.1, %4 ], [ @.str, %3 ], [ @.str.10, %2 ], [ @.str.11, %12 ], [ %26, %23 ], [ @.str.9, %9 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @nodeStaticSocketInterfaceType(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  switch i32 %0, label %22 [
    i32 0, label %3
    i32 6, label %9
    i32 4, label %27
    i32 1, label %12
    i32 2, label %19
    i32 7, label %20
    i32 3, label %21
  ]

3:                                                ; preds = %2
  switch i32 %1, label %8 [
    i32 13, label %27
    i32 14, label %4
    i32 15, label %5
    i32 327696, label %6
    i32 393233, label %7
  ]

4:                                                ; preds = %3
  br label %27

5:                                                ; preds = %3
  br label %27

6:                                                ; preds = %3
  br label %27

7:                                                ; preds = %3
  br label %27

8:                                                ; preds = %3
  br label %27

9:                                                ; preds = %2
  %10 = add i32 %1, -13
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %23, label %27

12:                                               ; preds = %2
  switch i32 %1, label %18 [
    i32 65557, label %27
    i32 22, label %13
    i32 458775, label %14
    i32 524312, label %15
    i32 327706, label %16
    i32 29, label %17
  ]

13:                                               ; preds = %12
  br label %27

14:                                               ; preds = %12
  br label %27

15:                                               ; preds = %12
  br label %27

16:                                               ; preds = %12
  br label %27

17:                                               ; preds = %12
  br label %27

18:                                               ; preds = %12
  br label %27

19:                                               ; preds = %2
  br label %27

20:                                               ; preds = %2
  br label %27

21:                                               ; preds = %2
  br label %27

22:                                               ; preds = %2
  br label %27

23:                                               ; preds = %9
  %24 = zext nneg i32 %10 to i64
  %25 = shl i64 %24, 2
  %26 = call ptr @llvm.load.relative.i64(ptr @reltable.nodeStaticSocketInterfaceType, i64 %25)
  br label %27

27:                                               ; preds = %9, %23, %12, %2, %3, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %8, %7, %6, %5, %4
  %28 = phi ptr [ null, %22 ], [ @.str.41, %21 ], [ @.str.40, %20 ], [ @.str.39, %19 ], [ @.str.38, %18 ], [ @.str.37, %17 ], [ @.str.36, %16 ], [ @.str.35, %15 ], [ @.str.34, %14 ], [ @.str.33, %13 ], [ @.str.26, %8 ], [ @.str.25, %7 ], [ @.str.24, %6 ], [ @.str.23, %5 ], [ @.str.22, %4 ], [ @.str.21, %3 ], [ @.str.31, %2 ], [ @.str.32, %12 ], [ %26, %23 ], [ @.str.30, %9 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nodeAddStaticSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  switch i32 %3, label %28 [
    i32 0, label %8
    i32 6, label %14
    i32 4, label %29
    i32 1, label %18
    i32 2, label %25
    i32 7, label %26
    i32 3, label %27
  ]

8:                                                ; preds = %7
  switch i32 %4, label %13 [
    i32 13, label %29
    i32 14, label %9
    i32 15, label %10
    i32 327696, label %11
    i32 393233, label %12
  ]

9:                                                ; preds = %8
  br label %29

10:                                               ; preds = %8
  br label %29

11:                                               ; preds = %8
  br label %29

12:                                               ; preds = %8
  br label %29

13:                                               ; preds = %8
  br label %29

14:                                               ; preds = %7
  switch i32 %4, label %17 [
    i32 13, label %29
    i32 14, label %15
    i32 15, label %16
  ]

15:                                               ; preds = %14
  br label %29

16:                                               ; preds = %14
  br label %29

17:                                               ; preds = %14
  br label %29

18:                                               ; preds = %7
  switch i32 %4, label %24 [
    i32 65557, label %29
    i32 22, label %19
    i32 458775, label %20
    i32 524312, label %21
    i32 327706, label %22
    i32 29, label %23
  ]

19:                                               ; preds = %18
  br label %29

20:                                               ; preds = %18
  br label %29

21:                                               ; preds = %18
  br label %29

22:                                               ; preds = %18
  br label %29

23:                                               ; preds = %18
  br label %29

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %7
  br label %29

26:                                               ; preds = %7
  br label %29

27:                                               ; preds = %7
  br label %29

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28
  %30 = phi i1 [ true, %28 ], [ false, %27 ], [ false, %26 ], [ false, %25 ], [ false, %24 ], [ false, %23 ], [ false, %22 ], [ false, %21 ], [ false, %20 ], [ false, %19 ], [ false, %17 ], [ false, %16 ], [ false, %15 ], [ false, %13 ], [ false, %12 ], [ false, %11 ], [ false, %10 ], [ false, %9 ], [ false, %8 ], [ false, %14 ], [ false, %7 ], [ false, %18 ]
  %31 = phi ptr [ null, %28 ], [ @.str.20, %27 ], [ @.str.19, %26 ], [ @.str.18, %25 ], [ @.str.17, %24 ], [ @.str.16, %23 ], [ @.str.15, %22 ], [ @.str.14, %21 ], [ @.str.13, %20 ], [ @.str.12, %19 ], [ @.str.9, %17 ], [ @.str.8, %16 ], [ @.str.7, %15 ], [ @.str.5, %13 ], [ @.str.4, %12 ], [ @.str.3, %11 ], [ @.str.2, %10 ], [ @.str.1, %9 ], [ @.str, %8 ], [ @.str.6, %14 ], [ @.str.10, %7 ], [ @.str.11, %18 ]
  br i1 %30, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %3)
  br label %45

34:                                               ; preds = %29
  %35 = icmp eq i32 %2, 1
  %36 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %37 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %38 = select i1 %35, ptr %36, ptr %37
  %39 = tail call fastcc ptr @make_socket(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %38, ptr noundef nonnull %31, ptr noundef %5, ptr noundef %6)
  tail call void @BLI_remlink(ptr noundef nonnull %38, ptr noundef %39) #23
  tail call void @BLI_addtail(ptr noundef nonnull %38, ptr noundef %39) #23
  %40 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %41 = load i32, ptr %40, align 4, !tbaa !148
  %42 = or i32 %41, 65535
  store i32 %42, ptr %40, align 4, !tbaa !148
  %43 = trunc i32 %3 to i16
  %44 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 7
  store i16 %43, ptr %44, align 8, !tbaa !61
  br label %45

45:                                               ; preds = %34, %32
  %46 = phi ptr [ %39, %34 ], [ null, %32 ]
  ret ptr %46
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nodeInsertStaticSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  switch i32 %3, label %29 [
    i32 0, label %9
    i32 6, label %15
    i32 4, label %30
    i32 1, label %19
    i32 2, label %26
    i32 7, label %27
    i32 3, label %28
  ]

9:                                                ; preds = %8
  switch i32 %4, label %14 [
    i32 13, label %30
    i32 14, label %10
    i32 15, label %11
    i32 327696, label %12
    i32 393233, label %13
  ]

10:                                               ; preds = %9
  br label %30

11:                                               ; preds = %9
  br label %30

12:                                               ; preds = %9
  br label %30

13:                                               ; preds = %9
  br label %30

14:                                               ; preds = %9
  br label %30

15:                                               ; preds = %8
  switch i32 %4, label %18 [
    i32 13, label %30
    i32 14, label %16
    i32 15, label %17
  ]

16:                                               ; preds = %15
  br label %30

17:                                               ; preds = %15
  br label %30

18:                                               ; preds = %15
  br label %30

19:                                               ; preds = %8
  switch i32 %4, label %25 [
    i32 65557, label %30
    i32 22, label %20
    i32 458775, label %21
    i32 524312, label %22
    i32 327706, label %23
    i32 29, label %24
  ]

20:                                               ; preds = %19
  br label %30

21:                                               ; preds = %19
  br label %30

22:                                               ; preds = %19
  br label %30

23:                                               ; preds = %19
  br label %30

24:                                               ; preds = %19
  br label %30

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %8
  br label %30

27:                                               ; preds = %8
  br label %30

28:                                               ; preds = %8
  br label %30

29:                                               ; preds = %8
  br label %30

30:                                               ; preds = %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29
  %31 = phi i1 [ true, %29 ], [ false, %28 ], [ false, %27 ], [ false, %26 ], [ false, %25 ], [ false, %24 ], [ false, %23 ], [ false, %22 ], [ false, %21 ], [ false, %20 ], [ false, %18 ], [ false, %17 ], [ false, %16 ], [ false, %14 ], [ false, %13 ], [ false, %12 ], [ false, %11 ], [ false, %10 ], [ false, %9 ], [ false, %15 ], [ false, %8 ], [ false, %19 ]
  %32 = phi ptr [ null, %29 ], [ @.str.20, %28 ], [ @.str.19, %27 ], [ @.str.18, %26 ], [ @.str.17, %25 ], [ @.str.16, %24 ], [ @.str.15, %23 ], [ @.str.14, %22 ], [ @.str.13, %21 ], [ @.str.12, %20 ], [ @.str.9, %18 ], [ @.str.8, %17 ], [ @.str.7, %16 ], [ @.str.5, %14 ], [ @.str.4, %13 ], [ @.str.3, %12 ], [ @.str.2, %11 ], [ @.str.1, %10 ], [ @.str, %9 ], [ @.str.6, %15 ], [ @.str.10, %8 ], [ @.str.11, %19 ]
  br i1 %31, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %3)
  br label %46

35:                                               ; preds = %30
  %36 = icmp eq i32 %2, 1
  %37 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %38 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %39 = select i1 %36, ptr %37, ptr %38
  %40 = tail call fastcc ptr @make_socket(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %39, ptr noundef nonnull %32, ptr noundef %6, ptr noundef %7)
  tail call void @BLI_remlink(ptr noundef nonnull %39, ptr noundef %40) #23
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %39, ptr noundef %5, ptr noundef %40) #23
  %41 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %42 = load i32, ptr %41, align 4, !tbaa !148
  %43 = or i32 %42, 65535
  store i32 %43, ptr %41, align 4, !tbaa !148
  %44 = trunc i32 %3 to i16
  %45 = getelementptr inbounds %struct.bNodeSocket, ptr %40, i64 0, i32 7
  store i16 %44, ptr %45, align 8, !tbaa !61
  br label %46

46:                                               ; preds = %35, %33
  %47 = phi ptr [ %40, %35 ], [ null, %33 ]
  ret ptr %47
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %0, null
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %10

10:                                               ; preds = %7, %33
  %11 = phi ptr [ %5, %7 ], [ %12, %33 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %11, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.bNodeLink, ptr %11, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !157
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %20, label %33

20:                                               ; preds = %16, %10
  br i1 %8, label %22, label %21

21:                                               ; preds = %20
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %11) #23
  br label %22

22:                                               ; preds = %21, %20
  %23 = getelementptr inbounds %struct.bNodeLink, ptr %11, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !157
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %24, i64 0, i32 23
  store ptr null, ptr %27, align 8, !tbaa !158
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %29(ptr noundef nonnull %11) #23
  br i1 %8, label %33, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %9, align 8, !tbaa !159
  %32 = or i32 %31, 1
  store i32 %32, ptr %9, align 8, !tbaa !159
  br label %33

33:                                               ; preds = %30, %28, %16
  %34 = icmp eq ptr %12, null
  br i1 %34, label %35, label %10, !llvm.loop !160

35:                                               ; preds = %33, %3
  %36 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call void @BLI_remlink(ptr noundef nonnull %36, ptr noundef %2) #23
  %37 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call void @BLI_remlink(ptr noundef nonnull %37, ptr noundef %2) #23
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !161
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  tail call void @IDP_FreeProperty(ptr noundef nonnull %39) #23
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %43 = load ptr, ptr %38, align 8, !tbaa !161
  tail call void %42(ptr noundef %43) #23
  br label %44

44:                                               ; preds = %41, %35
  %45 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 15
  %46 = load ptr, ptr %45, align 8, !tbaa !62
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %49(ptr noundef nonnull %46) #23
  br label %50

50:                                               ; preds = %44, %48
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %51(ptr noundef %2) #23
  %52 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %53 = load i32, ptr %52, align 4, !tbaa !148
  %54 = or i32 %53, 65535
  store i32 %54, ptr %52, align 4, !tbaa !148
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeRemLink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef %1) #23
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.bNodeLink, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 23
  store ptr null, ptr %11, align 8, !tbaa !158
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %13(ptr noundef %1) #23
  br i1 %3, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !159
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !159
  br label %18

18:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeRemoveAllSockets(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %9

9:                                                ; preds = %6, %32
  %10 = phi ptr [ %4, %6 ], [ %11, %32 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !163
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %32

19:                                               ; preds = %15, %9
  br i1 %7, label %21, label %20

20:                                               ; preds = %19
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %10) #23
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !157
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 23
  store ptr null, ptr %26, align 8, !tbaa !158
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %28(ptr noundef nonnull %10) #23
  br i1 %7, label %32, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %8, align 8, !tbaa !159
  %31 = or i32 %30, 1
  store i32 %31, ptr %8, align 8, !tbaa !159
  br label %32

32:                                               ; preds = %29, %27, %15
  %33 = icmp eq ptr %11, null
  br i1 %33, label %34, label %9, !llvm.loop !164

34:                                               ; preds = %32, %2
  %35 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %36 = load ptr, ptr %35, align 8, !tbaa !165
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %34, %53
  %39 = phi ptr [ %40, %53 ], [ %36, %34 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !166
  %41 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !161
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  tail call void @IDP_FreeProperty(ptr noundef nonnull %42) #23
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %46 = load ptr, ptr %41, align 8, !tbaa !161
  tail call void %45(ptr noundef %46) #23
  br label %47

47:                                               ; preds = %44, %38
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %52(ptr noundef nonnull %49) #23
  br label %53

53:                                               ; preds = %47, %51
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %54(ptr noundef nonnull %39) #23
  %55 = icmp eq ptr %40, null
  br i1 %55, label %56, label %38, !llvm.loop !167

56:                                               ; preds = %53, %34
  %57 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %58 = load ptr, ptr %57, align 8, !tbaa !168
  %59 = icmp eq ptr %58, null
  br i1 %59, label %78, label %60

60:                                               ; preds = %56, %75
  %61 = phi ptr [ %62, %75 ], [ %58, %56 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !166
  %63 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !161
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  tail call void @IDP_FreeProperty(ptr noundef nonnull %64) #23
  %67 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %68 = load ptr, ptr %63, align 8, !tbaa !161
  tail call void %67(ptr noundef %68) #23
  br label %69

69:                                               ; preds = %66, %60
  %70 = getelementptr inbounds %struct.bNodeSocket, ptr %61, i64 0, i32 15
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %74(ptr noundef nonnull %71) #23
  br label %75

75:                                               ; preds = %69, %73
  %76 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %76(ptr noundef nonnull %61) #23
  %77 = icmp eq ptr %62, null
  br i1 %77, label %78, label %60, !llvm.loop !169

78:                                               ; preds = %75, %56
  %79 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %80 = load i32, ptr %79, align 4, !tbaa !148
  %81 = or i32 %80, 65535
  store i32 %81, ptr %79, align 4, !tbaa !148
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @nodeFindNodebyName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 104) #23
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @nodeFindNode(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 10
  %10 = load i16, ptr %9, align 2, !tbaa !149
  %11 = icmp eq i16 %10, 1
  br label %15

12:                                               ; preds = %29
  %13 = load ptr, ptr %17, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15, !llvm.loop !170

15:                                               ; preds = %8, %12
  %16 = phi i1 [ %7, %8 ], [ %14, %12 ]
  %17 = phi ptr [ %6, %8 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 17
  %19 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 18
  %20 = select i1 %11, ptr %18, ptr %19
  br label %21

21:                                               ; preds = %21, %15
  %22 = phi ptr [ %20, %15 ], [ %24, %21 ]
  %23 = phi i32 [ 0, %15 ], [ %28, %21 ]
  %24 = load ptr, ptr %22, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %24, %1
  %27 = or i1 %25, %26
  %28 = add nuw nsw i32 %23, 1
  br i1 %27, label %29, label %21, !llvm.loop !171

29:                                               ; preds = %21
  br i1 %25, label %12, label %30, !llvm.loop !170

30:                                               ; preds = %12, %29, %4
  %31 = phi ptr [ %6, %4 ], [ %13, %12 ], [ %17, %29 ]
  %32 = phi i1 [ %7, %4 ], [ %14, %12 ], [ %16, %29 ]
  %33 = phi i32 [ 0, %4 ], [ %23, %29 ], [ %23, %12 ]
  br i1 %32, label %37, label %34

34:                                               ; preds = %30
  store ptr %31, ptr %2, align 8, !tbaa !47
  %35 = icmp eq ptr %3, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  store i32 %33, ptr %3, align 4, !tbaa !172
  br label %38

37:                                               ; preds = %30
  store ptr null, ptr %2, align 8, !tbaa !47
  br label %38

38:                                               ; preds = %34, %36, %37
  %39 = phi i32 [ 0, %37 ], [ 1, %36 ], [ 1, %34 ]
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeUniqueName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.43, i8 noundef zeroext 46, i32 noundef 104, i32 noundef 64) #23
  ret void
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nodeAddNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %5 = tail call ptr %4(i64 noundef 464, ptr noundef nonnull @.str.44) #23
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %5) #23
  %7 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 64) #23
  %9 = load i8, ptr %2, align 1, !tbaa !46
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %13 = tail call ptr @BLI_ghash_lookup(ptr noundef %12, ptr noundef nonnull %2) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  br label %16

16:                                               ; preds = %11, %15
  %17 = phi ptr [ null, %15 ], [ %13, %11 ]
  tail call fastcc void @node_set_typeinfo(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %17)
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !159
  %20 = or i32 %19, 2
  store i32 %20, ptr %18, align 8, !tbaa !159
  ret ptr %5
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %5 = tail call ptr @BLI_ghashIterator_new(ptr noundef %4) #23
  %6 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %3, %29
  %10 = phi ptr [ %30, %29 ], [ %7, %3 ]
  %11 = phi ptr [ %27, %29 ], [ null, %3 ]
  %12 = getelementptr inbounds %struct._gh_Entry, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !175
  %14 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !71
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 37
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %13, ptr noundef %1) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 3
  br label %26

26:                                               ; preds = %9, %21, %24
  %27 = phi ptr [ %25, %24 ], [ %11, %21 ], [ %11, %9 ]
  %28 = phi i1 [ false, %24 ], [ true, %21 ], [ true, %9 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  tail call void @BLI_ghashIterator_step(ptr noundef %5) #23
  %30 = load ptr, ptr %6, align 8, !tbaa !173
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9, !llvm.loop !178

32:                                               ; preds = %29, %26, %3
  %33 = phi ptr [ null, %3 ], [ %27, %26 ], [ %27, %29 ]
  tail call void @BLI_ghashIterator_free(ptr noundef %5) #23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %2)
  br label %55

37:                                               ; preds = %32
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %39 = tail call ptr %38(i64 noundef 464, ptr noundef nonnull @.str.44) #23
  %40 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  tail call void @BLI_addtail(ptr noundef nonnull %40, ptr noundef %39) #23
  %41 = getelementptr inbounds %struct.bNode, ptr %39, i64 0, i32 5
  %42 = tail call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull %33, i64 noundef 64) #23
  %43 = load i8, ptr %33, align 1, !tbaa !46
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %47 = tail call ptr @BLI_ghash_lookup(ptr noundef %46, ptr noundef nonnull %33) #23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %37
  br label %50

50:                                               ; preds = %45, %49
  %51 = phi ptr [ null, %49 ], [ %47, %45 ]
  tail call fastcc void @node_set_typeinfo(ptr noundef %0, ptr noundef %1, ptr noundef %39, ptr noundef %51)
  %52 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %53 = load i32, ptr %52, align 8, !tbaa !159
  %54 = or i32 %53, 2
  store i32 %54, ptr %52, align 8, !tbaa !159
  br label %55

55:                                               ; preds = %50, %35
  %56 = phi ptr [ %39, %50 ], [ null, %35 ]
  ret ptr %56
}

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nodeCopyNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %5 = tail call ptr %4(i64 noundef 464, ptr noundef nonnull @.str.46) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %5, ptr noundef nonnull align 8 dereferenceable(464) %1, i64 464, i1 false), !tbaa.struct !179
  %6 = icmp eq ptr %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  tail call void @BLI_uniquename(ptr noundef nonnull %8, ptr noundef %5, ptr noundef nonnull @.str.43, i8 noundef zeroext 46, i32 noundef 104, i32 noundef 64) #23
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %5) #23
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 17
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call void @BLI_duplicatelist(ptr noundef nonnull %10, ptr noundef nonnull %11) #23
  %12 = load ptr, ptr %10, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %9, %33
  %15 = phi ptr [ %36, %33 ], [ %12, %9 ]
  %16 = phi ptr [ %17, %33 ], [ %11, %9 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 2
  store ptr %15, ptr %18, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !161
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %20) #23
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !161
  br label %25

25:                                               ; preds = %22, %14
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %31 = tail call ptr %30(ptr noundef nonnull %27) #23
  %32 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 15
  store ptr %31, ptr %32, align 8, !tbaa !62
  br label %33

33:                                               ; preds = %25, %29
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 16
  store i16 0, ptr %34, align 8, !tbaa !182
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 19
  store ptr null, ptr %35, align 8, !tbaa !183
  %36 = load ptr, ptr %15, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %14, !llvm.loop !184

38:                                               ; preds = %33, %9
  %39 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 18
  %40 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call void @BLI_duplicatelist(ptr noundef nonnull %39, ptr noundef nonnull %40) #23
  %41 = load ptr, ptr %39, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %67, label %43

43:                                               ; preds = %38, %62
  %44 = phi ptr [ %65, %62 ], [ %41, %38 ]
  %45 = phi ptr [ %46, %62 ], [ %40, %38 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.bNodeSocket, ptr %46, i64 0, i32 2
  store ptr %44, ptr %47, align 8, !tbaa !181
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %46, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !161
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %49) #23
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %44, i64 0, i32 3
  store ptr %52, ptr %53, align 8, !tbaa !161
  br label %54

54:                                               ; preds = %51, %43
  %55 = getelementptr inbounds %struct.bNodeSocket, ptr %46, i64 0, i32 15
  %56 = load ptr, ptr %55, align 8, !tbaa !62
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %60 = tail call ptr %59(ptr noundef nonnull %56) #23
  %61 = getelementptr inbounds %struct.bNodeSocket, ptr %44, i64 0, i32 15
  store ptr %60, ptr %61, align 8, !tbaa !62
  br label %62

62:                                               ; preds = %54, %58
  %63 = getelementptr inbounds %struct.bNodeSocket, ptr %44, i64 0, i32 16
  store i16 0, ptr %63, align 8, !tbaa !182
  %64 = getelementptr inbounds %struct.bNodeSocket, ptr %44, i64 0, i32 19
  store ptr null, ptr %64, align 8, !tbaa !183
  %65 = load ptr, ptr %44, align 8, !tbaa !47
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %43, !llvm.loop !185

67:                                               ; preds = %62, %38
  %68 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !186
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %69) #23
  %73 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 3
  store ptr %72, ptr %73, align 8, !tbaa !186
  br label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 23
  %76 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  tail call void @BLI_duplicatelist(ptr noundef nonnull %75, ptr noundef nonnull %76) #23
  %77 = load ptr, ptr %75, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79

79:                                               ; preds = %74, %79
  %80 = phi ptr [ %91, %79 ], [ %77, %74 ]
  %81 = getelementptr inbounds %struct.bNodeLink, ptr %80, i64 0, i32 2
  store ptr %5, ptr %81, align 8, !tbaa !162
  %82 = getelementptr inbounds %struct.bNodeLink, ptr %80, i64 0, i32 3
  store ptr %5, ptr %82, align 8, !tbaa !163
  %83 = getelementptr inbounds %struct.bNodeLink, ptr %80, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !156
  %85 = getelementptr inbounds %struct.bNodeSocket, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !181
  store ptr %86, ptr %83, align 8, !tbaa !156
  %87 = getelementptr inbounds %struct.bNodeLink, ptr %80, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !157
  %89 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !181
  store ptr %90, ptr %87, align 8, !tbaa !157
  %91 = load ptr, ptr %80, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %79, !llvm.loop !187

93:                                               ; preds = %79, %74
  %94 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !70
  %96 = getelementptr inbounds %struct.bNodeType, ptr %95, i64 0, i32 33
  %97 = load ptr, ptr %96, align 8, !tbaa !188
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  tail call void %97(ptr noundef %0, ptr noundef %5, ptr noundef %1) #23
  br label %100

100:                                              ; preds = %99, %93
  %101 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 2
  store ptr %5, ptr %101, align 8, !tbaa !189
  %102 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 2
  store ptr null, ptr %102, align 8, !tbaa !189
  %103 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !70
  %105 = getelementptr inbounds %struct.bNodeType, ptr %104, i64 0, i32 36
  %106 = load ptr, ptr %105, align 8, !tbaa !190
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_Node, ptr noundef %5, ptr noundef nonnull %3) #23
  %109 = load ptr, ptr %103, align 8, !tbaa !70
  %110 = getelementptr inbounds %struct.bNodeType, ptr %109, i64 0, i32 36
  %111 = load ptr, ptr %110, align 8, !tbaa !190
  call void %111(ptr noundef nonnull %3, ptr noundef %1) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  br label %112

112:                                              ; preds = %108, %100
  br i1 %6, label %117, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %115 = load i32, ptr %114, align 8, !tbaa !159
  %116 = or i32 %115, 2
  store i32 %116, ptr %114, align 8, !tbaa !159
  br label %117

117:                                              ; preds = %113, %112
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @nodeAddLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !149
  switch i16 %7, label %43 [
    i16 2, label %8
    i16 1, label %18
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 10
  %10 = load i16, ptr %9, align 2, !tbaa !149
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %14 = tail call ptr %13(i64 noundef 56, ptr noundef nonnull @.str.47) #23
  %15 = icmp eq ptr %0, null
  br i1 %15, label %33, label %26

16:                                               ; preds = %8
  %17 = icmp eq i16 %7, 1
  br i1 %17, label %18, label %43

18:                                               ; preds = %5, %16
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 10
  %20 = load i16, ptr %19, align 2, !tbaa !149
  %21 = icmp eq i16 %20, 2
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %24 = tail call ptr %23(i64 noundef 56, ptr noundef nonnull @.str.47) #23
  %25 = icmp eq ptr %0, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %22, %12
  %27 = phi ptr [ %14, %12 ], [ %24, %22 ]
  %28 = phi ptr [ %1, %12 ], [ %3, %22 ]
  %29 = phi ptr [ %2, %12 ], [ %4, %22 ]
  %30 = phi ptr [ %3, %12 ], [ %1, %22 ]
  %31 = phi ptr [ %4, %12 ], [ %2, %22 ]
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %32, ptr noundef %27) #23
  br label %33

33:                                               ; preds = %26, %22, %12
  %34 = phi ptr [ %14, %12 ], [ %24, %22 ], [ %27, %26 ]
  %35 = phi ptr [ %1, %12 ], [ %3, %22 ], [ %28, %26 ]
  %36 = phi ptr [ %2, %12 ], [ %4, %22 ], [ %29, %26 ]
  %37 = phi ptr [ %3, %12 ], [ %1, %22 ], [ %30, %26 ]
  %38 = phi ptr [ %4, %12 ], [ %2, %22 ], [ %31, %26 ]
  %39 = getelementptr inbounds %struct.bNodeLink, ptr %34, i64 0, i32 2
  store ptr %35, ptr %39, align 8, !tbaa !162
  %40 = getelementptr inbounds %struct.bNodeLink, ptr %34, i64 0, i32 4
  store ptr %36, ptr %40, align 8, !tbaa !156
  %41 = getelementptr inbounds %struct.bNodeLink, ptr %34, i64 0, i32 3
  store ptr %37, ptr %41, align 8, !tbaa !163
  %42 = getelementptr inbounds %struct.bNodeLink, ptr %34, i64 0, i32 5
  store ptr %38, ptr %42, align 8, !tbaa !157
  br label %43

43:                                               ; preds = %33, %5, %16, %18
  %44 = phi ptr [ null, %18 ], [ null, %16 ], [ null, %5 ], [ %34, %33 ]
  %45 = icmp eq ptr %0, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %48 = load i32, ptr %47, align 8, !tbaa !159
  %49 = or i32 %48, 1
  store i32 %49, ptr %47, align 8, !tbaa !159
  br label %50

50:                                               ; preds = %46, %43
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeRemSocketLinks(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %9

9:                                                ; preds = %6, %32
  %10 = phi ptr [ %4, %6 ], [ %11, %32 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !157
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %32

19:                                               ; preds = %15, %9
  br i1 %7, label %21, label %20

20:                                               ; preds = %19
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %10) #23
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !157
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 23
  store ptr null, ptr %26, align 8, !tbaa !158
  br label %27

27:                                               ; preds = %25, %21
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %28(ptr noundef nonnull %10) #23
  br i1 %7, label %32, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %8, align 8, !tbaa !159
  %31 = or i32 %30, 1
  store i32 %31, ptr %8, align 8, !tbaa !159
  br label %32

32:                                               ; preds = %29, %27, %15
  %33 = icmp eq ptr %11, null
  br i1 %33, label %34, label %9, !llvm.loop !191

34:                                               ; preds = %32, %2
  %35 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !159
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @nodeLinkIsHidden(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.bNodeLink, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !152
  %6 = and i16 %5, 10
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !157
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !152
  %13 = and i16 %12, 10
  %14 = icmp ne i16 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i32 [ 1, %1 ], [ %15, %8 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @nodeSocketIsHidden(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 2, !tbaa !152
  %4 = and i16 %3, 10
  %5 = icmp ne i16 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeInternalRelink(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !157
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 23
  store ptr %7, ptr %10, align 8, !tbaa !158
  %11 = load ptr, ptr %7, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !192

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = icmp eq ptr %15, null
  br i1 %16, label %77, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %0, null
  %19 = icmp eq ptr %0, null
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %21

21:                                               ; preds = %17, %75
  %22 = phi ptr [ %15, %17 ], [ %23, %75 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !154
  %24 = getelementptr inbounds %struct.bNodeLink, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !162
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %75

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.bNodeLink, ptr %22, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !156
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !158
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.bNodeLink, ptr %31, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !156
  %36 = getelementptr inbounds %struct.bNodeSocket, ptr %35, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !158
  %38 = icmp eq ptr %37, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.bNodeLink, ptr %37, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !162
  store ptr %41, ptr %24, align 8, !tbaa !162
  %42 = getelementptr inbounds %struct.bNodeLink, ptr %37, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !156
  store ptr %43, ptr %28, align 8, !tbaa !156
  %44 = getelementptr inbounds %struct.bNodeLink, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !193
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.bNodeLink, ptr %22, i64 0, i32 6
  %50 = load i32, ptr %49, align 8, !tbaa !193
  %51 = and i32 %50, -3
  store i32 %51, ptr %49, align 8, !tbaa !193
  br label %72

52:                                               ; preds = %33
  br i1 %18, label %54, label %53

53:                                               ; preds = %52
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %22) #23
  br label %54

54:                                               ; preds = %53, %52
  %55 = getelementptr inbounds %struct.bNodeLink, ptr %22, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !157
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.bNodeSocket, ptr %56, i64 0, i32 23
  store ptr null, ptr %59, align 8, !tbaa !158
  br label %60

60:                                               ; preds = %58, %54
  %61 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %61(ptr noundef nonnull %22) #23
  br i1 %18, label %75, label %72

62:                                               ; preds = %27
  br i1 %19, label %64, label %63

63:                                               ; preds = %62
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %22) #23
  br label %64

64:                                               ; preds = %63, %62
  %65 = getelementptr inbounds %struct.bNodeLink, ptr %22, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !157
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bNodeSocket, ptr %66, i64 0, i32 23
  store ptr null, ptr %69, align 8, !tbaa !158
  br label %70

70:                                               ; preds = %68, %64
  %71 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %71(ptr noundef nonnull %22) #23
  br i1 %19, label %75, label %72

72:                                               ; preds = %70, %60, %39, %48
  %73 = load i32, ptr %20, align 8, !tbaa !159
  %74 = or i32 %73, 1
  store i32 %74, ptr %20, align 8, !tbaa !159
  br label %75

75:                                               ; preds = %72, %70, %60, %21
  %76 = icmp eq ptr %23, null
  br i1 %76, label %77, label %21, !llvm.loop !194

77:                                               ; preds = %75, %13
  %78 = load ptr, ptr %14, align 8, !tbaa !153
  %79 = icmp eq ptr %78, null
  br i1 %79, label %104, label %80

80:                                               ; preds = %77
  %81 = icmp eq ptr %0, null
  %82 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %83

83:                                               ; preds = %80, %102
  %84 = phi ptr [ %78, %80 ], [ %85, %102 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !154
  %86 = getelementptr inbounds %struct.bNodeLink, ptr %84, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !163
  %88 = icmp eq ptr %87, %1
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  br i1 %81, label %91, label %90

90:                                               ; preds = %89
  tail call void @BLI_remlink(ptr noundef nonnull %14, ptr noundef nonnull %84) #23
  br label %91

91:                                               ; preds = %90, %89
  %92 = getelementptr inbounds %struct.bNodeLink, ptr %84, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !157
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.bNodeSocket, ptr %93, i64 0, i32 23
  store ptr null, ptr %96, align 8, !tbaa !158
  br label %97

97:                                               ; preds = %95, %91
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %98(ptr noundef nonnull %84) #23
  br i1 %81, label %102, label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %82, align 8, !tbaa !159
  %101 = or i32 %100, 1
  store i32 %101, ptr %82, align 8, !tbaa !159
  br label %102

102:                                              ; preds = %99, %97, %83
  %103 = icmp eq ptr %85, null
  br i1 %103, label %104, label %83, !llvm.loop !195

104:                                              ; preds = %102, %77
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeToView(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #11 {
  br label %6

6:                                                ; preds = %16, %5
  %7 = phi ptr [ %0, %5 ], [ %11, %16 ]
  %8 = phi float [ %1, %5 ], [ %15, %16 ]
  %9 = phi float [ %2, %5 ], [ %19, %16 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !196
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 24
  %14 = load float, ptr %13, align 8, !tbaa !197
  %15 = fadd float %14, %8
  br i1 %12, label %20, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 25
  %18 = load float, ptr %17, align 4, !tbaa !198
  %19 = fadd float %18, %9
  br label %6

20:                                               ; preds = %6
  store float %15, ptr %3, align 4, !tbaa !80
  %21 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 25
  %22 = load float, ptr %21, align 4, !tbaa !198
  %23 = fadd float %22, %9
  store float %23, ptr %4, align 4, !tbaa !80
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeFromView(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #11 {
  %6 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  tail call void @nodeFromView(ptr noundef nonnull %7, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4)
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  %11 = load float, ptr %10, align 8, !tbaa !197
  %12 = load float, ptr %3, align 4, !tbaa !80
  %13 = fsub float %12, %11
  store float %13, ptr %3, align 4, !tbaa !80
  %14 = load float, ptr %4, align 4, !tbaa !80
  br label %19

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  %17 = load float, ptr %16, align 8, !tbaa !197
  %18 = fsub float %1, %17
  store float %18, ptr %3, align 4, !tbaa !80
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi float [ %2, %15 ], [ %14, %9 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 25
  %22 = load float, ptr %21, align 4, !tbaa !198
  %23 = fsub float %20, %22
  store float %23, ptr %4, align 4, !tbaa !80
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @nodeAttachNodeCheck(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !196
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !199

11:                                               ; preds = %4, %7, %2
  %12 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 0, %7 ]
  ret i8 %12
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeAttachNode(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call void @nodeToView(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  store ptr %1, ptr %5, align 8, !tbaa !196
  %6 = load float, ptr %3, align 4, !tbaa !80
  %7 = load float, ptr %4, align 4, !tbaa !80
  %8 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 25
  tail call void @nodeFromView(ptr noundef %1, float noundef %6, float noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeDetachNode(ptr nocapture noundef %0) local_unnamed_addr #11 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  call void @nodeToView(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %8 = load float, ptr %2, align 4, !tbaa !80
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  store float %8, ptr %9, align 8, !tbaa !197
  %10 = load float, ptr %3, align 4, !tbaa !80
  %11 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 25
  store float %10, ptr %11, align 4, !tbaa !198
  store ptr null, ptr %4, align 8, !tbaa !196
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeAddTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef nonnull %0, i16 noundef signext 21582, ptr noundef %1) #23
  br label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %9 = tail call ptr %8(i64 noundef 432, ptr noundef nonnull @.str.48) #23
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  store i16 21582, ptr %10, align 8, !tbaa !180
  %11 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4, i64 2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %1, i64 noundef 66) #23
  br label %13

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef %2, i64 noundef 64) #23
  %20 = load i8, ptr %2, align 1, !tbaa !46
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %24 = tail call ptr @BLI_ghash_lookup(ptr noundef %23, ptr noundef nonnull %2) #23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %13
  br label %27

27:                                               ; preds = %22, %26
  %28 = phi ptr [ null, %26 ], [ %24, %22 ]
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 2
  br i1 %29, label %34, label %31

31:                                               ; preds = %27
  store ptr %28, ptr %30, align 8, !tbaa !48
  %32 = load i32, ptr %28, align 8, !tbaa !49
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 9
  store i32 %32, ptr %33, align 8, !tbaa !52
  br label %37

34:                                               ; preds = %27
  store ptr @NodeTreeTypeUndefined, ptr %30, align 8, !tbaa !48
  %35 = load i32, ptr %15, align 4, !tbaa !34
  %36 = and i32 %35, -2
  store i32 %36, ptr %15, align 4, !tbaa !34
  br label %37

37:                                               ; preds = %31, %34
  ret ptr %14
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeCopyTree_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @ntreeCopyTree_internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext 1)
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ntreeCopyTree_internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.GHashIterator, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %206, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 35
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef nonnull %0) #23
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_libblock_copy(ptr noundef nonnull %0) #23
  br label %19

16:                                               ; preds = %10, %8
  %17 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef nonnull %0, i8 noundef zeroext 1) #23
  %18 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !200
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !201
  tail call void @id_us_plus(ptr noundef %22) #23
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 27
  store ptr null, ptr %23, align 8, !tbaa !202
  %24 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 7
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 8
  %26 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  %28 = load ptr, ptr %27, align 8, !tbaa !203
  %29 = icmp eq i8 %2, 0
  %30 = icmp eq i8 %3, 0
  br label %31

31:                                               ; preds = %43, %19
  %32 = phi ptr [ %26, %19 ], [ %33, %43 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  br i1 %29, label %39, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  tail call void @id_us_plus(ptr noundef %38) #23
  br label %39

39:                                               ; preds = %36, %35
  br i1 %30, label %43, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !90
  tail call void @id_lib_extern(ptr noundef %42) #23
  br label %43

43:                                               ; preds = %40, %39
  %44 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !189
  %45 = tail call ptr @nodeCopyNode(ptr noundef %20, ptr noundef nonnull %33)
  %46 = icmp eq ptr %33, %28
  br i1 %46, label %47, label %31, !llvm.loop !204

47:                                               ; preds = %43, %31
  %48 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_duplicatelist(ptr noundef nonnull %25, ptr noundef nonnull %48) #23
  %49 = load ptr, ptr %25, align 8, !tbaa !47
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %47, %88
  %52 = phi ptr [ %89, %88 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !162
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !189
  br label %59

59:                                               ; preds = %51, %56
  %60 = phi ptr [ %58, %56 ], [ null, %51 ]
  store ptr %60, ptr %53, align 8, !tbaa !162
  %61 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !156
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bNodeSocket, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !181
  br label %67

67:                                               ; preds = %59, %64
  %68 = phi ptr [ %66, %64 ], [ null, %59 ]
  store ptr %68, ptr %61, align 8, !tbaa !156
  %69 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !163
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !189
  br label %75

75:                                               ; preds = %67, %72
  %76 = phi ptr [ %74, %72 ], [ null, %67 ]
  store ptr %76, ptr %69, align 8, !tbaa !163
  %77 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !157
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.bNodeSocket, ptr %78, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !181
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi ptr [ %82, %80 ], [ null, %75 ]
  store ptr %84, ptr %77, align 8, !tbaa !157
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.bNodeSocket, ptr %84, i64 0, i32 23
  store ptr %52, ptr %87, align 8, !tbaa !158
  br label %88

88:                                               ; preds = %83, %86
  %89 = load ptr, ptr %52, align 8, !tbaa !47
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %51, !llvm.loop !205

91:                                               ; preds = %88, %47
  %92 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 22
  %93 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  tail call void @BLI_duplicatelist(ptr noundef nonnull %92, ptr noundef nonnull %93) #23
  %94 = load ptr, ptr %92, align 8, !tbaa !47
  %95 = icmp eq ptr %94, null
  br i1 %95, label %120, label %96

96:                                               ; preds = %91, %115
  %97 = phi ptr [ %118, %115 ], [ %94, %91 ]
  %98 = phi ptr [ %99, %115 ], [ %93, %91 ]
  %99 = load ptr, ptr %98, align 8, !tbaa !47
  %100 = getelementptr inbounds %struct.bNodeSocket, ptr %99, i64 0, i32 2
  store ptr %97, ptr %100, align 8, !tbaa !181
  %101 = getelementptr inbounds %struct.bNodeSocket, ptr %99, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !161
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %102) #23
  %106 = getelementptr inbounds %struct.bNodeSocket, ptr %97, i64 0, i32 3
  store ptr %105, ptr %106, align 8, !tbaa !161
  br label %107

107:                                              ; preds = %104, %96
  %108 = getelementptr inbounds %struct.bNodeSocket, ptr %99, i64 0, i32 15
  %109 = load ptr, ptr %108, align 8, !tbaa !62
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %113 = tail call ptr %112(ptr noundef nonnull %109) #23
  %114 = getelementptr inbounds %struct.bNodeSocket, ptr %97, i64 0, i32 15
  store ptr %113, ptr %114, align 8, !tbaa !62
  br label %115

115:                                              ; preds = %107, %111
  %116 = getelementptr inbounds %struct.bNodeSocket, ptr %97, i64 0, i32 16
  store i16 0, ptr %116, align 8, !tbaa !182
  %117 = getelementptr inbounds %struct.bNodeSocket, ptr %97, i64 0, i32 19
  store ptr null, ptr %117, align 8, !tbaa !183
  %118 = load ptr, ptr %97, align 8, !tbaa !47
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %96, !llvm.loop !206

120:                                              ; preds = %115, %91
  %121 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 23
  %122 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  tail call void @BLI_duplicatelist(ptr noundef nonnull %121, ptr noundef nonnull %122) #23
  %123 = load ptr, ptr %121, align 8, !tbaa !47
  %124 = icmp eq ptr %123, null
  br i1 %124, label %149, label %125

125:                                              ; preds = %120, %144
  %126 = phi ptr [ %147, %144 ], [ %123, %120 ]
  %127 = phi ptr [ %128, %144 ], [ %122, %120 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !47
  %129 = getelementptr inbounds %struct.bNodeSocket, ptr %128, i64 0, i32 2
  store ptr %126, ptr %129, align 8, !tbaa !181
  %130 = getelementptr inbounds %struct.bNodeSocket, ptr %128, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !161
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %131) #23
  %135 = getelementptr inbounds %struct.bNodeSocket, ptr %126, i64 0, i32 3
  store ptr %134, ptr %135, align 8, !tbaa !161
  br label %136

136:                                              ; preds = %133, %125
  %137 = getelementptr inbounds %struct.bNodeSocket, ptr %128, i64 0, i32 15
  %138 = load ptr, ptr %137, align 8, !tbaa !62
  %139 = icmp eq ptr %138, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %142 = tail call ptr %141(ptr noundef nonnull %138) #23
  %143 = getelementptr inbounds %struct.bNodeSocket, ptr %126, i64 0, i32 15
  store ptr %142, ptr %143, align 8, !tbaa !62
  br label %144

144:                                              ; preds = %136, %140
  %145 = getelementptr inbounds %struct.bNodeSocket, ptr %126, i64 0, i32 16
  store i16 0, ptr %145, align 8, !tbaa !182
  %146 = getelementptr inbounds %struct.bNodeSocket, ptr %126, i64 0, i32 19
  store ptr null, ptr %146, align 8, !tbaa !183
  %147 = load ptr, ptr %126, align 8, !tbaa !47
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %125, !llvm.loop !207

149:                                              ; preds = %144, %120
  %150 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %151 = load ptr, ptr %150, align 8, !tbaa !208
  %152 = icmp ne ptr %151, null
  %153 = icmp ne i8 %4, 0
  %154 = and i1 %153, %152
  br i1 %154, label %155, label %188

155:                                              ; preds = %149
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %156 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %157 = tail call ptr %156(i64 noundef 8, ptr noundef nonnull @.str.51) #23
  %158 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @node_instance_hash_key, ptr noundef nonnull @node_instance_hash_key_cmp, ptr noundef nonnull @.str.53) #23
  store ptr %158, ptr %157, align 8, !tbaa !209
  %159 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 24
  store ptr %157, ptr %159, align 8, !tbaa !208
  %160 = load ptr, ptr %150, align 8, !tbaa !208
  %161 = load ptr, ptr %160, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %161) #23
  %162 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !173
  %164 = icmp eq ptr %163, null
  br i1 %164, label %187, label %165

165:                                              ; preds = %155, %182
  %166 = phi ptr [ %185, %182 ], [ %163, %155 ]
  %167 = getelementptr inbounds %struct._gh_Entry, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !211
  %169 = load i32, ptr %168, align 4, !tbaa.struct !212
  %170 = getelementptr inbounds %struct._gh_Entry, ptr %166, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !175
  %172 = load ptr, ptr %159, align 8, !tbaa !208
  %173 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %174 = call ptr %173(ptr noundef %171) #23
  %175 = getelementptr inbounds %struct.bNodePreview, ptr %171, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !213
  %177 = icmp eq ptr %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %165
  %179 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %180 = call ptr %179(ptr noundef nonnull %176) #23
  %181 = getelementptr inbounds %struct.bNodePreview, ptr %174, i64 0, i32 1
  store ptr %180, ptr %181, align 8, !tbaa !213
  br label %182

182:                                              ; preds = %165, %178
  store i32 %169, ptr %174, align 4, !tbaa.struct !212
  %183 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %174, i64 0, i32 1
  store i16 0, ptr %183, align 4, !tbaa !216
  %184 = load ptr, ptr %172, align 8, !tbaa !209
  call void @BLI_ghash_insert(ptr noundef %184, ptr noundef nonnull %174, ptr noundef nonnull %174) #23
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #23
  %185 = load ptr, ptr %162, align 8, !tbaa !173
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %165, !llvm.loop !217

187:                                              ; preds = %182, %155
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  br label %190

188:                                              ; preds = %149
  %189 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 24
  store ptr null, ptr %189, align 8, !tbaa !208
  br label %190

190:                                              ; preds = %188, %187
  %191 = load ptr, ptr %24, align 8, !tbaa !47
  %192 = icmp eq ptr %191, null
  br i1 %192, label %204, label %193

193:                                              ; preds = %190, %201
  %194 = phi ptr [ %202, %201 ], [ %191, %190 ]
  %195 = getelementptr inbounds %struct.bNode, ptr %194, i64 0, i32 19
  %196 = load ptr, ptr %195, align 8, !tbaa !196
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.bNode, ptr %196, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !189
  store ptr %200, ptr %195, align 8, !tbaa !196
  br label %201

201:                                              ; preds = %193, %198
  %202 = load ptr, ptr %194, align 8, !tbaa !47
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %193, !llvm.loop !218

204:                                              ; preds = %201, %190
  %205 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 4
  store ptr null, ptr %205, align 8, !tbaa !219
  br label %206

206:                                              ; preds = %5, %204
  %207 = phi ptr [ %20, %204 ], [ null, %5 ]
  ret ptr %207
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeCopyTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !91
  %3 = tail call fastcc ptr @ntreeCopyTree_internal(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeSwitchID_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %3, 0
  br label %12

12:                                               ; preds = %10, %20
  %13 = phi ptr [ %8, %10 ], [ %21, %20 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  br i1 %11, label %19, label %18

18:                                               ; preds = %17
  tail call void @id_us_min(ptr noundef %1) #23
  tail call void @id_us_plus(ptr noundef %2) #23
  br label %19

19:                                               ; preds = %18, %17
  store ptr %2, ptr %14, align 8, !tbaa !90
  br label %20

20:                                               ; preds = %12, %19
  %21 = load ptr, ptr %13, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !220

23:                                               ; preds = %20, %6, %4
  ret void
}

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeSwitchID(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %15
  %10 = phi ptr [ %16, %15 ], [ %7, %5 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @id_us_min(ptr noundef %1) #23
  tail call void @id_us_plus(ptr noundef %2) #23
  store ptr %2, ptr %11, align 8, !tbaa !90
  br label %15

15:                                               ; preds = %14, %9
  %16 = load ptr, ptr %10, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !220

18:                                               ; preds = %15, %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeUserIncrefID(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  tail call void @id_us_plus(ptr noundef %8) #23
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !221

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeUserDecrefID(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  tail call void @id_us_min(ptr noundef %8) #23
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !222

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_node_preview_used(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct.bNodeType, ptr %3, i64 0, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !74
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_node_preview_verify(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bNodeInstanceKey, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %1, ptr %6, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !209
  %8 = call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = icmp eq i8 %4, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %14 = call ptr %13(i64 noundef 24, ptr noundef nonnull @.str.49) #23
  store i32 %1, ptr %14, align 4, !tbaa.struct !212
  %15 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %14, i64 0, i32 1
  store i16 0, ptr %15, align 4, !tbaa !216
  %16 = load ptr, ptr %0, align 8, !tbaa !209
  call void @BLI_ghash_insert(ptr noundef %16, ptr noundef nonnull %14, ptr noundef nonnull %14) #23
  br label %17

17:                                               ; preds = %12, %5
  %18 = phi ptr [ %8, %5 ], [ %14, %12 ]
  %19 = icmp eq i32 %2, 0
  %20 = icmp eq i32 %3, 0
  %21 = or i1 %19, %20
  br i1 %21, label %54, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bNodePreview, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !213
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.bNodePreview, ptr %18, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !223
  %29 = sext i16 %28 to i32
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.bNodePreview, ptr %18, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !224
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %34, %3
  br i1 %35, label %38, label %36

36:                                               ; preds = %31, %26
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %37(ptr noundef nonnull %24) #23
  store ptr null, ptr %23, align 8, !tbaa !213
  br label %38

38:                                               ; preds = %31, %36, %22
  %39 = load ptr, ptr %23, align 8, !tbaa !213
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %43 = shl nsw i32 %2, 2
  %44 = sext i32 %43 to i64
  %45 = mul nsw i32 %3, %2
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 2
  %48 = add nsw i64 %47, %44
  %49 = call ptr %42(i64 noundef %48, ptr noundef nonnull @.str.50) #23
  store ptr %49, ptr %23, align 8, !tbaa !213
  %50 = trunc i32 %2 to i16
  %51 = getelementptr inbounds %struct.bNodePreview, ptr %18, i64 0, i32 2
  store i16 %50, ptr %51, align 8, !tbaa !223
  %52 = trunc i32 %3 to i16
  %53 = getelementptr inbounds %struct.bNodePreview, ptr %18, i64 0, i32 3
  store i16 %52, ptr %53, align 2, !tbaa !224
  br label %54

54:                                               ; preds = %38, %41, %17, %10
  %55 = phi ptr [ null, %10 ], [ %18, %17 ], [ %18, %41 ], [ %18, %38 ]
  ret ptr %55
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_node_instance_hash_lookup(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !209
  %5 = call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef nonnull %3) #23
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_instance_hash_insert(ptr nocapture noundef readonly %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 {
  store i32 %1, ptr %2, align 4, !tbaa.struct !212
  %4 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %2, i64 0, i32 1
  store i16 0, ptr %4, align 4, !tbaa !216
  %5 = load ptr, ptr %0, align 8, !tbaa !209
  tail call void @BLI_ghash_insert(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %2) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_node_preview_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %3 = tail call ptr %2(ptr noundef %0) #23
  %4 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %9 = tail call ptr %8(ptr noundef nonnull %5) #23
  %10 = getelementptr inbounds %struct.bNodePreview, ptr %3, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !213
  br label %11

11:                                               ; preds = %7, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %6(ptr noundef nonnull %3) #23
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %8(ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_init_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %12 = tail call ptr %11(i64 noundef 8, ptr noundef nonnull @.str.51) #23
  %13 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @node_instance_hash_key, ptr noundef nonnull @node_instance_hash_key_cmp, ptr noundef nonnull @.str.53) #23
  store ptr %13, ptr %12, align 8, !tbaa !209
  store ptr %12, ptr %7, align 8, !tbaa !208
  br label %14

14:                                               ; preds = %10, %6
  %15 = load ptr, ptr %7, align 8, !tbaa !208
  tail call fastcc void @node_preview_init_tree_recursive(ptr noundef %15, ptr noundef nonnull %0, i32 5381, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %16

16:                                               ; preds = %4, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_node_instance_hash_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef %0) #23
  %4 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @node_instance_hash_key, ptr noundef nonnull @node_instance_hash_key_cmp, ptr noundef nonnull @.str.53) #23
  store ptr %4, ptr %3, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @node_preview_init_tree_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %12 = trunc i32 %3 to i16
  %13 = trunc i32 %4 to i16
  %14 = trunc i32 %5 to i8
  br label %15

15:                                               ; preds = %10, %67
  %16 = phi ptr [ %8, %10 ], [ %68, %67 ]
  %17 = load i8, ptr %11, align 1, !tbaa !46
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15, %19
  %20 = phi i8 [ %27, %19 ], [ %17, %15 ]
  %21 = phi i32 [ %26, %19 ], [ %2, %15 ]
  %22 = phi ptr [ %23, %19 ], [ %11, %15 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  %24 = mul i32 %21, 33
  %25 = zext i8 %20 to i32
  %26 = xor i32 %24, %25
  %27 = load i8, ptr %23, align 1, !tbaa !46
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %19, !llvm.loop !225

29:                                               ; preds = %19, %15
  %30 = phi i32 [ %2, %15 ], [ %26, %19 ]
  %31 = mul i32 %30, 33
  %32 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 6
  %33 = load i8, ptr %32, align 1, !tbaa !46
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29, %35
  %36 = phi i8 [ %43, %35 ], [ %33, %29 ]
  %37 = phi i32 [ %42, %35 ], [ %31, %29 ]
  %38 = phi ptr [ %39, %35 ], [ %32, %29 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = mul i32 %37, 33
  %41 = zext i8 %36 to i32
  %42 = xor i32 %40, %41
  %43 = load i8, ptr %39, align 1, !tbaa !46
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %35, !llvm.loop !225

45:                                               ; preds = %35, %29
  %46 = phi i32 [ %31, %29 ], [ %42, %35 ]
  %47 = mul i32 %46, 33
  %48 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !70
  %50 = getelementptr inbounds %struct.bNodeType, ptr %49, i64 0, i32 15
  %51 = load i16, ptr %50, align 2, !tbaa !74
  %52 = and i16 %51, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 43
  store i16 %12, ptr %55, align 8, !tbaa !226
  %56 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 44
  store i16 %13, ptr %56, align 2, !tbaa !227
  %57 = tail call ptr @BKE_node_preview_verify(ptr noundef %0, i32 %47, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %14)
  br label %58

58:                                               ; preds = %54, %45
  %59 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 8
  %60 = load i16, ptr %59, align 4, !tbaa !73
  %61 = icmp eq i16 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 20
  %64 = load ptr, ptr %63, align 8, !tbaa !90
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  tail call fastcc void @node_preview_init_tree_recursive(ptr noundef %0, ptr noundef nonnull %64, i32 %47, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %67

67:                                               ; preds = %66, %62, %58
  %68 = load ptr, ptr %16, align 8, !tbaa !47
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %15, !llvm.loop !228

70:                                               ; preds = %67, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_remove_unused(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %9 = load ptr, ptr %6, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !173
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct._gh_Entry, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  %17 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %16, i64 0, i32 1
  store i16 0, ptr %17, align 4, !tbaa !216
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #23
  %18 = load ptr, ptr %10, align 8, !tbaa !173
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !229

20:                                               ; preds = %13, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  %21 = load ptr, ptr %5, align 8, !tbaa !208
  call fastcc void @node_preview_tag_used_recursive(ptr noundef %21, ptr noundef nonnull %0, i32 5381)
  %22 = load ptr, ptr %5, align 8, !tbaa !208
  call void @BKE_node_instance_hash_remove_untagged(ptr noundef %22, ptr noundef nonnull @BKE_node_preview_free)
  br label %23

23:                                               ; preds = %1, %4, %20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_instance_hash_clear_tags(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %3) #23
  %4 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct._gh_Entry, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  %11 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %10, i64 0, i32 1
  store i16 0, ptr %11, align 4, !tbaa !216
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #23
  %12 = load ptr, ptr %4, align 8, !tbaa !173
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !229

14:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @node_preview_tag_used_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2) unnamed_addr #0 {
  %4 = alloca %struct.bNodeInstanceKey, align 4
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  br label %10

10:                                               ; preds = %8, %64
  %11 = phi ptr [ %6, %8 ], [ %65, %64 ]
  %12 = load i8, ptr %9, align 1, !tbaa !46
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %14
  %15 = phi i8 [ %22, %14 ], [ %12, %10 ]
  %16 = phi i32 [ %21, %14 ], [ %2, %10 ]
  %17 = phi ptr [ %18, %14 ], [ %9, %10 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = mul i32 %16, 33
  %20 = zext i8 %15 to i32
  %21 = xor i32 %19, %20
  %22 = load i8, ptr %18, align 1, !tbaa !46
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %14, !llvm.loop !225

24:                                               ; preds = %14, %10
  %25 = phi i32 [ %2, %10 ], [ %21, %14 ]
  %26 = mul i32 %25, 33
  %27 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 6
  %28 = load i8, ptr %27, align 1, !tbaa !46
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24, %30
  %31 = phi i8 [ %38, %30 ], [ %28, %24 ]
  %32 = phi i32 [ %37, %30 ], [ %26, %24 ]
  %33 = phi ptr [ %34, %30 ], [ %27, %24 ]
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  %35 = mul i32 %32, 33
  %36 = zext i8 %31 to i32
  %37 = xor i32 %35, %36
  %38 = load i8, ptr %34, align 1, !tbaa !46
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %30, !llvm.loop !225

40:                                               ; preds = %30, %24
  %41 = phi i32 [ %26, %24 ], [ %37, %30 ]
  %42 = mul i32 %41, 33
  %43 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = getelementptr inbounds %struct.bNodeType, ptr %44, i64 0, i32 15
  %46 = load i16, ptr %45, align 2, !tbaa !74
  %47 = and i16 %46, 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %42, ptr %4, align 4
  %50 = load ptr, ptr %0, align 8, !tbaa !209
  %51 = call ptr @BLI_ghash_lookup(ptr noundef %50, ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %51, i64 0, i32 1
  store i16 1, ptr %54, align 4, !tbaa !216
  br label %55

55:                                               ; preds = %53, %49, %40
  %56 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 8
  %57 = load i16, ptr %56, align 4, !tbaa !73
  %58 = icmp eq i16 %57, 2
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %61 = load ptr, ptr %60, align 8, !tbaa !90
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  call fastcc void @node_preview_tag_used_recursive(ptr noundef %0, ptr noundef nonnull %61, i32 %42)
  br label %64

64:                                               ; preds = %63, %59, %55
  %65 = load ptr, ptr %11, align 8, !tbaa !47
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %10, !llvm.loop !230

67:                                               ; preds = %64, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_instance_hash_remove_untagged(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  %4 = alloca %struct.GHashIterator, align 8
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %6 = load ptr, ptr %0, align 8, !tbaa !209
  %7 = tail call i32 @BLI_ghash_size(ptr noundef %6) #23
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = tail call ptr %5(i64 noundef %9, ptr noundef nonnull @.str.54) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %11 = load ptr, ptr %0, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %11) #23
  %12 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %35, %2
  %16 = phi i32 [ 0, %2 ], [ %36, %35 ]
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = zext nneg i32 %16 to i64
  br label %39

20:                                               ; preds = %2, %35
  %21 = phi ptr [ %37, %35 ], [ %13, %2 ]
  %22 = phi i32 [ %36, %35 ], [ 0, %2 ]
  %23 = getelementptr inbounds %struct._gh_Entry, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !175
  %25 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %24, i64 0, i32 1
  %26 = load i16, ptr %25, align 4, !tbaa !216
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = add nsw i32 %22, 1
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds %struct.bNodeInstanceKey, ptr %10, i64 %30
  %32 = getelementptr inbounds %struct._gh_Entry, ptr %21, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !211
  %34 = load i32, ptr %33, align 4, !tbaa.struct !212
  store i32 %34, ptr %31, align 4, !tbaa.struct !212
  br label %35

35:                                               ; preds = %28, %20
  %36 = phi i32 [ %22, %20 ], [ %29, %28 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #23
  %37 = load ptr, ptr %12, align 8, !tbaa !173
  %38 = icmp eq ptr %37, null
  br i1 %38, label %15, label %20, !llvm.loop !231

39:                                               ; preds = %18, %39
  %40 = phi i64 [ 0, %18 ], [ %45, %39 ]
  %41 = getelementptr inbounds %struct.bNodeInstanceKey, ptr %10, i64 %40
  %42 = load i32, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %42, ptr %3, align 4
  %43 = load ptr, ptr %0, align 8, !tbaa !209
  %44 = call zeroext i8 @BLI_ghash_remove(ptr noundef %43, ptr noundef nonnull %3, ptr noundef null, ptr noundef %1) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %19
  br i1 %46, label %47, label %39, !llvm.loop !232

47:                                               ; preds = %39, %15
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %48(ptr noundef %10) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_free_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !209
  tail call void @BLI_ghash_free(ptr noundef %8, ptr noundef null, ptr noundef nonnull @BKE_node_preview_free) #23
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %9(ptr noundef nonnull %5) #23
  store ptr null, ptr %4, align 8, !tbaa !208
  br label %10

10:                                               ; preds = %1, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_instance_hash_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !209
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef %1) #23
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %4(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !47
  %9 = tail call i64 %8(ptr noundef nonnull %5) #23
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %5, i8 0, i64 %9, i1 false)
  br label %10

10:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_clear_tree(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = icmp eq ptr %6, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !173
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8, %25
  %14 = phi ptr [ %26, %25 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct._gh_Entry, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !175
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodePreview, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !213
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !47
  %24 = call i64 %23(ptr noundef nonnull %20) #23
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %20, i8 0, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %13, %18, %22
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #23
  %26 = load ptr, ptr %10, align 8, !tbaa !173
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !233

28:                                               ; preds = %25, %8, %1, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_sync_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !208
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %9 = icmp ne ptr %6, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %13) #23
  %14 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %12, %50
  %18 = phi ptr [ %51, %50 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct._gh_Entry, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !211
  %21 = load i32, ptr %20, align 4, !tbaa.struct !212
  %22 = getelementptr inbounds %struct._gh_Entry, ptr %18, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %21, ptr %3, align 4
  %24 = load ptr, ptr %8, align 8, !tbaa !209
  %25 = call ptr @BLI_ghash_lookup(ptr noundef %24, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %26 = icmp ne ptr %23, null
  %27 = icmp ne ptr %25, null
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %29, label %50

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.bNodePreview, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !213
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bNodePreview, ptr %23, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !213
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bNodePreview, ptr %25, i64 0, i32 2
  %39 = load i16, ptr %38, align 8, !tbaa !223
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.bNodePreview, ptr %25, i64 0, i32 3
  %42 = load i16, ptr %41, align 2, !tbaa !224
  %43 = sext i16 %42 to i32
  %44 = shl nsw i32 %40, 2
  %45 = sext i32 %44 to i64
  %46 = mul nsw i32 %43, %40
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  %49 = add nsw i64 %48, %45
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr nonnull align 1 %35, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %37, %33, %29, %17
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #23
  %51 = load ptr, ptr %14, align 8, !tbaa !173
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %17, !llvm.loop !234

53:                                               ; preds = %50, %12, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_merge_tree(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca %struct.bNodeInstanceKey, align 4
  %6 = alloca %struct.GHashIterator, align 8
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !208
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %14 = load ptr, ptr %13, align 8, !tbaa !208
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !209
  tail call void @BLI_ghash_free(ptr noundef %17, ptr noundef null, ptr noundef nonnull @BKE_node_preview_free) #23
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %18(ptr noundef nonnull %14) #23
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 24
  %21 = load ptr, ptr %20, align 8, !tbaa !208
  store ptr %21, ptr %13, align 8, !tbaa !208
  store ptr null, ptr %20, align 8, !tbaa !208
  %22 = icmp eq ptr %0, null
  br i1 %22, label %70, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !208
  %25 = icmp eq ptr %24, null
  br i1 %25, label %70, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %27 = load ptr, ptr %24, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %27) #23
  %28 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !173
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %36, %31 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct._gh_Entry, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %34, i64 0, i32 1
  store i16 0, ptr %35, align 4, !tbaa !216
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #23
  %36 = load ptr, ptr %28, align 8, !tbaa !173
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %31, !llvm.loop !229

38:                                               ; preds = %31, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  %39 = load ptr, ptr %13, align 8, !tbaa !208
  call fastcc void @node_preview_tag_used_recursive(ptr noundef %39, ptr noundef nonnull %0, i32 5381)
  %40 = load ptr, ptr %13, align 8, !tbaa !208
  call void @BKE_node_instance_hash_remove_untagged(ptr noundef %40, ptr noundef nonnull @BKE_node_preview_free)
  br label %70

41:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 24
  %43 = load ptr, ptr %42, align 8, !tbaa !208
  %44 = icmp eq ptr %43, null
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !209
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %46) #23
  %47 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !173
  %49 = icmp eq ptr %48, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %45, %50
  %51 = phi ptr [ %63, %50 ], [ %48, %45 ]
  %52 = getelementptr inbounds %struct._gh_Entry, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !211
  %54 = load i32, ptr %53, align 4, !tbaa.struct !212
  %55 = getelementptr inbounds %struct._gh_Entry, ptr %51, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !175
  %57 = load ptr, ptr %9, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %54, ptr %5, align 4
  %58 = load ptr, ptr %57, align 8, !tbaa !209
  %59 = call zeroext i8 @BLI_ghash_remove(ptr noundef %58, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @BKE_node_preview_free) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %60 = load ptr, ptr %9, align 8, !tbaa !208
  store i32 %54, ptr %56, align 4, !tbaa.struct !212
  %61 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %56, i64 0, i32 1
  store i16 0, ptr %61, align 4, !tbaa !216
  %62 = load ptr, ptr %60, align 8, !tbaa !209
  call void @BLI_ghash_insert(ptr noundef %62, ptr noundef nonnull %56, ptr noundef nonnull %56) #23
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #23
  %63 = load ptr, ptr %47, align 8, !tbaa !173
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %50, !llvm.loop !235

65:                                               ; preds = %50, %45
  %66 = load ptr, ptr %42, align 8, !tbaa !208
  %67 = load ptr, ptr %66, align 8, !tbaa !209
  call void @BLI_ghash_free(ptr noundef %67, ptr noundef null, ptr noundef null) #23
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %68(ptr noundef nonnull %66) #23
  store ptr null, ptr %42, align 8, !tbaa !208
  br label %69

69:                                               ; preds = %65, %41
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  br label %70

70:                                               ; preds = %38, %23, %19, %69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_node_instance_hash_remove(ptr nocapture noundef readonly %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !209
  %6 = call zeroext i8 @BLI_ghash_remove(ptr noundef %5, ptr noundef nonnull %4, ptr noundef null, ptr noundef %2) #23
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_preview_set_pixel(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp ne ptr %0, null
  %7 = or i32 %3, %2
  %8 = icmp sgt i32 %7, -1
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %76

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !223
  %13 = sext i16 %12 to i32
  %14 = icmp sgt i32 %13, %2
  br i1 %14, label %15, label %76

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !224
  %18 = sext i16 %17 to i32
  %19 = icmp sgt i32 %18, %3
  br i1 %19, label %20, label %76

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !213
  %23 = mul nuw nsw i32 %13, %3
  %24 = add nuw nsw i32 %23, %2
  %25 = shl nuw nsw i32 %24, 2
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %22, i64 %26
  %28 = icmp eq i8 %4, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %20
  %30 = load float, ptr %1, align 4, !tbaa !80
  %31 = tail call float @linearrgb_to_srgb(float noundef %30) #23
  %32 = getelementptr inbounds float, ptr %1, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !80
  %34 = tail call float @linearrgb_to_srgb(float noundef %33) #23
  %35 = getelementptr inbounds float, ptr %1, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !80
  %37 = tail call float @linearrgb_to_srgb(float noundef %36) #23
  %38 = getelementptr inbounds float, ptr %1, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !80
  %40 = fcmp ugt float %31, 0.000000e+00
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = fcmp ogt float %31, 0x3FEFEFEFE0000000
  %43 = tail call float @llvm.fmuladd.f32(float %31, float 2.550000e+02, float 5.000000e-01)
  %44 = select i1 %42, float 2.550000e+02, float %43
  %45 = fptoui float %44 to i8
  br label %46

46:                                               ; preds = %41, %29
  %47 = phi i8 [ %45, %41 ], [ 0, %29 ]
  store i8 %47, ptr %27, align 1, !tbaa !46
  %48 = fcmp ugt float %34, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = fcmp ogt float %34, 0x3FEFEFEFE0000000
  %51 = tail call float @llvm.fmuladd.f32(float %34, float 2.550000e+02, float 5.000000e-01)
  %52 = select i1 %50, float 2.550000e+02, float %51
  %53 = fptoui float %52 to i8
  br label %54

54:                                               ; preds = %49, %46
  %55 = phi i8 [ %53, %49 ], [ 0, %46 ]
  %56 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %55, ptr %56, align 1, !tbaa !46
  %57 = fcmp ugt float %37, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = fcmp ogt float %37, 0x3FEFEFEFE0000000
  %60 = tail call float @llvm.fmuladd.f32(float %37, float 2.550000e+02, float 5.000000e-01)
  %61 = select i1 %59, float 2.550000e+02, float %60
  %62 = fptoui float %61 to i8
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i8 [ %62, %58 ], [ 0, %54 ]
  %65 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %64, ptr %65, align 1, !tbaa !46
  %66 = fcmp ugt float %39, 0.000000e+00
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = fcmp ogt float %39, 0x3FEFEFEFE0000000
  %69 = tail call float @llvm.fmuladd.f32(float %39, float 2.550000e+02, float 5.000000e-01)
  %70 = select i1 %68, float 2.550000e+02, float %69
  %71 = fptoui float %70 to i8
  br label %72

72:                                               ; preds = %63, %67
  %73 = phi i8 [ %71, %67 ], [ 0, %63 ]
  %74 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %73, ptr %74, align 1, !tbaa !46
  br label %76

75:                                               ; preds = %20
  tail call void @rgba_float_to_uchar(ptr noundef %27, ptr noundef %1) #23
  br label %76

76:                                               ; preds = %72, %75, %15, %10, %5
  ret void
}

declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @nodeUnlinkNode(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = icmp eq ptr %4, null
  br i1 %5, label %59, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %11

11:                                               ; preds = %6, %57
  %12 = phi ptr [ %4, %6 ], [ %13, %57 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  %14 = getelementptr inbounds %struct.bNodeLink, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = icmp eq ptr %15, %1
  %17 = getelementptr inbounds %struct.bNodeLink, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  br i1 %16, label %19, label %25

19:                                               ; preds = %11
  %20 = icmp eq ptr %18, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 31
  %23 = load i32, ptr %22, align 4, !tbaa !148
  %24 = or i32 %23, 65535
  store i32 %24, ptr %22, align 4, !tbaa !148
  br label %28

25:                                               ; preds = %11
  %26 = icmp eq ptr %18, %1
  %27 = select i1 %26, ptr %7, ptr null
  br label %28

28:                                               ; preds = %25, %19, %21
  %29 = phi ptr [ %8, %21 ], [ %8, %19 ], [ %27, %25 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.bNodeLink, ptr %12, i64 0, i32 4
  %33 = getelementptr inbounds %struct.bNodeLink, ptr %12, i64 0, i32 5
  br label %34

34:                                               ; preds = %31, %41
  %35 = phi ptr [ %36, %41 ], [ %29, %31 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %57, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %32, align 8, !tbaa !156
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %33, align 8, !tbaa !157
  %43 = icmp eq ptr %42, %36
  br i1 %43, label %44, label %34, !llvm.loop !236

44:                                               ; preds = %41, %38
  br i1 %9, label %46, label %45

45:                                               ; preds = %44
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %12) #23
  br label %46

46:                                               ; preds = %45, %44
  %47 = getelementptr inbounds %struct.bNodeLink, ptr %12, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !157
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 23
  store ptr null, ptr %51, align 8, !tbaa !158
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %53(ptr noundef nonnull %12) #23
  br i1 %9, label %57, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %10, align 8, !tbaa !159
  %56 = or i32 %55, 1
  store i32 %56, ptr %10, align 8, !tbaa !159
  br label %57

57:                                               ; preds = %34, %54, %52, %28
  %58 = icmp eq ptr %13, null
  br i1 %58, label %59, label %11, !llvm.loop !237

59:                                               ; preds = %57, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeFreeNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @node_free_node_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @node_free_node_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = icmp eq ptr %0, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 12
  %13 = load i32, ptr %12, align 4, !tbaa !238
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 %14, 5
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  br label %18

18:                                               ; preds = %11, %4
  %19 = phi i8 [ 0, %4 ], [ %17, %11 ]
  %20 = and i8 %19, %2
  %21 = icmp eq i8 %3, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.bNodeType, ptr %24, i64 0, i32 35
  %26 = load ptr, ptr %25, align 8, !tbaa !239
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_Node, ptr noundef %1, ptr noundef nonnull %7) #23
  %29 = load ptr, ptr %23, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.bNodeType, ptr %29, i64 0, i32 35
  %31 = load ptr, ptr %30, align 8, !tbaa !239
  call void %31(ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %32

32:                                               ; preds = %28, %22, %18
  br i1 %10, label %134, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !153
  %36 = icmp eq ptr %35, null
  br i1 %36, label %85, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %39 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %40 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %41

41:                                               ; preds = %83, %37
  %42 = phi ptr [ %35, %37 ], [ %43, %83 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !154
  %44 = getelementptr inbounds %struct.bNodeLink, ptr %42, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !162
  %46 = icmp eq ptr %45, %1
  %47 = getelementptr inbounds %struct.bNodeLink, ptr %42, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !163
  br i1 %46, label %49, label %55

49:                                               ; preds = %41
  %50 = icmp eq ptr %48, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.bNode, ptr %48, i64 0, i32 31
  %53 = load i32, ptr %52, align 4, !tbaa !148
  %54 = or i32 %53, 65535
  store i32 %54, ptr %52, align 4, !tbaa !148
  br label %58

55:                                               ; preds = %41
  %56 = icmp eq ptr %48, %1
  %57 = select i1 %56, ptr %38, ptr null
  br label %58

58:                                               ; preds = %55, %51, %49
  %59 = phi ptr [ %39, %51 ], [ %39, %49 ], [ %57, %55 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.bNodeLink, ptr %42, i64 0, i32 4
  %63 = getelementptr inbounds %struct.bNodeLink, ptr %42, i64 0, i32 5
  br label %64

64:                                               ; preds = %71, %61
  %65 = phi ptr [ %66, %71 ], [ %59, %61 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !47
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %62, align 8, !tbaa !156
  %70 = icmp eq ptr %69, %66
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr %63, align 8, !tbaa !157
  %73 = icmp eq ptr %72, %66
  br i1 %73, label %74, label %64, !llvm.loop !236

74:                                               ; preds = %68, %71
  call void @BLI_remlink(ptr noundef nonnull %34, ptr noundef nonnull %42) #23
  %75 = load ptr, ptr %63, align 8, !tbaa !157
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.bNodeSocket, ptr %75, i64 0, i32 23
  store ptr null, ptr %78, align 8, !tbaa !158
  br label %79

79:                                               ; preds = %77, %74
  %80 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %80(ptr noundef nonnull %42) #23
  %81 = load i32, ptr %40, align 8, !tbaa !159
  %82 = or i32 %81, 1
  store i32 %82, ptr %40, align 8, !tbaa !159
  br label %83

83:                                               ; preds = %64, %79, %58
  %84 = icmp eq ptr %43, null
  br i1 %84, label %85, label %41, !llvm.loop !237

85:                                               ; preds = %83, %33
  %86 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = icmp eq ptr %87, null
  br i1 %88, label %105, label %89

89:                                               ; preds = %85, %102
  %90 = phi ptr [ %103, %102 ], [ %87, %85 ]
  %91 = getelementptr inbounds %struct.bNode, ptr %90, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !196
  %93 = icmp eq ptr %92, %1
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  %95 = icmp eq ptr %92, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %94
  call void @nodeToView(ptr noundef nonnull %90, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %97 = load float, ptr %5, align 4, !tbaa !80
  %98 = getelementptr inbounds %struct.bNode, ptr %90, i64 0, i32 24
  store float %97, ptr %98, align 8, !tbaa !197
  %99 = load float, ptr %6, align 4, !tbaa !80
  %100 = getelementptr inbounds %struct.bNode, ptr %90, i64 0, i32 25
  store float %99, ptr %100, align 4, !tbaa !198
  store ptr null, ptr %91, align 8, !tbaa !196
  br label %101

101:                                              ; preds = %96, %94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  br label %102

102:                                              ; preds = %101, %89
  %103 = load ptr, ptr %90, align 8, !tbaa !47
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %89, !llvm.loop !240

105:                                              ; preds = %102, %85
  call void @BLI_remlink(ptr noundef nonnull %86, ptr noundef %1) #23
  %106 = icmp eq i8 %20, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %9) #23
  %108 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 6
  %109 = call i64 @BLI_strescape(ptr noundef nonnull %8, ptr noundef nonnull %108, i64 noundef 128) #23
  %110 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 128, ptr noundef nonnull @.str.267, ptr noundef nonnull %8) #23
  call void @BKE_animdata_fix_paths_remove(ptr noundef nonnull %0, ptr noundef nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %8) #23
  br label %111

111:                                              ; preds = %107, %105
  %112 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !48
  %114 = getelementptr inbounds %struct.bNodeTreeType, ptr %113, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !241
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  call void %115(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %118

118:                                              ; preds = %117, %111
  %119 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %120 = load i32, ptr %119, align 8, !tbaa !52
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %124 = load ptr, ptr %123, align 8, !tbaa !202
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call void @ntreeTexEndExecTree(ptr noundef nonnull %124) #23
  store ptr null, ptr %123, align 8, !tbaa !202
  br label %127

127:                                              ; preds = %126, %122, %118
  %128 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !70
  %130 = getelementptr inbounds %struct.bNodeType, ptr %129, i64 0, i32 32
  %131 = load ptr, ptr %130, align 8, !tbaa !242
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  call void %131(ptr noundef %1) #23
  br label %134

134:                                              ; preds = %127, %133, %32
  %135 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %136 = load ptr, ptr %135, align 8, !tbaa !165
  %137 = icmp eq ptr %136, null
  br i1 %137, label %156, label %138

138:                                              ; preds = %134, %153
  %139 = phi ptr [ %140, %153 ], [ %136, %134 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !166
  %141 = getelementptr inbounds %struct.bNodeSocket, ptr %139, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !161
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  call void @IDP_FreeProperty(ptr noundef nonnull %142) #23
  %145 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %146 = load ptr, ptr %141, align 8, !tbaa !161
  call void %145(ptr noundef %146) #23
  br label %147

147:                                              ; preds = %144, %138
  %148 = getelementptr inbounds %struct.bNodeSocket, ptr %139, i64 0, i32 15
  %149 = load ptr, ptr %148, align 8, !tbaa !62
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %152(ptr noundef nonnull %149) #23
  br label %153

153:                                              ; preds = %147, %151
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %154(ptr noundef nonnull %139) #23
  %155 = icmp eq ptr %140, null
  br i1 %155, label %156, label %138, !llvm.loop !243

156:                                              ; preds = %153, %134
  %157 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %158 = load ptr, ptr %157, align 8, !tbaa !168
  %159 = icmp eq ptr %158, null
  br i1 %159, label %178, label %160

160:                                              ; preds = %156, %175
  %161 = phi ptr [ %162, %175 ], [ %158, %156 ]
  %162 = load ptr, ptr %161, align 8, !tbaa !166
  %163 = getelementptr inbounds %struct.bNodeSocket, ptr %161, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !161
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  call void @IDP_FreeProperty(ptr noundef nonnull %164) #23
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %168 = load ptr, ptr %163, align 8, !tbaa !161
  call void %167(ptr noundef %168) #23
  br label %169

169:                                              ; preds = %166, %160
  %170 = getelementptr inbounds %struct.bNodeSocket, ptr %161, i64 0, i32 15
  %171 = load ptr, ptr %170, align 8, !tbaa !62
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %174(ptr noundef nonnull %171) #23
  br label %175

175:                                              ; preds = %169, %173
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %176(ptr noundef nonnull %161) #23
  %177 = icmp eq ptr %162, null
  br i1 %177, label %178, label %160, !llvm.loop !244

178:                                              ; preds = %175, %156
  %179 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  call void @BLI_freelistN(ptr noundef nonnull %179) #23
  %180 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !186
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  call void @IDP_FreeProperty(ptr noundef nonnull %181) #23
  %184 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %185 = load ptr, ptr %180, align 8, !tbaa !186
  call void %184(ptr noundef %185) #23
  br label %186

186:                                              ; preds = %183, %178
  %187 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %187(ptr noundef %1) #23
  br i1 %10, label %192, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %190 = load i32, ptr %189, align 8, !tbaa !159
  %191 = or i32 %190, 2
  store i32 %191, ptr %189, align 8, !tbaa !159
  br label %192

192:                                              ; preds = %188, %186
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeFreeTree_ex(ptr noundef %0, i8 zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %114, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !52
  switch i32 %10, label %13 [
    i32 0, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %8
  tail call void @ntreeShaderEndExecTree(ptr noundef nonnull %6) #23
  br label %13

12:                                               ; preds = %8
  tail call void @ntreeTexEndExecTree(ptr noundef nonnull %6) #23
  store ptr null, ptr %5, align 8, !tbaa !202
  br label %13

13:                                               ; preds = %11, %12, %8, %4
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !238
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %18, %33
  %23 = phi ptr [ %34, %33 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !73
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !90
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %29, i8 zeroext poison)
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %32(ptr noundef nonnull %29) #23
  br label %33

33:                                               ; preds = %31, %27, %22
  %34 = load ptr, ptr %23, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !245

36:                                               ; preds = %33, %18, %13
  %37 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !219
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %38) #23
  store ptr null, ptr %37, align 8, !tbaa !219
  br label %41

41:                                               ; preds = %36, %40
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #23
  %42 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !201
  tail call void @id_us_min(ptr noundef %43) #23
  %44 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_freelistN(ptr noundef nonnull %44) #23
  %45 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !246
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %41, %48
  %49 = phi ptr [ %50, %48 ], [ %46, %41 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !247
  tail call fastcc void @node_free_node_ex(ptr noundef nonnull %0, ptr noundef nonnull %49, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %48, !llvm.loop !248

52:                                               ; preds = %48, %41
  %53 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %54 = load ptr, ptr %53, align 8, !tbaa !249
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %52, %71
  %57 = phi ptr [ %58, %71 ], [ %54, %52 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !166
  %59 = getelementptr inbounds %struct.bNodeSocket, ptr %57, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !161
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  tail call void @IDP_FreeProperty(ptr noundef nonnull %60) #23
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %64 = load ptr, ptr %59, align 8, !tbaa !161
  tail call void %63(ptr noundef %64) #23
  br label %65

65:                                               ; preds = %62, %56
  %66 = getelementptr inbounds %struct.bNodeSocket, ptr %57, i64 0, i32 15
  %67 = load ptr, ptr %66, align 8, !tbaa !62
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %70(ptr noundef nonnull %67) #23
  br label %71

71:                                               ; preds = %65, %69
  %72 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %72(ptr noundef nonnull %57) #23
  %73 = icmp eq ptr %58, null
  br i1 %73, label %74, label %56, !llvm.loop !250

74:                                               ; preds = %71, %52
  %75 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %76 = load ptr, ptr %75, align 8, !tbaa !251
  %77 = icmp eq ptr %76, null
  br i1 %77, label %96, label %78

78:                                               ; preds = %74, %93
  %79 = phi ptr [ %80, %93 ], [ %76, %74 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !166
  %81 = getelementptr inbounds %struct.bNodeSocket, ptr %79, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !161
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  tail call void @IDP_FreeProperty(ptr noundef nonnull %82) #23
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %86 = load ptr, ptr %81, align 8, !tbaa !161
  tail call void %85(ptr noundef %86) #23
  br label %87

87:                                               ; preds = %84, %78
  %88 = getelementptr inbounds %struct.bNodeSocket, ptr %79, i64 0, i32 15
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %92(ptr noundef nonnull %89) #23
  br label %93

93:                                               ; preds = %87, %91
  %94 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %94(ptr noundef nonnull %79) #23
  %95 = icmp eq ptr %80, null
  br i1 %95, label %96, label %78, !llvm.loop !252

96:                                               ; preds = %93, %74
  %97 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %98 = load ptr, ptr %97, align 8, !tbaa !208
  %99 = icmp eq ptr %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %98, align 8, !tbaa !209
  tail call void @BLI_ghash_free(ptr noundef %101, ptr noundef null, ptr noundef nonnull @BKE_node_preview_free) #23
  %102 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %102(ptr noundef nonnull %98) #23
  br label %103

103:                                              ; preds = %100, %96
  %104 = load ptr, ptr @G, align 8, !tbaa !91
  %105 = getelementptr inbounds %struct.Main, ptr %104, i64 0, i32 35
  br label %106

106:                                              ; preds = %106, %103
  %107 = phi ptr [ %105, %103 ], [ %108, %106 ]
  %108 = load ptr, ptr %107, align 8, !tbaa !47
  %109 = icmp eq ptr %108, null
  %110 = icmp eq ptr %108, %0
  %111 = or i1 %109, %110
  br i1 %111, label %112, label %106, !llvm.loop !253

112:                                              ; preds = %106
  br i1 %109, label %113, label %114

113:                                              ; preds = %112
  tail call void @BKE_libblock_free_data(ptr noundef %104, ptr noundef nonnull %0) #23
  br label %114

114:                                              ; preds = %112, %113, %2
  ret void
}

declare void @ntreeShaderEndExecTree(ptr noundef) local_unnamed_addr #2

declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeInterfaceTypeFree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %3) #23
  store ptr null, ptr %2, align 8, !tbaa !219
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BKE_libblock_free_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeFreeTree(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ntreeFreeTree_ex(ptr noundef %0, i8 zeroext poison)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeFreeCache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.bNodeTreeType, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !254
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef nonnull %0) #23
  br label %10

10:                                               ; preds = %1, %9, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ntreeSetOutput(ptr nocapture noundef readonly %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %109, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  br label %7

7:                                                ; preds = %5, %106
  %8 = phi ptr [ %3, %5 ], [ %107, %106 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct.bNodeType, ptr %10, i64 0, i32 14
  %12 = load i16, ptr %11, align 4, !tbaa !255
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %72

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !73
  %17 = icmp eq i16 %16, 223
  br i1 %17, label %106, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %64, label %21

21:                                               ; preds = %18, %60
  %22 = phi ptr [ %62, %60 ], [ %19, %18 ]
  %23 = phi i32 [ %61, %60 ], [ 0, %18 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.bNodeType, ptr %25, i64 0, i32 14
  %27 = load i16, ptr %26, align 4, !tbaa !255
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %60

29:                                               ; preds = %21
  %30 = load i32, ptr %6, align 8, !tbaa !52
  %31 = icmp eq i32 %30, 1
  %32 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %33 = load i16, ptr %32, align 4, !tbaa !73
  %34 = icmp eq i16 %33, %16
  br i1 %31, label %35, label %46

35:                                               ; preds = %29
  br i1 %34, label %38, label %36

36:                                               ; preds = %35
  switch i16 %33, label %60 [
    i16 201, label %37
    i16 240, label %37
  ]

37:                                               ; preds = %36, %36
  switch i16 %16, label %60 [
    i16 201, label %38
    i16 240, label %38
  ]

38:                                               ; preds = %37, %37, %35
  %39 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !67
  %41 = and i32 %40, 64
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = add nsw i32 %23, 1
  %45 = icmp sgt i32 %23, 0
  br i1 %45, label %55, label %60

46:                                               ; preds = %29
  br i1 %34, label %47, label %60

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !67
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = add nsw i32 %23, 1
  %54 = icmp sgt i32 %23, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52, %43
  %56 = phi i32 [ %40, %43 ], [ %49, %52 ]
  %57 = phi ptr [ %39, %43 ], [ %48, %52 ]
  %58 = phi i32 [ %44, %43 ], [ %53, %52 ]
  %59 = and i32 %56, -65
  store i32 %59, ptr %57, align 8, !tbaa !67
  br label %60

60:                                               ; preds = %55, %37, %36, %21, %46, %52, %47, %43, %38
  %61 = phi i32 [ %44, %43 ], [ %23, %38 ], [ %53, %52 ], [ %23, %47 ], [ %23, %46 ], [ %23, %21 ], [ %23, %36 ], [ %23, %37 ], [ %58, %55 ]
  %62 = load ptr, ptr %22, align 8, !tbaa !47
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %21, !llvm.loop !256

64:                                               ; preds = %60, %18
  %65 = phi i32 [ 0, %18 ], [ %61, %60 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !67
  %70 = or i32 %69, 64
  store i32 %70, ptr %68, align 8, !tbaa !67
  br label %71

71:                                               ; preds = %64, %67
  br i1 %17, label %106, label %72

72:                                               ; preds = %71, %7
  %73 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %74 = load i16, ptr %73, align 4, !tbaa !73
  %75 = icmp eq i16 %74, 8
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = load ptr, ptr %2, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %99, label %79

79:                                               ; preds = %76, %95
  %80 = phi ptr [ %97, %95 ], [ %77, %76 ]
  %81 = phi i32 [ %96, %95 ], [ 0, %76 ]
  %82 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 8
  %83 = load i16, ptr %82, align 4, !tbaa !73
  %84 = icmp eq i16 %83, 8
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !67
  %88 = and i32 %87, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = add nsw i32 %81, 1
  %92 = icmp sgt i32 %81, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = and i32 %87, -65
  store i32 %94, ptr %86, align 8, !tbaa !67
  br label %95

95:                                               ; preds = %79, %90, %93, %85
  %96 = phi i32 [ %91, %93 ], [ %91, %90 ], [ %81, %85 ], [ %81, %79 ]
  %97 = load ptr, ptr %80, align 8, !tbaa !47
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %79, !llvm.loop !257

99:                                               ; preds = %95, %76
  %100 = phi i32 [ 0, %76 ], [ %96, %95 ]
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !67
  %105 = or i32 %104, 64
  store i32 %105, ptr %103, align 8, !tbaa !67
  br label %106

106:                                              ; preds = %14, %99, %102, %71, %72
  %107 = load ptr, ptr %8, align 8, !tbaa !47
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %7, !llvm.loop !258

109:                                              ; preds = %106, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @ntreeFromID(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !180
  switch i16 %3, label %19 [
    i16 16717, label %4
    i16 16716, label %6
    i16 20311, label %8
    i16 17748, label %10
    i16 17235, label %12
    i16 21324, label %14
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Material, ptr %0, i64 0, i32 103
  br label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 74
  br label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.World, ptr %0, i64 0, i32 75
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.Tex, ptr %0, i64 0, i32 52
  br label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 18
  br label %16

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %0, i64 0, i32 40
  br label %16

16:                                               ; preds = %4, %6, %8, %10, %12, %14
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi ptr [ null, %1 ], [ %18, %16 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeMakeLocal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !91
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  %5 = icmp eq ptr %4, null
  br i1 %5, label %226, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !259
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %225, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  %19 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  br label %25

25:                                               ; preds = %112, %10
  %26 = phi ptr [ %24, %10 ], [ %77, %112 ]
  %27 = phi ptr [ %22, %10 ], [ %78, %112 ]
  %28 = phi ptr [ %20, %10 ], [ %79, %112 ]
  %29 = phi ptr [ %18, %10 ], [ %80, %112 ]
  %30 = phi ptr [ %16, %10 ], [ %81, %112 ]
  %31 = phi ptr [ %14, %10 ], [ %82, %112 ]
  %32 = phi ptr [ %12, %10 ], [ %83, %112 ]
  %33 = phi ptr [ undef, %10 ], [ %84, %112 ]
  %34 = phi ptr [ undef, %10 ], [ %85, %112 ]
  %35 = phi i8 [ 0, %10 ], [ %113, %112 ]
  %36 = phi i8 [ 0, %10 ], [ %114, %112 ]
  %37 = icmp eq ptr %32, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = load ptr, ptr %32, align 8, !tbaa !102
  br label %76

40:                                               ; preds = %25
  %41 = icmp eq ptr %31, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.Scene, ptr %31, i64 0, i32 18
  %44 = load ptr, ptr %43, align 8, !tbaa !103
  %45 = load ptr, ptr %31, align 8, !tbaa !121
  br label %76

46:                                               ; preds = %40
  %47 = icmp eq ptr %30, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 103
  %50 = load ptr, ptr %49, align 8, !tbaa !122
  %51 = load ptr, ptr %30, align 8, !tbaa !126
  br label %76

52:                                               ; preds = %46
  %53 = icmp eq ptr %29, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.Tex, ptr %29, i64 0, i32 52
  %56 = load ptr, ptr %55, align 8, !tbaa !127
  %57 = load ptr, ptr %29, align 8, !tbaa !130
  br label %76

58:                                               ; preds = %52
  %59 = icmp eq ptr %28, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.Lamp, ptr %28, i64 0, i32 74
  %62 = load ptr, ptr %61, align 8, !tbaa !131
  %63 = load ptr, ptr %28, align 8, !tbaa !133
  br label %76

64:                                               ; preds = %58
  %65 = icmp eq ptr %27, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.World, ptr %27, i64 0, i32 75
  %68 = load ptr, ptr %67, align 8, !tbaa !134
  %69 = load ptr, ptr %27, align 8, !tbaa !136
  br label %76

70:                                               ; preds = %64
  %71 = icmp eq ptr %26, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %26, i64 0, i32 40
  %74 = load ptr, ptr %73, align 8, !tbaa !137
  %75 = load ptr, ptr %26, align 8, !tbaa !139
  br label %76

76:                                               ; preds = %38, %42, %48, %54, %60, %66, %70, %72
  %77 = phi ptr [ %26, %70 ], [ %75, %72 ], [ %26, %66 ], [ %26, %60 ], [ %26, %54 ], [ %26, %48 ], [ %26, %42 ], [ %26, %38 ]
  %78 = phi ptr [ %27, %70 ], [ %27, %72 ], [ %69, %66 ], [ %27, %60 ], [ %27, %54 ], [ %27, %48 ], [ %27, %42 ], [ %27, %38 ]
  %79 = phi ptr [ %28, %70 ], [ %28, %72 ], [ %28, %66 ], [ %63, %60 ], [ %28, %54 ], [ %28, %48 ], [ %28, %42 ], [ %28, %38 ]
  %80 = phi ptr [ %29, %70 ], [ %29, %72 ], [ %29, %66 ], [ %29, %60 ], [ %57, %54 ], [ %29, %48 ], [ %29, %42 ], [ %29, %38 ]
  %81 = phi ptr [ %30, %70 ], [ %30, %72 ], [ %30, %66 ], [ %30, %60 ], [ %30, %54 ], [ %51, %48 ], [ %30, %42 ], [ %30, %38 ]
  %82 = phi ptr [ %31, %70 ], [ %31, %72 ], [ %31, %66 ], [ %31, %60 ], [ %31, %54 ], [ %31, %48 ], [ %45, %42 ], [ %31, %38 ]
  %83 = phi ptr [ %32, %70 ], [ %32, %72 ], [ %32, %66 ], [ %32, %60 ], [ %32, %54 ], [ %32, %48 ], [ %32, %42 ], [ %39, %38 ]
  %84 = phi ptr [ %33, %70 ], [ %74, %72 ], [ %68, %66 ], [ %62, %60 ], [ %56, %54 ], [ %50, %48 ], [ %44, %42 ], [ %32, %38 ]
  %85 = phi ptr [ %34, %70 ], [ %26, %72 ], [ %27, %66 ], [ %28, %60 ], [ %29, %54 ], [ %30, %48 ], [ %31, %42 ], [ %32, %38 ]
  %86 = phi i1 [ true, %70 ], [ false, %72 ], [ false, %66 ], [ false, %60 ], [ false, %54 ], [ false, %48 ], [ false, %42 ], [ false, %38 ]
  br i1 %86, label %115, label %87

87:                                               ; preds = %76
  %88 = icmp eq ptr %84, null
  br i1 %88, label %112, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.bNodeTree, ptr %84, i64 0, i32 7
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  br i1 %92, label %112, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ID, ptr %85, i64 0, i32 3
  br label %95

95:                                               ; preds = %93, %107
  %96 = phi ptr [ %91, %93 ], [ %110, %107 ]
  %97 = phi i8 [ %36, %93 ], [ %109, %107 ]
  %98 = phi i8 [ %35, %93 ], [ %108, %107 ]
  %99 = getelementptr inbounds %struct.bNode, ptr %96, i64 0, i32 20
  %100 = load ptr, ptr %99, align 8, !tbaa !90
  %101 = icmp eq ptr %100, %0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load ptr, ptr %94, align 8, !tbaa !260
  %104 = icmp eq ptr %103, null
  %105 = select i1 %104, i8 1, i8 %98
  %106 = select i1 %104, i8 %97, i8 1
  br label %107

107:                                              ; preds = %102, %95
  %108 = phi i8 [ %98, %95 ], [ %105, %102 ]
  %109 = phi i8 [ %97, %95 ], [ %106, %102 ]
  %110 = load ptr, ptr %96, align 8, !tbaa !47
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %95, !llvm.loop !261

112:                                              ; preds = %107, %89, %87
  %113 = phi i8 [ %35, %87 ], [ %35, %89 ], [ %108, %107 ]
  %114 = phi i8 [ %36, %87 ], [ %36, %89 ], [ %109, %107 ]
  br label %25, !llvm.loop !262

115:                                              ; preds = %76
  %116 = icmp eq i8 %35, 0
  %117 = icmp ne i8 %36, 0
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %225

119:                                              ; preds = %115
  %120 = icmp ne i8 %35, 0
  %121 = select i1 %120, i1 %117, i1 false
  br i1 %121, label %122, label %226

122:                                              ; preds = %119
  %123 = tail call fastcc ptr @ntreeCopyTree_internal(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1)
  %124 = getelementptr inbounds %struct.ID, ptr %123, i64 0, i32 6
  store i32 0, ptr %124, align 4, !tbaa !259
  %125 = load ptr, ptr @G, align 8, !tbaa !91
  %126 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 35
  %127 = load ptr, ptr %126, align 8, !tbaa !93
  %128 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 11
  %129 = load ptr, ptr %128, align 8, !tbaa !96
  %130 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !97
  %132 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 18
  %133 = load ptr, ptr %132, align 8, !tbaa !98
  %134 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 21
  %135 = load ptr, ptr %134, align 8, !tbaa !99
  %136 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 25
  %137 = load ptr, ptr %136, align 8, !tbaa !100
  %138 = getelementptr inbounds %struct.Main, ptr %125, i64 0, i32 44
  %139 = load ptr, ptr %138, align 8, !tbaa !101
  br label %140

140:                                              ; preds = %224, %122
  %141 = phi ptr [ %139, %122 ], [ %190, %224 ]
  %142 = phi ptr [ %137, %122 ], [ %191, %224 ]
  %143 = phi ptr [ %135, %122 ], [ %192, %224 ]
  %144 = phi ptr [ %133, %122 ], [ %193, %224 ]
  %145 = phi ptr [ %131, %122 ], [ %194, %224 ]
  %146 = phi ptr [ %129, %122 ], [ %195, %224 ]
  %147 = phi ptr [ %127, %122 ], [ %196, %224 ]
  %148 = phi ptr [ undef, %122 ], [ %197, %224 ]
  %149 = phi ptr [ undef, %122 ], [ %198, %224 ]
  %150 = icmp eq ptr %147, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  %152 = load ptr, ptr %147, align 8, !tbaa !102
  br label %189

153:                                              ; preds = %140
  %154 = icmp eq ptr %146, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds %struct.Scene, ptr %146, i64 0, i32 18
  %157 = load ptr, ptr %156, align 8, !tbaa !103
  %158 = load ptr, ptr %146, align 8, !tbaa !121
  br label %189

159:                                              ; preds = %153
  %160 = icmp eq ptr %145, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.Material, ptr %145, i64 0, i32 103
  %163 = load ptr, ptr %162, align 8, !tbaa !122
  %164 = load ptr, ptr %145, align 8, !tbaa !126
  br label %189

165:                                              ; preds = %159
  %166 = icmp eq ptr %144, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.Tex, ptr %144, i64 0, i32 52
  %169 = load ptr, ptr %168, align 8, !tbaa !127
  %170 = load ptr, ptr %144, align 8, !tbaa !130
  br label %189

171:                                              ; preds = %165
  %172 = icmp eq ptr %143, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.Lamp, ptr %143, i64 0, i32 74
  %175 = load ptr, ptr %174, align 8, !tbaa !131
  %176 = load ptr, ptr %143, align 8, !tbaa !133
  br label %189

177:                                              ; preds = %171
  %178 = icmp eq ptr %142, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.World, ptr %142, i64 0, i32 75
  %181 = load ptr, ptr %180, align 8, !tbaa !134
  %182 = load ptr, ptr %142, align 8, !tbaa !136
  br label %189

183:                                              ; preds = %177
  %184 = icmp eq ptr %141, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %141, i64 0, i32 40
  %187 = load ptr, ptr %186, align 8, !tbaa !137
  %188 = load ptr, ptr %141, align 8, !tbaa !139
  br label %189

189:                                              ; preds = %151, %155, %161, %167, %173, %179, %183, %185
  %190 = phi ptr [ %141, %183 ], [ %188, %185 ], [ %141, %179 ], [ %141, %173 ], [ %141, %167 ], [ %141, %161 ], [ %141, %155 ], [ %141, %151 ]
  %191 = phi ptr [ %142, %183 ], [ %142, %185 ], [ %182, %179 ], [ %142, %173 ], [ %142, %167 ], [ %142, %161 ], [ %142, %155 ], [ %142, %151 ]
  %192 = phi ptr [ %143, %183 ], [ %143, %185 ], [ %143, %179 ], [ %176, %173 ], [ %143, %167 ], [ %143, %161 ], [ %143, %155 ], [ %143, %151 ]
  %193 = phi ptr [ %144, %183 ], [ %144, %185 ], [ %144, %179 ], [ %144, %173 ], [ %170, %167 ], [ %144, %161 ], [ %144, %155 ], [ %144, %151 ]
  %194 = phi ptr [ %145, %183 ], [ %145, %185 ], [ %145, %179 ], [ %145, %173 ], [ %145, %167 ], [ %164, %161 ], [ %145, %155 ], [ %145, %151 ]
  %195 = phi ptr [ %146, %183 ], [ %146, %185 ], [ %146, %179 ], [ %146, %173 ], [ %146, %167 ], [ %146, %161 ], [ %158, %155 ], [ %146, %151 ]
  %196 = phi ptr [ %147, %183 ], [ %147, %185 ], [ %147, %179 ], [ %147, %173 ], [ %147, %167 ], [ %147, %161 ], [ %147, %155 ], [ %152, %151 ]
  %197 = phi ptr [ %148, %183 ], [ %187, %185 ], [ %181, %179 ], [ %175, %173 ], [ %169, %167 ], [ %163, %161 ], [ %157, %155 ], [ %147, %151 ]
  %198 = phi ptr [ %149, %183 ], [ %141, %185 ], [ %142, %179 ], [ %143, %173 ], [ %144, %167 ], [ %145, %161 ], [ %146, %155 ], [ %147, %151 ]
  %199 = phi i1 [ true, %183 ], [ false, %185 ], [ false, %179 ], [ false, %173 ], [ false, %167 ], [ false, %161 ], [ false, %155 ], [ false, %151 ]
  br i1 %199, label %226, label %200

200:                                              ; preds = %189
  %201 = icmp eq ptr %197, null
  br i1 %201, label %224, label %202

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.bNodeTree, ptr %197, i64 0, i32 7
  %204 = load ptr, ptr %203, align 8, !tbaa !47
  %205 = icmp eq ptr %204, null
  br i1 %205, label %224, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.ID, ptr %198, i64 0, i32 3
  br label %208

208:                                              ; preds = %206, %221
  %209 = phi ptr [ %204, %206 ], [ %222, %221 ]
  %210 = getelementptr inbounds %struct.bNode, ptr %209, i64 0, i32 20
  %211 = load ptr, ptr %210, align 8, !tbaa !90
  %212 = icmp eq ptr %211, %0
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load ptr, ptr %207, align 8, !tbaa !260
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  store ptr %123, ptr %210, align 8, !tbaa !90
  %217 = load i32, ptr %124, align 4, !tbaa !259
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %124, align 4, !tbaa !259
  %219 = load i32, ptr %7, align 4, !tbaa !259
  %220 = add nsw i32 %219, -1
  store i32 %220, ptr %7, align 4, !tbaa !259
  br label %221

221:                                              ; preds = %208, %216, %213
  %222 = load ptr, ptr %209, align 8, !tbaa !47
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %208, !llvm.loop !263

224:                                              ; preds = %221, %202, %200
  br label %140, !llvm.loop !264

225:                                              ; preds = %115, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #23
  br label %226

226:                                              ; preds = %189, %225, %119, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_node_tree_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 35
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  store ptr %4, ptr %0, align 8, !tbaa !265
  %5 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !267
  %8 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !268
  %11 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !269
  %14 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !270
  %17 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !100
  %19 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !271
  %20 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 44
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !272
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_node_tree_iter_step(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #16 {
  %4 = load ptr, ptr %0, align 8, !tbaa !265
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !267
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 18
  br label %42

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !268
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 103
  br label %42

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !269
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 52
  br label %42

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !270
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Lamp, ptr %26, i64 0, i32 74
  br label %42

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !271
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.World, ptr %32, i64 0, i32 75
  br label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !272
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %38, i64 0, i32 40
  br label %42

42:                                               ; preds = %16, %28, %40, %34, %22, %10
  %43 = phi ptr [ %11, %10 ], [ %23, %22 ], [ %35, %34 ], [ %41, %40 ], [ %29, %28 ], [ %17, %16 ]
  %44 = phi ptr [ %7, %10 ], [ %19, %22 ], [ %31, %34 ], [ %37, %40 ], [ %25, %28 ], [ %13, %16 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !47
  br label %46

46:                                               ; preds = %42, %3
  %47 = phi ptr [ %4, %3 ], [ %45, %42 ]
  %48 = phi ptr [ %0, %3 ], [ %44, %42 ]
  store ptr %47, ptr %1, align 8, !tbaa !47
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  store ptr %49, ptr %2, align 8, !tbaa !47
  %50 = load ptr, ptr %48, align 8, !tbaa !47
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  store ptr %51, ptr %48, align 8, !tbaa !47
  br label %52

52:                                               ; preds = %46, %36
  %53 = phi i8 [ 0, %36 ], [ 1, %46 ]
  ret i8 %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ntreeNodeExists(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %4, !llvm.loop !273

10:                                               ; preds = %4, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ntreeOutputExists(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %4, !llvm.loop !274

10:                                               ; preds = %4, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeLocalize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %68, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !275
  %8 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !277
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %7, %6 ], [ null, %3 ]
  %12 = phi ptr [ %9, %6 ], [ null, %3 ]
  %13 = tail call fastcc ptr @ntreeCopyTree_internal(ptr noundef nonnull %0, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !238
  %16 = or i32 %15, 32
  store i32 %16, ptr %14, align 4, !tbaa !238
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %10, %31
  %21 = phi ptr [ %32, %31 ], [ %18, %10 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !73
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @ntreeLocalize(ptr noundef nonnull %27)
  store ptr %30, ptr %26, align 8, !tbaa !90
  br label %31

31:                                               ; preds = %20, %25, %29
  %32 = load ptr, ptr %21, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %20, !llvm.loop !278

34:                                               ; preds = %31, %10
  br i1 %5, label %50, label %35

35:                                               ; preds = %34
  %36 = tail call ptr @BKE_animdata_from_id(ptr noundef %13) #23
  store ptr %11, ptr %36, align 8, !tbaa !275
  store ptr %11, ptr %4, align 8, !tbaa !275
  %37 = getelementptr inbounds %struct.AnimData, ptr %36, i64 0, i32 1
  store ptr %12, ptr %37, align 8, !tbaa !277
  %38 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 1
  store ptr %12, ptr %38, align 8, !tbaa !277
  %39 = icmp eq ptr %11, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !279
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !279
  br label %44

44:                                               ; preds = %40, %35
  %45 = icmp eq ptr %12, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !279
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !279
  br label %50

50:                                               ; preds = %44, %46, %34
  tail call void @ntreeSetOutput(ptr noundef nonnull %0)
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %59, %54 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.bNode, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !189
  %58 = getelementptr inbounds %struct.bNode, ptr %57, i64 0, i32 2
  store ptr %55, ptr %58, align 8, !tbaa !189
  %59 = load ptr, ptr %55, align 8, !tbaa !47
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %54, !llvm.loop !281

61:                                               ; preds = %54, %50
  %62 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = getelementptr inbounds %struct.bNodeTreeType, ptr %63, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !282
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  tail call void %65(ptr noundef %13, ptr noundef nonnull %0) #23
  br label %68

68:                                               ; preds = %1, %61, %67
  %69 = phi ptr [ %13, %67 ], [ %13, %61 ], [ null, %1 ]
  ret ptr %69
}

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeLocalSync(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.bNodeTreeType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !283
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %13

13:                                               ; preds = %6, %12, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeLocalMerge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.bNodeTreeType, ptr %8, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !284
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %13

13:                                               ; preds = %12, %6
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %0, i8 zeroext poison)
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %14(ptr noundef nonnull %0) #23
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ntreeFindSocketInterface(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %1, 1
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %7 = select i1 %4, ptr %5, ptr %6
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 4
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8, !llvm.loop !285

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %10, %12 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeAddSocketInterface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @make_socket_interface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  switch i32 %1, label %16 [
    i32 1, label %6
    i32 2, label %8
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  br label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  br label %10

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = phi i32 [ 16, %6 ], [ 32, %8 ]
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %5) #23
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !159
  %15 = or i32 %14, %12
  store i32 %15, ptr %13, align 8, !tbaa !159
  br label %16

16:                                               ; preds = %10, %4
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_socket_interface(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i8, ptr %2, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %9 = tail call ptr @BLI_ghash_lookup(ptr noundef %8, ptr noundef nonnull %2) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %4
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi ptr [ null, %11 ], [ %9, %7 ]
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 11
  %15 = load i32, ptr %14, align 8, !tbaa !286
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !286
  %17 = icmp eq ptr %13, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %20 = tail call ptr %19(i64 noundef 352, ptr noundef nonnull @.str.268) #23
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 12
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef nonnull %13, i64 noundef 64) #23
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 11
  store ptr %13, ptr %23, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.bNodeSocketType, ptr %13, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 7
  store i16 %26, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  tail call void @node_socket_init_default_value(ptr noundef %20) #23
  br label %32

32:                                               ; preds = %18, %31
  %33 = trunc i32 %1 to i16
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 10
  store i16 %33, ptr %34, align 2, !tbaa !149
  store i16 -1, ptr %27, align 8, !tbaa !61
  %35 = load i32, ptr %14, align 8, !tbaa !286
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %14, align 8, !tbaa !286
  %37 = icmp eq i32 %1, 1
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 4
  %39 = select i1 %37, ptr @.str.269, ptr @.str.270
  %40 = select i1 %37, i16 1, i16 4095
  %41 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %38, i64 noundef 64, ptr noundef nonnull %39, i32 noundef %35) #23
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 20
  store i32 %35, ptr %42, align 8, !tbaa !287
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 9
  store i16 %40, ptr %43, align 4, !tbaa !150
  %44 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 5
  %45 = tail call ptr @BLI_strncpy(ptr noundef nonnull %44, ptr noundef %3, i64 noundef 64) #23
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 6
  store ptr null, ptr %46, align 8, !tbaa !151
  %47 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 8
  %48 = load i16, ptr %47, align 2, !tbaa !152
  %49 = or i16 %48, 64
  store i16 %49, ptr %47, align 2, !tbaa !152
  br label %50

50:                                               ; preds = %12, %32
  %51 = phi ptr [ %20, %32 ], [ null, %12 ]
  ret ptr %51
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeInsertSocketInterface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @make_socket_interface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %4)
  switch i32 %1, label %17 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  br label %11

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = phi i32 [ 16, %7 ], [ 32, %9 ]
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %12, ptr noundef %3, ptr noundef %6) #23
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !159
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 8, !tbaa !159
  br label %17

17:                                               ; preds = %11, %5
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !149
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 12
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 5
  %9 = tail call fastcc ptr @make_socket_interface(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  switch i16 %5, label %20 [
    i16 1, label %10
    i16 2, label %12
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  br label %14

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ]
  %16 = phi i32 [ 32, %12 ], [ 16, %10 ]
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %9) #23
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !159
  %19 = or i32 %18, %16
  store i32 %19, ptr %17, align 8, !tbaa !159
  br label %20

20:                                               ; preds = %14, %3
  %21 = icmp eq ptr %9, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.bNodeSocketType, ptr %24, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !288
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  tail call void %26(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2) #23
  br label %29

29:                                               ; preds = %22, %28, %20
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeInsertSocketInterfaceFromSocket(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !149
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 12
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 5
  %10 = tail call fastcc ptr @make_socket_interface(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  switch i16 %6, label %21 [
    i16 1, label %11
    i16 2, label %13
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  br label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ]
  %17 = phi i32 [ 32, %13 ], [ 16, %11 ]
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %16, ptr noundef %1, ptr noundef %10) #23
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !159
  %20 = or i32 %19, %17
  store i32 %20, ptr %18, align 8, !tbaa !159
  br label %21

21:                                               ; preds = %15, %4
  %22 = icmp eq ptr %10, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds %struct.bNodeSocketType, ptr %25, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !288
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void %27(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %2, ptr noundef %3) #23
  br label %30

30:                                               ; preds = %23, %29, %21
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeRemoveSocketInterface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #23
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #23
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @IDP_FreeProperty(ptr noundef nonnull %6) #23
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %10 = load ptr, ptr %5, align 8, !tbaa !161
  tail call void %9(ptr noundef %10) #23
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %16(ptr noundef nonnull %13) #23
  br label %17

17:                                               ; preds = %11, %15
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %18(ptr noundef %1) #23
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !159
  %21 = or i32 %20, 48
  store i32 %21, ptr %19, align 8, !tbaa !159
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ntreeInterfaceTypeGet(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [130 x i8], align 16
  %4 = alloca [130 x i8], align 16
  %5 = alloca [130 x i8], align 16
  %6 = alloca [130 x i8], align 16
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %6) #23
  %11 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.271, ptr noundef nonnull %11) #23
  call void @RNA_identifier_sanitize(ptr noundef nonnull %3, i32 noundef 0) #23
  %13 = call ptr @RNA_struct_identifier(ptr noundef nonnull %8) #23
  %14 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 130) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  store i8 0, ptr %4, align 16, !tbaa !46
  %17 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @ntree_interface_unique_identifier_check, ptr noundef null, ptr noundef nonnull %3, i8 noundef zeroext 95, ptr noundef nonnull %4, i32 noundef 130) #23
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.272, ptr noundef nonnull %11) #23
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.273, ptr noundef nonnull %11) #23
  call void @RNA_def_struct_free_pointers(ptr noundef nonnull %8) #23
  call void @RNA_def_struct_identifier(ptr noundef nonnull %8, ptr noundef nonnull %4) #23
  call void @RNA_def_struct_ui_text(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  call void @RNA_def_struct_duplicate_pointers(ptr noundef nonnull %8) #23
  br label %20

20:                                               ; preds = %16, %10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #23
  br label %24

21:                                               ; preds = %2
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call fastcc void @ntree_interface_type_create(ptr noundef %0)
  br label %24

24:                                               ; preds = %21, %23, %20
  %25 = load ptr, ptr %7, align 8, !tbaa !219
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #2

declare void @RNA_def_struct_free_pointers(ptr noundef) local_unnamed_addr #2

declare void @RNA_def_struct_identifier(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_struct_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_struct_duplicate_pointers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ntree_interface_type_create(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [130 x i8], align 16
  %3 = alloca [130 x i8], align 16
  %4 = alloca [130 x i8], align 16
  %5 = alloca [130 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #23
  %6 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.271, ptr noundef nonnull %6) #23
  call void @RNA_identifier_sanitize(ptr noundef nonnull %2, i32 noundef 0) #23
  store i8 0, ptr %3, align 16, !tbaa !46
  %8 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @ntree_interface_unique_identifier_check, ptr noundef null, ptr noundef nonnull %2, i8 noundef zeroext 95, ptr noundef nonnull %3, i32 noundef 130) #23
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.272, ptr noundef nonnull %6) #23
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.273, ptr noundef nonnull %6) #23
  %11 = call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %3, ptr noundef nonnull @RNA_PropertyGroup) #23
  call void @RNA_def_struct_ui_text(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  call void @RNA_def_struct_duplicate_pointers(ptr noundef %11) #23
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !219
  call void @RNA_struct_blender_type_set(ptr noundef %11, ptr noundef %0) #23
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %1, %26
  %17 = phi ptr [ %27, %26 ], [ %14, %1 ]
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bNodeSocketType, ptr %19, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !289
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void %23(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %11) #23
  br label %26

26:                                               ; preds = %25, %21, %16
  %27 = load ptr, ptr %17, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %16, !llvm.loop !290

29:                                               ; preds = %26, %1
  %30 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %29, %43
  %34 = phi ptr [ %44, %43 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %34, i64 0, i32 11
  %36 = load ptr, ptr %35, align 8, !tbaa !56
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.bNodeSocketType, ptr %36, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !289
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call void %40(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %11) #23
  br label %43

43:                                               ; preds = %42, %38, %33
  %44 = load ptr, ptr %34, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %33, !llvm.loop !291

46:                                               ; preds = %43, %29
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %2) #23
  ret void
}

declare void @RNA_struct_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ntreeInterfaceTypeUpdate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %3) #23
  store ptr null, ptr %2, align 8, !tbaa !219
  br label %6

6:                                                ; preds = %1, %5
  tail call fastcc void @ntree_interface_type_create(ptr noundef %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ntreeHasType(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !73
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %6, !llvm.loop !292

15:                                               ; preds = %6, %10, %2
  %16 = phi i8 [ 0, %2 ], [ 1, %10 ], [ 0, %6 ]
  ret i8 %16
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ntreeHasTree(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #17 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4, %20
  %9 = phi ptr [ %21, %20 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  %11 = load i16, ptr %10, align 4, !tbaa !73
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @ntreeHasTree(ptr noundef nonnull %15, ptr noundef %1), !range !293
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %8, %13, %17
  %21 = load ptr, ptr %9, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !294

23:                                               ; preds = %17, %20, %4, %2
  %24 = phi i8 [ 1, %2 ], [ 0, %4 ], [ 0, %20 ], [ 1, %17 ]
  ret i8 %24
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeFindLink(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %22
  %8 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !157
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %7
  %17 = icmp eq ptr %10, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !157
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %18
  %23 = load ptr, ptr %8, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !295

25:                                               ; preds = %12, %18, %22, %3
  %26 = phi ptr [ null, %3 ], [ %8, %12 ], [ %8, %18 ], [ null, %22 ]
  ret ptr %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @nodeCountSocketLinks(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !157
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %6
  %17 = add nsw i32 %8, 1
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi i32 [ %17, %16 ], [ %8, %12 ]
  %20 = load ptr, ptr %7, align 8, !tbaa !47
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !296

22:                                               ; preds = %18, %2
  %23 = phi i32 [ 0, %2 ], [ %19, %18 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeGetActive(ptr noundef readonly %0) local_unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !297

14:                                               ; preds = %5, %9, %1
  %15 = phi ptr [ null, %1 ], [ %7, %9 ], [ %7, %5 ]
  ret ptr %15
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeGetActiveID(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #17 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 8
  %7 = tail call fastcc ptr @node_get_active_id_recursive(i32 %6, i32 5381, ptr noundef nonnull %0, i16 noundef signext %1)
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @node_get_active_id_recursive(i32 %0, i32 %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #17 {
  %5 = icmp eq i32 %1, %0
  %6 = icmp eq i32 %0, 0
  %7 = or i1 %6, %5
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %7, label %11, label %31

11:                                               ; preds = %4
  br i1 %10, label %90, label %12

12:                                               ; preds = %11, %27
  %13 = phi i1 [ %29, %27 ], [ %10, %11 ]
  %14 = phi ptr [ %28, %27 ], [ %9, %11 ]
  %15 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !90
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !180
  %21 = icmp eq i16 %20, %3
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !67
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %12, %18, %22
  %28 = load ptr, ptr %14, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %90, label %12, !llvm.loop !298

30:                                               ; preds = %22
  br i1 %13, label %90, label %91

31:                                               ; preds = %4
  br i1 %10, label %87, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  br label %34

34:                                               ; preds = %32, %83
  %35 = phi i1 [ %10, %32 ], [ %86, %83 ]
  %36 = phi ptr [ %9, %32 ], [ %85, %83 ]
  %37 = phi ptr [ undef, %32 ], [ %84, %83 ]
  %38 = getelementptr inbounds %struct.bNode, ptr %36, i64 0, i32 8
  %39 = load i16, ptr %38, align 4, !tbaa !73
  %40 = icmp eq i16 %39, 2
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.bNode, ptr %36, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = icmp eq ptr %43, null
  br i1 %44, label %80, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr %33, align 1, !tbaa !46
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %45, %48
  %49 = phi i8 [ %56, %48 ], [ %46, %45 ]
  %50 = phi i32 [ %55, %48 ], [ %1, %45 ]
  %51 = phi ptr [ %52, %48 ], [ %33, %45 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = mul i32 %50, 33
  %54 = zext i8 %49 to i32
  %55 = xor i32 %53, %54
  %56 = load i8, ptr %52, align 1, !tbaa !46
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %48, !llvm.loop !225

58:                                               ; preds = %48, %45
  %59 = phi i32 [ %1, %45 ], [ %55, %48 ]
  %60 = mul i32 %59, 33
  %61 = getelementptr inbounds %struct.bNode, ptr %36, i64 0, i32 6
  %62 = load i8, ptr %61, align 1, !tbaa !46
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %58, %64
  %65 = phi i8 [ %72, %64 ], [ %62, %58 ]
  %66 = phi i32 [ %71, %64 ], [ %60, %58 ]
  %67 = phi ptr [ %68, %64 ], [ %61, %58 ]
  %68 = getelementptr inbounds i8, ptr %67, i64 1
  %69 = mul i32 %66, 33
  %70 = zext i8 %65 to i32
  %71 = xor i32 %69, %70
  %72 = load i8, ptr %68, align 1, !tbaa !46
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %64, !llvm.loop !225

74:                                               ; preds = %64, %58
  %75 = phi i32 [ %60, %58 ], [ %71, %64 ]
  %76 = mul i32 %75, 33
  %77 = tail call fastcc ptr @node_get_active_id_recursive(i32 %0, i32 %76, ptr noundef nonnull %43, i16 noundef signext %3)
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, ptr %37, ptr %77
  br label %80

80:                                               ; preds = %74, %41
  %81 = phi i1 [ true, %41 ], [ %78, %74 ]
  %82 = phi ptr [ %37, %41 ], [ %79, %74 ]
  br i1 %81, label %83, label %87

83:                                               ; preds = %34, %80
  %84 = phi ptr [ %82, %80 ], [ %37, %34 ]
  %85 = load ptr, ptr %36, align 8, !tbaa !47
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %34, !llvm.loop !299

87:                                               ; preds = %80, %83, %31
  %88 = phi i1 [ %10, %31 ], [ %35, %80 ], [ %86, %83 ]
  %89 = phi ptr [ undef, %31 ], [ %82, %80 ], [ %84, %83 ]
  br i1 %88, label %90, label %91

90:                                               ; preds = %27, %11, %87, %30
  br label %91

91:                                               ; preds = %87, %30, %90
  %92 = phi ptr [ %14, %30 ], [ null, %90 ], [ %89, %87 ]
  ret ptr %92
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nodeSetActiveID(ptr noundef readonly %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = icmp ne ptr %2, null
  br label %15

11:                                               ; preds = %36, %5
  %12 = phi i8 [ 0, %5 ], [ %37, %36 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %57, label %40

15:                                               ; preds = %9, %36
  %16 = phi ptr [ %7, %9 ], [ %38, %36 ]
  %17 = phi i8 [ 0, %9 ], [ %37, %36 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ID, ptr %19, i64 0, i32 4
  %23 = load i16, ptr %22, align 8, !tbaa !180
  %24 = icmp eq i16 %23, %1
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = icmp eq i8 %17, 0
  %27 = select i1 %10, i1 %26, i1 false
  %28 = icmp eq ptr %19, %2
  %29 = and i1 %27, %28
  %30 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !67
  %32 = and i32 %31, -33
  %33 = select i1 %29, i32 32, i32 0
  %34 = or disjoint i32 %32, %33
  %35 = select i1 %29, i8 1, i8 %17
  store i32 %34, ptr %30, align 8, !tbaa !67
  br label %36

36:                                               ; preds = %25, %15, %21
  %37 = phi i8 [ %17, %21 ], [ %17, %15 ], [ %35, %25 ]
  %38 = load ptr, ptr %16, align 8, !tbaa !47
  %39 = icmp eq ptr %38, null
  br i1 %39, label %11, label %15, !llvm.loop !300

40:                                               ; preds = %11, %53
  %41 = phi ptr [ %55, %53 ], [ %13, %11 ]
  %42 = phi i8 [ %54, %53 ], [ %12, %11 ]
  %43 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 8
  %44 = load i16, ptr %43, align 4, !tbaa !73
  %45 = icmp eq i16 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.bNode, ptr %41, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  %49 = icmp eq i8 %42, 0
  %50 = select i1 %49, ptr %2, ptr null
  %51 = tail call zeroext i8 @nodeSetActiveID(ptr noundef %48, i16 noundef signext %1, ptr noundef %50), !range !293
  %52 = or i8 %51, %42
  br label %53

53:                                               ; preds = %40, %46
  %54 = phi i8 [ %52, %46 ], [ %42, %40 ]
  %55 = load ptr, ptr %41, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %40, !llvm.loop !301

57:                                               ; preds = %53, %11, %3
  %58 = phi i8 [ 0, %3 ], [ %12, %11 ], [ %54, %53 ]
  ret i8 %58
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeClearActiveID(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #14 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4, %21
  %9 = phi ptr [ %22, %21 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !180
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = and i32 %19, -33
  store i32 %20, ptr %18, align 8, !tbaa !67
  br label %21

21:                                               ; preds = %8, %13, %17
  %22 = load ptr, ptr %9, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !302

24:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeSetSelected(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #14 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !67
  br i1 %3, label %8, label %6

6:                                                ; preds = %2
  %7 = or i32 %5, 1
  store i32 %7, ptr %4, align 8, !tbaa !67
  br label %31

8:                                                ; preds = %2
  %9 = and i32 %5, -2
  store i32 %9, ptr %4, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !152
  %17 = and i16 %16, -2
  store i16 %17, ptr %15, align 2, !tbaa !152
  %18 = load ptr, ptr %14, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !303

20:                                               ; preds = %13, %8
  %21 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !152
  %28 = and i16 %27, -2
  store i16 %28, ptr %26, align 2, !tbaa !152
  %29 = load ptr, ptr %25, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24, !llvm.loop !304

31:                                               ; preds = %24, %20, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeClearActive(ptr noundef readonly %0) local_unnamed_addr #14 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !67
  %11 = and i32 %10, -49
  store i32 %11, ptr %9, align 8, !tbaa !67
  %12 = load ptr, ptr %8, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !305

14:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeSetActive(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 4
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.bNodeType, ptr %12, i64 0, i32 14
  %14 = load i16, ptr %13, align 4, !tbaa !255
  %15 = icmp eq i16 %14, 13
  br label %16

16:                                               ; preds = %6, %36
  %17 = phi ptr [ %4, %6 ], [ %37, %36 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = and i32 %19, -17
  store i32 %20, ptr %18, align 8, !tbaa !67
  br i1 %9, label %32, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %10, align 8, !tbaa !180
  %27 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !180
  %29 = icmp eq i16 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = and i32 %19, -49
  store i32 %31, ptr %18, align 8, !tbaa !67
  br label %32

32:                                               ; preds = %25, %30, %21, %16
  br i1 %15, label %33, label %36

33:                                               ; preds = %32
  %34 = load i32, ptr %18, align 8, !tbaa !67
  %35 = and i32 %34, -16385
  store i32 %35, ptr %18, align 8, !tbaa !67
  br label %36

36:                                               ; preds = %32, %33
  %37 = load ptr, ptr %17, align 8, !tbaa !47
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %16, !llvm.loop !306

39:                                               ; preds = %36, %2
  %40 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !67
  %42 = or i32 %41, 16
  store i32 %42, ptr %40, align 8, !tbaa !67
  %43 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !90
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = or i32 %41, 48
  store i32 %47, ptr %40, align 8, !tbaa !67
  br label %48

48:                                               ; preds = %46, %39
  %49 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = getelementptr inbounds %struct.bNodeType, ptr %50, i64 0, i32 14
  %52 = load i16, ptr %51, align 4, !tbaa !255
  %53 = icmp eq i16 %52, 13
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, ptr %40, align 8, !tbaa !67
  %56 = or i32 %55, 16384
  store i32 %56, ptr %40, align 8, !tbaa !67
  br label %57

57:                                               ; preds = %54, %48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @BKE_node_clipboard_init(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !52
  store i32 %3, ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 3), align 8, !tbaa !307
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_clipboard_clear() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2), align 8, !tbaa !309
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0, %11
  %4 = phi ptr [ %5, %11 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct.bNodeLink, ptr %4, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %7, i64 0, i32 23
  store ptr null, ptr %10, align 8, !tbaa !158
  br label %11

11:                                               ; preds = %3, %9
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %12(ptr noundef nonnull %4) #23
  %13 = icmp eq ptr %5, null
  br i1 %13, label %14, label %3, !llvm.loop !310

14:                                               ; preds = %11, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2), i8 0, i64 16, i1 false)
  %15 = load ptr, ptr @node_clipboard, align 8, !tbaa !311
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %14 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !247
  tail call fastcc void @node_free_node_ex(ptr noundef null, ptr noundef nonnull %18, i8 noundef zeroext 0, i8 noundef zeroext 0)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !312

21:                                               ; preds = %17, %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @node_clipboard, i8 0, i64 16, i1 false)
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 1)) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_node_clipboard_validate() local_unnamed_addr #0 {
  %1 = load ptr, ptr @node_clipboard, align 8, !tbaa !47
  %2 = icmp eq ptr %1, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %0, %25
  %4 = phi ptr [ %7, %25 ], [ getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 1), %0 ]
  %5 = phi ptr [ %27, %25 ], [ %1, %0 ]
  %6 = phi i8 [ %26, %25 ], [ 1, %0 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !313
  %10 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  store ptr %9, ptr %10, align 8, !tbaa !90
  %11 = icmp eq ptr %9, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr @G, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %7, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !180
  %16 = tail call ptr @which_libbase(ptr noundef %13, i16 noundef signext %15) #23
  %17 = load ptr, ptr %8, align 8, !tbaa !313
  %18 = tail call i32 @BLI_findindex(ptr noundef %16, ptr noundef %17) #23
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %7, i64 0, i32 3, i64 2
  %22 = tail call ptr @BLI_findstring(ptr noundef %16, ptr noundef nonnull %21, i32 noundef 34) #23
  store ptr %22, ptr %10, align 8, !tbaa !90
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i8 0, i8 %6
  br label %25

25:                                               ; preds = %20, %12, %3
  %26 = phi i8 [ %6, %3 ], [ %6, %12 ], [ %24, %20 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %3, !llvm.loop !315

29:                                               ; preds = %25, %0
  %30 = phi i8 [ 1, %0 ], [ %26, %25 ]
  ret i8 %30
}

declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_clipboard_add_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %3 = tail call ptr %2(i64 noundef 1120, ptr noundef nonnull @.str.52) #23
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !313
  %7 = icmp eq ptr %5, null
  %8 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 3
  br i1 %7, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 66) #23
  %12 = load ptr, ptr %4, align 8, !tbaa !90
  %13 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !260
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 4
  br i1 %15, label %20, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Library, ptr %14, i64 0, i32 4
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %18, i64 noundef 1024) #23
  br label %23

20:                                               ; preds = %9
  store i8 0, ptr %16, align 2, !tbaa !46
  br label %23

21:                                               ; preds = %1
  store i8 0, ptr %8, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 4
  store i8 0, ptr %22, align 2, !tbaa !46
  br label %23

23:                                               ; preds = %17, %20, %21
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 1), ptr noundef %3) #23
  tail call void @BLI_addtail(ptr noundef nonnull @node_clipboard, ptr noundef %0) #23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_clipboard_add_link(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2), ptr noundef %0) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BKE_node_clipboard_get_nodes() local_unnamed_addr #6 {
  ret ptr @node_clipboard
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @BKE_node_clipboard_get_links() local_unnamed_addr #6 {
  ret ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_node_clipboard_get_type() local_unnamed_addr #19 {
  %1 = load i32, ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 3), align 8, !tbaa !307
  ret i32 %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_node_instance_key(i32 %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %7
  %8 = phi i8 [ %15, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %14, %7 ], [ %0, %3 ]
  %10 = phi ptr [ %11, %7 ], [ %4, %3 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = mul i32 %9, 33
  %13 = zext i8 %8 to i32
  %14 = xor i32 %12, %13
  %15 = load i8, ptr %11, align 1, !tbaa !46
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !225

17:                                               ; preds = %7, %3
  %18 = phi i32 [ %0, %3 ], [ %14, %7 ]
  %19 = mul i32 %18, 33
  %20 = icmp eq ptr %2, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 6
  %23 = load i8, ptr %22, align 1, !tbaa !46
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %21, %25
  %26 = phi i8 [ %33, %25 ], [ %23, %21 ]
  %27 = phi i32 [ %32, %25 ], [ %19, %21 ]
  %28 = phi ptr [ %29, %25 ], [ %22, %21 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = mul i32 %27, 33
  %31 = zext i8 %26 to i32
  %32 = xor i32 %30, %31
  %33 = load i8, ptr %29, align 1, !tbaa !46
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %25, !llvm.loop !225

35:                                               ; preds = %25, %21
  %36 = phi i32 [ %19, %21 ], [ %32, %25 ]
  %37 = mul i32 %36, 33
  br label %38

38:                                               ; preds = %35, %17
  %39 = phi i32 [ %37, %35 ], [ %19, %17 ]
  ret i32 %39
}

declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @node_instance_hash_key(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 4, !tbaa !316
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @node_instance_hash_key_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 4, !tbaa !316
  %4 = load i32, ptr %1, align 4, !tbaa !316
  %5 = icmp ne i32 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_node_instance_hash_clear(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !209
  tail call void @BLI_ghash_clear(ptr noundef %3, ptr noundef null, ptr noundef %1) #23
  ret void
}

declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_node_instance_hash_pop(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !209
  %5 = call ptr @BLI_ghash_popkey(ptr noundef %4, ptr noundef nonnull %3, ptr noundef null) #23
  ret ptr %5
}

declare ptr @BLI_ghash_popkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_node_instance_hash_haskey(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !209
  %5 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %4, ptr noundef nonnull %3) #23
  %6 = zext i8 %5 to i32
  ret i32 %6
}

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_node_instance_hash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !209
  %3 = tail call i32 @BLI_ghash_size(ptr noundef %2) #23
  ret i32 %3
}

declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_node_instance_hash_tag(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %1, i64 0, i32 1
  store i16 1, ptr %3, align 4, !tbaa !216
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_node_instance_hash_tag_key(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !209
  %5 = call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %5, i64 0, i32 1
  store i16 1, ptr %8, align 4, !tbaa !216
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i8 [ 1, %7 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeGetDependencyList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store i32 0, ptr %2, align 4, !tbaa !172
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 4, !tbaa !172
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %12 = phi ptr [ %6, %8 ], [ %15, %10 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 10
  store i16 0, ptr %13, align 8, !tbaa !317
  %14 = add nsw i32 %11, 1
  %15 = load ptr, ptr %12, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !318

17:                                               ; preds = %10
  store i32 %14, ptr %2, align 4, !tbaa !172
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32, ptr %2, align 4, !tbaa !172
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store ptr null, ptr %1, align 8, !tbaa !47
  br label %41

22:                                               ; preds = %18
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %24 = sext i32 %19 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call ptr %23(i64 noundef %25, ptr noundef nonnull @.str.55) #23
  store ptr %26, ptr %1, align 8, !tbaa !47
  store ptr %26, ptr %4, align 8, !tbaa !47
  %27 = load ptr, ptr %5, align 8, !tbaa !47
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %22, %38
  %30 = phi ptr [ %39, %38 ], [ %27, %22 ]
  %31 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 10
  %32 = load i16, ptr %31, align 8, !tbaa !317
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef nonnull %30, ptr noundef nonnull %4), !range !319
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.bNode, ptr %30, i64 0, i32 11
  store i16 %36, ptr %37, align 2, !tbaa !320
  br label %38

38:                                               ; preds = %29, %34
  %39 = load ptr, ptr %30, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %29, !llvm.loop !321

41:                                               ; preds = %38, %22, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 10
  store i16 1, ptr %4, align 8, !tbaa !317
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %3, %31
  %9 = phi ptr [ %33, %31 ], [ %6, %3 ]
  %10 = phi i32 [ %32, %31 ], [ 4095, %3 ]
  %11 = getelementptr inbounds %struct.bNodeLink, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !163
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bNodeLink, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 10
  %18 = load i16, ptr %17, align 8, !tbaa !317
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef %16, ptr noundef %2), !range !319
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 11
  store i16 %22, ptr %23, align 2, !tbaa !320
  br label %24

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 11
  %26 = load i16, ptr %25, align 2, !tbaa !320
  %27 = sext i16 %26 to i32
  %28 = icmp slt i32 %10, %27
  %29 = add nsw i32 %27, -1
  %30 = select i1 %28, i32 %10, i32 %29
  br label %31

31:                                               ; preds = %24, %8
  %32 = phi i32 [ %10, %8 ], [ %30, %24 ]
  %33 = load ptr, ptr %9, align 8, !tbaa !47
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %8, !llvm.loop !322

35:                                               ; preds = %31, %3
  %36 = phi i32 [ 4095, %3 ], [ %32, %31 ]
  %37 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !196
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 10
  %42 = load i16, ptr %41, align 8, !tbaa !317
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef nonnull %38, ptr noundef %2), !range !319
  %46 = trunc i32 %45 to i16
  %47 = load ptr, ptr %37, align 8, !tbaa !196
  %48 = getelementptr inbounds %struct.bNode, ptr %47, i64 0, i32 11
  store i16 %46, ptr %48, align 2, !tbaa !320
  br label %49

49:                                               ; preds = %44, %40
  %50 = load ptr, ptr %37, align 8, !tbaa !196
  %51 = getelementptr inbounds %struct.bNode, ptr %50, i64 0, i32 11
  %52 = load i16, ptr %51, align 2, !tbaa !320
  %53 = sext i16 %52 to i32
  %54 = icmp slt i32 %36, %53
  %55 = add nsw i32 %53, -1
  %56 = select i1 %54, i32 %36, i32 %55
  br label %57

57:                                               ; preds = %49, %35
  %58 = phi i32 [ %36, %35 ], [ %56, %49 ]
  %59 = icmp eq ptr %2, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %2, align 8, !tbaa !47
  store ptr %1, ptr %61, align 8, !tbaa !47
  %62 = load ptr, ptr %2, align 8, !tbaa !47
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  store ptr %63, ptr %2, align 8, !tbaa !47
  br label %64

64:                                               ; preds = %60, %57
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeVerifyNodes(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !98
  %11 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  br label %17

17:                                               ; preds = %92, %2
  %18 = phi ptr [ %16, %2 ], [ %66, %92 ]
  %19 = phi ptr [ %14, %2 ], [ %67, %92 ]
  %20 = phi ptr [ %12, %2 ], [ %68, %92 ]
  %21 = phi ptr [ %10, %2 ], [ %69, %92 ]
  %22 = phi ptr [ %8, %2 ], [ %70, %92 ]
  %23 = phi ptr [ %6, %2 ], [ %71, %92 ]
  %24 = phi ptr [ %4, %2 ], [ %72, %92 ]
  %25 = phi ptr [ undef, %2 ], [ %73, %92 ]
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %24, align 8, !tbaa !102
  br label %65

29:                                               ; preds = %17
  %30 = icmp eq ptr %23, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.Scene, ptr %23, i64 0, i32 18
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  %34 = load ptr, ptr %23, align 8, !tbaa !121
  br label %65

35:                                               ; preds = %29
  %36 = icmp eq ptr %22, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Material, ptr %22, i64 0, i32 103
  %39 = load ptr, ptr %38, align 8, !tbaa !122
  %40 = load ptr, ptr %22, align 8, !tbaa !126
  br label %65

41:                                               ; preds = %35
  %42 = icmp eq ptr %21, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.Tex, ptr %21, i64 0, i32 52
  %45 = load ptr, ptr %44, align 8, !tbaa !127
  %46 = load ptr, ptr %21, align 8, !tbaa !130
  br label %65

47:                                               ; preds = %41
  %48 = icmp eq ptr %20, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.Lamp, ptr %20, i64 0, i32 74
  %51 = load ptr, ptr %50, align 8, !tbaa !131
  %52 = load ptr, ptr %20, align 8, !tbaa !133
  br label %65

53:                                               ; preds = %47
  %54 = icmp eq ptr %19, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.World, ptr %19, i64 0, i32 75
  %57 = load ptr, ptr %56, align 8, !tbaa !134
  %58 = load ptr, ptr %19, align 8, !tbaa !136
  br label %65

59:                                               ; preds = %53
  %60 = icmp eq ptr %18, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %18, i64 0, i32 40
  %63 = load ptr, ptr %62, align 8, !tbaa !137
  %64 = load ptr, ptr %18, align 8, !tbaa !139
  br label %65

65:                                               ; preds = %27, %31, %37, %43, %49, %55, %59, %61
  %66 = phi ptr [ %18, %59 ], [ %64, %61 ], [ %18, %55 ], [ %18, %49 ], [ %18, %43 ], [ %18, %37 ], [ %18, %31 ], [ %18, %27 ]
  %67 = phi ptr [ %19, %59 ], [ %19, %61 ], [ %58, %55 ], [ %19, %49 ], [ %19, %43 ], [ %19, %37 ], [ %19, %31 ], [ %19, %27 ]
  %68 = phi ptr [ %20, %59 ], [ %20, %61 ], [ %20, %55 ], [ %52, %49 ], [ %20, %43 ], [ %20, %37 ], [ %20, %31 ], [ %20, %27 ]
  %69 = phi ptr [ %21, %59 ], [ %21, %61 ], [ %21, %55 ], [ %21, %49 ], [ %46, %43 ], [ %21, %37 ], [ %21, %31 ], [ %21, %27 ]
  %70 = phi ptr [ %22, %59 ], [ %22, %61 ], [ %22, %55 ], [ %22, %49 ], [ %22, %43 ], [ %40, %37 ], [ %22, %31 ], [ %22, %27 ]
  %71 = phi ptr [ %23, %59 ], [ %23, %61 ], [ %23, %55 ], [ %23, %49 ], [ %23, %43 ], [ %23, %37 ], [ %34, %31 ], [ %23, %27 ]
  %72 = phi ptr [ %24, %59 ], [ %24, %61 ], [ %24, %55 ], [ %24, %49 ], [ %24, %43 ], [ %24, %37 ], [ %24, %31 ], [ %28, %27 ]
  %73 = phi ptr [ %25, %59 ], [ %63, %61 ], [ %57, %55 ], [ %51, %49 ], [ %45, %43 ], [ %39, %37 ], [ %33, %31 ], [ %24, %27 ]
  %74 = phi i1 [ true, %59 ], [ false, %61 ], [ false, %55 ], [ false, %49 ], [ false, %43 ], [ false, %37 ], [ false, %31 ], [ false, %27 ]
  br i1 %74, label %93, label %75

75:                                               ; preds = %65
  %76 = icmp eq ptr %73, null
  br i1 %76, label %92, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.bNodeTree, ptr %73, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !47
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %77, %89
  %82 = phi ptr [ %90, %89 ], [ %79, %77 ]
  %83 = getelementptr inbounds %struct.bNode, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !70
  %85 = getelementptr inbounds %struct.bNodeType, ptr %84, i64 0, i32 30
  %86 = load ptr, ptr %85, align 8, !tbaa !323
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  tail call void %86(ptr noundef nonnull %73, ptr noundef nonnull %82, ptr noundef %1) #23
  br label %89

89:                                               ; preds = %81, %88
  %90 = load ptr, ptr %82, align 8, !tbaa !47
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %81, !llvm.loop !324

92:                                               ; preds = %89, %77, %75
  br label %17, !llvm.loop !325

93:                                               ; preds = %65
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ntreeUpdateTree(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %328, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 14
  %6 = load i16, ptr %5, align 4, !tbaa !326
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %328

8:                                                ; preds = %4
  store i16 1, ptr %5, align 4, !tbaa !326
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !159
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %20

17:                                               ; preds = %37, %33
  %18 = load ptr, ptr %21, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20, !llvm.loop !327

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %31, %25 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 23
  store ptr null, ptr %27, align 8, !tbaa !158
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 8
  %29 = load i16, ptr %28, align 2, !tbaa !152
  %30 = and i16 %29, -5
  store i16 %30, ptr %28, align 2, !tbaa !152
  %31 = load ptr, ptr %26, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25, !llvm.loop !328

33:                                               ; preds = %25, %20
  %34 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 18
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %17, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %42, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %38, i64 0, i32 8
  %40 = load i16, ptr %39, align 2, !tbaa !152
  %41 = and i16 %40, -5
  store i16 %41, ptr %39, align 2, !tbaa !152
  %42 = load ptr, ptr %38, align 8, !tbaa !47
  %43 = icmp eq ptr %42, null
  br i1 %43, label %17, label %37, !llvm.loop !329

44:                                               ; preds = %17, %13
  %45 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %61, %48 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !157
  %52 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 23
  store ptr %49, ptr %52, align 8, !tbaa !158
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %49, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !156
  %55 = getelementptr inbounds %struct.bNodeSocket, ptr %54, i64 0, i32 8
  %56 = load i16, ptr %55, align 2, !tbaa !152
  %57 = or i16 %56, 4
  store i16 %57, ptr %55, align 2, !tbaa !152
  %58 = getelementptr inbounds %struct.bNodeSocket, ptr %51, i64 0, i32 8
  %59 = load i16, ptr %58, align 2, !tbaa !152
  %60 = or i16 %59, 4
  store i16 %60, ptr %58, align 2, !tbaa !152
  %61 = load ptr, ptr %49, align 8, !tbaa !47
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %48, !llvm.loop !330

63:                                               ; preds = %48, %44, %8
  %64 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !47
  %66 = icmp eq ptr %65, null
  br i1 %66, label %96, label %67

67:                                               ; preds = %63, %93
  %68 = phi ptr [ %94, %93 ], [ %65, %63 ]
  %69 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 31
  %70 = load i32, ptr %69, align 4, !tbaa !148
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, ptr %9, align 8, !tbaa !159
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %73, %67
  %78 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !70
  %80 = getelementptr inbounds %struct.bNodeType, ptr %79, i64 0, i32 29
  %81 = load ptr, ptr %80, align 8, !tbaa !331
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  tail call void %81(ptr noundef nonnull %1, ptr noundef nonnull %68) #23
  br label %84

84:                                               ; preds = %83, %77
  %85 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 23
  tail call void @BLI_freelistN(ptr noundef nonnull %85) #23
  %86 = load ptr, ptr %78, align 8, !tbaa !70
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.bNodeType, ptr %86, i64 0, i32 39
  %90 = load ptr, ptr %89, align 8, !tbaa !332
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void %90(ptr noundef nonnull %1, ptr noundef nonnull %68) #23
  br label %93

93:                                               ; preds = %92, %88, %84, %73
  %94 = load ptr, ptr %68, align 8, !tbaa !47
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %67, !llvm.loop !333

96:                                               ; preds = %93, %63
  %97 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = getelementptr inbounds %struct.bNodeTreeType, ptr %98, i64 0, i32 13
  %100 = load ptr, ptr %99, align 8, !tbaa !334
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  tail call void %100(ptr noundef nonnull %1) #23
  br label %103

103:                                              ; preds = %102, %96
  %104 = load i32, ptr %9, align 8, !tbaa !159
  %105 = and i32 %104, 48
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !219
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %109) #23
  store ptr null, ptr %108, align 8, !tbaa !219
  br label %112

112:                                              ; preds = %107, %111
  tail call fastcc void @ntree_interface_type_create(ptr noundef nonnull %1)
  br label %113

113:                                              ; preds = %112, %103
  %114 = icmp eq ptr %0, null
  br i1 %114, label %206, label %115

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %117 = load ptr, ptr %116, align 8, !tbaa !93
  %118 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %119 = load ptr, ptr %118, align 8, !tbaa !96
  %120 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %121 = load ptr, ptr %120, align 8, !tbaa !97
  %122 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %123 = load ptr, ptr %122, align 8, !tbaa !98
  %124 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %125 = load ptr, ptr %124, align 8, !tbaa !99
  %126 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %127 = load ptr, ptr %126, align 8, !tbaa !100
  %128 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %129 = load ptr, ptr %128, align 8, !tbaa !101
  br label %130

130:                                              ; preds = %205, %115
  %131 = phi ptr [ %129, %115 ], [ %179, %205 ]
  %132 = phi ptr [ %127, %115 ], [ %180, %205 ]
  %133 = phi ptr [ %125, %115 ], [ %181, %205 ]
  %134 = phi ptr [ %123, %115 ], [ %182, %205 ]
  %135 = phi ptr [ %121, %115 ], [ %183, %205 ]
  %136 = phi ptr [ %119, %115 ], [ %184, %205 ]
  %137 = phi ptr [ %117, %115 ], [ %185, %205 ]
  %138 = phi ptr [ undef, %115 ], [ %186, %205 ]
  %139 = icmp eq ptr %137, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %130
  %141 = load ptr, ptr %137, align 8, !tbaa !102
  br label %178

142:                                              ; preds = %130
  %143 = icmp eq ptr %136, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 18
  %146 = load ptr, ptr %145, align 8, !tbaa !103
  %147 = load ptr, ptr %136, align 8, !tbaa !121
  br label %178

148:                                              ; preds = %142
  %149 = icmp eq ptr %135, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.Material, ptr %135, i64 0, i32 103
  %152 = load ptr, ptr %151, align 8, !tbaa !122
  %153 = load ptr, ptr %135, align 8, !tbaa !126
  br label %178

154:                                              ; preds = %148
  %155 = icmp eq ptr %134, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.Tex, ptr %134, i64 0, i32 52
  %158 = load ptr, ptr %157, align 8, !tbaa !127
  %159 = load ptr, ptr %134, align 8, !tbaa !130
  br label %178

160:                                              ; preds = %154
  %161 = icmp eq ptr %133, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.Lamp, ptr %133, i64 0, i32 74
  %164 = load ptr, ptr %163, align 8, !tbaa !131
  %165 = load ptr, ptr %133, align 8, !tbaa !133
  br label %178

166:                                              ; preds = %160
  %167 = icmp eq ptr %132, null
  br i1 %167, label %172, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.World, ptr %132, i64 0, i32 75
  %170 = load ptr, ptr %169, align 8, !tbaa !134
  %171 = load ptr, ptr %132, align 8, !tbaa !136
  br label %178

172:                                              ; preds = %166
  %173 = icmp eq ptr %131, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %131, i64 0, i32 40
  %176 = load ptr, ptr %175, align 8, !tbaa !137
  %177 = load ptr, ptr %131, align 8, !tbaa !139
  br label %178

178:                                              ; preds = %174, %172, %168, %162, %156, %150, %144, %140
  %179 = phi ptr [ %131, %172 ], [ %177, %174 ], [ %131, %168 ], [ %131, %162 ], [ %131, %156 ], [ %131, %150 ], [ %131, %144 ], [ %131, %140 ]
  %180 = phi ptr [ %132, %172 ], [ %132, %174 ], [ %171, %168 ], [ %132, %162 ], [ %132, %156 ], [ %132, %150 ], [ %132, %144 ], [ %132, %140 ]
  %181 = phi ptr [ %133, %172 ], [ %133, %174 ], [ %133, %168 ], [ %165, %162 ], [ %133, %156 ], [ %133, %150 ], [ %133, %144 ], [ %133, %140 ]
  %182 = phi ptr [ %134, %172 ], [ %134, %174 ], [ %134, %168 ], [ %134, %162 ], [ %159, %156 ], [ %134, %150 ], [ %134, %144 ], [ %134, %140 ]
  %183 = phi ptr [ %135, %172 ], [ %135, %174 ], [ %135, %168 ], [ %135, %162 ], [ %135, %156 ], [ %153, %150 ], [ %135, %144 ], [ %135, %140 ]
  %184 = phi ptr [ %136, %172 ], [ %136, %174 ], [ %136, %168 ], [ %136, %162 ], [ %136, %156 ], [ %136, %150 ], [ %147, %144 ], [ %136, %140 ]
  %185 = phi ptr [ %137, %172 ], [ %137, %174 ], [ %137, %168 ], [ %137, %162 ], [ %137, %156 ], [ %137, %150 ], [ %137, %144 ], [ %141, %140 ]
  %186 = phi ptr [ %138, %172 ], [ %176, %174 ], [ %170, %168 ], [ %164, %162 ], [ %158, %156 ], [ %152, %150 ], [ %146, %144 ], [ %137, %140 ]
  %187 = phi i1 [ true, %172 ], [ false, %174 ], [ false, %168 ], [ false, %162 ], [ false, %156 ], [ false, %150 ], [ false, %144 ], [ false, %140 ]
  br i1 %187, label %206, label %188

188:                                              ; preds = %178
  %189 = icmp eq ptr %186, null
  br i1 %189, label %205, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.bNodeTree, ptr %186, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !47
  %193 = icmp eq ptr %192, null
  br i1 %193, label %205, label %194

194:                                              ; preds = %190, %202
  %195 = phi ptr [ %203, %202 ], [ %192, %190 ]
  %196 = getelementptr inbounds %struct.bNode, ptr %195, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !70
  %198 = getelementptr inbounds %struct.bNodeType, ptr %197, i64 0, i32 30
  %199 = load ptr, ptr %198, align 8, !tbaa !323
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %194
  tail call void %199(ptr noundef nonnull %186, ptr noundef nonnull %195, ptr noundef nonnull %1) #23
  br label %202

202:                                              ; preds = %201, %194
  %203 = load ptr, ptr %195, align 8, !tbaa !47
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %194, !llvm.loop !324

205:                                              ; preds = %202, %190, %188
  br label %130, !llvm.loop !325

206:                                              ; preds = %178, %113
  %207 = load i32, ptr %9, align 8, !tbaa !159
  %208 = and i32 %207, 3
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %319, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %64, align 8, !tbaa !47
  %212 = icmp eq ptr %211, null
  br i1 %212, label %240, label %216

213:                                              ; preds = %233, %229
  %214 = load ptr, ptr %217, align 8, !tbaa !47
  %215 = icmp eq ptr %214, null
  br i1 %215, label %240, label %216, !llvm.loop !327

216:                                              ; preds = %210, %213
  %217 = phi ptr [ %214, %213 ], [ %211, %210 ]
  %218 = getelementptr inbounds %struct.bNode, ptr %217, i64 0, i32 17
  %219 = load ptr, ptr %218, align 8, !tbaa !47
  %220 = icmp eq ptr %219, null
  br i1 %220, label %229, label %221

221:                                              ; preds = %216, %221
  %222 = phi ptr [ %227, %221 ], [ %219, %216 ]
  %223 = getelementptr inbounds %struct.bNodeSocket, ptr %222, i64 0, i32 23
  store ptr null, ptr %223, align 8, !tbaa !158
  %224 = getelementptr inbounds %struct.bNodeSocket, ptr %222, i64 0, i32 8
  %225 = load i16, ptr %224, align 2, !tbaa !152
  %226 = and i16 %225, -5
  store i16 %226, ptr %224, align 2, !tbaa !152
  %227 = load ptr, ptr %222, align 8, !tbaa !47
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %221, !llvm.loop !328

229:                                              ; preds = %221, %216
  %230 = getelementptr inbounds %struct.bNode, ptr %217, i64 0, i32 18
  %231 = load ptr, ptr %230, align 8, !tbaa !47
  %232 = icmp eq ptr %231, null
  br i1 %232, label %213, label %233

233:                                              ; preds = %229, %233
  %234 = phi ptr [ %238, %233 ], [ %231, %229 ]
  %235 = getelementptr inbounds %struct.bNodeSocket, ptr %234, i64 0, i32 8
  %236 = load i16, ptr %235, align 2, !tbaa !152
  %237 = and i16 %236, -5
  store i16 %237, ptr %235, align 2, !tbaa !152
  %238 = load ptr, ptr %234, align 8, !tbaa !47
  %239 = icmp eq ptr %238, null
  br i1 %239, label %213, label %233, !llvm.loop !329

240:                                              ; preds = %213, %210
  %241 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %242 = load ptr, ptr %241, align 8, !tbaa !47
  %243 = icmp eq ptr %242, null
  br i1 %243, label %259, label %244

244:                                              ; preds = %240, %244
  %245 = phi ptr [ %257, %244 ], [ %242, %240 ]
  %246 = getelementptr inbounds %struct.bNodeLink, ptr %245, i64 0, i32 5
  %247 = load ptr, ptr %246, align 8, !tbaa !157
  %248 = getelementptr inbounds %struct.bNodeSocket, ptr %247, i64 0, i32 23
  store ptr %245, ptr %248, align 8, !tbaa !158
  %249 = getelementptr inbounds %struct.bNodeLink, ptr %245, i64 0, i32 4
  %250 = load ptr, ptr %249, align 8, !tbaa !156
  %251 = getelementptr inbounds %struct.bNodeSocket, ptr %250, i64 0, i32 8
  %252 = load i16, ptr %251, align 2, !tbaa !152
  %253 = or i16 %252, 4
  store i16 %253, ptr %251, align 2, !tbaa !152
  %254 = getelementptr inbounds %struct.bNodeSocket, ptr %247, i64 0, i32 8
  %255 = load i16, ptr %254, align 2, !tbaa !152
  %256 = or i16 %255, 4
  store i16 %256, ptr %254, align 2, !tbaa !152
  %257 = load ptr, ptr %245, align 8, !tbaa !47
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %244, !llvm.loop !330

259:                                              ; preds = %244, %240
  %260 = load ptr, ptr %64, align 8, !tbaa !47
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %265

262:                                              ; preds = %265, %259
  %263 = load ptr, ptr %64, align 8, !tbaa !47
  %264 = icmp eq ptr %263, null
  br i1 %264, label %270, label %273

265:                                              ; preds = %259, %265
  %266 = phi ptr [ %268, %265 ], [ %260, %259 ]
  %267 = getelementptr inbounds %struct.bNode, ptr %266, i64 0, i32 10
  store i16 0, ptr %267, align 8, !tbaa !317
  %268 = load ptr, ptr %266, align 8, !tbaa !47
  %269 = icmp eq ptr %268, null
  br i1 %269, label %262, label %265, !llvm.loop !335

270:                                              ; preds = %282, %262
  %271 = load ptr, ptr %241, align 8, !tbaa !47
  %272 = icmp eq ptr %271, null
  br i1 %272, label %319, label %285

273:                                              ; preds = %262, %282
  %274 = phi ptr [ %283, %282 ], [ %263, %262 ]
  %275 = getelementptr inbounds %struct.bNode, ptr %274, i64 0, i32 10
  %276 = load i16, ptr %275, align 8, !tbaa !317
  %277 = icmp eq i16 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = tail call fastcc i32 @node_get_deplist_recurs(ptr noundef nonnull %1, ptr noundef nonnull %274, ptr noundef null), !range !319
  %280 = trunc i32 %279 to i16
  %281 = getelementptr inbounds %struct.bNode, ptr %274, i64 0, i32 11
  store i16 %280, ptr %281, align 2, !tbaa !320
  br label %282

282:                                              ; preds = %278, %273
  %283 = load ptr, ptr %274, align 8, !tbaa !47
  %284 = icmp eq ptr %283, null
  br i1 %284, label %270, label %273, !llvm.loop !336

285:                                              ; preds = %270, %316
  %286 = phi ptr [ %317, %316 ], [ %271, %270 ]
  %287 = getelementptr inbounds %struct.bNodeLink, ptr %286, i64 0, i32 6
  %288 = load i32, ptr %287, align 8, !tbaa !193
  %289 = or i32 %288, 2
  store i32 %289, ptr %287, align 8, !tbaa !193
  %290 = getelementptr inbounds %struct.bNodeLink, ptr %286, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !162
  %292 = icmp eq ptr %291, null
  br i1 %292, label %303, label %293

293:                                              ; preds = %285
  %294 = getelementptr inbounds %struct.bNodeLink, ptr %286, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !163
  %296 = icmp eq ptr %295, null
  br i1 %296, label %303, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.bNode, ptr %291, i64 0, i32 11
  %299 = load i16, ptr %298, align 2, !tbaa !320
  %300 = getelementptr inbounds %struct.bNode, ptr %295, i64 0, i32 11
  %301 = load i16, ptr %300, align 2, !tbaa !320
  %302 = icmp sgt i16 %299, %301
  br i1 %302, label %303, label %313

303:                                              ; preds = %297, %293, %285
  %304 = load ptr, ptr %97, align 8, !tbaa !48
  %305 = getelementptr inbounds %struct.bNodeTreeType, ptr %304, i64 0, i32 14
  %306 = load ptr, ptr %305, align 8, !tbaa !337
  %307 = icmp eq ptr %306, null
  br i1 %307, label %316, label %308

308:                                              ; preds = %303
  %309 = tail call i32 %306(ptr noundef nonnull %1, ptr noundef nonnull %286) #23
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = load i32, ptr %287, align 8, !tbaa !193
  br label %313

313:                                              ; preds = %297, %311
  %314 = phi i32 [ %312, %311 ], [ %288, %297 ]
  %315 = and i32 %314, -3
  store i32 %315, ptr %287, align 8, !tbaa !193
  br label %316

316:                                              ; preds = %313, %308, %303
  %317 = load ptr, ptr %286, align 8, !tbaa !47
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %285, !llvm.loop !338

319:                                              ; preds = %316, %270, %206
  %320 = load ptr, ptr %64, align 8, !tbaa !47
  %321 = icmp eq ptr %320, null
  br i1 %321, label %327, label %322

322:                                              ; preds = %319, %322
  %323 = phi ptr [ %325, %322 ], [ %320, %319 ]
  %324 = getelementptr inbounds %struct.bNode, ptr %323, i64 0, i32 31
  store i32 0, ptr %324, align 4, !tbaa !148
  %325 = load ptr, ptr %323, align 8, !tbaa !47
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %322, !llvm.loop !339

327:                                              ; preds = %322, %319
  store i32 0, ptr %9, align 8, !tbaa !159
  store i16 0, ptr %5, align 4, !tbaa !326
  br label %328

328:                                              ; preds = %4, %2, %327
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeUpdateInternalLinks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #23
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 39
  %9 = load ptr, ptr %8, align 8, !tbaa !332
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0, ptr noundef %1) #23
  br label %12

12:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeUpdate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 4, !tbaa !326
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  store i16 1, ptr %3, align 4, !tbaa !326
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !331
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef %0, ptr noundef %1) #23
  br label %13

13:                                               ; preds = %12, %6
  %14 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  tail call void @BLI_freelistN(ptr noundef nonnull %14) #23
  %15 = load ptr, ptr %7, align 8, !tbaa !70
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNodeType, ptr %15, i64 0, i32 39
  %19 = load ptr, ptr %18, align 8, !tbaa !332
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %0, ptr noundef %1) #23
  br label %22

22:                                               ; preds = %13, %17, %21
  %23 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  store i32 0, ptr %23, align 4, !tbaa !148
  store i16 0, ptr %3, align 4, !tbaa !326
  br label %24

24:                                               ; preds = %2, %22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @nodeUpdateID(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 14
  %8 = load i16, ptr %7, align 4, !tbaa !326
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  store i16 1, ptr %7, align 4, !tbaa !326
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %35, %10
  %15 = phi i8 [ 0, %10 ], [ %36, %35 ]
  %16 = load ptr, ptr %11, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %39

18:                                               ; preds = %10, %35
  %19 = phi ptr [ %37, %35 ], [ %12, %10 ]
  %20 = phi i8 [ %36, %35 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 31
  %26 = load i32, ptr %25, align 4, !tbaa !148
  %27 = or i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !148
  %28 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = getelementptr inbounds %struct.bNodeType, ptr %29, i64 0, i32 29
  %31 = load ptr, ptr %30, align 8, !tbaa !331
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  tail call void %31(ptr noundef %0, ptr noundef nonnull %19) #23
  br label %34

34:                                               ; preds = %33, %24
  store i32 0, ptr %25, align 4, !tbaa !148
  br label %35

35:                                               ; preds = %18, %34
  %36 = phi i8 [ 1, %34 ], [ %20, %18 ]
  %37 = load ptr, ptr %19, align 8, !tbaa !47
  %38 = icmp eq ptr %37, null
  br i1 %38, label %14, label %18, !llvm.loop !340

39:                                               ; preds = %14, %50
  %40 = phi ptr [ %51, %50 ], [ %16, %14 ]
  %41 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 23
  tail call void @BLI_freelistN(ptr noundef nonnull %41) #23
  %42 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.bNodeType, ptr %43, i64 0, i32 39
  %47 = load ptr, ptr %46, align 8, !tbaa !332
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void %47(ptr noundef %0, ptr noundef nonnull %40) #23
  br label %50

50:                                               ; preds = %39, %45, %49
  %51 = load ptr, ptr %40, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %39, !llvm.loop !341

53:                                               ; preds = %50, %14
  store i16 0, ptr %7, align 4, !tbaa !326
  br label %54

54:                                               ; preds = %6, %2, %53
  %55 = phi i8 [ %15, %53 ], [ 0, %2 ], [ 0, %6 ]
  ret i8 %55
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeSynchronizeID(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %179, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !73
  switch i16 %8, label %179 [
    i16 100, label %9
    i16 118, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %179, label %13

13:                                               ; preds = %9
  %14 = icmp eq i8 %1, 0
  %15 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 26
  %16 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 21
  %17 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 20
  %18 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 19
  %19 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 17
  %20 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 16
  %21 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 10
  %22 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 11
  %23 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 12
  %24 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 22
  %25 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 7
  %26 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 8
  %27 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 9
  %28 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 4
  %29 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 5
  %30 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 6
  %31 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 26
  %32 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 21
  %33 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 20
  %34 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 19
  %35 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 17
  %36 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 16
  %37 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 10
  %38 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 11
  %39 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 12
  %40 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 22
  %41 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 7
  %42 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 8
  %43 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 9
  %44 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 4
  %45 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 5
  %46 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 6
  br label %47

47:                                               ; preds = %13, %175
  %48 = phi ptr [ %11, %13 ], [ %177, %175 ]
  %49 = phi i32 [ 0, %13 ], [ %176, %175 ]
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 8
  %51 = load i16, ptr %50, align 2, !tbaa !152
  %52 = and i16 %51, 10
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %175

54:                                               ; preds = %47
  br i1 %14, label %115, label %55

55:                                               ; preds = %54
  switch i32 %49, label %175 [
    i32 0, label %56
    i32 1, label %64
    i32 2, label %72
    i32 4, label %77
    i32 5, label %85
    i32 6, label %90
    i32 7, label %95
    i32 8, label %100
    i32 9, label %105
    i32 10, label %110
  ]

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !62
  %59 = load float, ptr %58, align 4, !tbaa !80
  store float %59, ptr %28, align 4, !tbaa !80
  %60 = getelementptr inbounds float, ptr %58, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !80
  store float %61, ptr %29, align 4, !tbaa !80
  %62 = getelementptr inbounds float, ptr %58, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !80
  store float %63, ptr %30, align 4, !tbaa !80
  br label %175

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = load float, ptr %66, align 4, !tbaa !80
  store float %67, ptr %25, align 4, !tbaa !80
  %68 = getelementptr inbounds float, ptr %66, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !80
  store float %69, ptr %26, align 4, !tbaa !80
  %70 = getelementptr inbounds float, ptr %66, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !80
  store float %71, ptr %27, align 4, !tbaa !80
  br label %175

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  %75 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %74, i64 0, i32 1
  %76 = load float, ptr %75, align 4, !tbaa !342
  store float %76, ptr %24, align 4, !tbaa !344
  br label %175

77:                                               ; preds = %55
  %78 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %79 = load ptr, ptr %78, align 8, !tbaa !62
  %80 = load float, ptr %79, align 4, !tbaa !80
  store float %80, ptr %21, align 4, !tbaa !80
  %81 = getelementptr inbounds float, ptr %79, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !80
  store float %82, ptr %22, align 4, !tbaa !80
  %83 = getelementptr inbounds float, ptr %79, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !80
  store float %84, ptr %23, align 4, !tbaa !80
  br label %175

85:                                               ; preds = %55
  %86 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %87, i64 0, i32 1
  %89 = load float, ptr %88, align 4, !tbaa !342
  store float %89, ptr %20, align 4, !tbaa !345
  br label %175

90:                                               ; preds = %55
  %91 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %92 = load ptr, ptr %91, align 8, !tbaa !62
  %93 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %92, i64 0, i32 1
  %94 = load float, ptr %93, align 4, !tbaa !342
  store float %94, ptr %19, align 8, !tbaa !346
  br label %175

95:                                               ; preds = %55
  %96 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %97 = load ptr, ptr %96, align 8, !tbaa !62
  %98 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %97, i64 0, i32 1
  %99 = load float, ptr %98, align 4, !tbaa !342
  store float %99, ptr %18, align 8, !tbaa !347
  br label %175

100:                                              ; preds = %55
  %101 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  %103 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %102, i64 0, i32 1
  %104 = load float, ptr %103, align 4, !tbaa !342
  store float %104, ptr %17, align 4, !tbaa !348
  br label %175

105:                                              ; preds = %55
  %106 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  %108 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %107, i64 0, i32 1
  %109 = load float, ptr %108, align 4, !tbaa !342
  store float %109, ptr %16, align 8, !tbaa !349
  br label %175

110:                                              ; preds = %55
  %111 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %112 = load ptr, ptr %111, align 8, !tbaa !62
  %113 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %112, i64 0, i32 1
  %114 = load float, ptr %113, align 4, !tbaa !342
  store float %114, ptr %15, align 4, !tbaa !350
  br label %175

115:                                              ; preds = %54
  switch i32 %49, label %175 [
    i32 0, label %116
    i32 1, label %124
    i32 2, label %132
    i32 4, label %137
    i32 5, label %145
    i32 6, label %150
    i32 7, label %155
    i32 8, label %160
    i32 9, label %165
    i32 10, label %170
  ]

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %118 = load ptr, ptr %117, align 8, !tbaa !62
  %119 = load float, ptr %44, align 4, !tbaa !80
  store float %119, ptr %118, align 4, !tbaa !80
  %120 = load float, ptr %45, align 4, !tbaa !80
  %121 = getelementptr inbounds float, ptr %118, i64 1
  store float %120, ptr %121, align 4, !tbaa !80
  %122 = load float, ptr %46, align 4, !tbaa !80
  %123 = getelementptr inbounds float, ptr %118, i64 2
  store float %122, ptr %123, align 4, !tbaa !80
  br label %175

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %126 = load ptr, ptr %125, align 8, !tbaa !62
  %127 = load float, ptr %41, align 4, !tbaa !80
  store float %127, ptr %126, align 4, !tbaa !80
  %128 = load float, ptr %42, align 4, !tbaa !80
  %129 = getelementptr inbounds float, ptr %126, i64 1
  store float %128, ptr %129, align 4, !tbaa !80
  %130 = load float, ptr %43, align 4, !tbaa !80
  %131 = getelementptr inbounds float, ptr %126, i64 2
  store float %130, ptr %131, align 4, !tbaa !80
  br label %175

132:                                              ; preds = %115
  %133 = load float, ptr %40, align 4, !tbaa !344
  %134 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %135 = load ptr, ptr %134, align 8, !tbaa !62
  %136 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %135, i64 0, i32 1
  store float %133, ptr %136, align 4, !tbaa !342
  br label %175

137:                                              ; preds = %115
  %138 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %139 = load ptr, ptr %138, align 8, !tbaa !62
  %140 = load float, ptr %37, align 4, !tbaa !80
  store float %140, ptr %139, align 4, !tbaa !80
  %141 = load float, ptr %38, align 4, !tbaa !80
  %142 = getelementptr inbounds float, ptr %139, i64 1
  store float %141, ptr %142, align 4, !tbaa !80
  %143 = load float, ptr %39, align 4, !tbaa !80
  %144 = getelementptr inbounds float, ptr %139, i64 2
  store float %143, ptr %144, align 4, !tbaa !80
  br label %175

145:                                              ; preds = %115
  %146 = load float, ptr %36, align 4, !tbaa !345
  %147 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %148 = load ptr, ptr %147, align 8, !tbaa !62
  %149 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %148, i64 0, i32 1
  store float %146, ptr %149, align 4, !tbaa !342
  br label %175

150:                                              ; preds = %115
  %151 = load float, ptr %35, align 8, !tbaa !346
  %152 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %153 = load ptr, ptr %152, align 8, !tbaa !62
  %154 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %153, i64 0, i32 1
  store float %151, ptr %154, align 4, !tbaa !342
  br label %175

155:                                              ; preds = %115
  %156 = load float, ptr %34, align 8, !tbaa !347
  %157 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %158 = load ptr, ptr %157, align 8, !tbaa !62
  %159 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %158, i64 0, i32 1
  store float %156, ptr %159, align 4, !tbaa !342
  br label %175

160:                                              ; preds = %115
  %161 = load float, ptr %33, align 4, !tbaa !348
  %162 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %163 = load ptr, ptr %162, align 8, !tbaa !62
  %164 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %163, i64 0, i32 1
  store float %161, ptr %164, align 4, !tbaa !342
  br label %175

165:                                              ; preds = %115
  %166 = load float, ptr %32, align 8, !tbaa !349
  %167 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %168 = load ptr, ptr %167, align 8, !tbaa !62
  %169 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %168, i64 0, i32 1
  store float %166, ptr %169, align 4, !tbaa !342
  br label %175

170:                                              ; preds = %115
  %171 = load float, ptr %31, align 4, !tbaa !350
  %172 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 15
  %173 = load ptr, ptr %172, align 8, !tbaa !62
  %174 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %173, i64 0, i32 1
  store float %171, ptr %174, align 4, !tbaa !342
  br label %175

175:                                              ; preds = %47, %116, %124, %132, %137, %145, %150, %155, %160, %165, %170, %115, %56, %64, %72, %77, %85, %90, %95, %100, %105, %110, %55
  %176 = add nuw nsw i32 %49, 1
  %177 = load ptr, ptr %48, align 8, !tbaa !47
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %47, !llvm.loop !351

179:                                              ; preds = %175, %9, %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nodeLabel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 32
  %6 = load i8, ptr %5, align 8, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = sext i32 %3 to i64
  %10 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %5, i64 noundef %9) #23
  br label %22

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !352
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #23
  br label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 5
  %20 = sext i32 %3 to i64
  %21 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %19, i64 noundef %20) #23
  br label %22

22:                                               ; preds = %17, %18, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  switch i32 %1, label %217 [
    i32 5, label %211
    i32 2, label %6
    i32 7, label %7
    i32 8, label %8
    i32 6, label %9
    i32 1, label %10
    i32 100, label %11
    i32 101, label %12
    i32 102, label %13
    i32 103, label %14
    i32 104, label %15
    i32 105, label %16
    i32 106, label %17
    i32 107, label %18
    i32 163, label %19
    i32 165, label %20
    i32 108, label %21
    i32 109, label %22
    i32 110, label %23
    i32 111, label %24
    i32 114, label %25
    i32 186, label %26
    i32 115, label %27
    i32 116, label %28
    i32 117, label %29
    i32 118, label %30
    i32 119, label %31
    i32 120, label %32
    i32 121, label %33
    i32 122, label %34
    i32 124, label %35
    i32 126, label %36
    i32 125, label %37
    i32 190, label %38
    i32 127, label %39
    i32 160, label %40
    i32 128, label %41
    i32 156, label %42
    i32 129, label %43
    i32 172, label %44
    i32 130, label %45
    i32 159, label %46
    i32 131, label %47
    i32 132, label %48
    i32 133, label %49
    i32 134, label %50
    i32 173, label %51
    i32 137, label %52
    i32 138, label %53
    i32 139, label %54
    i32 179, label %55
    i32 185, label %56
    i32 177, label %57
    i32 161, label %58
    i32 162, label %59
    i32 140, label %60
    i32 141, label %61
    i32 142, label %62
    i32 166, label %63
    i32 167, label %64
    i32 168, label %65
    i32 176, label %66
    i32 178, label %67
    i32 180, label %68
    i32 181, label %69
    i32 170, label %70
    i32 175, label %71
    i32 174, label %72
    i32 171, label %73
    i32 143, label %74
    i32 157, label %75
    i32 145, label %76
    i32 146, label %77
    i32 150, label %78
    i32 148, label %79
    i32 149, label %80
    i32 152, label %81
    i32 147, label %82
    i32 164, label %83
    i32 169, label %84
    i32 155, label %85
    i32 182, label %86
    i32 183, label %87
    i32 184, label %88
    i32 187, label %89
    i32 191, label %90
    i32 188, label %91
    i32 189, label %92
    i32 201, label %93
    i32 202, label %94
    i32 203, label %95
    i32 204, label %96
    i32 205, label %97
    i32 206, label %98
    i32 207, label %99
    i32 208, label %100
    i32 209, label %101
    i32 210, label %102
    i32 211, label %103
    i32 212, label %104
    i32 213, label %105
    i32 319, label %106
    i32 214, label %107
    i32 215, label %108
    i32 216, label %109
    i32 217, label %110
    i32 218, label %111
    i32 219, label %112
    i32 220, label %113
    i32 221, label %114
    i32 222, label %115
    i32 223, label %116
    i32 224, label %117
    i32 225, label %118
    i32 226, label %119
    i32 227, label %120
    i32 228, label %121
    i32 272, label %122
    i32 273, label %123
    i32 229, label %124
    i32 230, label %125
    i32 231, label %126
    i32 232, label %127
    i32 233, label %128
    i32 234, label %129
    i32 235, label %130
    i32 236, label %131
    i32 237, label %132
    i32 238, label %133
    i32 239, label %134
    i32 240, label %135
    i32 242, label %136
    i32 243, label %137
    i32 266, label %138
    i32 244, label %139
    i32 245, label %140
    i32 246, label %141
    i32 247, label %142
    i32 248, label %143
    i32 249, label %144
    i32 250, label %145
    i32 251, label %146
    i32 252, label %147
    i32 253, label %148
    i32 254, label %149
    i32 255, label %150
    i32 256, label %151
    i32 301, label %152
    i32 302, label %153
    i32 303, label %154
    i32 258, label %155
    i32 259, label %156
    i32 257, label %157
    i32 260, label %158
    i32 261, label %159
    i32 262, label %160
    i32 264, label %161
    i32 263, label %162
    i32 265, label %163
    i32 313, label %164
    i32 314, label %165
    i32 315, label %166
    i32 316, label %167
    i32 317, label %168
    i32 312, label %169
    i32 268, label %170
    i32 269, label %171
    i32 270, label %172
    i32 271, label %173
    i32 318, label %174
    i32 320, label %175
    i32 321, label %176
    i32 304, label %177
    i32 401, label %178
    i32 402, label %179
    i32 403, label %180
    i32 404, label %181
    i32 405, label %182
    i32 406, label %183
    i32 407, label %184
    i32 408, label %185
    i32 409, label %186
    i32 410, label %187
    i32 411, label %188
    i32 412, label %189
    i32 413, label %190
    i32 414, label %191
    i32 415, label %192
    i32 416, label %193
    i32 417, label %194
    i32 418, label %195
    i32 419, label %196
    i32 420, label %197
    i32 421, label %198
    i32 422, label %199
    i32 423, label %200
    i32 512, label %201
    i32 505, label %202
    i32 504, label %203
    i32 503, label %204
    i32 501, label %205
    i32 502, label %206
    i32 511, label %207
    i32 507, label %208
    i32 506, label %209
    i32 513, label %210
  ]

6:                                                ; preds = %5
  br label %211

7:                                                ; preds = %5
  br label %211

8:                                                ; preds = %5
  br label %211

9:                                                ; preds = %5
  br label %211

10:                                               ; preds = %5
  br label %211

11:                                               ; preds = %5
  br label %211

12:                                               ; preds = %5
  br label %211

13:                                               ; preds = %5
  br label %211

14:                                               ; preds = %5
  br label %211

15:                                               ; preds = %5
  br label %211

16:                                               ; preds = %5
  br label %211

17:                                               ; preds = %5
  br label %211

18:                                               ; preds = %5
  br label %211

19:                                               ; preds = %5
  br label %211

20:                                               ; preds = %5
  br label %211

21:                                               ; preds = %5
  br label %211

22:                                               ; preds = %5
  br label %211

23:                                               ; preds = %5
  br label %211

24:                                               ; preds = %5
  br label %211

25:                                               ; preds = %5
  br label %211

26:                                               ; preds = %5
  br label %211

27:                                               ; preds = %5
  br label %211

28:                                               ; preds = %5
  br label %211

29:                                               ; preds = %5
  br label %211

30:                                               ; preds = %5
  br label %211

31:                                               ; preds = %5
  br label %211

32:                                               ; preds = %5
  br label %211

33:                                               ; preds = %5
  br label %211

34:                                               ; preds = %5
  br label %211

35:                                               ; preds = %5
  br label %211

36:                                               ; preds = %5
  br label %211

37:                                               ; preds = %5
  br label %211

38:                                               ; preds = %5
  br label %211

39:                                               ; preds = %5
  br label %211

40:                                               ; preds = %5
  br label %211

41:                                               ; preds = %5
  br label %211

42:                                               ; preds = %5
  br label %211

43:                                               ; preds = %5
  br label %211

44:                                               ; preds = %5
  br label %211

45:                                               ; preds = %5
  br label %211

46:                                               ; preds = %5
  br label %211

47:                                               ; preds = %5
  br label %211

48:                                               ; preds = %5
  br label %211

49:                                               ; preds = %5
  br label %211

50:                                               ; preds = %5
  br label %211

51:                                               ; preds = %5
  br label %211

52:                                               ; preds = %5
  br label %211

53:                                               ; preds = %5
  br label %211

54:                                               ; preds = %5
  br label %211

55:                                               ; preds = %5
  br label %211

56:                                               ; preds = %5
  br label %211

57:                                               ; preds = %5
  br label %211

58:                                               ; preds = %5
  br label %211

59:                                               ; preds = %5
  br label %211

60:                                               ; preds = %5
  br label %211

61:                                               ; preds = %5
  br label %211

62:                                               ; preds = %5
  br label %211

63:                                               ; preds = %5
  br label %211

64:                                               ; preds = %5
  br label %211

65:                                               ; preds = %5
  br label %211

66:                                               ; preds = %5
  br label %211

67:                                               ; preds = %5
  br label %211

68:                                               ; preds = %5
  br label %211

69:                                               ; preds = %5
  br label %211

70:                                               ; preds = %5
  br label %211

71:                                               ; preds = %5
  br label %211

72:                                               ; preds = %5
  br label %211

73:                                               ; preds = %5
  br label %211

74:                                               ; preds = %5
  br label %211

75:                                               ; preds = %5
  br label %211

76:                                               ; preds = %5
  br label %211

77:                                               ; preds = %5
  br label %211

78:                                               ; preds = %5
  br label %211

79:                                               ; preds = %5
  br label %211

80:                                               ; preds = %5
  br label %211

81:                                               ; preds = %5
  br label %211

82:                                               ; preds = %5
  br label %211

83:                                               ; preds = %5
  br label %211

84:                                               ; preds = %5
  br label %211

85:                                               ; preds = %5
  br label %211

86:                                               ; preds = %5
  br label %211

87:                                               ; preds = %5
  br label %211

88:                                               ; preds = %5
  br label %211

89:                                               ; preds = %5
  br label %211

90:                                               ; preds = %5
  br label %211

91:                                               ; preds = %5
  br label %211

92:                                               ; preds = %5
  br label %211

93:                                               ; preds = %5
  br label %211

94:                                               ; preds = %5
  br label %211

95:                                               ; preds = %5
  br label %211

96:                                               ; preds = %5
  br label %211

97:                                               ; preds = %5
  br label %211

98:                                               ; preds = %5
  br label %211

99:                                               ; preds = %5
  br label %211

100:                                              ; preds = %5
  br label %211

101:                                              ; preds = %5
  br label %211

102:                                              ; preds = %5
  br label %211

103:                                              ; preds = %5
  br label %211

104:                                              ; preds = %5
  br label %211

105:                                              ; preds = %5
  br label %211

106:                                              ; preds = %5
  br label %211

107:                                              ; preds = %5
  br label %211

108:                                              ; preds = %5
  br label %211

109:                                              ; preds = %5
  br label %211

110:                                              ; preds = %5
  br label %211

111:                                              ; preds = %5
  br label %211

112:                                              ; preds = %5
  br label %211

113:                                              ; preds = %5
  br label %211

114:                                              ; preds = %5
  br label %211

115:                                              ; preds = %5
  br label %211

116:                                              ; preds = %5
  br label %211

117:                                              ; preds = %5
  br label %211

118:                                              ; preds = %5
  br label %211

119:                                              ; preds = %5
  br label %211

120:                                              ; preds = %5
  br label %211

121:                                              ; preds = %5
  br label %211

122:                                              ; preds = %5
  br label %211

123:                                              ; preds = %5
  br label %211

124:                                              ; preds = %5
  br label %211

125:                                              ; preds = %5
  br label %211

126:                                              ; preds = %5
  br label %211

127:                                              ; preds = %5
  br label %211

128:                                              ; preds = %5
  br label %211

129:                                              ; preds = %5
  br label %211

130:                                              ; preds = %5
  br label %211

131:                                              ; preds = %5
  br label %211

132:                                              ; preds = %5
  br label %211

133:                                              ; preds = %5
  br label %211

134:                                              ; preds = %5
  br label %211

135:                                              ; preds = %5
  br label %211

136:                                              ; preds = %5
  br label %211

137:                                              ; preds = %5
  br label %211

138:                                              ; preds = %5
  br label %211

139:                                              ; preds = %5
  br label %211

140:                                              ; preds = %5
  br label %211

141:                                              ; preds = %5
  br label %211

142:                                              ; preds = %5
  br label %211

143:                                              ; preds = %5
  br label %211

144:                                              ; preds = %5
  br label %211

145:                                              ; preds = %5
  br label %211

146:                                              ; preds = %5
  br label %211

147:                                              ; preds = %5
  br label %211

148:                                              ; preds = %5
  br label %211

149:                                              ; preds = %5
  br label %211

150:                                              ; preds = %5
  br label %211

151:                                              ; preds = %5
  br label %211

152:                                              ; preds = %5
  br label %211

153:                                              ; preds = %5
  br label %211

154:                                              ; preds = %5
  br label %211

155:                                              ; preds = %5
  br label %211

156:                                              ; preds = %5
  br label %211

157:                                              ; preds = %5
  br label %211

158:                                              ; preds = %5
  br label %211

159:                                              ; preds = %5
  br label %211

160:                                              ; preds = %5
  br label %211

161:                                              ; preds = %5
  br label %211

162:                                              ; preds = %5
  br label %211

163:                                              ; preds = %5
  br label %211

164:                                              ; preds = %5
  br label %211

165:                                              ; preds = %5
  br label %211

166:                                              ; preds = %5
  br label %211

167:                                              ; preds = %5
  br label %211

168:                                              ; preds = %5
  br label %211

169:                                              ; preds = %5
  br label %211

170:                                              ; preds = %5
  br label %211

171:                                              ; preds = %5
  br label %211

172:                                              ; preds = %5
  br label %211

173:                                              ; preds = %5
  br label %211

174:                                              ; preds = %5
  br label %211

175:                                              ; preds = %5
  br label %211

176:                                              ; preds = %5
  br label %211

177:                                              ; preds = %5
  br label %211

178:                                              ; preds = %5
  br label %211

179:                                              ; preds = %5
  br label %211

180:                                              ; preds = %5
  br label %211

181:                                              ; preds = %5
  br label %211

182:                                              ; preds = %5
  br label %211

183:                                              ; preds = %5
  br label %211

184:                                              ; preds = %5
  br label %211

185:                                              ; preds = %5
  br label %211

186:                                              ; preds = %5
  br label %211

187:                                              ; preds = %5
  br label %211

188:                                              ; preds = %5
  br label %211

189:                                              ; preds = %5
  br label %211

190:                                              ; preds = %5
  br label %211

191:                                              ; preds = %5
  br label %211

192:                                              ; preds = %5
  br label %211

193:                                              ; preds = %5
  br label %211

194:                                              ; preds = %5
  br label %211

195:                                              ; preds = %5
  br label %211

196:                                              ; preds = %5
  br label %211

197:                                              ; preds = %5
  br label %211

198:                                              ; preds = %5
  br label %211

199:                                              ; preds = %5
  br label %211

200:                                              ; preds = %5
  br label %211

201:                                              ; preds = %5
  br label %211

202:                                              ; preds = %5
  br label %211

203:                                              ; preds = %5
  br label %211

204:                                              ; preds = %5
  br label %211

205:                                              ; preds = %5
  br label %211

206:                                              ; preds = %5
  br label %211

207:                                              ; preds = %5
  br label %211

208:                                              ; preds = %5
  br label %211

209:                                              ; preds = %5
  br label %211

210:                                              ; preds = %5
  br label %211

211:                                              ; preds = %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35, %36, %37, %38, %39, %40, %41, %42, %43, %44, %45, %46, %47, %48, %49, %50, %51, %52, %53, %54, %55, %56, %57, %58, %59, %60, %61, %62, %63, %64, %65, %66, %67, %68, %69, %70, %71, %72, %73, %74, %75, %76, %77, %78, %79, %80, %81, %82, %83, %84, %85, %86, %87, %88, %89, %90, %91, %92, %93, %94, %95, %96, %97, %98, %99, %100, %101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123, %124, %125, %126, %127, %128, %129, %130, %131, %132, %133, %134, %135, %136, %137, %138, %139, %140, %141, %142, %143, %144, %145, %146, %147, %148, %149, %150, %151, %152, %153, %154, %155, %156, %157, %158, %159, %160, %161, %162, %163, %164, %165, %166, %167, %168, %169, %170, %171, %172, %173, %174, %175, %176, %177, %178, %179, %180, %181, %182, %183, %184, %185, %186, %187, %188, %189, %190, %191, %192, %193, %194, %195, %196, %197, %198, %199, %200, %201, %202, %203, %204, %205, %206, %207, %208, %209, %210
  %212 = phi ptr [ @.str.57, %6 ], [ @.str.58, %7 ], [ @.str.59, %8 ], [ @.str.60, %9 ], [ @.str.61, %10 ], [ @.str.62, %11 ], [ @.str.63, %12 ], [ @.str.64, %13 ], [ @.str.65, %14 ], [ @.str.66, %15 ], [ @.str.67, %16 ], [ @.str.68, %17 ], [ @.str.69, %18 ], [ @.str.70, %19 ], [ @.str.71, %20 ], [ @.str.72, %21 ], [ @.str.73, %22 ], [ @.str.74, %23 ], [ @.str.75, %24 ], [ @.str.76, %25 ], [ @.str.77, %26 ], [ @.str.78, %27 ], [ @.str.79, %28 ], [ @.str.80, %29 ], [ @.str.81, %30 ], [ @.str.82, %31 ], [ @.str.83, %32 ], [ @.str.84, %33 ], [ @.str.85, %34 ], [ @.str.86, %35 ], [ @.str.87, %36 ], [ @.str.88, %37 ], [ @.str.89, %38 ], [ @.str.90, %39 ], [ @.str.91, %40 ], [ @.str.92, %41 ], [ @.str.93, %42 ], [ @.str.94, %43 ], [ @.str.95, %44 ], [ @.str.96, %45 ], [ @.str.97, %46 ], [ @.str.98, %47 ], [ @.str.99, %48 ], [ @.str.100, %49 ], [ @.str.101, %50 ], [ @.str.102, %51 ], [ @.str.103, %52 ], [ @.str.104, %53 ], [ @.str.105, %54 ], [ @.str.106, %55 ], [ @.str.107, %56 ], [ @.str.108, %57 ], [ @.str.109, %58 ], [ @.str.110, %59 ], [ @.str.111, %60 ], [ @.str.112, %61 ], [ @.str.113, %62 ], [ @.str.114, %63 ], [ @.str.115, %64 ], [ @.str.116, %65 ], [ @.str.117, %66 ], [ @.str.118, %67 ], [ @.str.119, %68 ], [ @.str.120, %69 ], [ @.str.121, %70 ], [ @.str.122, %71 ], [ @.str.123, %72 ], [ @.str.124, %73 ], [ @.str.125, %74 ], [ @.str.126, %75 ], [ @.str.127, %76 ], [ @.str.128, %77 ], [ @.str.129, %78 ], [ @.str.130, %79 ], [ @.str.131, %80 ], [ @.str.132, %81 ], [ @.str.133, %82 ], [ @.str.134, %83 ], [ @.str.135, %84 ], [ @.str.136, %85 ], [ @.str.137, %86 ], [ @.str.138, %87 ], [ @.str.139, %88 ], [ @.str.140, %89 ], [ @.str.141, %90 ], [ @.str.142, %91 ], [ @.str.143, %92 ], [ @.str.144, %93 ], [ @.str.145, %94 ], [ @.str.146, %95 ], [ @.str.147, %96 ], [ @.str.148, %97 ], [ @.str.149, %98 ], [ @.str.150, %99 ], [ @.str.151, %100 ], [ @.str.152, %101 ], [ @.str.153, %102 ], [ @.str.154, %103 ], [ @.str.155, %104 ], [ @.str.156, %105 ], [ @.str.157, %106 ], [ @.str.158, %107 ], [ @.str.159, %108 ], [ @.str.160, %109 ], [ @.str.161, %110 ], [ @.str.162, %111 ], [ @.str.163, %112 ], [ @.str.164, %113 ], [ @.str.165, %114 ], [ @.str.166, %115 ], [ @.str.167, %116 ], [ @.str.168, %117 ], [ @.str.169, %118 ], [ @.str.170, %119 ], [ @.str.171, %120 ], [ @.str.172, %121 ], [ @.str.173, %122 ], [ @.str.174, %123 ], [ @.str.175, %124 ], [ @.str.176, %125 ], [ @.str.177, %126 ], [ @.str.178, %127 ], [ @.str.179, %128 ], [ @.str.180, %129 ], [ @.str.181, %130 ], [ @.str.182, %131 ], [ @.str.183, %132 ], [ @.str.184, %133 ], [ @.str.185, %134 ], [ @.str.186, %135 ], [ @.str.187, %136 ], [ @.str.188, %137 ], [ @.str.189, %138 ], [ @.str.190, %139 ], [ @.str.191, %140 ], [ @.str.192, %141 ], [ @.str.193, %142 ], [ @.str.194, %143 ], [ @.str.195, %144 ], [ @.str.196, %145 ], [ @.str.197, %146 ], [ @.str.198, %147 ], [ @.str.199, %148 ], [ @.str.200, %149 ], [ @.str.201, %150 ], [ @.str.202, %151 ], [ @.str.203, %152 ], [ @.str.204, %153 ], [ @.str.205, %154 ], [ @.str.206, %155 ], [ @.str.207, %156 ], [ @.str.208, %157 ], [ @.str.209, %158 ], [ @.str.210, %159 ], [ @.str.211, %160 ], [ @.str.212, %161 ], [ @.str.213, %162 ], [ @.str.214, %163 ], [ @.str.215, %164 ], [ @.str.216, %165 ], [ @.str.217, %166 ], [ @.str.218, %167 ], [ @.str.219, %168 ], [ @.str.220, %169 ], [ @.str.221, %170 ], [ @.str.222, %171 ], [ @.str.223, %172 ], [ @.str.224, %173 ], [ @.str.225, %174 ], [ @.str.226, %175 ], [ @.str.227, %176 ], [ @.str.228, %177 ], [ @.str.229, %178 ], [ @.str.230, %179 ], [ @.str.231, %180 ], [ @.str.232, %181 ], [ @.str.233, %182 ], [ @.str.234, %183 ], [ @.str.235, %184 ], [ @.str.236, %185 ], [ @.str.237, %186 ], [ @.str.238, %187 ], [ @.str.239, %188 ], [ @.str.240, %189 ], [ @.str.241, %190 ], [ @.str.242, %191 ], [ @.str.243, %192 ], [ @.str.244, %193 ], [ @.str.245, %194 ], [ @.str.246, %195 ], [ @.str.247, %196 ], [ @.str.248, %197 ], [ @.str.249, %198 ], [ @.str.250, %199 ], [ @.str.251, %200 ], [ @.str.252, %201 ], [ @.str.253, %202 ], [ @.str.254, %203 ], [ @.str.255, %204 ], [ @.str.256, %205 ], [ @.str.257, %206 ], [ @.str.258, %207 ], [ @.str.259, %208 ], [ @.str.260, %209 ], [ @.str.261, %210 ], [ @.str.56, %5 ]
  %213 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 3
  %214 = tail call ptr @BLI_strncpy(ptr noundef nonnull %213, ptr noundef nonnull %212, i64 noundef 64) #23
  %215 = tail call ptr @RNA_struct_find(ptr noundef nonnull %212) #23
  %216 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 44, i32 1
  store ptr %215, ptr %216, align 8, !tbaa !353
  tail call void @RNA_struct_blender_type_set(ptr noundef %215, ptr noundef %0) #23
  br label %217

217:                                              ; preds = %211, %5
  %218 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  store i32 %1, ptr %218, align 4, !tbaa !71
  %219 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 5
  %220 = tail call ptr @BLI_strncpy(ptr noundef nonnull %219, ptr noundef %2, i64 noundef 64) #23
  %221 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 14
  store i16 %3, ptr %221, align 4, !tbaa !255
  %222 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 15
  store i16 %4, ptr %222, align 2, !tbaa !74
  %223 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 8
  store float 1.400000e+02, ptr %223, align 4, !tbaa !75
  %224 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 9
  store float 1.000000e+02, ptr %224, align 8, !tbaa !354
  %225 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 10
  store float 3.200000e+02, ptr %225, align 4, !tbaa !355
  %226 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 11
  store float 1.000000e+02, ptr %226, align 8, !tbaa !78
  %227 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 12
  store float 3.000000e+01, ptr %227, align 4, !tbaa !356
  %228 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 13
  store float 0x47EFFFFFE0000000, ptr %228, align 8, !tbaa !357
  %229 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 37
  store ptr @node_poll_default, ptr %229, align 8, !tbaa !177
  %230 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 38
  store ptr @node_poll_instance_default, ptr %230, align 8, !tbaa !358
  ret void
}

declare ptr @RNA_struct_find(ptr noundef) local_unnamed_addr #2

declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @node_poll_default(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @node_poll_instance_default(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = tail call i32 %6(ptr noundef %4, ptr noundef %1) #23
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @node_type_base_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 3
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #23
  %8 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  store i32 -1, ptr %8, align 4, !tbaa !71
  %9 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 5
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %2, i64 noundef 64) #23
  %11 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 14
  store i16 %3, ptr %11, align 4, !tbaa !255
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 15
  store i16 %4, ptr %12, align 2, !tbaa !74
  %13 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 8
  store float 1.400000e+02, ptr %13, align 4, !tbaa !75
  %14 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 9
  store float 1.000000e+02, ptr %14, align 8, !tbaa !354
  %15 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 10
  store float 3.200000e+02, ptr %15, align 4, !tbaa !355
  %16 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 11
  store float 1.000000e+02, ptr %16, align 8, !tbaa !78
  %17 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 12
  store float 3.000000e+01, ptr %17, align 4, !tbaa !356
  %18 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 13
  store float 0x47EFFFFFE0000000, ptr %18, align 8, !tbaa !357
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_type_socket_templates(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.anon.0, align 8
  %5 = alloca %struct.anon.0, align 8
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 17
  store ptr %1, ptr %6, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 18
  store ptr %2, ptr %7, align 8, !tbaa !85
  %8 = icmp eq ptr %1, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8, !tbaa !82
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %17, label %12

12:                                               ; preds = %17, %9
  %13 = load i32, ptr %1, align 8, !tbaa !82
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.anon.0, ptr %5, i64 0, i32 1
  br label %23

17:                                               ; preds = %9, %17
  %18 = phi ptr [ %20, %17 ], [ %1, %9 ]
  %19 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %18, i64 0, i32 12
  store i8 0, ptr %19, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %18, i64 1
  %21 = load i32, ptr %20, align 8, !tbaa !82
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %17, label %12, !llvm.loop !359

23:                                               ; preds = %15, %23
  %24 = phi ptr [ %1, %15 ], [ %29, %23 ]
  %25 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %24, i64 0, i32 12
  %26 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %24, i64 0, i32 2
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %26, i64 noundef 64) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8, !tbaa !360
  store ptr %24, ptr %16, align 8, !tbaa !362
  %28 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_socket_template_identifier_check, ptr noundef nonnull %5, ptr noundef nonnull %25, i8 noundef zeroext 95, ptr noundef nonnull %25, i32 noundef 64) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  %29 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %24, i64 1
  %30 = load i32, ptr %29, align 8, !tbaa !82
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %23, label %32, !llvm.loop !363

32:                                               ; preds = %23, %12, %3
  %33 = icmp eq ptr %2, null
  br i1 %33, label %57, label %34

34:                                               ; preds = %32
  %35 = load i32, ptr %2, align 8, !tbaa !82
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %42, label %37

37:                                               ; preds = %42, %34
  %38 = load i32, ptr %2, align 8, !tbaa !82
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  br label %48

42:                                               ; preds = %34, %42
  %43 = phi ptr [ %45, %42 ], [ %2, %34 ]
  %44 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %43, i64 0, i32 12
  store i8 0, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %43, i64 1
  %46 = load i32, ptr %45, align 8, !tbaa !82
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %42, label %37, !llvm.loop !364

48:                                               ; preds = %40, %48
  %49 = phi ptr [ %2, %40 ], [ %54, %48 ]
  %50 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %49, i64 0, i32 12
  %51 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %49, i64 0, i32 2
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull %51, i64 noundef 64) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  store ptr %2, ptr %4, align 8, !tbaa !360
  store ptr %49, ptr %41, align 8, !tbaa !362
  %53 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_socket_template_identifier_check, ptr noundef nonnull %4, ptr noundef nonnull %50, i8 noundef zeroext 95, ptr noundef nonnull %50, i32 noundef 64) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  %54 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %49, i64 1
  %55 = load i32, ptr %54, align 8, !tbaa !82
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %48, label %57, !llvm.loop !365

57:                                               ; preds = %48, %37, %32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 31
  store ptr %1, ptr %3, align 8, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_size(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
  %5 = sitofp i32 %1 to float
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 8
  store float %5, ptr %6, align 4, !tbaa !75
  %7 = sitofp i32 %2 to float
  %8 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 9
  store float %7, ptr %8, align 8, !tbaa !354
  %9 = icmp sgt i32 %3, %2
  %10 = sitofp i32 %3 to float
  %11 = select i1 %9, float %10, float 0x47EFFFFFE0000000
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 10
  store float %11, ptr %12, align 4, !tbaa !355
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_size_preset(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr inbounds [4 x float], ptr @switch.table.node_type_size_preset, i64 0, i64 %5
  %7 = load float, ptr %6, align 4
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds [4 x float], ptr @switch.table.node_type_size_preset.279, i64 0, i64 %8
  %10 = load float, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 8
  store float %7, ptr %11, align 4, !tbaa !75
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 9
  store float %10, ptr %12, align 8, !tbaa !354
  %13 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 10
  store float 3.200000e+02, ptr %13, align 4, !tbaa !355
  br label %14

14:                                               ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @node_type_storage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 19
  br i1 %5, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %1, i64 noundef 64) #23
  br label %10

9:                                                ; preds = %4
  store i8 0, ptr %6, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 33
  store ptr %3, ptr %11, align 8, !tbaa !188
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 32
  store ptr %2, ptr %12, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_label(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 25
  store ptr %1, ptr %3, align 8, !tbaa !352
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_update(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #20 {
  %4 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 29
  store ptr %1, ptr %4, align 8, !tbaa !331
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 30
  store ptr %2, ptr %5, align 8, !tbaa !323
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_exec(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #20 {
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 40
  store ptr %1, ptr %5, align 8, !tbaa !366
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 41
  store ptr %2, ptr %6, align 8, !tbaa !367
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 42
  store ptr %3, ptr %7, align 8, !tbaa !368
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_gpu(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !369
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_internal_links(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 39
  store ptr %1, ptr %3, align 8, !tbaa !332
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @node_type_compatibility(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #20 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 16
  store i16 %1, ptr %3, align 8, !tbaa !370
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_nodesystem() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.262) #23
  store ptr %1, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %2 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.263) #23
  store ptr %2, ptr @nodetypes_hash, align 8, !tbaa !47
  %3 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.264) #23
  store ptr %3, ptr @nodesockettypes_hash, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) getelementptr inbounds (%struct.bNodeTreeType, ptr @NodeTreeTypeUndefined, i64 0, i32 1), ptr noundef nonnull align 1 dereferenceable(18) @.str.274, i64 18, i1 false) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) getelementptr inbounds (%struct.bNodeTreeType, ptr @NodeTreeTypeUndefined, i64 0, i32 2), ptr noundef nonnull align 1 dereferenceable(10) @.str.275, i64 10, i1 false) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) getelementptr inbounds (%struct.bNodeTreeType, ptr @NodeTreeTypeUndefined, i64 0, i32 3), ptr noundef nonnull align 1 dereferenceable(25) @.str.276, i64 25, i1 false) #23
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 3), ptr noundef nonnull @.str.277, i64 noundef 64) #23
  store i32 -1, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 4), align 4, !tbaa !71
  %5 = tail call ptr @BLI_strncpy(ptr noundef nonnull getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 5), ptr noundef nonnull @.str.275, i64 noundef 64) #23
  store i16 0, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 14), align 4, !tbaa !255
  store i16 0, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 15), align 2, !tbaa !74
  store float 1.400000e+02, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 8), align 4, !tbaa !75
  store float 1.000000e+02, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 9), align 8, !tbaa !354
  store float 3.200000e+02, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 10), align 4, !tbaa !355
  store float 1.000000e+02, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 11), align 8, !tbaa !78
  store float 3.000000e+01, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 12), align 4, !tbaa !356
  store float 0x47EFFFFFE0000000, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 13), align 8, !tbaa !357
  store ptr @node_undefined_poll, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 37), align 8, !tbaa !177
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull @NodeSocketTypeUndefined, ptr noundef nonnull @.str.278, i64 noundef 64) #23
  store i32 -1, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 11), align 8, !tbaa !59
  store i32 0, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 12), align 4, !tbaa !371
  tail call void @register_standard_node_socket_types() #23
  tail call void @register_node_tree_type_cmp() #23
  tail call void @register_node_tree_type_sh() #23
  tail call void @register_node_tree_type_tex() #23
  tail call void @register_node_type_frame() #23
  tail call void @register_node_type_reroute() #23
  tail call void @register_node_type_group_input() #23
  tail call void @register_node_type_group_output() #23
  tail call void @register_node_type_cmp_group() #23
  tail call void @register_node_type_cmp_rlayers() #23
  tail call void @register_node_type_cmp_image() #23
  tail call void @register_node_type_cmp_texture() #23
  tail call void @register_node_type_cmp_value() #23
  tail call void @register_node_type_cmp_rgb() #23
  tail call void @register_node_type_cmp_curve_time() #23
  tail call void @register_node_type_cmp_movieclip() #23
  tail call void @register_node_type_cmp_composite() #23
  tail call void @register_node_type_cmp_viewer() #23
  tail call void @register_node_type_cmp_splitviewer() #23
  tail call void @register_node_type_cmp_output_file() #23
  tail call void @register_node_type_cmp_view_levels() #23
  tail call void @register_node_type_cmp_curve_rgb() #23
  tail call void @register_node_type_cmp_mix_rgb() #23
  tail call void @register_node_type_cmp_hue_sat() #23
  tail call void @register_node_type_cmp_brightcontrast() #23
  tail call void @register_node_type_cmp_gamma() #23
  tail call void @register_node_type_cmp_invert() #23
  tail call void @register_node_type_cmp_alphaover() #23
  tail call void @register_node_type_cmp_zcombine() #23
  tail call void @register_node_type_cmp_colorbalance() #23
  tail call void @register_node_type_cmp_huecorrect() #23
  tail call void @register_node_type_cmp_normal() #23
  tail call void @register_node_type_cmp_curve_vec() #23
  tail call void @register_node_type_cmp_map_value() #23
  tail call void @register_node_type_cmp_map_range() #23
  tail call void @register_node_type_cmp_normalize() #23
  tail call void @register_node_type_cmp_filter() #23
  tail call void @register_node_type_cmp_blur() #23
  tail call void @register_node_type_cmp_dblur() #23
  tail call void @register_node_type_cmp_bilateralblur() #23
  tail call void @register_node_type_cmp_vecblur() #23
  tail call void @register_node_type_cmp_dilateerode() #23
  tail call void @register_node_type_cmp_inpaint() #23
  tail call void @register_node_type_cmp_despeckle() #23
  tail call void @register_node_type_cmp_defocus() #23
  tail call void @register_node_type_cmp_sunbeams() #23
  tail call void @register_node_type_cmp_valtorgb() #23
  tail call void @register_node_type_cmp_rgbtobw() #23
  tail call void @register_node_type_cmp_setalpha() #23
  tail call void @register_node_type_cmp_idmask() #23
  tail call void @register_node_type_cmp_math() #23
  tail call void @register_node_type_cmp_seprgba() #23
  tail call void @register_node_type_cmp_combrgba() #23
  tail call void @register_node_type_cmp_sephsva() #23
  tail call void @register_node_type_cmp_combhsva() #23
  tail call void @register_node_type_cmp_sepyuva() #23
  tail call void @register_node_type_cmp_combyuva() #23
  tail call void @register_node_type_cmp_sepycca() #23
  tail call void @register_node_type_cmp_combycca() #23
  tail call void @register_node_type_cmp_premulkey() #23
  tail call void @register_node_type_cmp_diff_matte() #23
  tail call void @register_node_type_cmp_distance_matte() #23
  tail call void @register_node_type_cmp_chroma_matte() #23
  tail call void @register_node_type_cmp_color_matte() #23
  tail call void @register_node_type_cmp_channel_matte() #23
  tail call void @register_node_type_cmp_color_spill() #23
  tail call void @register_node_type_cmp_luma_matte() #23
  tail call void @register_node_type_cmp_doubleedgemask() #23
  tail call void @register_node_type_cmp_keyingscreen() #23
  tail call void @register_node_type_cmp_keying() #23
  tail call void @register_node_type_cmp_translate() #23
  tail call void @register_node_type_cmp_rotate() #23
  tail call void @register_node_type_cmp_scale() #23
  tail call void @register_node_type_cmp_flip() #23
  tail call void @register_node_type_cmp_crop() #23
  tail call void @register_node_type_cmp_displace() #23
  tail call void @register_node_type_cmp_mapuv() #23
  tail call void @register_node_type_cmp_glare() #23
  tail call void @register_node_type_cmp_tonemap() #23
  tail call void @register_node_type_cmp_lensdist() #23
  tail call void @register_node_type_cmp_transform() #23
  tail call void @register_node_type_cmp_stabilize2d() #23
  tail call void @register_node_type_cmp_moviedistortion() #23
  tail call void @register_node_type_cmp_colorcorrection() #23
  tail call void @register_node_type_cmp_boxmask() #23
  tail call void @register_node_type_cmp_ellipsemask() #23
  tail call void @register_node_type_cmp_bokehimage() #23
  tail call void @register_node_type_cmp_bokehblur() #23
  tail call void @register_node_type_cmp_switch() #23
  tail call void @register_node_type_cmp_pixelate() #23
  tail call void @register_node_type_cmp_mask() #23
  tail call void @register_node_type_cmp_trackpos() #23
  tail call void @register_node_type_cmp_planetrackdeform() #23
  tail call void @register_node_type_cmp_cornerpin() #23
  tail call void @register_node_type_sh_group() #23
  tail call void @register_node_type_sh_output() #23
  tail call void @register_node_type_sh_material() #23
  tail call void @register_node_type_sh_camera() #23
  tail call void @register_node_type_sh_lamp() #23
  tail call void @register_node_type_sh_gamma() #23
  tail call void @register_node_type_sh_brightcontrast() #23
  tail call void @register_node_type_sh_value() #23
  tail call void @register_node_type_sh_rgb() #23
  tail call void @register_node_type_sh_wireframe() #23
  tail call void @register_node_type_sh_wavelength() #23
  tail call void @register_node_type_sh_blackbody() #23
  tail call void @register_node_type_sh_mix_rgb() #23
  tail call void @register_node_type_sh_valtorgb() #23
  tail call void @register_node_type_sh_rgbtobw() #23
  tail call void @register_node_type_sh_texture() #23
  tail call void @register_node_type_sh_normal() #23
  tail call void @register_node_type_sh_geom() #23
  tail call void @register_node_type_sh_mapping() #23
  tail call void @register_node_type_sh_curve_vec() #23
  tail call void @register_node_type_sh_curve_rgb() #23
  tail call void @register_node_type_sh_math() #23
  tail call void @register_node_type_sh_vect_math() #23
  tail call void @register_node_type_sh_vect_transform() #23
  tail call void @register_node_type_sh_squeeze() #23
  tail call void @register_node_type_sh_material_ext() #23
  tail call void @register_node_type_sh_invert() #23
  tail call void @register_node_type_sh_seprgb() #23
  tail call void @register_node_type_sh_combrgb() #23
  tail call void @register_node_type_sh_sephsv() #23
  tail call void @register_node_type_sh_combhsv() #23
  tail call void @register_node_type_sh_sepxyz() #23
  tail call void @register_node_type_sh_combxyz() #23
  tail call void @register_node_type_sh_hue_sat() #23
  tail call void @register_node_type_sh_attribute() #23
  tail call void @register_node_type_sh_geometry() #23
  tail call void @register_node_type_sh_light_path() #23
  tail call void @register_node_type_sh_light_falloff() #23
  tail call void @register_node_type_sh_object_info() #23
  tail call void @register_node_type_sh_fresnel() #23
  tail call void @register_node_type_sh_layer_weight() #23
  tail call void @register_node_type_sh_tex_coord() #23
  tail call void @register_node_type_sh_particle_info() #23
  tail call void @register_node_type_sh_bump() #23
  tail call void @register_node_type_sh_background() #23
  tail call void @register_node_type_sh_bsdf_anisotropic() #23
  tail call void @register_node_type_sh_bsdf_diffuse() #23
  tail call void @register_node_type_sh_bsdf_glossy() #23
  tail call void @register_node_type_sh_bsdf_glass() #23
  tail call void @register_node_type_sh_bsdf_translucent() #23
  tail call void @register_node_type_sh_bsdf_transparent() #23
  tail call void @register_node_type_sh_bsdf_velvet() #23
  tail call void @register_node_type_sh_bsdf_toon() #23
  tail call void @register_node_type_sh_bsdf_hair() #23
  tail call void @register_node_type_sh_emission() #23
  tail call void @register_node_type_sh_holdout() #23
  tail call void @register_node_type_sh_volume_absorption() #23
  tail call void @register_node_type_sh_volume_scatter() #23
  tail call void @register_node_type_sh_subsurface_scattering() #23
  tail call void @register_node_type_sh_mix_shader() #23
  tail call void @register_node_type_sh_add_shader() #23
  tail call void @register_node_type_sh_uvmap() #23
  tail call void @register_node_type_sh_uvalongstroke() #23
  tail call void @register_node_type_sh_output_lamp() #23
  tail call void @register_node_type_sh_output_material() #23
  tail call void @register_node_type_sh_output_world() #23
  tail call void @register_node_type_sh_output_linestyle() #23
  tail call void @register_node_type_sh_tex_image() #23
  tail call void @register_node_type_sh_tex_environment() #23
  tail call void @register_node_type_sh_tex_sky() #23
  tail call void @register_node_type_sh_tex_noise() #23
  tail call void @register_node_type_sh_tex_wave() #23
  tail call void @register_node_type_sh_tex_voronoi() #23
  tail call void @register_node_type_sh_tex_musgrave() #23
  tail call void @register_node_type_sh_tex_gradient() #23
  tail call void @register_node_type_sh_tex_magic() #23
  tail call void @register_node_type_sh_tex_checker() #23
  tail call void @register_node_type_sh_tex_brick() #23
  tail call void @register_node_type_tex_group() #23
  tail call void @register_node_type_tex_math() #23
  tail call void @register_node_type_tex_mix_rgb() #23
  tail call void @register_node_type_tex_valtorgb() #23
  tail call void @register_node_type_tex_rgbtobw() #23
  tail call void @register_node_type_tex_valtonor() #23
  tail call void @register_node_type_tex_curve_rgb() #23
  tail call void @register_node_type_tex_curve_time() #23
  tail call void @register_node_type_tex_invert() #23
  tail call void @register_node_type_tex_hue_sat() #23
  tail call void @register_node_type_tex_coord() #23
  tail call void @register_node_type_tex_distance() #23
  tail call void @register_node_type_tex_compose() #23
  tail call void @register_node_type_tex_decompose() #23
  tail call void @register_node_type_tex_output() #23
  tail call void @register_node_type_tex_viewer() #23
  tail call void @register_node_type_sh_script() #23
  tail call void @register_node_type_sh_tangent() #23
  tail call void @register_node_type_sh_normal_map() #23
  tail call void @register_node_type_sh_hair_info() #23
  tail call void @register_node_type_tex_checker() #23
  tail call void @register_node_type_tex_texture() #23
  tail call void @register_node_type_tex_bricks() #23
  tail call void @register_node_type_tex_image() #23
  tail call void @register_node_type_sh_bsdf_refraction() #23
  tail call void @register_node_type_sh_ambient_occlusion() #23
  tail call void @register_node_type_tex_rotate() #23
  tail call void @register_node_type_tex_translate() #23
  tail call void @register_node_type_tex_scale() #23
  tail call void @register_node_type_tex_at() #23
  tail call void @register_node_type_tex_proc_voronoi() #23
  tail call void @register_node_type_tex_proc_blend() #23
  tail call void @register_node_type_tex_proc_magic() #23
  tail call void @register_node_type_tex_proc_marble() #23
  tail call void @register_node_type_tex_proc_clouds() #23
  tail call void @register_node_type_tex_proc_wood() #23
  tail call void @register_node_type_tex_proc_musgrave() #23
  tail call void @register_node_type_tex_proc_noise() #23
  tail call void @register_node_type_tex_proc_stucci() #23
  tail call void @register_node_type_tex_proc_distnoise() #23
  ret void
}

declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #2

declare void @register_standard_node_socket_types() local_unnamed_addr #2

declare void @register_node_tree_type_cmp() local_unnamed_addr #2

declare void @register_node_tree_type_sh() local_unnamed_addr #2

declare void @register_node_tree_type_tex() local_unnamed_addr #2

declare void @register_node_type_frame() local_unnamed_addr #2

declare void @register_node_type_reroute() local_unnamed_addr #2

declare void @register_node_type_group_input() local_unnamed_addr #2

declare void @register_node_type_group_output() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_nodesystem() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @BLI_ghashIterator_new(ptr noundef nonnull %1) #23
  %5 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !173
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3, %18
  %9 = phi ptr [ %19, %18 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct._gh_Entry, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !175
  %12 = getelementptr inbounds %struct.bNodeType, ptr %11, i64 0, i32 44, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !372
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bNodeType, ptr %11, i64 0, i32 44
  %17 = load ptr, ptr %16, align 8, !tbaa !373
  tail call void %13(ptr noundef %17) #23
  br label %18

18:                                               ; preds = %15, %8
  tail call void @BLI_ghashIterator_step(ptr noundef %4) #23
  %19 = load ptr, ptr %5, align 8, !tbaa !173
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !374

21:                                               ; preds = %18, %3
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #23
  %22 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !47
  tail call void @BLI_ghash_free(ptr noundef %22, ptr noundef null, ptr noundef nonnull @node_free_type) #23
  store ptr null, ptr @nodetypes_hash, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %21, %0
  %24 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  %25 = icmp eq ptr %24, null
  br i1 %25, label %53, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @BLI_ghashIterator_new(ptr noundef nonnull %24) #23
  %28 = getelementptr inbounds %struct.GHashIterator, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !173
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %26, %48
  %32 = phi ptr [ %49, %48 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct._gh_Entry, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !175
  %35 = getelementptr inbounds %struct.bNodeSocketType, ptr %34, i64 0, i32 9, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !375
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.bNodeSocketType, ptr %34, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !376
  tail call void %36(ptr noundef %40) #23
  br label %41

41:                                               ; preds = %38, %31
  %42 = getelementptr inbounds %struct.bNodeSocketType, ptr %34, i64 0, i32 10, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !377
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bNodeSocketType, ptr %34, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !378
  tail call void %43(ptr noundef %47) #23
  br label %48

48:                                               ; preds = %45, %41
  tail call void @BLI_ghashIterator_step(ptr noundef %27) #23
  %49 = load ptr, ptr %28, align 8, !tbaa !173
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %31, !llvm.loop !379

51:                                               ; preds = %48, %26
  tail call void @BLI_ghashIterator_free(ptr noundef %27) #23
  %52 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !47
  tail call void @BLI_ghash_free(ptr noundef %52, ptr noundef null, ptr noundef nonnull @node_free_socket_type) #23
  store ptr null, ptr @nodesockettypes_hash, align 8, !tbaa !47
  br label %53

53:                                               ; preds = %51, %23
  %54 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  %55 = icmp eq ptr %54, null
  br i1 %55, label %76, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @BLI_ghashIterator_new(ptr noundef nonnull %54) #23
  %58 = getelementptr inbounds %struct.GHashIterator, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !173
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %56, %71
  %62 = phi ptr [ %72, %71 ], [ %59, %56 ]
  %63 = getelementptr inbounds %struct._gh_Entry, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !175
  %65 = getelementptr inbounds %struct.bNodeTreeType, ptr %64, i64 0, i32 16, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !380
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.bNodeTreeType, ptr %64, i64 0, i32 16
  %70 = load ptr, ptr %69, align 8, !tbaa !381
  tail call void %66(ptr noundef %70) #23
  br label %71

71:                                               ; preds = %68, %61
  tail call void @BLI_ghashIterator_step(ptr noundef %57) #23
  %72 = load ptr, ptr %58, align 8, !tbaa !173
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %61, !llvm.loop !382

74:                                               ; preds = %71, %56
  tail call void @BLI_ghashIterator_free(ptr noundef %57) #23
  %75 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !47
  tail call void @BLI_ghash_free(ptr noundef %75, ptr noundef null, ptr noundef nonnull @ntree_free_type) #23
  store ptr null, ptr @nodetreetypes_hash, align 8, !tbaa !47
  br label %76

76:                                               ; preds = %74, %53
  ret void
}

declare ptr @node_add_socket_from_template(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @node_socket_init_default_value(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @unique_identifier_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3, !llvm.loop !383

11:                                               ; preds = %3, %7
  %12 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %12
}

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #21

declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #2

declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_animdata_fix_paths_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @RNA_identifier_sanitize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ntree_interface_unique_identifier_check(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @RNA_struct_find(ptr noundef %1) #23
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

declare ptr @RNA_def_struct_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @unique_socket_template_identifier_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !360
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !362
  br label %9

9:                                                ; preds = %6, %16
  %10 = phi ptr [ %3, %6 ], [ %17, %16 ]
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 0, i32 12
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9, %12
  %17 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 1
  %18 = load i32, ptr %17, align 8, !tbaa !82
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %9, label %20, !llvm.loop !384

20:                                               ; preds = %12, %16, %2
  %21 = phi i8 [ 0, %2 ], [ 1, %12 ], [ 0, %16 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @node_undefined_poll(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 {
  ret i32 0
}

declare void @register_node_type_cmp_group() local_unnamed_addr #2

declare void @register_node_type_cmp_rlayers() local_unnamed_addr #2

declare void @register_node_type_cmp_image() local_unnamed_addr #2

declare void @register_node_type_cmp_texture() local_unnamed_addr #2

declare void @register_node_type_cmp_value() local_unnamed_addr #2

declare void @register_node_type_cmp_rgb() local_unnamed_addr #2

declare void @register_node_type_cmp_curve_time() local_unnamed_addr #2

declare void @register_node_type_cmp_movieclip() local_unnamed_addr #2

declare void @register_node_type_cmp_composite() local_unnamed_addr #2

declare void @register_node_type_cmp_viewer() local_unnamed_addr #2

declare void @register_node_type_cmp_splitviewer() local_unnamed_addr #2

declare void @register_node_type_cmp_output_file() local_unnamed_addr #2

declare void @register_node_type_cmp_view_levels() local_unnamed_addr #2

declare void @register_node_type_cmp_curve_rgb() local_unnamed_addr #2

declare void @register_node_type_cmp_mix_rgb() local_unnamed_addr #2

declare void @register_node_type_cmp_hue_sat() local_unnamed_addr #2

declare void @register_node_type_cmp_brightcontrast() local_unnamed_addr #2

declare void @register_node_type_cmp_gamma() local_unnamed_addr #2

declare void @register_node_type_cmp_invert() local_unnamed_addr #2

declare void @register_node_type_cmp_alphaover() local_unnamed_addr #2

declare void @register_node_type_cmp_zcombine() local_unnamed_addr #2

declare void @register_node_type_cmp_colorbalance() local_unnamed_addr #2

declare void @register_node_type_cmp_huecorrect() local_unnamed_addr #2

declare void @register_node_type_cmp_normal() local_unnamed_addr #2

declare void @register_node_type_cmp_curve_vec() local_unnamed_addr #2

declare void @register_node_type_cmp_map_value() local_unnamed_addr #2

declare void @register_node_type_cmp_map_range() local_unnamed_addr #2

declare void @register_node_type_cmp_normalize() local_unnamed_addr #2

declare void @register_node_type_cmp_filter() local_unnamed_addr #2

declare void @register_node_type_cmp_blur() local_unnamed_addr #2

declare void @register_node_type_cmp_dblur() local_unnamed_addr #2

declare void @register_node_type_cmp_bilateralblur() local_unnamed_addr #2

declare void @register_node_type_cmp_vecblur() local_unnamed_addr #2

declare void @register_node_type_cmp_dilateerode() local_unnamed_addr #2

declare void @register_node_type_cmp_inpaint() local_unnamed_addr #2

declare void @register_node_type_cmp_despeckle() local_unnamed_addr #2

declare void @register_node_type_cmp_defocus() local_unnamed_addr #2

declare void @register_node_type_cmp_sunbeams() local_unnamed_addr #2

declare void @register_node_type_cmp_valtorgb() local_unnamed_addr #2

declare void @register_node_type_cmp_rgbtobw() local_unnamed_addr #2

declare void @register_node_type_cmp_setalpha() local_unnamed_addr #2

declare void @register_node_type_cmp_idmask() local_unnamed_addr #2

declare void @register_node_type_cmp_math() local_unnamed_addr #2

declare void @register_node_type_cmp_seprgba() local_unnamed_addr #2

declare void @register_node_type_cmp_combrgba() local_unnamed_addr #2

declare void @register_node_type_cmp_sephsva() local_unnamed_addr #2

declare void @register_node_type_cmp_combhsva() local_unnamed_addr #2

declare void @register_node_type_cmp_sepyuva() local_unnamed_addr #2

declare void @register_node_type_cmp_combyuva() local_unnamed_addr #2

declare void @register_node_type_cmp_sepycca() local_unnamed_addr #2

declare void @register_node_type_cmp_combycca() local_unnamed_addr #2

declare void @register_node_type_cmp_premulkey() local_unnamed_addr #2

declare void @register_node_type_cmp_diff_matte() local_unnamed_addr #2

declare void @register_node_type_cmp_distance_matte() local_unnamed_addr #2

declare void @register_node_type_cmp_chroma_matte() local_unnamed_addr #2

declare void @register_node_type_cmp_color_matte() local_unnamed_addr #2

declare void @register_node_type_cmp_channel_matte() local_unnamed_addr #2

declare void @register_node_type_cmp_color_spill() local_unnamed_addr #2

declare void @register_node_type_cmp_luma_matte() local_unnamed_addr #2

declare void @register_node_type_cmp_doubleedgemask() local_unnamed_addr #2

declare void @register_node_type_cmp_keyingscreen() local_unnamed_addr #2

declare void @register_node_type_cmp_keying() local_unnamed_addr #2

declare void @register_node_type_cmp_translate() local_unnamed_addr #2

declare void @register_node_type_cmp_rotate() local_unnamed_addr #2

declare void @register_node_type_cmp_scale() local_unnamed_addr #2

declare void @register_node_type_cmp_flip() local_unnamed_addr #2

declare void @register_node_type_cmp_crop() local_unnamed_addr #2

declare void @register_node_type_cmp_displace() local_unnamed_addr #2

declare void @register_node_type_cmp_mapuv() local_unnamed_addr #2

declare void @register_node_type_cmp_glare() local_unnamed_addr #2

declare void @register_node_type_cmp_tonemap() local_unnamed_addr #2

declare void @register_node_type_cmp_lensdist() local_unnamed_addr #2

declare void @register_node_type_cmp_transform() local_unnamed_addr #2

declare void @register_node_type_cmp_stabilize2d() local_unnamed_addr #2

declare void @register_node_type_cmp_moviedistortion() local_unnamed_addr #2

declare void @register_node_type_cmp_colorcorrection() local_unnamed_addr #2

declare void @register_node_type_cmp_boxmask() local_unnamed_addr #2

declare void @register_node_type_cmp_ellipsemask() local_unnamed_addr #2

declare void @register_node_type_cmp_bokehimage() local_unnamed_addr #2

declare void @register_node_type_cmp_bokehblur() local_unnamed_addr #2

declare void @register_node_type_cmp_switch() local_unnamed_addr #2

declare void @register_node_type_cmp_pixelate() local_unnamed_addr #2

declare void @register_node_type_cmp_mask() local_unnamed_addr #2

declare void @register_node_type_cmp_trackpos() local_unnamed_addr #2

declare void @register_node_type_cmp_planetrackdeform() local_unnamed_addr #2

declare void @register_node_type_cmp_cornerpin() local_unnamed_addr #2

declare void @register_node_type_sh_group() local_unnamed_addr #2

declare void @register_node_type_sh_output() local_unnamed_addr #2

declare void @register_node_type_sh_material() local_unnamed_addr #2

declare void @register_node_type_sh_camera() local_unnamed_addr #2

declare void @register_node_type_sh_lamp() local_unnamed_addr #2

declare void @register_node_type_sh_gamma() local_unnamed_addr #2

declare void @register_node_type_sh_brightcontrast() local_unnamed_addr #2

declare void @register_node_type_sh_value() local_unnamed_addr #2

declare void @register_node_type_sh_rgb() local_unnamed_addr #2

declare void @register_node_type_sh_wireframe() local_unnamed_addr #2

declare void @register_node_type_sh_wavelength() local_unnamed_addr #2

declare void @register_node_type_sh_blackbody() local_unnamed_addr #2

declare void @register_node_type_sh_mix_rgb() local_unnamed_addr #2

declare void @register_node_type_sh_valtorgb() local_unnamed_addr #2

declare void @register_node_type_sh_rgbtobw() local_unnamed_addr #2

declare void @register_node_type_sh_texture() local_unnamed_addr #2

declare void @register_node_type_sh_normal() local_unnamed_addr #2

declare void @register_node_type_sh_geom() local_unnamed_addr #2

declare void @register_node_type_sh_mapping() local_unnamed_addr #2

declare void @register_node_type_sh_curve_vec() local_unnamed_addr #2

declare void @register_node_type_sh_curve_rgb() local_unnamed_addr #2

declare void @register_node_type_sh_math() local_unnamed_addr #2

declare void @register_node_type_sh_vect_math() local_unnamed_addr #2

declare void @register_node_type_sh_vect_transform() local_unnamed_addr #2

declare void @register_node_type_sh_squeeze() local_unnamed_addr #2

declare void @register_node_type_sh_material_ext() local_unnamed_addr #2

declare void @register_node_type_sh_invert() local_unnamed_addr #2

declare void @register_node_type_sh_seprgb() local_unnamed_addr #2

declare void @register_node_type_sh_combrgb() local_unnamed_addr #2

declare void @register_node_type_sh_sephsv() local_unnamed_addr #2

declare void @register_node_type_sh_combhsv() local_unnamed_addr #2

declare void @register_node_type_sh_sepxyz() local_unnamed_addr #2

declare void @register_node_type_sh_combxyz() local_unnamed_addr #2

declare void @register_node_type_sh_hue_sat() local_unnamed_addr #2

declare void @register_node_type_sh_attribute() local_unnamed_addr #2

declare void @register_node_type_sh_geometry() local_unnamed_addr #2

declare void @register_node_type_sh_light_path() local_unnamed_addr #2

declare void @register_node_type_sh_light_falloff() local_unnamed_addr #2

declare void @register_node_type_sh_object_info() local_unnamed_addr #2

declare void @register_node_type_sh_fresnel() local_unnamed_addr #2

declare void @register_node_type_sh_layer_weight() local_unnamed_addr #2

declare void @register_node_type_sh_tex_coord() local_unnamed_addr #2

declare void @register_node_type_sh_particle_info() local_unnamed_addr #2

declare void @register_node_type_sh_bump() local_unnamed_addr #2

declare void @register_node_type_sh_background() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_anisotropic() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_diffuse() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_glossy() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_glass() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_translucent() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_transparent() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_velvet() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_toon() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_hair() local_unnamed_addr #2

declare void @register_node_type_sh_emission() local_unnamed_addr #2

declare void @register_node_type_sh_holdout() local_unnamed_addr #2

declare void @register_node_type_sh_volume_absorption() local_unnamed_addr #2

declare void @register_node_type_sh_volume_scatter() local_unnamed_addr #2

declare void @register_node_type_sh_subsurface_scattering() local_unnamed_addr #2

declare void @register_node_type_sh_mix_shader() local_unnamed_addr #2

declare void @register_node_type_sh_add_shader() local_unnamed_addr #2

declare void @register_node_type_sh_uvmap() local_unnamed_addr #2

declare void @register_node_type_sh_uvalongstroke() local_unnamed_addr #2

declare void @register_node_type_sh_output_lamp() local_unnamed_addr #2

declare void @register_node_type_sh_output_material() local_unnamed_addr #2

declare void @register_node_type_sh_output_world() local_unnamed_addr #2

declare void @register_node_type_sh_output_linestyle() local_unnamed_addr #2

declare void @register_node_type_sh_tex_image() local_unnamed_addr #2

declare void @register_node_type_sh_tex_environment() local_unnamed_addr #2

declare void @register_node_type_sh_tex_sky() local_unnamed_addr #2

declare void @register_node_type_sh_tex_noise() local_unnamed_addr #2

declare void @register_node_type_sh_tex_wave() local_unnamed_addr #2

declare void @register_node_type_sh_tex_voronoi() local_unnamed_addr #2

declare void @register_node_type_sh_tex_musgrave() local_unnamed_addr #2

declare void @register_node_type_sh_tex_gradient() local_unnamed_addr #2

declare void @register_node_type_sh_tex_magic() local_unnamed_addr #2

declare void @register_node_type_sh_tex_checker() local_unnamed_addr #2

declare void @register_node_type_sh_tex_brick() local_unnamed_addr #2

declare void @register_node_type_tex_group() local_unnamed_addr #2

declare void @register_node_type_tex_math() local_unnamed_addr #2

declare void @register_node_type_tex_mix_rgb() local_unnamed_addr #2

declare void @register_node_type_tex_valtorgb() local_unnamed_addr #2

declare void @register_node_type_tex_rgbtobw() local_unnamed_addr #2

declare void @register_node_type_tex_valtonor() local_unnamed_addr #2

declare void @register_node_type_tex_curve_rgb() local_unnamed_addr #2

declare void @register_node_type_tex_curve_time() local_unnamed_addr #2

declare void @register_node_type_tex_invert() local_unnamed_addr #2

declare void @register_node_type_tex_hue_sat() local_unnamed_addr #2

declare void @register_node_type_tex_coord() local_unnamed_addr #2

declare void @register_node_type_tex_distance() local_unnamed_addr #2

declare void @register_node_type_tex_compose() local_unnamed_addr #2

declare void @register_node_type_tex_decompose() local_unnamed_addr #2

declare void @register_node_type_tex_output() local_unnamed_addr #2

declare void @register_node_type_tex_viewer() local_unnamed_addr #2

declare void @register_node_type_sh_script() local_unnamed_addr #2

declare void @register_node_type_sh_tangent() local_unnamed_addr #2

declare void @register_node_type_sh_normal_map() local_unnamed_addr #2

declare void @register_node_type_sh_hair_info() local_unnamed_addr #2

declare void @register_node_type_tex_checker() local_unnamed_addr #2

declare void @register_node_type_tex_texture() local_unnamed_addr #2

declare void @register_node_type_tex_bricks() local_unnamed_addr #2

declare void @register_node_type_tex_image() local_unnamed_addr #2

declare void @register_node_type_sh_bsdf_refraction() local_unnamed_addr #2

declare void @register_node_type_sh_ambient_occlusion() local_unnamed_addr #2

declare void @register_node_type_tex_rotate() local_unnamed_addr #2

declare void @register_node_type_tex_translate() local_unnamed_addr #2

declare void @register_node_type_tex_scale() local_unnamed_addr #2

declare void @register_node_type_tex_at() local_unnamed_addr #2

declare void @register_node_type_tex_proc_voronoi() local_unnamed_addr #2

declare void @register_node_type_tex_proc_blend() local_unnamed_addr #2

declare void @register_node_type_tex_proc_magic() local_unnamed_addr #2

declare void @register_node_type_tex_proc_marble() local_unnamed_addr #2

declare void @register_node_type_tex_proc_clouds() local_unnamed_addr #2

declare void @register_node_type_tex_proc_wood() local_unnamed_addr #2

declare void @register_node_type_tex_proc_musgrave() local_unnamed_addr #2

declare void @register_node_type_tex_proc_noise() local_unnamed_addr #2

declare void @register_node_type_tex_proc_stucci() local_unnamed_addr #2

declare void @register_node_type_tex_proc_distnoise() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !41, i64 260}
!35 = !{!"bNodeTree", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !37, i64 200, !37, i64 208, !38, i64 216, !42, i64 224, !42, i64 240, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !40, i64 276, !40, i64 278, !41, i64 280, !41, i64 284, !40, i64 288, !40, i64 290, !41, i64 292, !43, i64 296, !42, i64 312, !42, i64 328, !37, i64 344, !45, i64 352, !41, i64 356, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !38, i64 0}
!45 = !{!"bNodeInstanceKey", !41, i64 0}
!46 = !{!38, !38, i64 0}
!47 = !{!37, !37, i64 0}
!48 = !{!35, !37, i64 128}
!49 = !{!50, !41, i64 0}
!50 = !{!"bNodeTreeType", !41, i64 0, !38, i64 4, !38, i64 68, !38, i64 132, !41, i64 388, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424, !37, i64 432, !37, i64 440, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !51, i64 480}
!51 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!52 = !{!35, !41, i64 256}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!57, !37, i64 176}
!57 = !{!"bNodeSocket", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !38, i64 96, !37, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !37, i64 176, !38, i64 184, !44, i64 248, !44, i64 252, !37, i64 256, !40, i64 264, !40, i64 266, !41, i64 268, !37, i64 272, !41, i64 280, !41, i64 284, !37, i64 288, !37, i64 296, !58, i64 304}
!58 = !{!"bNodeStack", !38, i64 0, !44, i64 16, !44, i64 20, !37, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !38, i64 44}
!59 = !{!60, !41, i64 192}
!60 = !{!"bNodeSocketType", !38, i64 0, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !51, i64 128, !51, i64 160, !41, i64 192, !41, i64 196}
!61 = !{!57, !40, i64 168}
!62 = !{!57, !37, i64 256}
!63 = distinct !{!63, !54, !55}
!64 = distinct !{!64, !54, !55}
!65 = distinct !{!65, !54, !55}
!66 = distinct !{!66, !54, !55}
!67 = !{!68, !41, i64 168}
!68 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !42, i64 200, !42, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !42, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !44, i64 380, !44, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!69 = !{!68, !37, i64 248}
!70 = !{!68, !37, i64 32}
!71 = !{!72, !41, i64 84}
!72 = !{!"bNodeType", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 18, !41, i64 84, !38, i64 88, !38, i64 152, !41, i64 408, !44, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !37, i64 448, !37, i64 456, !38, i64 464, !37, i64 528, !37, i64 536, !37, i64 544, !37, i64 552, !37, i64 560, !37, i64 568, !37, i64 576, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !37, i64 696, !37, i64 704, !37, i64 712, !51, i64 720}
!73 = !{!68, !40, i64 172}
!74 = !{!72, !40, i64 438}
!75 = !{!72, !44, i64 412}
!76 = !{!68, !44, i64 288}
!77 = !{!68, !44, i64 296}
!78 = !{!72, !44, i64 424}
!79 = !{!68, !44, i64 292}
!80 = !{!44, !44, i64 0}
!81 = !{!72, !37, i64 448}
!82 = !{!83, !41, i64 0}
!83 = !{!"bNodeSocketTemplate", !41, i64 0, !41, i64 4, !38, i64 8, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !41, i64 96, !41, i64 100, !37, i64 104, !38, i64 112}
!84 = distinct !{!84, !54, !55}
!85 = !{!72, !37, i64 456}
!86 = distinct !{!86, !54, !55}
!87 = !{!72, !37, i64 616}
!88 = !{!50, !37, i64 472}
!89 = !{!72, !37, i64 640}
!90 = !{!68, !37, i64 240}
!91 = !{!92, !37, i64 0}
!92 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!93 = !{!94, !37, i64 1472}
!94 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !95, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!95 = !{!"long", !38, i64 0}
!96 = !{!94, !37, i64 1088}
!97 = !{!94, !37, i64 1184}
!98 = !{!94, !37, i64 1200}
!99 = !{!94, !37, i64 1248}
!100 = !{!94, !37, i64 1312}
!101 = !{!94, !37, i64 1616}
!102 = !{!35, !37, i64 0}
!103 = !{!104, !37, i64 248}
!104 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !105, i64 280, !113, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !114, i64 4400, !115, i64 4416, !118, i64 4600, !37, i64 4608, !119, i64 4616, !37, i64 4640, !95, i64 4648, !95, i64 4656, !107, i64 4664, !108, i64 4824, !120, i64 4888, !37, i64 4952}
!105 = !{!"RenderData", !106, i64 0, !37, i64 248, !37, i64 256, !109, i64 264, !110, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !43, i64 544, !43, i64 560, !111, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !112, i64 2616, !41, i64 3976, !41, i64 3980}
!106 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !107, i64 24, !108, i64 184}
!107 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!108 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!109 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!110 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!111 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!112 = !{!"BakeData", !106, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!113 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!114 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!115 = !{!"GameData", !114, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !116, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !117, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!116 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!117 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!118 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!119 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!120 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!121 = !{!104, !37, i64 0}
!122 = !{!123, !37, i64 768}
!123 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !124, i64 224, !125, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !38, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !38, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!124 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!125 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!126 = !{!123, !37, i64 0}
!127 = !{!128, !37, i64 336}
!128 = !{!"Tex", !36, i64 0, !37, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !129, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!129 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!130 = !{!128, !37, i64 0}
!131 = !{!132, !37, i64 512}
!132 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!133 = !{!132, !37, i64 0}
!134 = !{!135, !37, i64 520}
!135 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!136 = !{!135, !37, i64 0}
!137 = !{!138, !37, i64 392}
!138 = !{!"FreestyleLineStyle", !36, i64 0, !37, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !41, i64 148, !44, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !41, i64 192, !40, i64 196, !40, i64 198, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !41, i64 208, !41, i64 212, !44, i64 216, !40, i64 220, !40, i64 222, !40, i64 224, !38, i64 226, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !40, i64 240, !40, i64 242, !41, i64 244, !38, i64 248, !37, i64 392, !42, i64 400, !42, i64 416, !42, i64 432, !42, i64 448}
!139 = !{!138, !37, i64 0}
!140 = distinct !{!140, !54, !55}
!141 = distinct !{!141, !54, !55}
!142 = distinct !{!142, !54, !55}
!143 = distinct !{!143, !54, !55}
!144 = distinct !{!144, !54, !55}
!145 = distinct !{!145, !54, !55}
!146 = !{!72, !40, i64 16}
!147 = distinct !{!147, !54, !55}
!148 = !{!68, !41, i64 308}
!149 = !{!57, !40, i64 174}
!150 = !{!57, !40, i64 172}
!151 = !{!57, !37, i64 160}
!152 = !{!57, !40, i64 170}
!153 = !{!35, !37, i64 240}
!154 = !{!155, !37, i64 0}
!155 = !{!"bNodeLink", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 52}
!156 = !{!155, !37, i64 32}
!157 = !{!155, !37, i64 40}
!158 = !{!57, !37, i64 296}
!159 = !{!35, !41, i64 272}
!160 = distinct !{!160, !54, !55}
!161 = !{!57, !37, i64 24}
!162 = !{!155, !37, i64 16}
!163 = !{!155, !37, i64 24}
!164 = distinct !{!164, !54, !55}
!165 = !{!68, !37, i64 200}
!166 = !{!57, !37, i64 0}
!167 = distinct !{!167, !54, !55}
!168 = !{!68, !37, i64 216}
!169 = distinct !{!169, !54, !55}
!170 = distinct !{!170, !54, !55}
!171 = distinct !{!171, !54, !55}
!172 = !{!41, !41, i64 0}
!173 = !{!174, !37, i64 8}
!174 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!175 = !{!176, !37, i64 16}
!176 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!177 = !{!72, !37, i64 664}
!178 = distinct !{!178, !54, !55}
!179 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47, i64 24, i64 8, !47, i64 32, i64 8, !47, i64 40, i64 64, !46, i64 104, i64 64, !46, i64 168, i64 4, !172, i64 172, i64 2, !180, i64 174, i64 2, !180, i64 176, i64 2, !180, i64 178, i64 2, !180, i64 180, i64 2, !180, i64 182, i64 2, !180, i64 184, i64 2, !180, i64 186, i64 2, !180, i64 188, i64 12, !46, i64 200, i64 8, !47, i64 208, i64 8, !47, i64 216, i64 8, !47, i64 224, i64 8, !47, i64 232, i64 8, !47, i64 240, i64 8, !47, i64 248, i64 8, !47, i64 256, i64 8, !47, i64 264, i64 8, !47, i64 272, i64 8, !47, i64 280, i64 4, !80, i64 284, i64 4, !80, i64 288, i64 4, !80, i64 292, i64 4, !80, i64 296, i64 4, !80, i64 300, i64 4, !80, i64 304, i64 4, !80, i64 308, i64 4, !172, i64 312, i64 64, !46, i64 376, i64 2, !180, i64 378, i64 2, !180, i64 380, i64 4, !80, i64 384, i64 4, !80, i64 388, i64 2, !180, i64 390, i64 2, !180, i64 392, i64 8, !47, i64 400, i64 4, !80, i64 404, i64 4, !80, i64 408, i64 4, !80, i64 412, i64 4, !80, i64 416, i64 4, !80, i64 420, i64 4, !80, i64 424, i64 4, !80, i64 428, i64 4, !80, i64 432, i64 4, !80, i64 436, i64 4, !80, i64 440, i64 4, !80, i64 444, i64 4, !80, i64 448, i64 2, !180, i64 450, i64 2, !180, i64 452, i64 4, !172, i64 456, i64 8, !47}
!180 = !{!40, !40, i64 0}
!181 = !{!57, !37, i64 16}
!182 = !{!57, !40, i64 264}
!183 = !{!57, !37, i64 272}
!184 = distinct !{!184, !54, !55}
!185 = distinct !{!185, !54, !55}
!186 = !{!68, !37, i64 24}
!187 = distinct !{!187, !54, !55}
!188 = !{!72, !37, i64 632}
!189 = !{!68, !37, i64 16}
!190 = !{!72, !37, i64 656}
!191 = distinct !{!191, !54, !55}
!192 = distinct !{!192, !54, !55}
!193 = !{!155, !41, i64 48}
!194 = distinct !{!194, !54, !55}
!195 = distinct !{!195, !54, !55}
!196 = !{!68, !37, i64 232}
!197 = !{!68, !44, i64 280}
!198 = !{!68, !44, i64 284}
!199 = distinct !{!199, !54, !55}
!200 = !{!35, !37, i64 24}
!201 = !{!35, !37, i64 208}
!202 = !{!35, !37, i64 360}
!203 = !{!35, !37, i64 232}
!204 = distinct !{!204, !54, !55}
!205 = distinct !{!205, !54, !55}
!206 = distinct !{!206, !54, !55}
!207 = distinct !{!207, !54, !55}
!208 = !{!35, !37, i64 344}
!209 = !{!210, !37, i64 0}
!210 = !{!"bNodeInstanceHash", !37, i64 0}
!211 = !{!176, !37, i64 8}
!212 = !{i64 0, i64 4, !172}
!213 = !{!214, !37, i64 8}
!214 = !{!"bNodePreview", !215, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20}
!215 = !{!"bNodeInstanceHashEntry", !45, i64 0, !40, i64 4, !40, i64 6}
!216 = !{!215, !40, i64 4}
!217 = distinct !{!217, !54, !55}
!218 = distinct !{!218, !54, !55}
!219 = !{!35, !37, i64 200}
!220 = distinct !{!220, !54, !55}
!221 = distinct !{!221, !54, !55}
!222 = distinct !{!222, !54, !55}
!223 = !{!214, !40, i64 16}
!224 = !{!214, !40, i64 18}
!225 = distinct !{!225, !54, !55}
!226 = !{!68, !40, i64 448}
!227 = !{!68, !40, i64 450}
!228 = distinct !{!228, !54, !55}
!229 = distinct !{!229, !54, !55}
!230 = distinct !{!230, !54, !55}
!231 = distinct !{!231, !54, !55}
!232 = distinct !{!232, !54, !55}
!233 = distinct !{!233, !54, !55}
!234 = distinct !{!234, !54, !55}
!235 = distinct !{!235, !54, !55}
!236 = distinct !{!236, !54, !55}
!237 = distinct !{!237, !54, !55}
!238 = !{!35, !41, i64 268}
!239 = !{!72, !37, i64 648}
!240 = distinct !{!240, !54, !55}
!241 = !{!50, !37, i64 400}
!242 = !{!72, !37, i64 624}
!243 = distinct !{!243, !54, !55}
!244 = distinct !{!244, !54, !55}
!245 = distinct !{!245, !54, !55}
!246 = !{!35, !37, i64 224}
!247 = !{!68, !37, i64 0}
!248 = distinct !{!248, !54, !55}
!249 = !{!35, !37, i64 312}
!250 = distinct !{!250, !54, !55}
!251 = !{!35, !37, i64 328}
!252 = distinct !{!252, !54, !55}
!253 = distinct !{!253, !54, !55}
!254 = !{!50, !37, i64 392}
!255 = !{!72, !40, i64 436}
!256 = distinct !{!256, !54, !55}
!257 = distinct !{!257, !54, !55}
!258 = distinct !{!258, !54, !55}
!259 = !{!35, !41, i64 100}
!260 = !{!36, !37, i64 24}
!261 = distinct !{!261, !54, !55}
!262 = distinct !{!262, !54, !55}
!263 = distinct !{!263, !54, !55}
!264 = distinct !{!264, !54, !55}
!265 = !{!266, !37, i64 0}
!266 = !{!"NodeTreeIterStore", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!267 = !{!266, !37, i64 8}
!268 = !{!266, !37, i64 16}
!269 = !{!266, !37, i64 24}
!270 = !{!266, !37, i64 32}
!271 = !{!266, !37, i64 40}
!272 = !{!266, !37, i64 48}
!273 = distinct !{!273, !54, !55}
!274 = distinct !{!274, !54, !55}
!275 = !{!276, !37, i64 0}
!276 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !37, i64 40, !42, i64 48, !42, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!277 = !{!276, !37, i64 8}
!278 = distinct !{!278, !54, !55}
!279 = !{!280, !41, i64 100}
!280 = !{!"bAction", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!281 = distinct !{!281, !54, !55}
!282 = !{!50, !37, i64 432}
!283 = !{!50, !37, i64 440}
!284 = !{!50, !37, i64 448}
!285 = distinct !{!285, !54, !55}
!286 = !{!35, !41, i64 264}
!287 = !{!57, !41, i64 280}
!288 = !{!60, !37, i64 120}
!289 = !{!60, !37, i64 96}
!290 = distinct !{!290, !54, !55}
!291 = distinct !{!291, !54, !55}
!292 = distinct !{!292, !54, !55}
!293 = !{i8 0, i8 2}
!294 = distinct !{!294, !54, !55}
!295 = distinct !{!295, !54, !55}
!296 = distinct !{!296, !54, !55}
!297 = distinct !{!297, !54, !55}
!298 = distinct !{!298, !54, !55}
!299 = distinct !{!299, !54, !55}
!300 = distinct !{!300, !54, !55}
!301 = distinct !{!301, !54, !55}
!302 = distinct !{!302, !54, !55}
!303 = distinct !{!303, !54, !55}
!304 = distinct !{!304, !54, !55}
!305 = distinct !{!305, !54, !55}
!306 = distinct !{!306, !54, !55}
!307 = !{!308, !41, i64 48}
!308 = !{!"bNodeClipboard", !42, i64 0, !42, i64 16, !42, i64 32, !41, i64 48}
!309 = !{!308, !37, i64 32}
!310 = distinct !{!310, !54, !55}
!311 = !{!308, !37, i64 0}
!312 = distinct !{!312, !54, !55}
!313 = !{!314, !37, i64 16}
!314 = !{!"bNodeClipboardExtraInfo", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 90}
!315 = distinct !{!315, !54, !55}
!316 = !{!45, !41, i64 0}
!317 = !{!68, !40, i64 176}
!318 = distinct !{!318, !54, !55}
!319 = !{i32 -32769, i32 4096}
!320 = !{!68, !40, i64 178}
!321 = distinct !{!321, !54, !55}
!322 = distinct !{!322, !54, !55}
!323 = !{!72, !37, i64 608}
!324 = distinct !{!324, !54, !55}
!325 = distinct !{!325, !54, !55}
!326 = !{!35, !40, i64 276}
!327 = distinct !{!327, !54, !55}
!328 = distinct !{!328, !54, !55}
!329 = distinct !{!329, !54, !55}
!330 = distinct !{!330, !54, !55}
!331 = !{!72, !37, i64 600}
!332 = !{!72, !37, i64 680}
!333 = distinct !{!333, !54, !55}
!334 = !{!50, !37, i64 456}
!335 = distinct !{!335, !54, !55}
!336 = distinct !{!336, !54, !55}
!337 = !{!50, !37, i64 464}
!338 = distinct !{!338, !54, !55}
!339 = distinct !{!339, !54, !55}
!340 = distinct !{!340, !54, !55}
!341 = distinct !{!341, !54, !55}
!342 = !{!343, !44, i64 4}
!343 = !{!"bNodeSocketValueFloat", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!344 = !{!123, !44, i64 204}
!345 = !{!123, !44, i64 180}
!346 = !{!123, !44, i64 184}
!347 = !{!123, !44, i64 192}
!348 = !{!123, !44, i64 196}
!349 = !{!123, !44, i64 200}
!350 = !{!123, !44, i64 220}
!351 = distinct !{!351, !54, !55}
!352 = !{!72, !37, i64 568}
!353 = !{!72, !37, i64 728}
!354 = !{!72, !44, i64 416}
!355 = !{!72, !44, i64 420}
!356 = !{!72, !44, i64 428}
!357 = !{!72, !44, i64 432}
!358 = !{!72, !37, i64 672}
!359 = distinct !{!359, !54, !55}
!360 = !{!361, !37, i64 0}
!361 = !{!"", !37, i64 0, !37, i64 8}
!362 = !{!361, !37, i64 8}
!363 = distinct !{!363, !54, !55}
!364 = distinct !{!364, !54, !55}
!365 = distinct !{!365, !54, !55}
!366 = !{!72, !37, i64 688}
!367 = !{!72, !37, i64 696}
!368 = !{!72, !37, i64 704}
!369 = !{!72, !37, i64 712}
!370 = !{!72, !40, i64 440}
!371 = !{!60, !41, i64 196}
!372 = !{!72, !37, i64 744}
!373 = !{!72, !37, i64 720}
!374 = distinct !{!374, !54, !55}
!375 = !{!60, !37, i64 152}
!376 = !{!60, !37, i64 128}
!377 = !{!60, !37, i64 184}
!378 = !{!60, !37, i64 160}
!379 = distinct !{!379, !54, !55}
!380 = !{!50, !37, i64 504}
!381 = !{!50, !37, i64 480}
!382 = distinct !{!382, !54, !55}
!383 = distinct !{!383, !54, !55}
!384 = distinct !{!384, !54, !55}
