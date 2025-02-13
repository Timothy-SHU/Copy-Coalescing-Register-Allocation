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
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bNodePreview = type { %struct.bNodeInstanceHashEntry, ptr, i16, i16, i32 }
%struct.bNodeInstanceHashEntry = type { %struct.bNodeInstanceKey, i16, i16 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
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
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bNodeClipboardExtraInfo = type { ptr, ptr, ptr, [66 x i8], [1024 x i8] }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.bNodeSocketValueFloat = type { i32, float, float, float }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeSetTypes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 10
  %4 = load i32, ptr %3, align 4, !tbaa !34
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %7 = tail call ptr @ntreeTypeFind(ptr noundef nonnull %6) #23
  tail call fastcc void @ntree_set_typeinfo(ptr noundef %1, ptr noundef %7) #23
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %14

11:                                               ; preds = %31, %27
  %12 = load ptr, ptr %15, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14, !llvm.loop !47

14:                                               ; preds = %2, %11
  %15 = phi ptr [ %12, %11 ], [ %9, %2 ]
  %16 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 5
  %17 = tail call ptr @nodeTypeFind(ptr noundef nonnull %16) #23
  tail call fastcc void @node_set_typeinfo(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %15, ptr noundef %17) #23
  %18 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %14, %21
  %22 = phi ptr [ %25, %21 ], [ %19, %14 ]
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 12
  %24 = tail call ptr @nodeSocketTypeFind(ptr noundef nonnull %23) #23
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef %1, ptr noundef nonnull %22, ptr noundef %24) #23
  %25 = load ptr, ptr %22, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %21, !llvm.loop !49

27:                                               ; preds = %21, %14
  %28 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %11, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %35, %31 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %32, i64 0, i32 12
  %34 = tail call ptr @nodeSocketTypeFind(ptr noundef nonnull %33) #23
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef %1, ptr noundef nonnull %32, ptr noundef %34) #23
  %35 = load ptr, ptr %32, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %11, label %31, !llvm.loop !50

37:                                               ; preds = %11, %2
  %38 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 22
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %45, %41 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %42, i64 0, i32 12
  %44 = tail call ptr @nodeSocketTypeFind(ptr noundef nonnull %43) #23
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef %1, ptr noundef nonnull %42, ptr noundef %44) #23
  %45 = load ptr, ptr %42, align 8, !tbaa !46
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %41, !llvm.loop !51

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 23
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47, %51
  %52 = phi ptr [ %55, %51 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %52, i64 0, i32 12
  %54 = tail call ptr @nodeSocketTypeFind(ptr noundef nonnull %53) #23
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef %1, ptr noundef nonnull %52, ptr noundef %54) #23
  %55 = load ptr, ptr %52, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %51, !llvm.loop !52

57:                                               ; preds = %51, %47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ntree_set_typeinfo(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !53 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  store i32 %5, ptr %6, align 8, !tbaa !57
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = and i32 %9, -2
  store i32 %10, ptr %8, align 4, !tbaa !34
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi ptr [ @NodeTreeTypeUndefined, %7 ], [ %1, %4 ]
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeTypeFind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !58
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !46
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef nonnull %0) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %6, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_set_typeinfo(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !59 {
  %5 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = and i32 %6, 65536
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne ptr %3, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bNodeType, ptr %3, i64 0, i32 19
  %13 = load i8, ptr %12, align 8, !tbaa !58
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %21

19:                                               ; preds = %4
  %20 = icmp eq ptr %3, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15, %11, %19
  %22 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  store ptr %3, ptr %22, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.bNodeType, ptr %3, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !64
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 8
  store i16 %25, ptr %26, align 4, !tbaa !66
  tail call fastcc void @node_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #23
  br label %32

27:                                               ; preds = %15, %19
  %28 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  store ptr @NodeTypeUndefined, ptr %28, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 10
  %30 = load i32, ptr %29, align 4, !tbaa !34
  %31 = and i32 %30, -2
  store i32 %31, ptr %29, align 4, !tbaa !34
  br label %32

32:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nodeTypeFind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !58
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !46
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef nonnull %0) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4, %1
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ null, %8 ], [ %6, %4 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_set_typeinfo(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !67 {
  %4 = icmp eq ptr %2, null
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  br i1 %4, label %15, label %6

6:                                                ; preds = %3
  store ptr %2, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.bNodeSocketType, ptr %2, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !71
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 7
  store i16 %9, ptr %10, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  tail call void @node_socket_init_default_value(ptr noundef nonnull %1) #24
  br label %19

15:                                               ; preds = %3
  store ptr @NodeSocketTypeUndefined, ptr %5, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 10
  %17 = load i32, ptr %16, align 4, !tbaa !34
  %18 = and i32 %17, -2
  store i32 %18, ptr %16, align 4, !tbaa !34
  br label %19

19:                                               ; preds = %6, %14, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nodeSocketTypeFind(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !58
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !46
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef nonnull %0) #24
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

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeTypeAdd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %0, i64 0, i32 1
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0) #24
  %4 = load ptr, ptr @G, align 8, !tbaa !75
  tail call fastcc void @update_typeinfo(ptr noundef %4, ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_typeinfo(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !77 {
  %6 = alloca %struct.NodeTreeIterStore, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %109, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %0) #23
  %11 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #23, !range !78
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %108, label %13

13:                                               ; preds = %10
  %14 = icmp eq ptr %1, null
  %15 = getelementptr inbounds %struct.bNodeTreeType, ptr %1, i64 0, i32 1
  %16 = icmp eq i8 %4, 0
  %17 = select i1 %16, ptr %1, ptr null
  %18 = icmp eq ptr %2, null
  %19 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 3
  %20 = select i1 %16, ptr %2, ptr null
  %21 = icmp eq ptr %3, null
  %22 = select i1 %16, ptr %3, ptr null
  br label %23

23:                                               ; preds = %13, %105
  %24 = load ptr, ptr %7, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %105, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 10
  %28 = load i32, ptr %27, align 4, !tbaa !34
  %29 = or i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !34
  br i1 %14, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 3
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %15) #26
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @ntree_set_typeinfo(ptr noundef nonnull %24, ptr noundef %17) #23
  br label %35

35:                                               ; preds = %34, %30, %26
  %36 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %77, label %42

39:                                               ; preds = %74, %63
  %40 = load ptr, ptr %43, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42, !llvm.loop !79

42:                                               ; preds = %35, %39
  %43 = phi ptr [ %40, %39 ], [ %37, %35 ]
  br i1 %18, label %49, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 5
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %19) #26
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call fastcc void @node_set_typeinfo(ptr noundef null, ptr noundef nonnull %24, ptr noundef nonnull %43, ptr noundef %20) #23
  br label %49

49:                                               ; preds = %48, %44, %42
  %50 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %49, %60
  %54 = phi ptr [ %61, %60 ], [ %51, %49 ]
  br i1 %21, label %60, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.bNodeSocket, ptr %54, i64 0, i32 12
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) %3) #26
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef nonnull %24, ptr noundef nonnull %54, ptr noundef %22) #23
  br label %60

60:                                               ; preds = %53, %55, %59
  %61 = load ptr, ptr %54, align 8, !tbaa !46
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %53, !llvm.loop !80

63:                                               ; preds = %60, %49
  %64 = getelementptr inbounds %struct.bNode, ptr %43, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = icmp eq ptr %65, null
  br i1 %66, label %39, label %67

67:                                               ; preds = %63, %74
  %68 = phi ptr [ %75, %74 ], [ %65, %63 ]
  br i1 %21, label %74, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.bNodeSocket, ptr %68, i64 0, i32 12
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) %3) #26
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef nonnull %24, ptr noundef nonnull %68, ptr noundef %22) #23
  br label %74

74:                                               ; preds = %67, %69, %73
  %75 = load ptr, ptr %68, align 8, !tbaa !46
  %76 = icmp eq ptr %75, null
  br i1 %76, label %39, label %67, !llvm.loop !81

77:                                               ; preds = %39, %35
  %78 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 22
  %79 = load ptr, ptr %78, align 8, !tbaa !46
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %77, %88
  %82 = phi ptr [ %89, %88 ], [ %79, %77 ]
  br i1 %21, label %88, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.bNodeSocket, ptr %82, i64 0, i32 12
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) %3) #26
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef nonnull %24, ptr noundef nonnull %82, ptr noundef %22) #23
  br label %88

88:                                               ; preds = %81, %83, %87
  %89 = load ptr, ptr %82, align 8, !tbaa !46
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %81, !llvm.loop !82

91:                                               ; preds = %88, %77
  %92 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 23
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91, %102
  %96 = phi ptr [ %103, %102 ], [ %93, %91 ]
  br i1 %21, label %102, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.bNodeSocket, ptr %96, i64 0, i32 12
  %99 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %98, ptr noundef nonnull dereferenceable(1) %3) #26
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef nonnull %24, ptr noundef nonnull %96, ptr noundef %22) #23
  br label %102

102:                                              ; preds = %95, %97, %101
  %103 = load ptr, ptr %96, align 8, !tbaa !46
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %95, !llvm.loop !83

105:                                              ; preds = %102, %91, %23
  %106 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #23, !range !78
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %23, !llvm.loop !84

108:                                              ; preds = %105, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #25
  br label %109

109:                                              ; preds = %5, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeTypeFreeLink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.bNodeTreeType, ptr %0, i64 0, i32 1
  %4 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @ntree_free_type) #24
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @ntree_free_type(ptr noundef %0) #0 !PGOFuncName !85 {
  %2 = load ptr, ptr @G, align 8, !tbaa !75
  tail call fastcc void @update_typeinfo(ptr noundef %2, ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 1) #23
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %3(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @ntreeIsRegistered(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = icmp ne ptr %3, @NodeTreeTypeUndefined
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeTypeGetIterator() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !46
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #24
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeRegisterType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 3
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0) #24
  %4 = load ptr, ptr @G, align 8, !tbaa !75
  tail call fastcc void @update_typeinfo(ptr noundef %4, ptr noundef null, ptr noundef %0, ptr noundef null, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeUnregisterType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 3
  %4 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @node_free_type) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_free_type(ptr noundef %0) #0 !PGOFuncName !87 {
  %2 = load ptr, ptr @G, align 8, !tbaa !75
  tail call fastcc void @update_typeinfo(ptr noundef %2, ptr noundef null, ptr noundef %0, ptr noundef null, i8 noundef zeroext 1) #23
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = icmp eq i32 %4, 123
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @free_dynamic_typeinfo(ptr noundef nonnull %0) #23
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !88
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %12(ptr noundef nonnull %0) #24
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @nodeIsRegistered(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp ne ptr %3, @NodeTypeUndefined
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nodeTypeGetIterator() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !46
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeRegisterSocketType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !46
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef %0, ptr noundef %0) #24
  %3 = load ptr, ptr @G, align 8, !tbaa !75
  tail call fastcc void @update_typeinfo(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef %0, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeUnregisterSocketType(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !46
  %3 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef %0, ptr noundef null, ptr noundef nonnull @node_free_socket_type) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_free_socket_type(ptr noundef %0) #0 !PGOFuncName !89 {
  %2 = load ptr, ptr @G, align 8, !tbaa !75
  tail call fastcc void @update_typeinfo(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %0, i8 noundef zeroext 1) #23
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %3(ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @nodeSocketIsRegistered(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = icmp ne ptr %3, @NodeSocketTypeUndefined
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nodeSocketTypeGetIterator() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !46
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #24
  ret ptr %2
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeFindSocket(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %1, 1
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %7 = select i1 %4, ptr %5, ptr %6
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 4
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8, !llvm.loop !90

16:                                               ; preds = %8, %12
  ret ptr %10
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @nodeAddSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq i32 %2, 1
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = tail call fastcc ptr @make_socket(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %10, ptr noundef %3, ptr noundef %4, ptr noundef %5) #23
  tail call void @BLI_remlink(ptr noundef nonnull %10, ptr noundef %11) #24
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %11) #24
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %13 = load i32, ptr %12, align 4, !tbaa !91
  %14 = or i32 %13, 65535
  store i32 %14, ptr %12, align 4, !tbaa !91
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_socket(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !92 {
  %7 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #25
  %8 = icmp eq ptr %4, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %4, align 1, !tbaa !58
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %4, i64 noundef 64) #24
  br label %16

14:                                               ; preds = %9, %6
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %5, i64 noundef 64) #24
  br label %16

16:                                               ; preds = %14, %12
  %17 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_identifier_check, ptr noundef %2, ptr noundef nonnull @.str.265, i8 noundef zeroext 46, ptr noundef nonnull %7, i32 noundef 64) #24
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %19 = call ptr %18(i64 noundef 352, ptr noundef nonnull @.str.266) #24
  %20 = trunc i32 %1 to i16
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 10
  store i16 %20, ptr %21, align 2, !tbaa !93
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 4
  %23 = call ptr @BLI_strncpy(ptr noundef nonnull %22, ptr noundef nonnull %7, i64 noundef 64) #24
  %24 = icmp eq i32 %1, 1
  %25 = select i1 %24, i16 1, i16 4095
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 9
  store i16 %25, ptr %26, align 4, !tbaa !94
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 5
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %5, i64 noundef 64) #24
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 6
  store ptr null, ptr %29, align 8, !tbaa !95
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !96
  %32 = or i16 %31, 64
  store i16 %32, ptr %30, align 2, !tbaa !96
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 7
  store i16 -1, ptr %33, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %19, i64 0, i32 12
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef %3, i64 noundef 64) #24
  %36 = call ptr @nodeSocketTypeFind(ptr noundef %3) #23
  call fastcc void @node_socket_set_typeinfo(ptr noundef %0, ptr noundef %19, ptr noundef %36) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #25
  ret ptr %19
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @nodeInsertSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %2, 1
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %10 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %11 = select i1 %8, ptr %9, ptr %10
  %12 = tail call fastcc ptr @make_socket(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %11, ptr noundef %3, ptr noundef %5, ptr noundef %6) #23
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef %12) #24
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %11, ptr noundef %4, ptr noundef %12) #24
  %13 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %14 = load i32, ptr %13, align 4, !tbaa !91
  %15 = or i32 %14, 65535
  store i32 %15, ptr %13, align 4, !tbaa !91
  ret ptr %12
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @nodeStaticSocketType(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef ptr @nodeStaticSocketInterfaceType(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @nodeAddStaticSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = tail call ptr @nodeStaticSocketType(i32 noundef %3, i32 noundef %4) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %3) #23
  br label %16

12:                                               ; preds = %7
  %13 = tail call ptr @nodeAddSocket(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %8, ptr noundef %5, ptr noundef %6) #23
  %14 = trunc i32 %3 to i16
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 7
  store i16 %14, ptr %15, align 8, !tbaa !73
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi ptr [ %13, %12 ], [ null, %10 ]
  ret ptr %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @nodeInsertStaticSocket(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @nodeStaticSocketType(i32 noundef %3, i32 noundef %4) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %3) #23
  br label %17

13:                                               ; preds = %8
  %14 = tail call ptr @nodeInsertSocket(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %9, ptr noundef %5, ptr noundef %6, ptr noundef %7) #23
  %15 = trunc i32 %3 to i16
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 7
  store i16 %15, ptr %16, align 8, !tbaa !73
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ %14, %13 ], [ null, %11 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeRemoveSocket(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %9, %18 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %7
  tail call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %8) #23
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %7, !llvm.loop !102

20:                                               ; preds = %18, %3
  %21 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call void @BLI_remlink(ptr noundef nonnull %21, ptr noundef %2) #24
  %22 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call void @BLI_remlink(ptr noundef nonnull %22, ptr noundef %2) #24
  tail call fastcc void @node_socket_free(ptr noundef %2) #23
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %23(ptr noundef %2) #24
  %24 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %25 = load i32, ptr %24, align 4, !tbaa !91
  %26 = or i32 %25, 65535
  store i32 %26, ptr %24, align 4, !tbaa !91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeRemLink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %5, ptr noundef %1) #24
  br label %6

6:                                                ; preds = %4, %2
  %7 = getelementptr inbounds %struct.bNodeLink, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %8, i64 0, i32 23
  store ptr null, ptr %11, align 8, !tbaa !103
  br label %12

12:                                               ; preds = %10, %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %13(ptr noundef nonnull %1) #24
  br i1 %3, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !104
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !104
  br label %18

18:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !105 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %3) #24
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %7 = load ptr, ptr %2, align 8, !tbaa !106
  tail call void %6(ptr noundef %7) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %13(ptr noundef nonnull %10) #24
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeRemoveAllSockets(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %8, %17 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !107
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %6
  tail call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %7) #23
  br label %17

17:                                               ; preds = %12, %16
  %18 = icmp eq ptr %8, null
  br i1 %18, label %19, label %6, !llvm.loop !109

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !110
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !111
  tail call fastcc void @node_socket_free(ptr noundef nonnull %24) #23
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %26(ptr noundef nonnull %24) #24
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %23, !llvm.loop !112

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !113
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %34, %32 ], [ %30, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !111
  tail call fastcc void @node_socket_free(ptr noundef nonnull %33) #23
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %35(ptr noundef nonnull %33) #24
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %32, !llvm.loop !114

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  %39 = load i32, ptr %38, align 4, !tbaa !91
  %40 = or i32 %39, 65535
  store i32 %40, ptr %38, align 4, !tbaa !91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nodeFindNodebyName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 104) #24
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @nodeFindNode(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !93
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %8 = icmp eq i16 %6, 1
  br label %9

9:                                                ; preds = %25, %4
  %10 = phi ptr [ %7, %4 ], [ %11, %25 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 17
  %15 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 18
  %16 = select i1 %8, ptr %14, ptr %15
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %16, %13 ], [ %20, %17 ]
  %19 = phi i32 [ 0, %13 ], [ %24, %17 ]
  %20 = load ptr, ptr %18, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %20, %1
  %23 = or i1 %21, %22
  %24 = add nuw nsw i32 %19, 1
  br i1 %23, label %25, label %17, !llvm.loop !115

25:                                               ; preds = %17
  br i1 %21, label %9, label %26, !llvm.loop !116

26:                                               ; preds = %25
  store ptr %11, ptr %2, align 8, !tbaa !46
  %27 = icmp eq ptr %3, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  store i32 %19, ptr %3, align 4, !tbaa !117
  br label %30

29:                                               ; preds = %9
  store ptr null, ptr %2, align 8, !tbaa !46
  br label %30

30:                                               ; preds = %26, %28, %29
  %31 = phi i32 [ 0, %29 ], [ 1, %28 ], [ 1, %26 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeUniqueName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.43, i8 noundef zeroext 46, i32 noundef 104, i32 noundef 64) #24
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @nodeAddNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 464, ptr noundef nonnull @.str.44) #24
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  tail call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %5) #24
  %7 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %2, i64 noundef 64) #24
  %9 = tail call ptr @nodeTypeFind(ptr noundef %2) #23
  tail call fastcc void @node_set_typeinfo(ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !104
  %12 = or i32 %11, 2
  store i32 %12, ptr %10, align 8, !tbaa !104
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @nodeAddStaticNode(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @nodeTypeGetIterator() #23
  %5 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #23, !range !78
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %3, %19
  %8 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %4) #23
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 37
  %14 = load ptr, ptr %13, align 8, !tbaa !118
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef nonnull %8, ptr noundef %1) #24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %7
  tail call void @BLI_ghashIterator_step(ptr noundef %4) #24
  %20 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #23, !range !78
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %7, label %22, !llvm.loop !119

22:                                               ; preds = %19, %3
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #24
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %2) #23
  br label %27

24:                                               ; preds = %12, %16
  %25 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 3
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #24
  %26 = tail call ptr @nodeAddNode(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %25) #23
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi ptr [ %26, %24 ], [ null, %22 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !120 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !123 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @nodeCopyNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %5 = tail call ptr %4(i64 noundef 464, ptr noundef nonnull @.str.46) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %5, ptr noundef nonnull align 8 dereferenceable(464) %1, i64 464, i1 false), !tbaa.struct !126
  %6 = icmp eq ptr %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @nodeUniqueName(ptr noundef nonnull %0, ptr noundef nonnull %5) #23
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef nonnull %5) #24
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 17
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  tail call void @BLI_duplicatelist(ptr noundef nonnull %10, ptr noundef nonnull %11) #24
  %12 = load ptr, ptr %10, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %18, %14 ], [ %12, %9 ]
  %16 = phi ptr [ %17, %14 ], [ %11, %9 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  tail call fastcc void @node_socket_copy(ptr noundef nonnull %15, ptr noundef %17) #23
  %18 = load ptr, ptr %15, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14, !llvm.loop !129

20:                                               ; preds = %14, %9
  %21 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 18
  %22 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  tail call void @BLI_duplicatelist(ptr noundef nonnull %21, ptr noundef nonnull %22) #24
  %23 = load ptr, ptr %21, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %29, %25 ], [ %23, %20 ]
  %27 = phi ptr [ %28, %25 ], [ %22, %20 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  tail call fastcc void @node_socket_copy(ptr noundef nonnull %26, ptr noundef %28) #23
  %29 = load ptr, ptr %26, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !llvm.loop !130

31:                                               ; preds = %25, %20
  %32 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !131
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %33) #24
  %37 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 3
  store ptr %36, ptr %37, align 8, !tbaa !131
  br label %38

38:                                               ; preds = %35, %31
  %39 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 23
  %40 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  tail call void @BLI_duplicatelist(ptr noundef nonnull %39, ptr noundef nonnull %40) #24
  %41 = load ptr, ptr %39, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %38, %43
  %44 = phi ptr [ %55, %43 ], [ %41, %38 ]
  %45 = getelementptr inbounds %struct.bNodeLink, ptr %44, i64 0, i32 2
  store ptr %5, ptr %45, align 8, !tbaa !107
  %46 = getelementptr inbounds %struct.bNodeLink, ptr %44, i64 0, i32 3
  store ptr %5, ptr %46, align 8, !tbaa !108
  %47 = getelementptr inbounds %struct.bNodeLink, ptr %44, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.bNodeSocket, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !132
  store ptr %50, ptr %47, align 8, !tbaa !100
  %51 = getelementptr inbounds %struct.bNodeLink, ptr %44, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !101
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !132
  store ptr %54, ptr %51, align 8, !tbaa !101
  %55 = load ptr, ptr %44, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43, !llvm.loop !133

57:                                               ; preds = %43, %38
  %58 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.bNodeType, ptr %59, i64 0, i32 33
  %61 = load ptr, ptr %60, align 8, !tbaa !134
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call void %61(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %1) #24
  br label %64

64:                                               ; preds = %63, %57
  %65 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 2
  store ptr %5, ptr %65, align 8, !tbaa !135
  %66 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 2
  store ptr null, ptr %66, align 8, !tbaa !135
  %67 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !63
  %69 = getelementptr inbounds %struct.bNodeType, ptr %68, i64 0, i32 36
  %70 = load ptr, ptr %69, align 8, !tbaa !136
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %5, ptr noundef nonnull %3) #24
  %73 = load ptr, ptr %67, align 8, !tbaa !63
  %74 = getelementptr inbounds %struct.bNodeType, ptr %73, i64 0, i32 36
  %75 = load ptr, ptr %74, align 8, !tbaa !136
  call void %75(ptr noundef nonnull %3, ptr noundef nonnull %1) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %76

76:                                               ; preds = %72, %64
  br i1 %6, label %81, label %77

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %79 = load i32, ptr %78, align 8, !tbaa !104
  %80 = or i32 %79, 2
  store i32 %80, ptr %78, align 8, !tbaa !104
  br label %81

81:                                               ; preds = %77, %76
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_copy(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !132
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %5) #24
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !106
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %16 = tail call ptr %15(ptr noundef nonnull %12) #24
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  store ptr %16, ptr %17, align 8, !tbaa !74
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 16
  store i16 0, ptr %19, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 19
  store ptr null, ptr %20, align 8, !tbaa !139
  ret void
}

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @nodeAddLink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %7 = load i16, ptr %6, align 2, !tbaa !93
  switch i16 %7, label %41 [
    i16 2, label %8
    i16 1, label %16
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 10
  %10 = load i16, ptr %9, align 2, !tbaa !93
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %14 = tail call ptr %13(i64 noundef 56, ptr noundef nonnull @.str.47) #24
  %15 = icmp eq ptr %0, null
  br i1 %15, label %31, label %24

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %4, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !93
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %22 = tail call ptr %21(i64 noundef 56, ptr noundef nonnull @.str.47) #24
  %23 = icmp eq ptr %0, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %12
  %25 = phi ptr [ %14, %12 ], [ %22, %20 ]
  %26 = phi ptr [ %1, %12 ], [ %3, %20 ]
  %27 = phi ptr [ %2, %12 ], [ %4, %20 ]
  %28 = phi ptr [ %3, %12 ], [ %1, %20 ]
  %29 = phi ptr [ %4, %12 ], [ %2, %20 ]
  %30 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_addtail(ptr noundef nonnull %30, ptr noundef %25) #24
  br label %31

31:                                               ; preds = %24, %20, %12
  %32 = phi ptr [ %14, %12 ], [ %22, %20 ], [ %25, %24 ]
  %33 = phi ptr [ %1, %12 ], [ %3, %20 ], [ %26, %24 ]
  %34 = phi ptr [ %2, %12 ], [ %4, %20 ], [ %27, %24 ]
  %35 = phi ptr [ %3, %12 ], [ %1, %20 ], [ %28, %24 ]
  %36 = phi ptr [ %4, %12 ], [ %2, %20 ], [ %29, %24 ]
  %37 = getelementptr inbounds %struct.bNodeLink, ptr %32, i64 0, i32 2
  store ptr %33, ptr %37, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct.bNodeLink, ptr %32, i64 0, i32 4
  store ptr %34, ptr %38, align 8, !tbaa !100
  %39 = getelementptr inbounds %struct.bNodeLink, ptr %32, i64 0, i32 3
  store ptr %35, ptr %39, align 8, !tbaa !108
  %40 = getelementptr inbounds %struct.bNodeLink, ptr %32, i64 0, i32 5
  store ptr %36, ptr %40, align 8, !tbaa !101
  br label %41

41:                                               ; preds = %31, %5, %8, %16
  %42 = phi ptr [ null, %16 ], [ null, %8 ], [ null, %5 ], [ %32, %31 ]
  %43 = icmp eq ptr %0, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !104
  %47 = or i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !104
  br label %48

48:                                               ; preds = %44, %41
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeRemSocketLinks(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %17
  %7 = phi ptr [ %8, %17 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %6
  tail call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %7) #23
  br label %17

17:                                               ; preds = %12, %16
  %18 = icmp eq ptr %8, null
  br i1 %18, label %19, label %6, !llvm.loop !140

19:                                               ; preds = %17, %2
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !104
  %22 = or i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @nodeLinkIsHidden(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.bNodeLink, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = tail call i32 @nodeSocketIsHidden(ptr noundef %3) #23, !range !141
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeLink, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = tail call i32 @nodeSocketIsHidden(ptr noundef %8) #23, !range !141
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 1, %1 ], [ %9, %6 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @nodeSocketIsHidden(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 8
  %3 = load i16, ptr %2, align 2, !tbaa !96
  %4 = and i16 %3, 10
  %5 = icmp ne i16 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeInternalRelink(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 23
  store ptr %7, ptr %10, align 8, !tbaa !103
  %11 = load ptr, ptr %7, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !142

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  br label %19

19:                                               ; preds = %17, %55
  %20 = phi ptr [ %15, %17 ], [ %21, %55 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !107
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.bNodeLink, ptr %20, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !100
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %27, i64 0, i32 23
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.bNodeLink, ptr %29, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.bNodeSocket, ptr %33, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.bNodeLink, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !107
  store ptr %39, ptr %22, align 8, !tbaa !107
  %40 = getelementptr inbounds %struct.bNodeLink, ptr %35, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  store ptr %41, ptr %26, align 8, !tbaa !100
  %42 = getelementptr inbounds %struct.bNodeLink, ptr %35, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !143
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.bNodeLink, ptr %20, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !143
  %49 = and i32 %48, -3
  store i32 %49, ptr %47, align 8, !tbaa !143
  br label %50

50:                                               ; preds = %46, %37
  %51 = load i32, ptr %18, align 8, !tbaa !104
  %52 = or i32 %51, 1
  store i32 %52, ptr %18, align 8, !tbaa !104
  br label %55

53:                                               ; preds = %31
  tail call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %20) #23
  br label %55

54:                                               ; preds = %25
  tail call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %20) #23
  br label %55

55:                                               ; preds = %50, %53, %19, %54
  %56 = icmp eq ptr %21, null
  br i1 %56, label %57, label %19, !llvm.loop !144

57:                                               ; preds = %55
  %58 = load ptr, ptr %14, align 8, !tbaa !97
  %59 = icmp eq ptr %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %57, %67
  %61 = phi ptr [ %62, %67 ], [ %58, %57 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  %63 = getelementptr inbounds %struct.bNodeLink, ptr %61, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !108
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  tail call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %61) #23
  br label %67

67:                                               ; preds = %60, %66
  %68 = icmp eq ptr %62, null
  br i1 %68, label %69, label %60, !llvm.loop !145

69:                                               ; preds = %67, %13, %57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeToView(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #9 {
  %6 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  %8 = icmp eq ptr %7, null
  %9 = insertelement <2 x float> poison, float %1, i64 0
  %10 = insertelement <2 x float> %9, float %2, i64 1
  br i1 %8, label %21, label %11

11:                                               ; preds = %5, %11
  %12 = phi ptr [ %19, %11 ], [ %7, %5 ]
  %13 = phi ptr [ %12, %11 ], [ %0, %5 ]
  %14 = phi <2 x float> [ %17, %11 ], [ %10, %5 ]
  %15 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 24
  %16 = load <2 x float>, ptr %15, align 8, !tbaa !128
  %17 = fadd <2 x float> %14, %16
  %18 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %5
  %22 = phi ptr [ %0, %5 ], [ %12, %11 ]
  %23 = phi <2 x float> [ %10, %5 ], [ %17, %11 ]
  %24 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 24
  %25 = load float, ptr %24, align 8, !tbaa !147
  %26 = extractelement <2 x float> %23, i64 0
  %27 = fadd float %26, %25
  store float %27, ptr %3, align 4, !tbaa !128
  %28 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 25
  %29 = load float, ptr %28, align 4, !tbaa !148
  %30 = extractelement <2 x float> %23, i64 1
  %31 = fadd float %30, %29
  store float %31, ptr %4, align 4, !tbaa !128
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeFromView(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #12 {
  %6 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  tail call void @nodeFromView(ptr noundef nonnull %7, float noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) #23
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  %11 = load float, ptr %10, align 8, !tbaa !147
  %12 = load float, ptr %3, align 4, !tbaa !128
  %13 = fsub float %12, %11
  store float %13, ptr %3, align 4, !tbaa !128
  %14 = load float, ptr %4, align 4, !tbaa !128
  br label %19

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  %17 = load float, ptr %16, align 8, !tbaa !147
  %18 = fsub float %1, %17
  store float %18, ptr %3, align 4, !tbaa !128
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi float [ %2, %15 ], [ %14, %9 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 25
  %22 = load float, ptr %21, align 4, !tbaa !148
  %23 = fsub float %20, %22
  store float %23, ptr %4, align 4, !tbaa !128
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @nodeAttachNodeCheck(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !149

11:                                               ; preds = %4, %7, %2
  %12 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 1, %4 ]
  ret i8 %12
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeAttachNode(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  call void @nodeToView(ptr noundef %0, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %5 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  store ptr %1, ptr %5, align 8, !tbaa !146
  %6 = load float, ptr %3, align 4, !tbaa !128
  %7 = load float, ptr %4, align 4, !tbaa !128
  %8 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 25
  tail call void @nodeFromView(ptr noundef %1, float noundef %6, float noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeDetachNode(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !146
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  call void @nodeToView(ptr noundef nonnull %0, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %8 = load float, ptr %2, align 4, !tbaa !128
  %9 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 24
  store float %8, ptr %9, align 8, !tbaa !147
  %10 = load float, ptr %3, align 4, !tbaa !128
  %11 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 25
  store float %10, ptr %11, align 4, !tbaa !148
  store ptr null, ptr %4, align 8, !tbaa !146
  br label %12

12:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeAddTree(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_libblock_alloc(ptr noundef nonnull %0, i16 noundef signext 21582, ptr noundef %1) #24
  br label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %9 = tail call ptr %8(i64 noundef 432, ptr noundef nonnull @.str.48) #24
  %10 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4
  store i16 21582, ptr %10, align 8, !tbaa !127
  %11 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 4, i64 2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef %1, i64 noundef 66) #24
  br label %13

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.bNodeTree, ptr %14, i64 0, i32 3
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef %2, i64 noundef 64) #24
  %20 = tail call ptr @ntreeTypeFind(ptr noundef %2) #23
  tail call fastcc void @ntree_set_typeinfo(ptr noundef %14, ptr noundef %20) #23
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeCopyTree_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @ntreeCopyTree_internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext 1) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ntreeCopyTree_internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !150 {
  %6 = alloca %struct.GHashIterator, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %150, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 35
  %12 = tail call i32 @BLI_findindex(ptr noundef nonnull %11, ptr noundef nonnull %0) #24
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_libblock_copy(ptr noundef nonnull %0) #24
  br label %19

16:                                               ; preds = %10, %8
  %17 = tail call ptr @BKE_libblock_copy_nolib(ptr noundef nonnull %0, i8 noundef zeroext 1) #24
  %18 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !151
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !152
  tail call void @id_us_plus(ptr noundef %22) #24
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 27
  store ptr null, ptr %23, align 8, !tbaa !153
  %24 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 7
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %24) #23
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 8
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %25) #23
  %26 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !154
  %29 = icmp eq i8 %2, 0
  %30 = icmp eq i8 %3, 0
  br label %31

31:                                               ; preds = %43, %19
  %32 = phi ptr [ %26, %19 ], [ %33, %43 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  br i1 %29, label %39, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !155
  tail call void @id_us_plus(ptr noundef %38) #24
  br label %39

39:                                               ; preds = %36, %35
  br i1 %30, label %43, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !155
  tail call void @id_lib_extern(ptr noundef %42) #24
  br label %43

43:                                               ; preds = %40, %39
  %44 = getelementptr inbounds %struct.bNode, ptr %33, i64 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !135
  %45 = tail call ptr @nodeCopyNode(ptr noundef %20, ptr noundef nonnull %33) #23
  %46 = icmp eq ptr %33, %28
  br i1 %46, label %47, label %31, !llvm.loop !156

47:                                               ; preds = %43, %31
  %48 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_duplicatelist(ptr noundef nonnull %25, ptr noundef nonnull %48) #24
  %49 = load ptr, ptr %25, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %90, label %51

51:                                               ; preds = %47, %87
  %52 = phi ptr [ %88, %87 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !107
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.bNode, ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !135
  br label %59

59:                                               ; preds = %51, %56
  %60 = phi ptr [ %58, %56 ], [ null, %51 ]
  store ptr %60, ptr %53, align 8, !tbaa !107
  %61 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !100
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bNodeSocket, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !132
  br label %67

67:                                               ; preds = %59, %64
  %68 = phi ptr [ %66, %64 ], [ null, %59 ]
  store ptr %68, ptr %61, align 8, !tbaa !100
  %69 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !108
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !135
  br label %75

75:                                               ; preds = %67, %72
  %76 = phi ptr [ %74, %72 ], [ null, %67 ]
  store ptr %76, ptr %69, align 8, !tbaa !108
  %77 = getelementptr inbounds %struct.bNodeLink, ptr %52, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store ptr null, ptr %77, align 8, !tbaa !101
  br label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.bNodeSocket, ptr %78, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !132
  store ptr %83, ptr %77, align 8, !tbaa !101
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.bNodeSocket, ptr %83, i64 0, i32 23
  store ptr %52, ptr %86, align 8, !tbaa !103
  br label %87

87:                                               ; preds = %80, %81, %85
  %88 = load ptr, ptr %52, align 8, !tbaa !46
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %51, !llvm.loop !157

90:                                               ; preds = %87, %47
  %91 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 22
  %92 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  tail call void @BLI_duplicatelist(ptr noundef nonnull %91, ptr noundef nonnull %92) #24
  %93 = load ptr, ptr %91, align 8, !tbaa !46
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %90, %95
  %96 = phi ptr [ %99, %95 ], [ %93, %90 ]
  %97 = phi ptr [ %98, %95 ], [ %92, %90 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  tail call fastcc void @node_socket_copy(ptr noundef nonnull %96, ptr noundef %98) #23
  %99 = load ptr, ptr %96, align 8, !tbaa !46
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %95, !llvm.loop !158

101:                                              ; preds = %95, %90
  %102 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 23
  %103 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  tail call void @BLI_duplicatelist(ptr noundef nonnull %102, ptr noundef nonnull %103) #24
  %104 = load ptr, ptr %102, align 8, !tbaa !46
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %101, %106
  %107 = phi ptr [ %110, %106 ], [ %104, %101 ]
  %108 = phi ptr [ %109, %106 ], [ %103, %101 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  tail call fastcc void @node_socket_copy(ptr noundef nonnull %107, ptr noundef %109) #23
  %110 = load ptr, ptr %107, align 8, !tbaa !46
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %106, !llvm.loop !159

112:                                              ; preds = %106, %101
  %113 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %114 = load ptr, ptr %113, align 8, !tbaa !160
  %115 = icmp ne ptr %114, null
  %116 = icmp ne i8 %4, 0
  %117 = and i1 %116, %115
  br i1 %117, label %118, label %132

118:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  %119 = tail call ptr @BKE_node_instance_hash_new(ptr noundef nonnull @.str.51) #23
  %120 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 24
  store ptr %119, ptr %120, align 8, !tbaa !160
  %121 = load ptr, ptr %113, align 8, !tbaa !160
  call fastcc void @BKE_node_instance_hash_iterator_init(ptr noundef nonnull %6, ptr noundef %121) #23
  %122 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %6) #23, !range !78
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118, %124
  %125 = call fastcc i32 @BKE_node_instance_hash_iterator_get_key(ptr noundef nonnull %6) #23
  %126 = call fastcc ptr @BKE_node_instance_hash_iterator_get_value(ptr noundef nonnull %6) #23
  %127 = load ptr, ptr %120, align 8, !tbaa !160
  %128 = call ptr @BKE_node_preview_copy(ptr noundef %126) #23
  call void @BKE_node_instance_hash_insert(ptr noundef %127, i32 %125, ptr noundef %128) #23
  call fastcc void @BKE_node_instance_hash_iterator_step(ptr noundef nonnull %6) #23
  %129 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %6) #23, !range !78
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %124, label %131, !llvm.loop !161

131:                                              ; preds = %124, %118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  br label %134

132:                                              ; preds = %112
  %133 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 24
  store ptr null, ptr %133, align 8, !tbaa !160
  br label %134

134:                                              ; preds = %132, %131
  %135 = load ptr, ptr %24, align 8, !tbaa !46
  %136 = icmp eq ptr %135, null
  br i1 %136, label %148, label %137

137:                                              ; preds = %134, %145
  %138 = phi ptr [ %146, %145 ], [ %135, %134 ]
  %139 = getelementptr inbounds %struct.bNode, ptr %138, i64 0, i32 19
  %140 = load ptr, ptr %139, align 8, !tbaa !146
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.bNode, ptr %140, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !135
  store ptr %144, ptr %139, align 8, !tbaa !146
  br label %145

145:                                              ; preds = %137, %142
  %146 = load ptr, ptr %138, align 8, !tbaa !46
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %137, !llvm.loop !162

148:                                              ; preds = %145, %134
  %149 = getelementptr inbounds %struct.bNodeTree, ptr %20, i64 0, i32 4
  store ptr null, ptr %149, align 8, !tbaa !163
  br label %150

150:                                              ; preds = %5, %148
  %151 = phi ptr [ %20, %148 ], [ null, %5 ]
  ret ptr %151
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeCopyTree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @G, align 8, !tbaa !75
  %3 = tail call ptr @ntreeCopyTree_ex(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeSwitchID_ex(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %23, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = icmp eq i8 %3, 0
  br label %12

12:                                               ; preds = %10, %20
  %13 = phi ptr [ %8, %10 ], [ %21, %20 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  br i1 %11, label %19, label %18

18:                                               ; preds = %17
  tail call void @id_us_min(ptr noundef %1) #24
  tail call void @id_us_plus(ptr noundef %2) #24
  br label %19

19:                                               ; preds = %18, %17
  store ptr %2, ptr %14, align 8, !tbaa !155
  br label %20

20:                                               ; preds = %12, %19
  %21 = load ptr, ptr %13, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !164

23:                                               ; preds = %20, %6, %4
  ret void
}

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeSwitchID(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @ntreeSwitchID_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeUserIncrefID(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  tail call void @id_us_plus(ptr noundef %8) #24
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !165

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeUserDecrefID(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  tail call void @id_us_min(ptr noundef %8) #24
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !166

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_node_preview_used(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.bNodeType, ptr %3, i64 0, i32 15
  %5 = load i16, ptr %4, align 2, !tbaa !167
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_node_preview_verify(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BKE_node_instance_hash_lookup(ptr noundef %0, i32 %1) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = icmp eq i8 %4, 0
  br i1 %9, label %47, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %12 = tail call ptr %11(i64 noundef 24, ptr noundef nonnull @.str.49) #24
  tail call void @BKE_node_instance_hash_insert(ptr noundef %0, i32 %1, ptr noundef %12) #23
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %6, %5 ], [ %12, %10 ]
  %15 = icmp eq i32 %2, 0
  %16 = icmp eq i32 %3, 0
  %17 = or i1 %15, %16
  br i1 %17, label %47, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNodePreview, ptr %14, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !168
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNodePreview, ptr %14, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !171
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bNodePreview, ptr %14, i64 0, i32 3
  %29 = load i16, ptr %28, align 2, !tbaa !172
  %30 = sext i16 %29 to i32
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %47, label %32

32:                                               ; preds = %27, %22
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %33(ptr noundef nonnull %20) #24
  store ptr null, ptr %19, align 8, !tbaa !168
  br label %34

34:                                               ; preds = %18, %32
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %36 = shl nsw i32 %2, 2
  %37 = sext i32 %36 to i64
  %38 = mul nsw i32 %3, %2
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 2
  %41 = add nsw i64 %40, %37
  %42 = tail call ptr %35(i64 noundef %41, ptr noundef nonnull @.str.50) #24
  store ptr %42, ptr %19, align 8, !tbaa !168
  %43 = trunc i32 %2 to i16
  %44 = getelementptr inbounds %struct.bNodePreview, ptr %14, i64 0, i32 2
  store i16 %43, ptr %44, align 8, !tbaa !171
  %45 = trunc i32 %3 to i16
  %46 = getelementptr inbounds %struct.bNodePreview, ptr %14, i64 0, i32 3
  store i16 %45, ptr %46, align 2, !tbaa !172
  br label %47

47:                                               ; preds = %27, %34, %13, %8
  %48 = phi ptr [ null, %8 ], [ %14, %13 ], [ %14, %34 ], [ %14, %27 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_node_instance_hash_lookup(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !173
  %5 = call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef nonnull %3) #24
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_instance_hash_insert(ptr nocapture noundef readonly %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 {
  store i32 %1, ptr %2, align 4, !tbaa.struct !175
  %4 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %2, i64 0, i32 1
  store i16 0, ptr %4, align 4, !tbaa !176
  %5 = load ptr, ptr %0, align 8, !tbaa !173
  tail call void @BLI_ghash_insert(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_node_preview_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %3 = tail call ptr %2(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !46
  %9 = tail call ptr %8(ptr noundef nonnull %5) #24
  %10 = getelementptr inbounds %struct.bNodePreview, ptr %3, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !168
  br label %11

11:                                               ; preds = %7, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %6(ptr noundef nonnull %3) #24
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_init_tree(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %8 = load ptr, ptr %7, align 8, !tbaa !160
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @BKE_node_instance_hash_new(ptr noundef nonnull @.str.51) #23
  store ptr %11, ptr %7, align 8, !tbaa !160
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %8, %6 ]
  tail call fastcc void @node_preview_init_tree_recursive(ptr noundef %13, ptr noundef nonnull %0, i32 5381, i32 noundef %1, i32 noundef %2, i32 noundef %3) #23
  br label %14

14:                                               ; preds = %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_node_instance_hash_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 8, ptr noundef %0) #24
  %4 = tail call ptr @BLI_ghash_new(ptr noundef nonnull @node_instance_hash_key, ptr noundef nonnull @node_instance_hash_key_cmp, ptr noundef nonnull @.str.53) #24
  store ptr %4, ptr %3, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_preview_init_tree_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !177 {
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = trunc i32 %3 to i16
  %12 = trunc i32 %4 to i16
  %13 = trunc i32 %5 to i8
  br label %14

14:                                               ; preds = %10, %32
  %15 = phi ptr [ %8, %10 ], [ %33, %32 ]
  %16 = tail call i32 @BKE_node_instance_key(i32 %2, ptr noundef %1, ptr noundef nonnull %15) #23
  %17 = tail call i32 @BKE_node_preview_used(ptr noundef nonnull %15) #23, !range !141
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 43
  store i16 %11, ptr %20, align 8, !tbaa !178
  %21 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 44
  store i16 %12, ptr %21, align 2, !tbaa !179
  %22 = tail call ptr @BKE_node_preview_verify(ptr noundef %0, i32 %16, i32 noundef %3, i32 noundef %4, i8 noundef zeroext %13) #23
  br label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 8
  %25 = load i16, ptr %24, align 4, !tbaa !66
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 20
  %29 = load ptr, ptr %28, align 8, !tbaa !155
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call fastcc void @node_preview_init_tree_recursive(ptr noundef %0, ptr noundef nonnull %29, i32 %16, i32 noundef %3, i32 noundef %4, i32 noundef %5) #23
  br label %32

32:                                               ; preds = %31, %27, %23
  %33 = load ptr, ptr %15, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %14, !llvm.loop !180

35:                                               ; preds = %32, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_remove_unused(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  tail call void @BKE_node_instance_hash_clear_tags(ptr noundef nonnull %5) #23
  %8 = load ptr, ptr %4, align 8, !tbaa !160
  tail call fastcc void @node_preview_tag_used_recursive(ptr noundef %8, ptr noundef nonnull %0, i32 5381) #23
  %9 = load ptr, ptr %4, align 8, !tbaa !160
  tail call void @BKE_node_instance_hash_remove_untagged(ptr noundef %9, ptr noundef nonnull @BKE_node_preview_free) #23
  br label %10

10:                                               ; preds = %1, %3, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_instance_hash_clear_tags(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @BKE_node_instance_hash_iterator_init(ptr noundef nonnull %2, ptr noundef %0) #23
  %3 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %2) #23, !range !78
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1, %5
  %6 = call fastcc ptr @BKE_node_instance_hash_iterator_get_value(ptr noundef nonnull %2) #23
  %7 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %6, i64 0, i32 1
  store i16 0, ptr %7, align 4, !tbaa !176
  call fastcc void @BKE_node_instance_hash_iterator_step(ptr noundef nonnull %2) #23
  %8 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %2) #23, !range !78
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %5, label %10, !llvm.loop !181

10:                                               ; preds = %5, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_preview_tag_used_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 %2) unnamed_addr #0 !PGOFuncName !182 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3, %23
  %8 = phi ptr [ %24, %23 ], [ %5, %3 ]
  %9 = tail call i32 @BKE_node_instance_key(i32 %2, ptr noundef %1, ptr noundef nonnull %8) #23
  %10 = tail call i32 @BKE_node_preview_used(ptr noundef nonnull %8) #23, !range !141
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call zeroext i8 @BKE_node_instance_hash_tag_key(ptr noundef %0, i32 %9) #23, !range !78
  br label %14

14:                                               ; preds = %12, %7
  %15 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %16 = load i16, ptr %15, align 4, !tbaa !66
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !155
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call fastcc void @node_preview_tag_used_recursive(ptr noundef %0, ptr noundef nonnull %20, i32 %9) #23
  br label %23

23:                                               ; preds = %22, %18, %14
  %24 = load ptr, ptr %8, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !183

26:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_instance_hash_remove_untagged(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.GHashIterator, align 8
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %5 = tail call i32 @BKE_node_instance_hash_size(ptr noundef %0) #23
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %4(i64 noundef %7, ptr noundef nonnull @.str.54) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call fastcc void @BKE_node_instance_hash_iterator_init(ptr noundef nonnull %3, ptr noundef %0) #23
  %9 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %3) #23, !range !78
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %37

11:                                               ; preds = %26
  %12 = icmp sgt i32 %27, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %11
  %14 = zext nneg i32 %27 to i64
  br label %30

15:                                               ; preds = %2, %26
  %16 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %17 = call fastcc ptr @BKE_node_instance_hash_iterator_get_value(ptr noundef nonnull %3) #23
  %18 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %17, i64 0, i32 1
  %19 = load i16, ptr %18, align 4, !tbaa !176
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = add nsw i32 %16, 1
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %struct.bNodeInstanceKey, ptr %8, i64 %23
  %25 = call fastcc i32 @BKE_node_instance_hash_iterator_get_key(ptr noundef nonnull %3) #23
  store i32 %25, ptr %24, align 4, !tbaa.struct !175
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i32 [ %16, %15 ], [ %22, %21 ]
  call fastcc void @BKE_node_instance_hash_iterator_step(ptr noundef nonnull %3) #23
  %28 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %3) #23, !range !78
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %15, label %11, !llvm.loop !184

30:                                               ; preds = %13, %30
  %31 = phi i64 [ 0, %13 ], [ %35, %30 ]
  %32 = getelementptr inbounds %struct.bNodeInstanceKey, ptr %8, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @BKE_node_instance_hash_remove(ptr noundef %0, i32 %33, ptr noundef %1) #23, !range !185
  %35 = add nuw nsw i64 %31, 1
  %36 = icmp eq i64 %35, %14
  br i1 %36, label %37, label %30, !llvm.loop !186

37:                                               ; preds = %30, %2, %11
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %38(ptr noundef %8) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_free_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @BKE_node_instance_hash_free(ptr noundef nonnull %5, ptr noundef nonnull @BKE_node_preview_free) #23
  store ptr null, ptr %4, align 8, !tbaa !160
  br label %8

8:                                                ; preds = %1, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_instance_hash_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !173
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef %1) #24
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %4(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_clear(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !46
  %9 = tail call i64 %8(ptr noundef nonnull %5) #24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %5, i8 0, i64 %9, i1 false)
  br label %10

10:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_clear_tree(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !160
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  call fastcc void @BKE_node_instance_hash_iterator_init(ptr noundef nonnull %2, ptr noundef nonnull %6) #23
  %9 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %2) #23, !range !78
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %11
  %12 = call fastcc ptr @BKE_node_instance_hash_iterator_get_value(ptr noundef nonnull %2) #23
  call void @BKE_node_preview_clear(ptr noundef %12) #23
  call fastcc void @BKE_node_instance_hash_iterator_step(ptr noundef nonnull %2) #23
  %13 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %2) #23, !range !78
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %11, label %15, !llvm.loop !187

15:                                               ; preds = %11, %8, %1, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BKE_node_instance_hash_iterator_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !188 {
  %3 = load ptr, ptr %1, align 8, !tbaa !173
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !189 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #23, !range !78
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BKE_node_instance_hash_iterator_get_value(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !190 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BKE_node_instance_hash_iterator_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !191 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_sync_tree(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.GHashIterator, align 8
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %8 = icmp ne ptr %5, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  call fastcc void @BKE_node_instance_hash_iterator_init(ptr noundef nonnull %3, ptr noundef nonnull %5) #23
  %12 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %3) #23, !range !78
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11, %22
  %15 = call fastcc i32 @BKE_node_instance_hash_iterator_get_key(ptr noundef nonnull %3) #23
  %16 = call fastcc ptr @BKE_node_instance_hash_iterator_get_value(ptr noundef nonnull %3) #23
  %17 = call ptr @BKE_node_instance_hash_lookup(ptr noundef nonnull %7, i32 %15) #23
  %18 = icmp ne ptr %16, null
  %19 = icmp ne ptr %17, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  call fastcc void @node_preview_sync(ptr noundef nonnull %17, ptr noundef nonnull %16) #23
  br label %22

22:                                               ; preds = %21, %14
  call fastcc void @BKE_node_instance_hash_iterator_step(ptr noundef nonnull %3) #23
  %23 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %3) #23, !range !78
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %14, label %25, !llvm.loop !192

25:                                               ; preds = %22, %11, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @BKE_node_instance_hash_iterator_get_key(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !193 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #23
  %3 = load i32, ptr %2, align 4, !tbaa.struct !175
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_preview_sync(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !PGOFuncName !194 {
  %3 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !168
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodePreview, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !168
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !171
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !172
  %16 = sext i16 %15 to i32
  %17 = shl nsw i32 %13, 2
  %18 = sext i32 %17 to i64
  %19 = mul nsw i32 %16, %13
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = add nsw i64 %21, %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull align 1 %8, i64 %22, i1 false)
  br label %23

23:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_merge_tree(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = icmp eq i8 %2, 0
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = icmp eq ptr %7, null
  br i1 %5, label %9, label %10

9:                                                ; preds = %3
  br i1 %8, label %12, label %16

10:                                               ; preds = %3
  br i1 %8, label %12, label %11

11:                                               ; preds = %10
  tail call void @BKE_node_instance_hash_free(ptr noundef nonnull %7, ptr noundef nonnull @BKE_node_preview_free) #23
  br label %12

12:                                               ; preds = %9, %11, %10
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !160
  store ptr %15, ptr %13, align 8, !tbaa !160
  store ptr null, ptr %14, align 8, !tbaa !160
  tail call void @BKE_node_preview_remove_unused(ptr noundef nonnull %0) #23
  br label %34

16:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !160
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  call fastcc void @BKE_node_instance_hash_iterator_init(ptr noundef nonnull %4, ptr noundef nonnull %18) #23
  %21 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %4) #23, !range !78
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %23
  %24 = call fastcc i32 @BKE_node_instance_hash_iterator_get_key(ptr noundef nonnull %4) #23
  %25 = call fastcc ptr @BKE_node_instance_hash_iterator_get_value(ptr noundef nonnull %4) #23
  %26 = load ptr, ptr %6, align 8, !tbaa !160
  %27 = call i32 @BKE_node_instance_hash_remove(ptr noundef %26, i32 %24, ptr noundef nonnull @BKE_node_preview_free) #23, !range !185
  %28 = load ptr, ptr %6, align 8, !tbaa !160
  call void @BKE_node_instance_hash_insert(ptr noundef %28, i32 %24, ptr noundef %25) #23
  call fastcc void @BKE_node_instance_hash_iterator_step(ptr noundef nonnull %4) #23
  %29 = call fastcc zeroext i8 @BKE_node_instance_hash_iterator_done(ptr noundef nonnull %4) #23, !range !78
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %23, label %31, !llvm.loop !195

31:                                               ; preds = %23, %20
  %32 = load ptr, ptr %17, align 8, !tbaa !160
  call void @BKE_node_instance_hash_free(ptr noundef %32, ptr noundef null) #23
  store ptr null, ptr %17, align 8, !tbaa !160
  br label %33

33:                                               ; preds = %31, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  br label %34

34:                                               ; preds = %33, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_node_instance_hash_remove(ptr nocapture noundef readonly %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !173
  %6 = call zeroext i8 @BLI_ghash_remove(ptr noundef %5, ptr noundef nonnull %4, ptr noundef null, ptr noundef %2) #24
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_preview_set_pixel(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp ne ptr %0, null
  %7 = or i32 %3, %2
  %8 = icmp sgt i32 %7, -1
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !171
  %13 = sext i16 %12 to i32
  %14 = icmp sgt i32 %13, %2
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 2, !tbaa !172
  %18 = sext i16 %17 to i32
  %19 = icmp sgt i32 %18, %3
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !168
  %23 = mul nuw nsw i32 %13, %3
  %24 = add nuw nsw i32 %23, %2
  %25 = shl nuw nsw i32 %24, 2
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %22, i64 %26
  %28 = icmp eq i8 %4, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  tail call fastcc void @linearrgb_to_srgb_uchar4(ptr noundef %27, ptr noundef %1) #23
  br label %31

30:                                               ; preds = %20
  tail call void @rgba_float_to_uchar(ptr noundef %27, ptr noundef %1) #24
  br label %31

31:                                               ; preds = %29, %30, %15, %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_uchar4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !196 {
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call fastcc void @linearrgb_to_srgb_v4(ptr noundef nonnull %3, ptr noundef %1) #23
  %4 = load float, ptr %3, align 16
  %5 = fcmp ugt float %4, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = fcmp ogt float %4, 0x3FEFEFEFE0000000
  %8 = tail call float @llvm.fmuladd.f32(float %4, float 2.550000e+02, float 5.000000e-01)
  %9 = select i1 %7, float 2.550000e+02, float %8
  %10 = fptoui float %9 to i8
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 0, %2 ]
  store i8 %12, ptr %0, align 1, !tbaa !58
  %13 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = fcmp ugt float %14, 0.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = fcmp ogt float %14, 0x3FEFEFEFE0000000
  %18 = tail call float @llvm.fmuladd.f32(float %14, float 2.550000e+02, float 5.000000e-01)
  %19 = select i1 %17, float 2.550000e+02, float %18
  %20 = fptoui float %19 to i8
  br label %21

21:                                               ; preds = %11, %16
  %22 = phi i8 [ %20, %16 ], [ 0, %11 ]
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %22, ptr %23, align 1, !tbaa !58
  %24 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  %25 = load float, ptr %24, align 8
  %26 = fcmp ugt float %25, 0.000000e+00
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = fcmp ogt float %25, 0x3FEFEFEFE0000000
  %29 = tail call float @llvm.fmuladd.f32(float %25, float 2.550000e+02, float 5.000000e-01)
  %30 = select i1 %28, float 2.550000e+02, float %29
  %31 = fptoui float %30 to i8
  br label %32

32:                                               ; preds = %21, %27
  %33 = phi i8 [ %31, %27 ], [ 0, %21 ]
  %34 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %33, ptr %34, align 1, !tbaa !58
  %35 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  %36 = load float, ptr %35, align 4
  %37 = fcmp ugt float %36, 0.000000e+00
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = fcmp ogt float %36, 0x3FEFEFEFE0000000
  %40 = tail call float @llvm.fmuladd.f32(float %36, float 2.550000e+02, float 5.000000e-01)
  %41 = select i1 %39, float 2.550000e+02, float %40
  %42 = fptoui float %41 to i8
  br label %43

43:                                               ; preds = %32, %38
  %44 = phi i8 [ %42, %38 ], [ 0, %32 ]
  %45 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %44, ptr %45, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @rgba_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeUnlinkNode(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  br label %9

9:                                                ; preds = %6, %40
  %10 = phi ptr [ %4, %6 ], [ %11, %40 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %13, %1
  %15 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  br i1 %14, label %17, label %23

17:                                               ; preds = %9
  %18 = icmp eq ptr %16, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 31
  %21 = load i32, ptr %20, align 4, !tbaa !91
  %22 = or i32 %21, 65535
  store i32 %22, ptr %20, align 4, !tbaa !91
  br label %25

23:                                               ; preds = %9
  %24 = icmp eq ptr %16, %1
  br i1 %24, label %25, label %40

25:                                               ; preds = %23, %17, %19
  %26 = phi ptr [ %8, %19 ], [ %8, %17 ], [ %7, %23 ]
  %27 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 4
  %28 = getelementptr inbounds %struct.bNodeLink, ptr %10, i64 0, i32 5
  br label %29

29:                                               ; preds = %25, %36
  %30 = phi ptr [ %26, %25 ], [ %31, %36 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %27, align 8, !tbaa !100
  %35 = icmp eq ptr %34, %31
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %28, align 8, !tbaa !101
  %38 = icmp eq ptr %37, %31
  br i1 %38, label %39, label %29, !llvm.loop !197

39:                                               ; preds = %36, %33
  tail call void @nodeRemLink(ptr noundef %0, ptr noundef nonnull %10) #23
  br label %40

40:                                               ; preds = %29, %23, %39
  %41 = icmp eq ptr %11, null
  br i1 %41, label %42, label %9, !llvm.loop !198

42:                                               ; preds = %40, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeFreeNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @node_free_node_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_free_node_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !199 {
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca [128 x i8], align 16
  %8 = icmp eq ptr %0, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !200
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 5
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  br label %16

16:                                               ; preds = %9, %4
  %17 = phi i8 [ 0, %4 ], [ %15, %9 ]
  %18 = and i8 %17, %2
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 35
  %24 = load ptr, ptr %23, align 8, !tbaa !201
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @RNA_pointer_create(ptr noundef %0, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %1, ptr noundef nonnull %5) #24
  %27 = load ptr, ptr %21, align 8, !tbaa !63
  %28 = getelementptr inbounds %struct.bNodeType, ptr %27, i64 0, i32 35
  %29 = load ptr, ptr %28, align 8, !tbaa !201
  call void %29(ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  br label %30

30:                                               ; preds = %26, %20, %16
  br i1 %8, label %61, label %31

31:                                               ; preds = %30
  call void @nodeUnlinkNode(ptr noundef nonnull %0, ptr noundef %1) #23
  call fastcc void @node_unlink_attached(ptr noundef nonnull %0, ptr noundef %1) #23
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  call void @BLI_remlink(ptr noundef nonnull %32, ptr noundef %1) #24
  %33 = icmp eq i8 %18, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #25
  %35 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 6
  %36 = call i64 @BLI_strescape(ptr noundef nonnull %6, ptr noundef nonnull %35, i64 noundef 128) #24
  %37 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 128, ptr noundef nonnull @.str.267, ptr noundef nonnull %6) #24
  call void @BKE_animdata_fix_paths_remove(ptr noundef nonnull %0, ptr noundef nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #25
  br label %38

38:                                               ; preds = %34, %31
  %39 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.bNodeTreeType, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !202
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  call void %42(ptr noundef nonnull %0, ptr noundef %1) #24
  br label %45

45:                                               ; preds = %44, %38
  %46 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !57
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %51 = load ptr, ptr %50, align 8, !tbaa !153
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  call void @ntreeTexEndExecTree(ptr noundef nonnull %51) #24
  store ptr null, ptr %50, align 8, !tbaa !153
  br label %54

54:                                               ; preds = %53, %49, %45
  %55 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !63
  %57 = getelementptr inbounds %struct.bNodeType, ptr %56, i64 0, i32 32
  %58 = load ptr, ptr %57, align 8, !tbaa !203
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  call void %58(ptr noundef nonnull %1) #24
  br label %61

61:                                               ; preds = %54, %60, %30
  %62 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !110
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61, %65
  %66 = phi ptr [ %67, %65 ], [ %63, %61 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !111
  call fastcc void @node_socket_free(ptr noundef nonnull %66) #23
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %68(ptr noundef nonnull %66) #24
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %65, !llvm.loop !204

70:                                               ; preds = %65, %61
  %71 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 18
  %72 = load ptr, ptr %71, align 8, !tbaa !113
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %70, %74
  %75 = phi ptr [ %76, %74 ], [ %72, %70 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !111
  call fastcc void @node_socket_free(ptr noundef nonnull %75) #23
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %77(ptr noundef nonnull %75) #24
  %78 = icmp eq ptr %76, null
  br i1 %78, label %79, label %74, !llvm.loop !205

79:                                               ; preds = %74, %70
  %80 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  call void @BLI_freelistN(ptr noundef nonnull %80) #24
  %81 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !131
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  call void @IDP_FreeProperty(ptr noundef nonnull %82) #24
  %85 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %86 = load ptr, ptr %81, align 8, !tbaa !131
  call void %85(ptr noundef %86) #24
  br label %87

87:                                               ; preds = %84, %79
  %88 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %88(ptr noundef nonnull %1) #24
  br i1 %8, label %93, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !104
  %92 = or i32 %91, 2
  store i32 %92, ptr %90, align 8, !tbaa !104
  br label %93

93:                                               ; preds = %89, %87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeFreeTree_ex(ptr noundef %0, i8 zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 27
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !57
  switch i32 %10, label %13 [
    i32 0, label %11
    i32 2, label %12
  ]

11:                                               ; preds = %8
  tail call void @ntreeShaderEndExecTree(ptr noundef nonnull %6) #24
  br label %13

12:                                               ; preds = %8
  tail call void @ntreeTexEndExecTree(ptr noundef nonnull %6) #24
  store ptr null, ptr %5, align 8, !tbaa !153
  br label %13

13:                                               ; preds = %11, %12, %8, %4
  tail call fastcc void @free_localized_node_groups(ptr noundef nonnull %0) #23
  tail call void @ntreeInterfaceTypeFree(ptr noundef nonnull %0) #23
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #24
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !152
  tail call void @id_us_min(ptr noundef %15) #24
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  tail call void @BLI_freelistN(ptr noundef nonnull %16) #24
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %13, %20
  %21 = phi ptr [ %22, %20 ], [ %18, %13 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !207
  tail call fastcc void @node_free_node_ex(ptr noundef nonnull %0, ptr noundef nonnull %21, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %20, !llvm.loop !208

24:                                               ; preds = %20, %13
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %26 = load ptr, ptr %25, align 8, !tbaa !209
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  tail call fastcc void @node_socket_interface_free(ptr noundef nonnull %29) #23
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %31(ptr noundef nonnull %29) #24
  %32 = icmp eq ptr %30, null
  br i1 %32, label %33, label %28, !llvm.loop !210

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %35 = load ptr, ptr %34, align 8, !tbaa !211
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %39, %37 ], [ %35, %33 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !111
  tail call fastcc void @node_socket_interface_free(ptr noundef nonnull %38) #23
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %40(ptr noundef nonnull %38) #24
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %37, !llvm.loop !212

42:                                               ; preds = %37, %33
  %43 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 24
  %44 = load ptr, ptr %43, align 8, !tbaa !160
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @BKE_node_instance_hash_free(ptr noundef nonnull %44, ptr noundef nonnull @BKE_node_preview_free) #23
  br label %47

47:                                               ; preds = %46, %42
  %48 = load ptr, ptr @G, align 8, !tbaa !75
  %49 = getelementptr inbounds %struct.Main, ptr %48, i64 0, i32 35
  br label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %49, %47 ], [ %52, %50 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  %54 = icmp eq ptr %52, %0
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %50, !llvm.loop !213

56:                                               ; preds = %50
  br i1 %53, label %57, label %58

57:                                               ; preds = %56
  tail call void @BKE_libblock_free_data(ptr noundef %48, ptr noundef nonnull %0) #24
  br label %58

58:                                               ; preds = %56, %57, %2
  ret void
}

; Function Attrs: optsize
declare void @ntreeShaderEndExecTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeTexEndExecTree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_localized_node_groups(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !214 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !200
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6, %21
  %11 = phi ptr [ %22, %21 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 8
  %13 = load i16, ptr %12, align 4, !tbaa !66
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %17, i8 zeroext poison) #23
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef nonnull %17) #24
  br label %21

21:                                               ; preds = %10, %15, %19
  %22 = load ptr, ptr %11, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !215

24:                                               ; preds = %21, %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeInterfaceTypeFree(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @RNA_struct_free(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %3) #24
  store ptr null, ptr %2, align 8, !tbaa !163
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_socket_interface_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !216 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @IDP_FreeProperty(ptr noundef nonnull %3) #24
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %7 = load ptr, ptr %2, align 8, !tbaa !106
  tail call void %6(ptr noundef %7) #24
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %13(ptr noundef nonnull %10) #24
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare void @BKE_libblock_free_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeFreeTree(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ntreeFreeTree_ex(ptr noundef %0, i8 zeroext poison) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeFreeCache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.bNodeTreeType, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !217
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef nonnull %0) #24
  br label %10

10:                                               ; preds = %1, %9, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ntreeSetOutput(ptr nocapture noundef readonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %98, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  br label %7

7:                                                ; preds = %5, %95
  %8 = phi ptr [ %3, %5 ], [ %96, %95 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.bNodeType, ptr %10, i64 0, i32 14
  %12 = load i16, ptr %11, align 4, !tbaa !218
  %13 = icmp eq i16 %12, 1
  %14 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !66
  br i1 %13, label %16, label %67

16:                                               ; preds = %7
  %17 = icmp eq i16 %15, 223
  br i1 %17, label %95, label %18

18:                                               ; preds = %16, %57
  %19 = phi ptr [ %59, %57 ], [ %3, %16 ]
  %20 = phi i32 [ %58, %57 ], [ 0, %16 ]
  %21 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.bNodeType, ptr %22, i64 0, i32 14
  %24 = load i16, ptr %23, align 4, !tbaa !218
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load i32, ptr %6, align 8, !tbaa !57
  %28 = icmp eq i32 %27, 1
  %29 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 8
  %30 = load i16, ptr %29, align 4, !tbaa !66
  %31 = icmp eq i16 %30, %15
  br i1 %28, label %32, label %43

32:                                               ; preds = %26
  br i1 %31, label %35, label %33

33:                                               ; preds = %32
  switch i16 %30, label %57 [
    i16 201, label %34
    i16 240, label %34
  ]

34:                                               ; preds = %33, %33
  switch i16 %15, label %57 [
    i16 201, label %35
    i16 240, label %35
  ]

35:                                               ; preds = %34, %34, %32
  %36 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %37 = load i32, ptr %36, align 8, !tbaa !60
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = add nsw i32 %20, 1
  %42 = icmp sgt i32 %20, 0
  br i1 %42, label %52, label %57

43:                                               ; preds = %26
  br i1 %31, label %44, label %57

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !60
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = add nsw i32 %20, 1
  %51 = icmp sgt i32 %20, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %40
  %53 = phi i32 [ %37, %40 ], [ %46, %49 ]
  %54 = phi ptr [ %36, %40 ], [ %45, %49 ]
  %55 = phi i32 [ %41, %40 ], [ %50, %49 ]
  %56 = and i32 %53, -65
  store i32 %56, ptr %54, align 8, !tbaa !60
  br label %57

57:                                               ; preds = %52, %34, %33, %18, %43, %49, %44, %40, %35
  %58 = phi i32 [ %41, %40 ], [ %20, %35 ], [ %50, %49 ], [ %20, %44 ], [ %20, %43 ], [ %20, %18 ], [ %20, %33 ], [ %20, %34 ], [ %55, %52 ]
  %59 = load ptr, ptr %19, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %18, !llvm.loop !219

61:                                               ; preds = %57
  %62 = icmp eq i32 %58, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !60
  %66 = or i32 %65, 64
  store i32 %66, ptr %64, align 8, !tbaa !60
  br label %67

67:                                               ; preds = %7, %61, %63
  %68 = icmp eq i16 %15, 8
  br i1 %68, label %69, label %95

69:                                               ; preds = %67, %85
  %70 = phi ptr [ %87, %85 ], [ %3, %67 ]
  %71 = phi i32 [ %86, %85 ], [ 0, %67 ]
  %72 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 8
  %73 = load i16, ptr %72, align 4, !tbaa !66
  %74 = icmp eq i16 %73, 8
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 7
  %77 = load i32, ptr %76, align 8, !tbaa !60
  %78 = and i32 %77, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = add nsw i32 %71, 1
  %82 = icmp sgt i32 %71, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = and i32 %77, -65
  store i32 %84, ptr %76, align 8, !tbaa !60
  br label %85

85:                                               ; preds = %69, %80, %83, %75
  %86 = phi i32 [ %81, %83 ], [ %81, %80 ], [ %71, %75 ], [ %71, %69 ]
  %87 = load ptr, ptr %70, align 8, !tbaa !46
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %69, !llvm.loop !220

89:                                               ; preds = %85
  %90 = icmp eq i32 %86, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %93 = load i32, ptr %92, align 8, !tbaa !60
  %94 = or i32 %93, 64
  store i32 %94, ptr %92, align 8, !tbaa !60
  br label %95

95:                                               ; preds = %16, %89, %91, %67
  %96 = load ptr, ptr %8, align 8, !tbaa !46
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %7, !llvm.loop !221

98:                                               ; preds = %95, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ntreeFromID(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8, !tbaa !127
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
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi ptr [ null, %1 ], [ %18, %16 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeMakeLocal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.NodeTreeIterStore, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.NodeTreeIterStore, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr @G, align 8, !tbaa !75
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !151
  %11 = icmp eq ptr %10, null
  br i1 %11, label %99, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !222
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @id_clear_lib_data(ptr noundef %8, ptr noundef nonnull %0) #24
  br label %99

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %2, ptr noundef %8) #23
  %18 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !78
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  br label %99

21:                                               ; preds = %17, %50
  %22 = phi i8 [ %52, %50 ], [ 0, %17 ]
  %23 = phi i8 [ %51, %50 ], [ 0, %17 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.bNodeTree, ptr %24, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 3
  br label %33

33:                                               ; preds = %30, %45
  %34 = phi ptr [ %28, %30 ], [ %48, %45 ]
  %35 = phi i8 [ %22, %30 ], [ %47, %45 ]
  %36 = phi i8 [ %23, %30 ], [ %46, %45 ]
  %37 = getelementptr inbounds %struct.bNode, ptr %34, i64 0, i32 20
  %38 = load ptr, ptr %37, align 8, !tbaa !155
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load ptr, ptr %32, align 8, !tbaa !223
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, i8 1, i8 %36
  %44 = select i1 %42, i8 %35, i8 1
  br label %45

45:                                               ; preds = %40, %33
  %46 = phi i8 [ %36, %33 ], [ %43, %40 ]
  %47 = phi i8 [ %35, %33 ], [ %44, %40 ]
  %48 = load ptr, ptr %34, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %33, !llvm.loop !224

50:                                               ; preds = %45, %26, %21
  %51 = phi i8 [ %23, %21 ], [ %23, %26 ], [ %46, %45 ]
  %52 = phi i8 [ %22, %21 ], [ %22, %26 ], [ %47, %45 ]
  %53 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !78
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %21, !llvm.loop !225

55:                                               ; preds = %50
  %56 = icmp ne i8 %52, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  %57 = icmp eq i8 %51, 0
  %58 = select i1 %57, i1 true, i1 %56
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @id_clear_lib_data(ptr noundef %8, ptr noundef %0) #24
  br label %99

60:                                               ; preds = %55
  %61 = icmp ne i8 %51, 0
  %62 = select i1 %61, i1 %56, i1 false
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = tail call ptr @ntreeCopyTree(ptr noundef %0) #23
  %65 = getelementptr inbounds %struct.ID, ptr %64, i64 0, i32 6
  store i32 0, ptr %65, align 4, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %66 = load ptr, ptr @G, align 8, !tbaa !75
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %5, ptr noundef %66) #23
  %67 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23, !range !78
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %63, %95
  %70 = load ptr, ptr %6, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %95, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.bNodeTree, ptr %70, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = icmp eq ptr %74, null
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %7, align 8
  %78 = getelementptr inbounds %struct.ID, ptr %77, i64 0, i32 3
  br label %79

79:                                               ; preds = %76, %92
  %80 = phi ptr [ %74, %76 ], [ %93, %92 ]
  %81 = getelementptr inbounds %struct.bNode, ptr %80, i64 0, i32 20
  %82 = load ptr, ptr %81, align 8, !tbaa !155
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load ptr, ptr %78, align 8, !tbaa !223
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  store ptr %64, ptr %81, align 8, !tbaa !155
  %88 = load i32, ptr %65, align 4, !tbaa !222
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %65, align 4, !tbaa !222
  %90 = load i32, ptr %13, align 4, !tbaa !222
  %91 = add nsw i32 %90, -1
  store i32 %91, ptr %13, align 4, !tbaa !222
  br label %92

92:                                               ; preds = %79, %87, %84
  %93 = load ptr, ptr %80, align 8, !tbaa !46
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %79, !llvm.loop !226

95:                                               ; preds = %92, %72, %69
  %96 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #23, !range !78
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %69, !llvm.loop !227

98:                                               ; preds = %95, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #25
  br label %99

99:                                               ; preds = %20, %59, %98, %60, %1, %16
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_node_tree_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 35
  %4 = load ptr, ptr %3, align 8, !tbaa !228
  store ptr %4, ptr %0, align 8, !tbaa !231
  %5 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !233
  %7 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !234
  %8 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !235
  %10 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !236
  %11 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !237
  %13 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 3
  store ptr %12, ptr %13, align 8, !tbaa !238
  %14 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 21
  %15 = load ptr, ptr %14, align 8, !tbaa !239
  %16 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !240
  %17 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 25
  %18 = load ptr, ptr %17, align 8, !tbaa !241
  %19 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 5
  store ptr %18, ptr %19, align 8, !tbaa !242
  %20 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 44
  %21 = load ptr, ptr %20, align 8, !tbaa !243
  %22 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_node_tree_iter_step(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #15 {
  %4 = load ptr, ptr %0, align 8, !tbaa !231
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 18
  br label %42

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !236
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Material, ptr %14, i64 0, i32 103
  br label %42

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.Tex, ptr %20, i64 0, i32 52
  br label %42

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !240
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Lamp, ptr %26, i64 0, i32 74
  br label %42

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !242
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.World, ptr %32, i64 0, i32 75
  br label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.NodeTreeIterStore, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !244
  %39 = icmp eq ptr %38, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %38, i64 0, i32 40
  br label %42

42:                                               ; preds = %16, %28, %40, %34, %22, %10
  %43 = phi ptr [ %11, %10 ], [ %23, %22 ], [ %35, %34 ], [ %41, %40 ], [ %29, %28 ], [ %17, %16 ]
  %44 = phi ptr [ %7, %10 ], [ %19, %22 ], [ %31, %34 ], [ %37, %40 ], [ %25, %28 ], [ %13, %16 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !46
  br label %46

46:                                               ; preds = %42, %3
  %47 = phi ptr [ %4, %3 ], [ %45, %42 ]
  %48 = phi ptr [ %0, %3 ], [ %44, %42 ]
  store ptr %47, ptr %1, align 8, !tbaa !46
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  store ptr %49, ptr %2, align 8, !tbaa !46
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  store ptr %50, ptr %48, align 8, !tbaa !46
  br label %51

51:                                               ; preds = %46, %36
  %52 = phi i8 [ 0, %36 ], [ 1, %46 ]
  ret i8 %52
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ntreeNodeExists(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %4, !llvm.loop !245

10:                                               ; preds = %4, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ntreeOutputExists(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %10, label %4, !llvm.loop !246

10:                                               ; preds = %4, %8
  %11 = phi i32 [ 1, %8 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeLocalize(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %68, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !247
  %8 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !249
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi ptr [ %7, %6 ], [ null, %3 ]
  %12 = phi ptr [ %9, %6 ], [ null, %3 ]
  %13 = tail call fastcc ptr @ntreeCopyTree_internal(ptr noundef nonnull %0, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !200
  %16 = or i32 %15, 32
  store i32 %16, ptr %14, align 4, !tbaa !200
  %17 = getelementptr inbounds %struct.bNodeTree, ptr %13, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %10, %31
  %21 = phi ptr [ %32, %31 ], [ %18, %10 ]
  %22 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 8
  %23 = load i16, ptr %22, align 4, !tbaa !66
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bNode, ptr %21, i64 0, i32 20
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @ntreeLocalize(ptr noundef nonnull %27) #23
  store ptr %30, ptr %26, align 8, !tbaa !155
  br label %31

31:                                               ; preds = %20, %25, %29
  %32 = load ptr, ptr %21, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %20, !llvm.loop !250

34:                                               ; preds = %31, %10
  br i1 %5, label %50, label %35

35:                                               ; preds = %34
  %36 = tail call ptr @BKE_animdata_from_id(ptr noundef %13) #24
  store ptr %11, ptr %36, align 8, !tbaa !247
  store ptr %11, ptr %4, align 8, !tbaa !247
  %37 = getelementptr inbounds %struct.AnimData, ptr %36, i64 0, i32 1
  store ptr %12, ptr %37, align 8, !tbaa !249
  %38 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 1
  store ptr %12, ptr %38, align 8, !tbaa !249
  %39 = icmp eq ptr %11, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !251
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !251
  br label %44

44:                                               ; preds = %40, %35
  %45 = icmp eq ptr %12, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !251
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !251
  br label %50

50:                                               ; preds = %44, %46, %34
  tail call void @ntreeSetOutput(ptr noundef nonnull %0) #23
  %51 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %59, %54 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.bNode, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !135
  %58 = getelementptr inbounds %struct.bNode, ptr %57, i64 0, i32 2
  store ptr %55, ptr %58, align 8, !tbaa !135
  %59 = load ptr, ptr %55, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %54, !llvm.loop !253

61:                                               ; preds = %54, %50
  %62 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = getelementptr inbounds %struct.bNodeTreeType, ptr %63, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !254
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  tail call void %65(ptr noundef %13, ptr noundef nonnull %0) #24
  br label %68

68:                                               ; preds = %1, %61, %67
  %69 = phi ptr [ %13, %67 ], [ %13, %61 ], [ null, %1 ]
  ret ptr %69
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeLocalSync(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.bNodeTreeType, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !255
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %13

13:                                               ; preds = %6, %12, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeLocalMerge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.bNodeTreeType, ptr %8, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !256
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %13

13:                                               ; preds = %12, %6
  tail call void @ntreeFreeTree_ex(ptr noundef nonnull %0, i8 zeroext poison) #23
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %14(ptr noundef nonnull %0) #24
  br label %15

15:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ntreeFindSocketInterface(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %1, 1
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %7 = select i1 %4, ptr %5, ptr %6
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 4
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %8, !llvm.loop !257

16:                                               ; preds = %8, %12
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeAddSocketInterface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @make_socket_interface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #23
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
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %5) #24
  %13 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !104
  %15 = or i32 %14, %12
  store i32 %15, ptr %13, align 8, !tbaa !104
  br label %16

16:                                               ; preds = %10, %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_socket_interface(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !258 {
  %5 = tail call ptr @nodeSocketTypeFind(ptr noundef %2) #23
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !259
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %6, align 8, !tbaa !259
  %9 = icmp eq ptr %5, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %12 = tail call ptr %11(i64 noundef 352, ptr noundef nonnull @.str.268) #24
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 12
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %5, i64 noundef 64) #24
  tail call fastcc void @node_socket_set_typeinfo(ptr noundef nonnull %0, ptr noundef %12, ptr noundef nonnull %5) #23
  %15 = trunc i32 %1 to i16
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 10
  store i16 %15, ptr %16, align 2, !tbaa !93
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 7
  store i16 -1, ptr %17, align 8, !tbaa !73
  %18 = load i32, ptr %6, align 8, !tbaa !259
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %6, align 8, !tbaa !259
  %20 = icmp eq i32 %1, 1
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 4
  %22 = select i1 %20, ptr @.str.269, ptr @.str.270
  %23 = select i1 %20, i16 1, i16 4095
  %24 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %21, i64 noundef 64, ptr noundef nonnull %22, i32 noundef %18) #24
  %25 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 20
  store i32 %18, ptr %25, align 8, !tbaa !260
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 9
  store i16 %23, ptr %26, align 4, !tbaa !94
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 5
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %3, i64 noundef 64) #24
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 6
  store ptr null, ptr %29, align 8, !tbaa !95
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 8
  %31 = load i16, ptr %30, align 2, !tbaa !96
  %32 = or i16 %31, 64
  store i16 %32, ptr %30, align 2, !tbaa !96
  br label %33

33:                                               ; preds = %4, %10
  %34 = phi ptr [ %12, %10 ], [ null, %4 ]
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeInsertSocketInterface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @make_socket_interface(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %4) #23
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
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %12, ptr noundef %3, ptr noundef %6) #24
  %14 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !104
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 8, !tbaa !104
  br label %17

17:                                               ; preds = %11, %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeAddSocketInterfaceFromSocket(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !93
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 12
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 5
  %9 = tail call ptr @ntreeAddSocketInterface(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bNodeSocket, ptr %9, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.bNodeSocketType, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !261
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %2) #24
  br label %18

18:                                               ; preds = %11, %17, %3
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeInsertSocketInterfaceFromSocket(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 10
  %6 = load i16, ptr %5, align 2, !tbaa !93
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 12
  %9 = getelementptr inbounds %struct.bNodeSocket, ptr %3, i64 0, i32 5
  %10 = tail call ptr @ntreeInsertSocketInterface(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %9) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %10, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.bNodeSocketType, ptr %14, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !261
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %2, ptr noundef nonnull %3) #24
  br label %19

19:                                               ; preds = %12, %18, %4
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeRemoveSocketInterface(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #24
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %1) #24
  tail call fastcc void @node_socket_interface_free(ptr noundef %1) #23
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %5(ptr noundef %1) #24
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = or i32 %7, 48
  store i32 %8, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ntreeInterfaceTypeGet(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [130 x i8], align 16
  %4 = alloca [130 x i8], align 16
  %5 = alloca [130 x i8], align 16
  %6 = alloca [130 x i8], align 16
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %6) #25
  call fastcc void @ntree_interface_identifier_base(ptr noundef nonnull %0, ptr noundef nonnull %3) #23
  %11 = call ptr @RNA_struct_identifier(ptr noundef nonnull %8) #24
  %12 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 130) #26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  call fastcc void @ntree_interface_identifier(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  call void @RNA_def_struct_free_pointers(ptr noundef nonnull %8) #24
  call void @RNA_def_struct_identifier(ptr noundef nonnull %8, ptr noundef nonnull %4) #24
  call void @RNA_def_struct_ui_text(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  call void @RNA_def_struct_duplicate_pointers(ptr noundef nonnull %8) #24
  br label %15

15:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #25
  br label %19

16:                                               ; preds = %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call fastcc void @ntree_interface_type_create(ptr noundef nonnull %0) #23
  br label %19

19:                                               ; preds = %16, %18, %15
  %20 = load ptr, ptr %7, align 8, !tbaa !163
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_interface_identifier_base(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !262 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.271, ptr noundef nonnull %3) #24
  tail call void @RNA_identifier_sanitize(ptr noundef %1, i32 noundef 0) #24
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @RNA_struct_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_interface_identifier(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !263 {
  store i8 0, ptr %2, align 1, !tbaa !58
  %6 = tail call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @ntree_interface_unique_identifier_check, ptr noundef null, ptr noundef %1, i8 noundef zeroext 95, ptr noundef nonnull %2, i32 noundef 130) #24
  %7 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.272, ptr noundef nonnull %7) #24
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.273, ptr noundef nonnull %7) #24
  ret void
}

; Function Attrs: optsize
declare void @RNA_def_struct_free_pointers(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_def_struct_identifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_def_struct_ui_text(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_def_struct_duplicate_pointers(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_interface_type_create(ptr noundef %0) unnamed_addr #0 !PGOFuncName !264 {
  %2 = alloca [130 x i8], align 16
  %3 = alloca [130 x i8], align 16
  %4 = alloca [130 x i8], align 16
  %5 = alloca [130 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #25
  call fastcc void @ntree_interface_identifier_base(ptr noundef %0, ptr noundef nonnull %2) #23
  call fastcc void @ntree_interface_identifier(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %6 = call ptr @RNA_def_struct_ptr(ptr noundef nonnull @BLENDER_RNA, ptr noundef nonnull %3, ptr noundef nonnull @RNA_PropertyGroup) #24
  call void @RNA_def_struct_ui_text(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  call void @RNA_def_struct_duplicate_pointers(ptr noundef %6) #24
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 4
  store ptr %6, ptr %7, align 8, !tbaa !163
  call void @RNA_struct_blender_type_set(ptr noundef %6, ptr noundef %0) #24
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %1, %21
  %12 = phi ptr [ %22, %21 ], [ %9, %1 ]
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !68
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.bNodeSocketType, ptr %14, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !265
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  call void %18(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %6) #24
  br label %21

21:                                               ; preds = %20, %16, %11
  %22 = load ptr, ptr %12, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !266

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24, %38
  %29 = phi ptr [ %39, %38 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bNodeSocketType, ptr %31, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !265
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call void %35(ptr noundef %0, ptr noundef nonnull %29, ptr noundef %6) #24
  br label %38

38:                                               ; preds = %37, %33, %28
  %39 = load ptr, ptr %29, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %28, !llvm.loop !267

41:                                               ; preds = %38, %24
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @RNA_struct_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeInterfaceTypeUpdate(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @ntreeInterfaceTypeFree(ptr noundef %0) #23
  tail call fastcc void @ntree_interface_type_create(ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ntreeHasType(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %5, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 8
  %12 = load i16, ptr %11, align 4, !tbaa !66
  %13 = sext i16 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %6, !llvm.loop !268

15:                                               ; preds = %6, %10, %2
  %16 = phi i8 [ 0, %2 ], [ 0, %6 ], [ 1, %10 ]
  ret i8 %16
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ntreeHasTree(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #17 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %4, %20
  %9 = phi ptr [ %21, %20 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 8
  %11 = load i16, ptr %10, align 4, !tbaa !66
  %12 = icmp eq i16 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call zeroext i8 @ntreeHasTree(ptr noundef nonnull %15, ptr noundef %1) #23, !range !78
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %8, %13, %17
  %21 = load ptr, ptr %9, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8, !llvm.loop !269

23:                                               ; preds = %17, %20, %4, %2
  %24 = phi i8 [ 1, %2 ], [ 0, %4 ], [ 1, %17 ], [ 0, %20 ]
  ret i8 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeFindLink(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef readnone %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3, %22
  %8 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %14, %2
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %7
  %17 = icmp eq ptr %10, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %18
  %23 = load ptr, ptr %8, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !270

25:                                               ; preds = %12, %18, %22, %3
  %26 = phi ptr [ null, %3 ], [ null, %22 ], [ %8, %18 ], [ %8, %12 ]
  ret ptr %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @nodeCountSocketLinks(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %2 ]
  %8 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.bNodeLink, ptr %7, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %6
  %17 = add nsw i32 %8, 1
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi i32 [ %17, %16 ], [ %8, %12 ]
  %20 = load ptr, ptr %7, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !llvm.loop !271

22:                                               ; preds = %18, %2
  %23 = phi i32 [ 0, %2 ], [ %19, %18 ]
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeGetActive(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !272

14:                                               ; preds = %5, %9, %1
  %15 = phi ptr [ null, %1 ], [ null, %5 ], [ %7, %9 ]
  ret ptr %15
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @nodeGetActiveID(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #17 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 25
  %6 = load i32, ptr %5, align 8
  %7 = tail call fastcc ptr @node_get_active_id_recursive(i32 %6, i32 5381, ptr noundef nonnull %0, i16 noundef signext %1) #23
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ %7, %4 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @node_get_active_id_recursive(i32 %0, i32 %1, ptr nocapture noundef readonly %2, i16 noundef signext %3) unnamed_addr #17 !PGOFuncName !273 {
  %5 = icmp eq i32 %1, %0
  %6 = icmp eq i32 %0, 0
  %7 = or i1 %6, %5
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %7, label %11, label %29

11:                                               ; preds = %4
  br i1 %10, label %46, label %12

12:                                               ; preds = %11, %26
  %13 = phi ptr [ %27, %26 ], [ %9, %11 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !127
  %20 = icmp eq i16 %19, %3
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !60
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %12, %17, %21
  %27 = load ptr, ptr %13, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %12, !llvm.loop !274

29:                                               ; preds = %4
  br i1 %10, label %46, label %30

30:                                               ; preds = %29, %43
  %31 = phi ptr [ %44, %43 ], [ %9, %29 ]
  %32 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 8
  %33 = load i16, ptr %32, align 4, !tbaa !66
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bNode, ptr %31, i64 0, i32 20
  %37 = load ptr, ptr %36, align 8, !tbaa !155
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @BKE_node_instance_key(i32 %1, ptr noundef %2, ptr noundef nonnull %31) #23
  %41 = tail call fastcc ptr @node_get_active_id_recursive(i32 %0, i32 %40, ptr noundef nonnull %37, i16 noundef signext %3) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35, %30, %39
  %44 = load ptr, ptr %31, align 8, !tbaa !46
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %30, !llvm.loop !275

46:                                               ; preds = %39, %43, %21, %26, %29, %11
  %47 = phi ptr [ null, %11 ], [ null, %29 ], [ %13, %21 ], [ null, %26 ], [ %41, %39 ], [ null, %43 ]
  ret ptr %47
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @nodeSetActiveID(ptr noundef readonly %0, i16 noundef signext %1, ptr noundef %2) local_unnamed_addr #12 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = icmp ne ptr %2, null
  br label %12

11:                                               ; preds = %33
  br i1 %8, label %54, label %37

12:                                               ; preds = %9, %33
  %13 = phi ptr [ %7, %9 ], [ %35, %33 ]
  %14 = phi i8 [ 0, %9 ], [ %34, %33 ]
  %15 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !155
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 4
  %20 = load i16, ptr %19, align 8, !tbaa !127
  %21 = icmp eq i16 %20, %1
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = icmp eq i8 %14, 0
  %24 = select i1 %10, i1 %23, i1 false
  %25 = icmp eq ptr %16, %2
  %26 = and i1 %24, %25
  %27 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !60
  %29 = and i32 %28, -33
  %30 = select i1 %26, i32 32, i32 0
  %31 = or disjoint i32 %29, %30
  %32 = select i1 %26, i8 1, i8 %14
  store i32 %31, ptr %27, align 8, !tbaa !60
  br label %33

33:                                               ; preds = %22, %12, %18
  %34 = phi i8 [ %14, %18 ], [ %14, %12 ], [ %32, %22 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %11, label %12, !llvm.loop !276

37:                                               ; preds = %11, %50
  %38 = phi ptr [ %52, %50 ], [ %7, %11 ]
  %39 = phi i8 [ %51, %50 ], [ %34, %11 ]
  %40 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 8
  %41 = load i16, ptr %40, align 4, !tbaa !66
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.bNode, ptr %38, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !155
  %46 = icmp eq i8 %39, 0
  %47 = select i1 %46, ptr %2, ptr null
  %48 = tail call zeroext i8 @nodeSetActiveID(ptr noundef %45, i16 noundef signext %1, ptr noundef %47) #23, !range !78
  %49 = or i8 %48, %39
  br label %50

50:                                               ; preds = %37, %43
  %51 = phi i8 [ %49, %43 ], [ %39, %37 ]
  %52 = load ptr, ptr %38, align 8, !tbaa !46
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %37, !llvm.loop !277

54:                                               ; preds = %50, %5, %11, %3
  %55 = phi i8 [ 0, %3 ], [ %34, %11 ], [ 0, %5 ], [ %51, %50 ]
  ret i8 %55
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeClearActiveID(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4, %21
  %9 = phi ptr [ %22, %21 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 4
  %15 = load i16, ptr %14, align 8, !tbaa !127
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = and i32 %19, -33
  store i32 %20, ptr %18, align 8, !tbaa !60
  br label %21

21:                                               ; preds = %8, %13, %17
  %22 = load ptr, ptr %9, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !llvm.loop !278

24:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeSetSelected(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !60
  br i1 %3, label %8, label %6

6:                                                ; preds = %2
  %7 = or i32 %5, 1
  store i32 %7, ptr %4, align 8, !tbaa !60
  br label %31

8:                                                ; preds = %2
  %9 = and i32 %5, -2
  store i32 %9, ptr %4, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !96
  %17 = and i16 %16, -2
  store i16 %17, ptr %15, align 2, !tbaa !96
  %18 = load ptr, ptr %14, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !279

20:                                               ; preds = %13, %8
  %21 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !96
  %28 = and i16 %27, -2
  store i16 %28, ptr %26, align 2, !tbaa !96
  %29 = load ptr, ptr %25, align 8, !tbaa !46
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %24, !llvm.loop !280

31:                                               ; preds = %24, %20, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeClearActive(ptr noundef readonly %0) local_unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.bNode, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = and i32 %10, -49
  store i32 %11, ptr %9, align 8, !tbaa !60
  %12 = load ptr, ptr %8, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !281

14:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeSetActive(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  br i1 %5, label %39, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %7, null
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %11 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.bNodeType, ptr %12, i64 0, i32 14
  %14 = load i16, ptr %13, align 4, !tbaa !218
  %15 = icmp eq i16 %14, 13
  br label %16

16:                                               ; preds = %8, %36
  %17 = phi ptr [ %4, %8 ], [ %37, %36 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = and i32 %19, -17
  store i32 %20, ptr %18, align 8, !tbaa !60
  br i1 %9, label %32, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !155
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %10, align 8, !tbaa !127
  %27 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !127
  %29 = icmp eq i16 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = and i32 %19, -49
  store i32 %31, ptr %18, align 8, !tbaa !60
  br label %32

32:                                               ; preds = %25, %30, %21, %16
  %33 = phi i32 [ %20, %25 ], [ %31, %30 ], [ %20, %21 ], [ %20, %16 ]
  br i1 %15, label %34, label %36

34:                                               ; preds = %32
  %35 = and i32 %33, -16401
  store i32 %35, ptr %18, align 8, !tbaa !60
  br label %36

36:                                               ; preds = %32, %34
  %37 = load ptr, ptr %17, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %16, !llvm.loop !282

39:                                               ; preds = %36, %2
  %40 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %7, null
  %43 = select i1 %42, i32 16, i32 48
  %44 = or i32 %41, %43
  store i32 %44, ptr %40, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct.bNodeType, ptr %46, i64 0, i32 14
  %48 = load i16, ptr %47, align 4, !tbaa !218
  %49 = icmp eq i16 %48, 13
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = or i32 %44, 16384
  store i32 %51, ptr %40, align 8, !tbaa !60
  br label %52

52:                                               ; preds = %50, %39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @BKE_node_clipboard_init(ptr nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !57
  store i32 %3, ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 3), align 8, !tbaa !283
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_clipboard_clear() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2), align 8, !tbaa !285
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0, %3
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  tail call void @nodeRemLink(ptr noundef null, ptr noundef nonnull %4) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !286

7:                                                ; preds = %3, %0
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2)) #23
  %8 = load ptr, ptr @node_clipboard, align 8, !tbaa !287
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !207
  tail call fastcc void @node_free_node_ex(ptr noundef null, ptr noundef nonnull %11, i8 noundef zeroext 0, i8 noundef zeroext 0) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !288

14:                                               ; preds = %10, %7
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull @node_clipboard) #23
  tail call void @BLI_freelistN(ptr noundef nonnull getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 1)) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #19 !PGOFuncName !289 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_node_clipboard_validate() local_unnamed_addr #0 {
  %1 = load ptr, ptr @node_clipboard, align 8, !tbaa !46
  %2 = icmp eq ptr %1, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %0, %25
  %4 = phi ptr [ %7, %25 ], [ getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 1), %0 ]
  %5 = phi ptr [ %27, %25 ], [ %1, %0 ]
  %6 = phi i8 [ %26, %25 ], [ 1, %0 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !290
  %10 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 20
  store ptr %9, ptr %10, align 8, !tbaa !155
  %11 = icmp eq ptr %9, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr @G, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %7, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !127
  %16 = tail call ptr @which_libbase(ptr noundef %13, i16 noundef signext %15) #24
  %17 = load ptr, ptr %8, align 8, !tbaa !290
  %18 = tail call i32 @BLI_findindex(ptr noundef %16, ptr noundef %17) #24
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %7, i64 0, i32 3, i64 2
  %22 = tail call ptr @BLI_findstring(ptr noundef %16, ptr noundef nonnull %21, i32 noundef 34) #24
  store ptr %22, ptr %10, align 8, !tbaa !155
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i8 0, i8 %6
  br label %25

25:                                               ; preds = %20, %12, %3
  %26 = phi i8 [ %6, %3 ], [ %6, %12 ], [ %24, %20 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %3, !llvm.loop !292

29:                                               ; preds = %25, %0
  %30 = phi i8 [ 1, %0 ], [ %26, %25 ]
  ret i8 %30
}

; Function Attrs: optsize
declare ptr @which_libbase(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_clipboard_add_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 1120, ptr noundef nonnull @.str.52) #24
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !290
  %7 = icmp eq ptr %5, null
  %8 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 3
  br i1 %7, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull %10, i64 noundef 66) #24
  %12 = load ptr, ptr %4, align 8, !tbaa !155
  %13 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !223
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 4
  br i1 %15, label %20, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Library, ptr %14, i64 0, i32 4
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %18, i64 noundef 1024) #24
  br label %23

20:                                               ; preds = %9
  store i8 0, ptr %16, align 2, !tbaa !58
  br label %23

21:                                               ; preds = %1
  store i8 0, ptr %8, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.bNodeClipboardExtraInfo, ptr %3, i64 0, i32 4
  store i8 0, ptr %22, align 2, !tbaa !58
  br label %23

23:                                               ; preds = %17, %20, %21
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 1), ptr noundef nonnull %3) #24
  tail call void @BLI_addtail(ptr noundef nonnull @node_clipboard, ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_clipboard_add_link(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @BLI_addtail(ptr noundef nonnull getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2), ptr noundef %0) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BKE_node_clipboard_get_nodes() local_unnamed_addr #7 {
  ret ptr @node_clipboard
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @BKE_node_clipboard_get_links() local_unnamed_addr #7 {
  ret ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 2)
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_node_clipboard_get_type() local_unnamed_addr #20 {
  %1 = load i32, ptr getelementptr inbounds (%struct.bNodeClipboard, ptr @node_clipboard, i64 0, i32 3), align 8, !tbaa !283
  ret i32 %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @BKE_node_instance_key(i32 %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %5 = tail call fastcc i32 @node_hash_int_str(i32 %0, ptr noundef nonnull %4) #23
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 6
  %9 = tail call fastcc i32 @node_hash_int_str(i32 %5, ptr noundef nonnull %8) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %9, %7 ], [ %5, %3 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @node_hash_int_str(i32 %0, ptr nocapture noundef readonly %1) unnamed_addr #13 !PGOFuncName !293 {
  %3 = load i8, ptr %1, align 1, !tbaa !58
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %5
  %6 = phi i8 [ %13, %5 ], [ %3, %2 ]
  %7 = phi i32 [ %12, %5 ], [ %0, %2 ]
  %8 = phi ptr [ %9, %5 ], [ %1, %2 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = mul i32 %7, 33
  %11 = zext i8 %6 to i32
  %12 = xor i32 %10, %11
  %13 = load i8, ptr %9, align 1, !tbaa !58
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !294

15:                                               ; preds = %5, %2
  %16 = phi i32 [ %0, %2 ], [ %12, %5 ]
  %17 = mul i32 %16, 33
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @BLI_ghash_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @node_instance_hash_key(ptr nocapture noundef readonly %0) #4 !PGOFuncName !295 {
  %2 = load i32, ptr %0, align 4, !tbaa !296
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @node_instance_hash_key_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !297 {
  %3 = load i32, ptr %0, align 4, !tbaa !296
  %4 = load i32, ptr %1, align 4, !tbaa !296
  %5 = icmp ne i32 %3, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_node_instance_hash_clear(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !173
  tail call void @BLI_ghash_clear(ptr noundef %3, ptr noundef null, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_node_instance_hash_pop(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !173
  %5 = call ptr @BLI_ghash_popkey(ptr noundef %4, ptr noundef nonnull %3, ptr noundef null) #24
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_ghash_popkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_node_instance_hash_haskey(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bNodeInstanceKey, align 4
  store i32 %1, ptr %3, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !173
  %5 = call zeroext i8 @BLI_ghash_haskey(ptr noundef %4, ptr noundef nonnull %3) #24
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_node_instance_hash_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !173
  %3 = tail call i32 @BLI_ghash_size(ptr noundef %2) #24
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_node_instance_hash_tag(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %1, i64 0, i32 1
  store i16 1, ptr %3, align 4, !tbaa !176
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_node_instance_hash_tag_key(ptr nocapture noundef readonly %0, i32 %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BKE_node_instance_hash_lookup(ptr noundef %0, i32 %1) #23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bNodeInstanceHashEntry, ptr %3, i64 0, i32 1
  store i16 1, ptr %6, align 4, !tbaa !176
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeGetDependencyList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i32 0, ptr %2, align 4, !tbaa !117
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %3 ]
  %10 = phi ptr [ %13, %8 ], [ %6, %3 ]
  %11 = getelementptr inbounds %struct.bNode, ptr %10, i64 0, i32 10
  store i16 0, ptr %11, align 8, !tbaa !298
  %12 = add nuw nsw i32 %9, 1
  %13 = load ptr, ptr %10, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %8, !llvm.loop !299

15:                                               ; preds = %3
  store ptr null, ptr %1, align 8, !tbaa !46
  br label %35

16:                                               ; preds = %8
  store i32 %12, ptr %2, align 4, !tbaa !117
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %18 = zext nneg i32 %12 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @.str.55) #24
  store ptr %20, ptr %1, align 8, !tbaa !46
  store ptr %20, ptr %4, align 8, !tbaa !46
  %21 = load ptr, ptr %5, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %16, %32
  %24 = phi ptr [ %33, %32 ], [ %21, %16 ]
  %25 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 10
  %26 = load i16, ptr %25, align 8, !tbaa !298
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef nonnull %24, ptr noundef nonnull %4) #23, !range !300
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.bNode, ptr %24, i64 0, i32 11
  store i16 %30, ptr %31, align 2, !tbaa !301
  br label %32

32:                                               ; preds = %23, %28
  %33 = load ptr, ptr %24, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23, !llvm.loop !302

35:                                               ; preds = %32, %16, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 !PGOFuncName !303 {
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 10
  store i16 1, ptr %4, align 8, !tbaa !298
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %3, %33
  %9 = phi ptr [ %35, %33 ], [ %6, %3 ]
  %10 = phi i32 [ %34, %33 ], [ 4095, %3 ]
  %11 = getelementptr inbounds %struct.bNodeLink, ptr %9, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bNodeLink, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 10
  %18 = load i16, ptr %17, align 8, !tbaa !298
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 11
  %22 = load i16, ptr %21, align 2, !tbaa !301
  br label %27

23:                                               ; preds = %14
  %24 = tail call fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2) #23, !range !300
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 11
  store i16 %25, ptr %26, align 2, !tbaa !301
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi i16 [ %22, %20 ], [ %25, %23 ]
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %10, %29
  %31 = add nsw i32 %29, -1
  %32 = select i1 %30, i32 %10, i32 %31
  br label %33

33:                                               ; preds = %27, %8
  %34 = phi i32 [ %10, %8 ], [ %32, %27 ]
  %35 = load ptr, ptr %9, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %8, !llvm.loop !304

37:                                               ; preds = %33, %3
  %38 = phi i32 [ 4095, %3 ], [ %34, %33 ]
  %39 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 19
  %40 = load ptr, ptr %39, align 8, !tbaa !146
  %41 = icmp eq ptr %40, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 10
  %44 = load i16, ptr %43, align 8, !tbaa !298
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bNode, ptr %40, i64 0, i32 11
  %48 = load i16, ptr %47, align 2, !tbaa !301
  br label %54

49:                                               ; preds = %42
  %50 = tail call fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef nonnull %40, ptr noundef %2) #23, !range !300
  %51 = trunc i32 %50 to i16
  %52 = load ptr, ptr %39, align 8, !tbaa !146
  %53 = getelementptr inbounds %struct.bNode, ptr %52, i64 0, i32 11
  store i16 %51, ptr %53, align 2, !tbaa !301
  br label %54

54:                                               ; preds = %46, %49
  %55 = phi i16 [ %51, %49 ], [ %48, %46 ]
  %56 = sext i16 %55 to i32
  %57 = icmp slt i32 %38, %56
  %58 = add nsw i32 %56, -1
  %59 = select i1 %57, i32 %38, i32 %58
  br label %60

60:                                               ; preds = %54, %37
  %61 = phi i32 [ %38, %37 ], [ %59, %54 ]
  %62 = icmp eq ptr %2, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 8, !tbaa !46
  store ptr %1, ptr %64, align 8, !tbaa !46
  %65 = load ptr, ptr %2, align 8, !tbaa !46
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  store ptr %66, ptr %2, align 8, !tbaa !46
  br label %67

67:                                               ; preds = %63, %60
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeVerifyNodes(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.NodeTreeIterStore, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %3, ptr noundef %0) #23
  %6 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !78
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2, %26
  %9 = load ptr, ptr %4, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %9, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11, %23
  %16 = phi ptr [ %24, %23 ], [ %13, %11 ]
  %17 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.bNodeType, ptr %18, i64 0, i32 30
  %20 = load ptr, ptr %19, align 8, !tbaa !305
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef nonnull %9, ptr noundef nonnull %16, ptr noundef %1) #24
  br label %23

23:                                               ; preds = %15, %22
  %24 = load ptr, ptr %16, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %15, !llvm.loop !306

26:                                               ; preds = %23, %11, %8
  %27 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !78
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %8, !llvm.loop !307

29:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ntreeUpdateTree(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %68, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 14
  %6 = load i16, ptr %5, align 4, !tbaa !308
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %68

8:                                                ; preds = %4
  store i16 1, ptr %5, align 4, !tbaa !308
  %9 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 13
  %10 = load i32, ptr %9, align 8, !tbaa !104
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @ntree_update_link_pointers(ptr noundef nonnull %1) #23
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %14, %36
  %19 = phi ptr [ %37, %36 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 31
  %21 = load i32, ptr %20, align 4, !tbaa !91
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, ptr %9, align 8, !tbaa !104
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = getelementptr inbounds %struct.bNodeType, ptr %30, i64 0, i32 29
  %32 = load ptr, ptr %31, align 8, !tbaa !309
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void %32(ptr noundef nonnull %1, ptr noundef nonnull %19) #24
  br label %35

35:                                               ; preds = %34, %28
  tail call void @nodeUpdateInternalLinks(ptr noundef nonnull %1, ptr noundef nonnull %19) #23
  br label %36

36:                                               ; preds = %24, %35
  %37 = load ptr, ptr %19, align 8, !tbaa !46
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %18, !llvm.loop !310

39:                                               ; preds = %36, %14
  %40 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !86
  %42 = getelementptr inbounds %struct.bNodeTreeType, ptr %41, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !311
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void %43(ptr noundef nonnull %1) #24
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, ptr %9, align 8, !tbaa !104
  %48 = and i32 %47, 48
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @ntreeInterfaceTypeUpdate(ptr noundef nonnull %1) #23
  br label %51

51:                                               ; preds = %50, %46
  %52 = icmp eq ptr %0, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %51
  tail call void @ntreeVerifyNodes(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %54

54:                                               ; preds = %53, %51
  %55 = load i32, ptr %9, align 8, !tbaa !104
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call fastcc void @ntree_update_link_pointers(ptr noundef nonnull %1) #23
  tail call fastcc void @ntree_update_node_level(ptr noundef nonnull %1) #23
  tail call fastcc void @ntree_validate_links(ptr noundef nonnull %1) #23
  br label %59

59:                                               ; preds = %58, %54
  %60 = load ptr, ptr %15, align 8, !tbaa !46
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %62
  %63 = phi ptr [ %65, %62 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.bNode, ptr %63, i64 0, i32 31
  store i32 0, ptr %64, align 4, !tbaa !91
  %65 = load ptr, ptr %63, align 8, !tbaa !46
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %62, !llvm.loop !312

67:                                               ; preds = %62, %59
  store i32 0, ptr %9, align 8, !tbaa !104
  store i16 0, ptr %5, align 4, !tbaa !308
  br label %68

68:                                               ; preds = %4, %2, %67
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ntree_update_link_pointers(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !313 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %8

5:                                                ; preds = %25, %21
  %6 = load ptr, ptr %9, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8, !llvm.loop !314

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 23
  store ptr null, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %17 = load i16, ptr %16, align 2, !tbaa !96
  %18 = and i16 %17, -5
  store i16 %18, ptr %16, align 2, !tbaa !96
  %19 = load ptr, ptr %14, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !315

21:                                               ; preds = %13, %8
  %22 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %5, label %25

25:                                               ; preds = %21, %25
  %26 = phi ptr [ %30, %25 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 8
  %28 = load i16, ptr %27, align 2, !tbaa !96
  %29 = and i16 %28, -5
  store i16 %29, ptr %27, align 2, !tbaa !96
  %30 = load ptr, ptr %26, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %5, label %25, !llvm.loop !316

32:                                               ; preds = %5, %1
  %33 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %49, %36 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.bNodeLink, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !101
  %40 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 23
  store ptr %37, ptr %40, align 8, !tbaa !103
  %41 = getelementptr inbounds %struct.bNodeLink, ptr %37, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !100
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %42, i64 0, i32 8
  %44 = load i16, ptr %43, align 2, !tbaa !96
  %45 = or i16 %44, 4
  store i16 %45, ptr %43, align 2, !tbaa !96
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 8
  %47 = load i16, ptr %46, align 2, !tbaa !96
  %48 = or i16 %47, 4
  store i16 %48, ptr %46, align 2, !tbaa !96
  %49 = load ptr, ptr %37, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !llvm.loop !317

51:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeUpdateInternalLinks(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 23
  tail call void @BLI_freelistN(ptr noundef nonnull %3) #24
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeType, ptr %5, i64 0, i32 39
  %9 = load ptr, ptr %8, align 8, !tbaa !318
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %12

12:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ntree_update_node_level(ptr noundef %0) unnamed_addr #12 !PGOFuncName !319 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %6

5:                                                ; preds = %6
  br i1 %4, label %23, label %11

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 10
  store i16 0, ptr %8, align 8, !tbaa !298
  %9 = load ptr, ptr %7, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %5, label %6, !llvm.loop !320

11:                                               ; preds = %5, %20
  %12 = phi ptr [ %21, %20 ], [ %3, %5 ]
  %13 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 10
  %14 = load i16, ptr %13, align 8, !tbaa !298
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @node_get_deplist_recurs(ptr noundef %0, ptr noundef nonnull %12, ptr noundef null) #23, !range !300
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.bNode, ptr %12, i64 0, i32 11
  store i16 %18, ptr %19, align 2, !tbaa !301
  br label %20

20:                                               ; preds = %11, %16
  %21 = load ptr, ptr %12, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !321

23:                                               ; preds = %20, %1, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ntree_validate_links(ptr noundef %0) unnamed_addr #0 !PGOFuncName !322 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %38
  %8 = phi ptr [ %3, %5 ], [ %39, %38 ]
  %9 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !143
  %11 = or i32 %10, 2
  store i32 %11, ptr %9, align 8, !tbaa !143
  %12 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bNodeLink, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 11
  %21 = load i16, ptr %20, align 2, !tbaa !301
  %22 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 11
  %23 = load i16, ptr %22, align 2, !tbaa !301
  %24 = icmp sgt i16 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %19, %15, %7
  %26 = load ptr, ptr %6, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.bNodeTreeType, ptr %26, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !323
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = tail call i32 %28(ptr noundef nonnull %0, ptr noundef nonnull %8) #24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, ptr %9, align 8, !tbaa !143
  br label %35

35:                                               ; preds = %19, %33
  %36 = phi i32 [ %34, %33 ], [ %10, %19 ]
  %37 = and i32 %36, -3
  store i32 %37, ptr %9, align 8, !tbaa !143
  br label %38

38:                                               ; preds = %35, %30, %25
  %39 = load ptr, ptr %8, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %7, !llvm.loop !324

41:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeUpdate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 14
  %4 = load i16, ptr %3, align 4, !tbaa !308
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  store i16 1, ptr %3, align 4, !tbaa !308
  %7 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 29
  %10 = load ptr, ptr %9, align 8, !tbaa !309
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void %10(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  br label %13

13:                                               ; preds = %12, %6
  tail call void @nodeUpdateInternalLinks(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  %14 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 31
  store i32 0, ptr %14, align 4, !tbaa !91
  store i16 0, ptr %3, align 4, !tbaa !308
  br label %15

15:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @nodeUpdateID(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 14
  %8 = load i16, ptr %7, align 4, !tbaa !308
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %6
  store i16 1, ptr %7, align 4, !tbaa !308
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %17

14:                                               ; preds = %34
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %38

17:                                               ; preds = %10, %34
  %18 = phi ptr [ %36, %34 ], [ %12, %10 ]
  %19 = phi i8 [ %35, %34 ], [ 0, %10 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 20
  %21 = load ptr, ptr %20, align 8, !tbaa !155
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 31
  %25 = load i32, ptr %24, align 4, !tbaa !91
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !91
  %27 = getelementptr inbounds %struct.bNode, ptr %18, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.bNodeType, ptr %28, i64 0, i32 29
  %30 = load ptr, ptr %29, align 8, !tbaa !309
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  tail call void %30(ptr noundef %0, ptr noundef nonnull %18) #24
  br label %33

33:                                               ; preds = %32, %23
  store i32 0, ptr %24, align 4, !tbaa !91
  br label %34

34:                                               ; preds = %17, %33
  %35 = phi i8 [ 1, %33 ], [ %19, %17 ]
  %36 = load ptr, ptr %18, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %14, label %17, !llvm.loop !325

38:                                               ; preds = %14, %38
  %39 = phi ptr [ %40, %38 ], [ %15, %14 ]
  tail call void @nodeUpdateInternalLinks(ptr noundef %0, ptr noundef nonnull %39) #23
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %38, !llvm.loop !326

42:                                               ; preds = %38, %10, %14
  %43 = phi i8 [ %35, %14 ], [ 0, %10 ], [ %35, %38 ]
  store i16 0, ptr %7, align 4, !tbaa !308
  br label %44

44:                                               ; preds = %6, %2, %42
  %45 = phi i8 [ %43, %42 ], [ 0, %2 ], [ 0, %6 ]
  ret i8 %45
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @nodeSynchronizeID(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %125, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !66
  switch i16 %8, label %125 [
    i16 100, label %9
    i16 118, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %125, label %13

13:                                               ; preds = %9
  %14 = icmp eq i8 %1, 0
  %15 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 26
  %16 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 21
  %17 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 20
  %18 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 19
  %19 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 17
  %20 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 16
  %21 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 10
  %22 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 22
  %23 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 7
  %24 = getelementptr inbounds %struct.Material, ptr %4, i64 0, i32 4
  br label %25

25:                                               ; preds = %13, %121
  %26 = phi ptr [ %11, %13 ], [ %123, %121 ]
  %27 = phi i32 [ 0, %13 ], [ %122, %121 ]
  %28 = tail call i32 @nodeSocketIsHidden(ptr noundef nonnull %26) #23, !range !141
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %121

30:                                               ; preds = %25
  br i1 %14, label %76, label %31

31:                                               ; preds = %30
  switch i32 %27, label %121 [
    i32 0, label %32
    i32 1, label %35
    i32 2, label %38
    i32 4, label %43
    i32 5, label %46
    i32 6, label %51
    i32 7, label %56
    i32 8, label %61
    i32 9, label %66
    i32 10, label %71
  ]

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef %34) #23
  br label %121

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !74
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef %37) #23
  br label %121

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %40, i64 0, i32 1
  %42 = load float, ptr %41, align 4, !tbaa !327
  store float %42, ptr %22, align 4, !tbaa !329
  br label %121

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %45 = load ptr, ptr %44, align 8, !tbaa !74
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef %45) #23
  br label %121

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %48 = load ptr, ptr %47, align 8, !tbaa !74
  %49 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %48, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !327
  store float %50, ptr %20, align 4, !tbaa !333
  br label %121

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %53 = load ptr, ptr %52, align 8, !tbaa !74
  %54 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %53, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !327
  store float %55, ptr %19, align 8, !tbaa !334
  br label %121

56:                                               ; preds = %31
  %57 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  %59 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %58, i64 0, i32 1
  %60 = load float, ptr %59, align 4, !tbaa !327
  store float %60, ptr %18, align 8, !tbaa !335
  br label %121

61:                                               ; preds = %31
  %62 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %63 = load ptr, ptr %62, align 8, !tbaa !74
  %64 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %63, i64 0, i32 1
  %65 = load float, ptr %64, align 4, !tbaa !327
  store float %65, ptr %17, align 4, !tbaa !336
  br label %121

66:                                               ; preds = %31
  %67 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %68 = load ptr, ptr %67, align 8, !tbaa !74
  %69 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %68, i64 0, i32 1
  %70 = load float, ptr %69, align 4, !tbaa !327
  store float %70, ptr %16, align 8, !tbaa !337
  br label %121

71:                                               ; preds = %31
  %72 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %73 = load ptr, ptr %72, align 8, !tbaa !74
  %74 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %73, i64 0, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !327
  store float %75, ptr %15, align 4, !tbaa !338
  br label %121

76:                                               ; preds = %30
  switch i32 %27, label %121 [
    i32 0, label %77
    i32 1, label %80
    i32 2, label %83
    i32 4, label %88
    i32 5, label %91
    i32 6, label %96
    i32 7, label %101
    i32 8, label %106
    i32 9, label %111
    i32 10, label %116
  ]

77:                                               ; preds = %76
  %78 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %79 = load ptr, ptr %78, align 8, !tbaa !74
  tail call fastcc void @copy_v3_v3(ptr noundef %79, ptr noundef nonnull %24) #23
  br label %121

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %82 = load ptr, ptr %81, align 8, !tbaa !74
  tail call fastcc void @copy_v3_v3(ptr noundef %82, ptr noundef nonnull %23) #23
  br label %121

83:                                               ; preds = %76
  %84 = load float, ptr %22, align 4, !tbaa !329
  %85 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %86 = load ptr, ptr %85, align 8, !tbaa !74
  %87 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %86, i64 0, i32 1
  store float %84, ptr %87, align 4, !tbaa !327
  br label %121

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %90 = load ptr, ptr %89, align 8, !tbaa !74
  tail call fastcc void @copy_v3_v3(ptr noundef %90, ptr noundef nonnull %21) #23
  br label %121

91:                                               ; preds = %76
  %92 = load float, ptr %20, align 4, !tbaa !333
  %93 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %94 = load ptr, ptr %93, align 8, !tbaa !74
  %95 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %94, i64 0, i32 1
  store float %92, ptr %95, align 4, !tbaa !327
  br label %121

96:                                               ; preds = %76
  %97 = load float, ptr %19, align 8, !tbaa !334
  %98 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %99 = load ptr, ptr %98, align 8, !tbaa !74
  %100 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %99, i64 0, i32 1
  store float %97, ptr %100, align 4, !tbaa !327
  br label %121

101:                                              ; preds = %76
  %102 = load float, ptr %18, align 8, !tbaa !335
  %103 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %104 = load ptr, ptr %103, align 8, !tbaa !74
  %105 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %104, i64 0, i32 1
  store float %102, ptr %105, align 4, !tbaa !327
  br label %121

106:                                              ; preds = %76
  %107 = load float, ptr %17, align 4, !tbaa !336
  %108 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %109 = load ptr, ptr %108, align 8, !tbaa !74
  %110 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %109, i64 0, i32 1
  store float %107, ptr %110, align 4, !tbaa !327
  br label %121

111:                                              ; preds = %76
  %112 = load float, ptr %16, align 8, !tbaa !337
  %113 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %114 = load ptr, ptr %113, align 8, !tbaa !74
  %115 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %114, i64 0, i32 1
  store float %112, ptr %115, align 4, !tbaa !327
  br label %121

116:                                              ; preds = %76
  %117 = load float, ptr %15, align 4, !tbaa !338
  %118 = getelementptr inbounds %struct.bNodeSocket, ptr %26, i64 0, i32 15
  %119 = load ptr, ptr %118, align 8, !tbaa !74
  %120 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %119, i64 0, i32 1
  store float %117, ptr %120, align 4, !tbaa !327
  br label %121

121:                                              ; preds = %25, %77, %80, %83, %88, %91, %96, %101, %106, %111, %116, %76, %32, %35, %38, %43, %46, %51, %56, %61, %66, %71, %31
  %122 = add nuw nsw i32 %27, 1
  %123 = load ptr, ptr %26, align 8, !tbaa !46
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %25, !llvm.loop !339

125:                                              ; preds = %121, %9, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !PGOFuncName !340 {
  %3 = load float, ptr %1, align 4, !tbaa !128
  store float %3, ptr %0, align 4, !tbaa !128
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !128
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !128
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !128
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !128
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @nodeLabel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 32
  %6 = load i8, ptr %5, align 8, !tbaa !58
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = sext i32 %3 to i64
  %10 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %5, i64 noundef %9) #24
  br label %22

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !341
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #24
  br label %22

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bNodeType, ptr %13, i64 0, i32 5
  %20 = sext i32 %3 to i64
  %21 = tail call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %19, i64 noundef %20) #24
  br label %22

22:                                               ; preds = %17, %18, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %214 = tail call ptr @BLI_strncpy(ptr noundef nonnull %213, ptr noundef nonnull %212, i64 noundef 64) #24
  %215 = tail call ptr @RNA_struct_find(ptr noundef nonnull %212) #24
  %216 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 44, i32 1
  store ptr %215, ptr %216, align 8, !tbaa !342
  tail call void @RNA_struct_blender_type_set(ptr noundef %215, ptr noundef %0) #24
  br label %217

217:                                              ; preds = %211, %5
  %218 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  store i32 %1, ptr %218, align 4, !tbaa !64
  %219 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 5
  %220 = tail call ptr @BLI_strncpy(ptr noundef nonnull %219, ptr noundef %2, i64 noundef 64) #24
  %221 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 14
  store i16 %3, ptr %221, align 4, !tbaa !218
  %222 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 15
  store i16 %4, ptr %222, align 2, !tbaa !167
  tail call fastcc void @node_type_base_defaults(ptr noundef %0) #23
  %223 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 37
  store ptr @node_poll_default, ptr %223, align 8, !tbaa !118
  %224 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 38
  store ptr @node_poll_instance_default, ptr %224, align 8, !tbaa !343
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_struct_find(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_struct_blender_type_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @node_type_base_defaults(ptr nocapture noundef writeonly %0) unnamed_addr #19 !PGOFuncName !344 {
  tail call void @node_type_size_preset(ptr noundef %0, i32 noundef 0) #23
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 11
  store <2 x float> <float 1.000000e+02, float 3.000000e+01>, ptr %2, align 8, !tbaa !128
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 13
  store float 0x47EFFFFFE0000000, ptr %3, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @node_poll_default(ptr nocapture readnone %0, ptr nocapture readnone %1) #7 !PGOFuncName !346 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @node_poll_instance_default(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !347 {
  %3 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.bNodeType, ptr %4, i64 0, i32 37
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = tail call i32 %6(ptr noundef %4, ptr noundef %1) #24
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_type_base_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 3
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #24
  %8 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  store i32 -1, ptr %8, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 5
  %10 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %2, i64 noundef 64) #24
  %11 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 14
  store i16 %3, ptr %11, align 4, !tbaa !218
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 15
  store i16 %4, ptr %12, align 2, !tbaa !167
  tail call fastcc void @node_type_base_defaults(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_type_socket_templates(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 17
  store ptr %1, ptr %4, align 8, !tbaa !348
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 18
  store ptr %2, ptr %5, align 8, !tbaa !349
  %6 = icmp eq ptr %1, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8, !tbaa !350
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %13, label %27

10:                                               ; preds = %13
  %11 = load i32, ptr %1, align 8, !tbaa !350
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %19, label %27

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %16, %13 ], [ %1, %7 ]
  %15 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %14, i64 0, i32 12
  store i8 0, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %14, i64 1
  %17 = load i32, ptr %16, align 8, !tbaa !350
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %13, label %10, !llvm.loop !352

19:                                               ; preds = %10, %19
  %20 = phi ptr [ %24, %19 ], [ %1, %10 ]
  %21 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %20, i64 0, i32 12
  %22 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %20, i64 0, i32 2
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %21, ptr noundef nonnull %22, i64 noundef 64) #24
  tail call fastcc void @unique_socket_template_identifier(ptr noundef nonnull %1, ptr noundef nonnull %20, ptr noundef nonnull %21) #23
  %24 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %20, i64 1
  %25 = load i32, ptr %24, align 8, !tbaa !350
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %19, label %27, !llvm.loop !353

27:                                               ; preds = %19, %7, %10, %3
  %28 = icmp eq ptr %2, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %2, align 8, !tbaa !350
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %35, label %49

32:                                               ; preds = %35
  %33 = load i32, ptr %2, align 8, !tbaa !350
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %41, label %49

35:                                               ; preds = %29, %35
  %36 = phi ptr [ %38, %35 ], [ %2, %29 ]
  %37 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %36, i64 0, i32 12
  store i8 0, ptr %37, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %36, i64 1
  %39 = load i32, ptr %38, align 8, !tbaa !350
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %35, label %32, !llvm.loop !354

41:                                               ; preds = %32, %41
  %42 = phi ptr [ %46, %41 ], [ %2, %32 ]
  %43 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %42, i64 0, i32 12
  %44 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %42, i64 0, i32 2
  %45 = tail call ptr @BLI_strncpy(ptr noundef nonnull %43, ptr noundef nonnull %44, i64 noundef 64) #24
  tail call fastcc void @unique_socket_template_identifier(ptr noundef nonnull %2, ptr noundef nonnull %42, ptr noundef nonnull %43) #23
  %46 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %42, i64 1
  %47 = load i32, ptr %46, align 8, !tbaa !350
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %41, label %49, !llvm.loop !355

49:                                               ; preds = %41, %29, %32, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unique_socket_template_identifier(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !356 {
  %4 = alloca %struct.anon.0, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !357
  %5 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !359
  %6 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %1, i64 0, i32 12
  %7 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @unique_socket_template_identifier_check, ptr noundef nonnull %4, ptr noundef %2, i8 noundef zeroext 95, ptr noundef nonnull %6, i32 noundef 64) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_init(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 31
  store ptr %1, ptr %3, align 8, !tbaa !360
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_size(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #19 {
  %5 = insertelement <2 x i32> poison, i32 %1, i64 0
  %6 = insertelement <2 x i32> %5, i32 %2, i64 1
  %7 = sitofp <2 x i32> %6 to <2 x float>
  %8 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 8
  store <2 x float> %7, ptr %8, align 4, !tbaa !128
  %9 = icmp sgt i32 %3, %2
  %10 = sitofp i32 %3 to float
  %11 = select i1 %9, float %10, float 0x47EFFFFFE0000000
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 10
  store float %11, ptr %12, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_size_preset(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #19 {
  switch i32 %1, label %7 [
    i32 0, label %3
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
  ]

3:                                                ; preds = %2
  tail call void @node_type_size(ptr noundef %0, i32 noundef 140, i32 noundef 100, i32 noundef 320) #23
  br label %7

4:                                                ; preds = %2
  tail call void @node_type_size(ptr noundef %0, i32 noundef 100, i32 noundef 80, i32 noundef 320) #23
  br label %7

5:                                                ; preds = %2
  tail call void @node_type_size(ptr noundef %0, i32 noundef 150, i32 noundef 120, i32 noundef 320) #23
  br label %7

6:                                                ; preds = %2
  tail call void @node_type_size(ptr noundef %0, i32 noundef 240, i32 noundef 140, i32 noundef 320) #23
  br label %7

7:                                                ; preds = %2, %6, %5, %4, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @node_type_storage(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 19
  br i1 %5, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %1, i64 noundef 64) #24
  br label %10

9:                                                ; preds = %4
  store i8 0, ptr %6, align 8, !tbaa !58
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 33
  store ptr %3, ptr %11, align 8, !tbaa !134
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 32
  store ptr %2, ptr %12, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_label(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 25
  store ptr %1, ptr %3, align 8, !tbaa !341
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_update(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 {
  %4 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 29
  store ptr %1, ptr %4, align 8, !tbaa !309
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 30
  store ptr %2, ptr %5, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_exec(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #19 {
  %5 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 40
  store ptr %1, ptr %5, align 8, !tbaa !361
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 41
  store ptr %2, ptr %6, align 8, !tbaa !362
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 42
  store ptr %3, ptr %7, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_gpu(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_internal_links(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 39
  store ptr %1, ptr %3, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @node_type_compatibility(ptr nocapture noundef writeonly %0, i16 noundef signext %1) local_unnamed_addr #19 {
  %3 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 16
  store i16 %1, ptr %3, align 8, !tbaa !365
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_nodesystem() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.262) #24
  store ptr %1, ptr @nodetreetypes_hash, align 8, !tbaa !46
  %2 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.263) #24
  store ptr %2, ptr @nodetypes_hash, align 8, !tbaa !46
  %3 = tail call ptr @BLI_ghash_str_new(ptr noundef nonnull @.str.264) #24
  store ptr %3, ptr @nodesockettypes_hash, align 8, !tbaa !46
  tail call fastcc void @register_undefined_types() #23
  tail call void @register_standard_node_socket_types() #24
  tail call void @register_node_tree_type_cmp() #24
  tail call void @register_node_tree_type_sh() #24
  tail call void @register_node_tree_type_tex() #24
  tail call void @register_node_type_frame() #24
  tail call void @register_node_type_reroute() #24
  tail call void @register_node_type_group_input() #24
  tail call void @register_node_type_group_output() #24
  tail call fastcc void @registerCompositNodes() #23
  tail call fastcc void @registerShaderNodes() #23
  tail call fastcc void @registerTextureNodes() #23
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_undefined_types() unnamed_addr #0 !PGOFuncName !366 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) getelementptr inbounds (%struct.bNodeTreeType, ptr @NodeTreeTypeUndefined, i64 0, i32 1), ptr noundef nonnull align 1 dereferenceable(18) @.str.274, i64 18, i1 false) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) getelementptr inbounds (%struct.bNodeTreeType, ptr @NodeTreeTypeUndefined, i64 0, i32 2), ptr noundef nonnull align 1 dereferenceable(10) @.str.275, i64 10, i1 false) #24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) getelementptr inbounds (%struct.bNodeTreeType, ptr @NodeTreeTypeUndefined, i64 0, i32 3), ptr noundef nonnull align 1 dereferenceable(25) @.str.276, i64 25, i1 false) #24
  tail call void @node_type_base_custom(ptr noundef nonnull @NodeTypeUndefined, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.275, i16 noundef signext 0, i16 noundef signext 0) #23
  store ptr @node_undefined_poll, ptr getelementptr inbounds (%struct.bNodeType, ptr @NodeTypeUndefined, i64 0, i32 37), align 8, !tbaa !118
  %1 = tail call ptr @BLI_strncpy(ptr noundef nonnull @NodeSocketTypeUndefined, ptr noundef nonnull @.str.278, i64 noundef 64) #24
  store i32 -1, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 11), align 8, !tbaa !71
  store i32 0, ptr getelementptr inbounds (%struct.bNodeSocketType, ptr @NodeSocketTypeUndefined, i64 0, i32 12), align 4, !tbaa !367
  ret void
}

; Function Attrs: optsize
declare void @register_standard_node_socket_types() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_tree_type_cmp() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_tree_type_sh() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_tree_type_tex() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_frame() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_reroute() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_group_input() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_group_output() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @registerCompositNodes() unnamed_addr #0 !PGOFuncName !368 {
  tail call void @register_node_type_cmp_group() #24
  tail call void @register_node_type_cmp_rlayers() #24
  tail call void @register_node_type_cmp_image() #24
  tail call void @register_node_type_cmp_texture() #24
  tail call void @register_node_type_cmp_value() #24
  tail call void @register_node_type_cmp_rgb() #24
  tail call void @register_node_type_cmp_curve_time() #24
  tail call void @register_node_type_cmp_movieclip() #24
  tail call void @register_node_type_cmp_composite() #24
  tail call void @register_node_type_cmp_viewer() #24
  tail call void @register_node_type_cmp_splitviewer() #24
  tail call void @register_node_type_cmp_output_file() #24
  tail call void @register_node_type_cmp_view_levels() #24
  tail call void @register_node_type_cmp_curve_rgb() #24
  tail call void @register_node_type_cmp_mix_rgb() #24
  tail call void @register_node_type_cmp_hue_sat() #24
  tail call void @register_node_type_cmp_brightcontrast() #24
  tail call void @register_node_type_cmp_gamma() #24
  tail call void @register_node_type_cmp_invert() #24
  tail call void @register_node_type_cmp_alphaover() #24
  tail call void @register_node_type_cmp_zcombine() #24
  tail call void @register_node_type_cmp_colorbalance() #24
  tail call void @register_node_type_cmp_huecorrect() #24
  tail call void @register_node_type_cmp_normal() #24
  tail call void @register_node_type_cmp_curve_vec() #24
  tail call void @register_node_type_cmp_map_value() #24
  tail call void @register_node_type_cmp_map_range() #24
  tail call void @register_node_type_cmp_normalize() #24
  tail call void @register_node_type_cmp_filter() #24
  tail call void @register_node_type_cmp_blur() #24
  tail call void @register_node_type_cmp_dblur() #24
  tail call void @register_node_type_cmp_bilateralblur() #24
  tail call void @register_node_type_cmp_vecblur() #24
  tail call void @register_node_type_cmp_dilateerode() #24
  tail call void @register_node_type_cmp_inpaint() #24
  tail call void @register_node_type_cmp_despeckle() #24
  tail call void @register_node_type_cmp_defocus() #24
  tail call void @register_node_type_cmp_sunbeams() #24
  tail call void @register_node_type_cmp_valtorgb() #24
  tail call void @register_node_type_cmp_rgbtobw() #24
  tail call void @register_node_type_cmp_setalpha() #24
  tail call void @register_node_type_cmp_idmask() #24
  tail call void @register_node_type_cmp_math() #24
  tail call void @register_node_type_cmp_seprgba() #24
  tail call void @register_node_type_cmp_combrgba() #24
  tail call void @register_node_type_cmp_sephsva() #24
  tail call void @register_node_type_cmp_combhsva() #24
  tail call void @register_node_type_cmp_sepyuva() #24
  tail call void @register_node_type_cmp_combyuva() #24
  tail call void @register_node_type_cmp_sepycca() #24
  tail call void @register_node_type_cmp_combycca() #24
  tail call void @register_node_type_cmp_premulkey() #24
  tail call void @register_node_type_cmp_diff_matte() #24
  tail call void @register_node_type_cmp_distance_matte() #24
  tail call void @register_node_type_cmp_chroma_matte() #24
  tail call void @register_node_type_cmp_color_matte() #24
  tail call void @register_node_type_cmp_channel_matte() #24
  tail call void @register_node_type_cmp_color_spill() #24
  tail call void @register_node_type_cmp_luma_matte() #24
  tail call void @register_node_type_cmp_doubleedgemask() #24
  tail call void @register_node_type_cmp_keyingscreen() #24
  tail call void @register_node_type_cmp_keying() #24
  tail call void @register_node_type_cmp_translate() #24
  tail call void @register_node_type_cmp_rotate() #24
  tail call void @register_node_type_cmp_scale() #24
  tail call void @register_node_type_cmp_flip() #24
  tail call void @register_node_type_cmp_crop() #24
  tail call void @register_node_type_cmp_displace() #24
  tail call void @register_node_type_cmp_mapuv() #24
  tail call void @register_node_type_cmp_glare() #24
  tail call void @register_node_type_cmp_tonemap() #24
  tail call void @register_node_type_cmp_lensdist() #24
  tail call void @register_node_type_cmp_transform() #24
  tail call void @register_node_type_cmp_stabilize2d() #24
  tail call void @register_node_type_cmp_moviedistortion() #24
  tail call void @register_node_type_cmp_colorcorrection() #24
  tail call void @register_node_type_cmp_boxmask() #24
  tail call void @register_node_type_cmp_ellipsemask() #24
  tail call void @register_node_type_cmp_bokehimage() #24
  tail call void @register_node_type_cmp_bokehblur() #24
  tail call void @register_node_type_cmp_switch() #24
  tail call void @register_node_type_cmp_pixelate() #24
  tail call void @register_node_type_cmp_mask() #24
  tail call void @register_node_type_cmp_trackpos() #24
  tail call void @register_node_type_cmp_planetrackdeform() #24
  tail call void @register_node_type_cmp_cornerpin() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @registerShaderNodes() unnamed_addr #0 !PGOFuncName !369 {
  tail call void @register_node_type_sh_group() #24
  tail call void @register_node_type_sh_output() #24
  tail call void @register_node_type_sh_material() #24
  tail call void @register_node_type_sh_camera() #24
  tail call void @register_node_type_sh_lamp() #24
  tail call void @register_node_type_sh_gamma() #24
  tail call void @register_node_type_sh_brightcontrast() #24
  tail call void @register_node_type_sh_value() #24
  tail call void @register_node_type_sh_rgb() #24
  tail call void @register_node_type_sh_wireframe() #24
  tail call void @register_node_type_sh_wavelength() #24
  tail call void @register_node_type_sh_blackbody() #24
  tail call void @register_node_type_sh_mix_rgb() #24
  tail call void @register_node_type_sh_valtorgb() #24
  tail call void @register_node_type_sh_rgbtobw() #24
  tail call void @register_node_type_sh_texture() #24
  tail call void @register_node_type_sh_normal() #24
  tail call void @register_node_type_sh_geom() #24
  tail call void @register_node_type_sh_mapping() #24
  tail call void @register_node_type_sh_curve_vec() #24
  tail call void @register_node_type_sh_curve_rgb() #24
  tail call void @register_node_type_sh_math() #24
  tail call void @register_node_type_sh_vect_math() #24
  tail call void @register_node_type_sh_vect_transform() #24
  tail call void @register_node_type_sh_squeeze() #24
  tail call void @register_node_type_sh_material_ext() #24
  tail call void @register_node_type_sh_invert() #24
  tail call void @register_node_type_sh_seprgb() #24
  tail call void @register_node_type_sh_combrgb() #24
  tail call void @register_node_type_sh_sephsv() #24
  tail call void @register_node_type_sh_combhsv() #24
  tail call void @register_node_type_sh_sepxyz() #24
  tail call void @register_node_type_sh_combxyz() #24
  tail call void @register_node_type_sh_hue_sat() #24
  tail call void @register_node_type_sh_attribute() #24
  tail call void @register_node_type_sh_geometry() #24
  tail call void @register_node_type_sh_light_path() #24
  tail call void @register_node_type_sh_light_falloff() #24
  tail call void @register_node_type_sh_object_info() #24
  tail call void @register_node_type_sh_fresnel() #24
  tail call void @register_node_type_sh_layer_weight() #24
  tail call void @register_node_type_sh_tex_coord() #24
  tail call void @register_node_type_sh_particle_info() #24
  tail call void @register_node_type_sh_bump() #24
  tail call void @register_node_type_sh_background() #24
  tail call void @register_node_type_sh_bsdf_anisotropic() #24
  tail call void @register_node_type_sh_bsdf_diffuse() #24
  tail call void @register_node_type_sh_bsdf_glossy() #24
  tail call void @register_node_type_sh_bsdf_glass() #24
  tail call void @register_node_type_sh_bsdf_translucent() #24
  tail call void @register_node_type_sh_bsdf_transparent() #24
  tail call void @register_node_type_sh_bsdf_velvet() #24
  tail call void @register_node_type_sh_bsdf_toon() #24
  tail call void @register_node_type_sh_bsdf_hair() #24
  tail call void @register_node_type_sh_emission() #24
  tail call void @register_node_type_sh_holdout() #24
  tail call void @register_node_type_sh_volume_absorption() #24
  tail call void @register_node_type_sh_volume_scatter() #24
  tail call void @register_node_type_sh_subsurface_scattering() #24
  tail call void @register_node_type_sh_mix_shader() #24
  tail call void @register_node_type_sh_add_shader() #24
  tail call void @register_node_type_sh_uvmap() #24
  tail call void @register_node_type_sh_uvalongstroke() #24
  tail call void @register_node_type_sh_output_lamp() #24
  tail call void @register_node_type_sh_output_material() #24
  tail call void @register_node_type_sh_output_world() #24
  tail call void @register_node_type_sh_output_linestyle() #24
  tail call void @register_node_type_sh_tex_image() #24
  tail call void @register_node_type_sh_tex_environment() #24
  tail call void @register_node_type_sh_tex_sky() #24
  tail call void @register_node_type_sh_tex_noise() #24
  tail call void @register_node_type_sh_tex_wave() #24
  tail call void @register_node_type_sh_tex_voronoi() #24
  tail call void @register_node_type_sh_tex_musgrave() #24
  tail call void @register_node_type_sh_tex_gradient() #24
  tail call void @register_node_type_sh_tex_magic() #24
  tail call void @register_node_type_sh_tex_checker() #24
  tail call void @register_node_type_sh_tex_brick() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @registerTextureNodes() unnamed_addr #0 !PGOFuncName !370 {
  tail call void @register_node_type_tex_group() #24
  tail call void @register_node_type_tex_math() #24
  tail call void @register_node_type_tex_mix_rgb() #24
  tail call void @register_node_type_tex_valtorgb() #24
  tail call void @register_node_type_tex_rgbtobw() #24
  tail call void @register_node_type_tex_valtonor() #24
  tail call void @register_node_type_tex_curve_rgb() #24
  tail call void @register_node_type_tex_curve_time() #24
  tail call void @register_node_type_tex_invert() #24
  tail call void @register_node_type_tex_hue_sat() #24
  tail call void @register_node_type_tex_coord() #24
  tail call void @register_node_type_tex_distance() #24
  tail call void @register_node_type_tex_compose() #24
  tail call void @register_node_type_tex_decompose() #24
  tail call void @register_node_type_tex_output() #24
  tail call void @register_node_type_tex_viewer() #24
  tail call void @register_node_type_sh_script() #24
  tail call void @register_node_type_sh_tangent() #24
  tail call void @register_node_type_sh_normal_map() #24
  tail call void @register_node_type_sh_hair_info() #24
  tail call void @register_node_type_tex_checker() #24
  tail call void @register_node_type_tex_texture() #24
  tail call void @register_node_type_tex_bricks() #24
  tail call void @register_node_type_tex_image() #24
  tail call void @register_node_type_sh_bsdf_refraction() #24
  tail call void @register_node_type_sh_ambient_occlusion() #24
  tail call void @register_node_type_tex_rotate() #24
  tail call void @register_node_type_tex_translate() #24
  tail call void @register_node_type_tex_scale() #24
  tail call void @register_node_type_tex_at() #24
  tail call void @register_node_type_tex_proc_voronoi() #24
  tail call void @register_node_type_tex_proc_blend() #24
  tail call void @register_node_type_tex_proc_magic() #24
  tail call void @register_node_type_tex_proc_marble() #24
  tail call void @register_node_type_tex_proc_clouds() #24
  tail call void @register_node_type_tex_proc_wood() #24
  tail call void @register_node_type_tex_proc_musgrave() #24
  tail call void @register_node_type_tex_proc_noise() #24
  tail call void @register_node_type_tex_proc_stucci() #24
  tail call void @register_node_type_tex_proc_distnoise() #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_nodesystem() local_unnamed_addr #0 {
  %1 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !46
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @nodeTypeGetIterator() #23
  %5 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #23, !range !78
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %3, %15
  %8 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %4) #23
  %9 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 44, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !371
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.bNodeType, ptr %8, i64 0, i32 44
  %14 = load ptr, ptr %13, align 8, !tbaa !372
  tail call void %10(ptr noundef %14) #24
  br label %15

15:                                               ; preds = %12, %7
  tail call void @BLI_ghashIterator_step(ptr noundef %4) #24
  %16 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %4) #23, !range !78
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %7, label %18, !llvm.loop !373

18:                                               ; preds = %15, %3
  tail call void @BLI_ghashIterator_free(ptr noundef %4) #24
  %19 = load ptr, ptr @nodetypes_hash, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef %19, ptr noundef null, ptr noundef nonnull @node_free_type) #24
  store ptr null, ptr @nodetypes_hash, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %18, %0
  %21 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @nodeSocketTypeGetIterator() #23
  %25 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %24) #23, !range !78
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %23, %42
  %28 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %24) #23
  %29 = getelementptr inbounds %struct.bNodeSocketType, ptr %28, i64 0, i32 9, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !374
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.bNodeSocketType, ptr %28, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !375
  tail call void %30(ptr noundef %34) #24
  br label %35

35:                                               ; preds = %32, %27
  %36 = getelementptr inbounds %struct.bNodeSocketType, ptr %28, i64 0, i32 10, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !376
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bNodeSocketType, ptr %28, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !377
  tail call void %37(ptr noundef %41) #24
  br label %42

42:                                               ; preds = %39, %35
  tail call void @BLI_ghashIterator_step(ptr noundef %24) #24
  %43 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %24) #23, !range !78
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %27, label %45, !llvm.loop !378

45:                                               ; preds = %42, %23
  tail call void @BLI_ghashIterator_free(ptr noundef %24) #24
  %46 = load ptr, ptr @nodesockettypes_hash, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef %46, ptr noundef null, ptr noundef nonnull @node_free_socket_type) #24
  store ptr null, ptr @nodesockettypes_hash, align 8, !tbaa !46
  br label %47

47:                                               ; preds = %45, %20
  %48 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = tail call ptr @ntreeTypeGetIterator() #23
  %52 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %51) #23, !range !78
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50, %62
  %55 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %51) #23
  %56 = getelementptr inbounds %struct.bNodeTreeType, ptr %55, i64 0, i32 16, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !379
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.bNodeTreeType, ptr %55, i64 0, i32 16
  %61 = load ptr, ptr %60, align 8, !tbaa !380
  tail call void %57(ptr noundef %61) #24
  br label %62

62:                                               ; preds = %59, %54
  tail call void @BLI_ghashIterator_step(ptr noundef %51) #24
  %63 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %51) #23, !range !78
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %54, label %65, !llvm.loop !381

65:                                               ; preds = %62, %50
  tail call void @BLI_ghashIterator_free(ptr noundef %51) #24
  %66 = load ptr, ptr @nodetreetypes_hash, align 8, !tbaa !46
  tail call void @BLI_ghash_free(ptr noundef %66, ptr noundef null, ptr noundef nonnull @ntree_free_type) #24
  store ptr null, ptr @nodetreetypes_hash, align 8, !tbaa !46
  br label %67

67:                                               ; preds = %65, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !382 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = icmp eq ptr %6, @NodeTypeUndefined
  br i1 %7, label %55, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.bNodeType, ptr %6, i64 0, i32 15
  %15 = load i16, ptr %14, align 2, !tbaa !167
  %16 = or i16 %15, 3
  %17 = sext i16 %16 to i32
  store i32 %17, ptr %9, align 8, !tbaa !60
  %18 = getelementptr inbounds %struct.bNodeType, ptr %6, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !383
  %20 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 26
  store float %19, ptr %20, align 8, !tbaa !384
  %21 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 28
  store float 4.200000e+01, ptr %21, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.bNodeType, ptr %6, i64 0, i32 11
  %23 = load float, ptr %22, align 8, !tbaa !386
  %24 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 27
  store float %23, ptr %24, align 4, !tbaa !387
  %25 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 16
  %26 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %26, align 4, !tbaa !128
  store <2 x float> <float 0x3FE374BC60000000, float 0x3FE374BC60000000>, ptr %25, align 4, !tbaa !128
  %27 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 6
  %28 = getelementptr inbounds %struct.bNodeType, ptr %6, i64 0, i32 5
  %29 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef nonnull %28, i64 noundef 64) #24
  tail call void @nodeUniqueName(ptr noundef %1, ptr noundef nonnull %2) #23
  tail call fastcc void @node_add_sockets_from_type(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %6) #23
  %30 = getelementptr inbounds %struct.bNodeType, ptr %6, i64 0, i32 31
  %31 = load ptr, ptr %30, align 8, !tbaa !360
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %13
  tail call void %31(ptr noundef %1, ptr noundef nonnull %2) #24
  br label %34

34:                                               ; preds = %33, %13
  %35 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.bNodeTreeType, ptr %36, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !388
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void %38(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
  br label %41

41:                                               ; preds = %40, %34
  %42 = getelementptr inbounds %struct.bNodeType, ptr %6, i64 0, i32 34
  %43 = load ptr, ptr %42, align 8, !tbaa !389
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @RNA_pointer_create(ptr noundef nonnull %1, ptr noundef nonnull @RNA_Node, ptr noundef nonnull %2, ptr noundef nonnull %4) #24
  %46 = load ptr, ptr %42, align 8, !tbaa !389
  call void %46(ptr noundef %0, ptr noundef nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %49 = load ptr, ptr %48, align 8, !tbaa !155
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  call void @id_us_plus(ptr noundef nonnull %49) #24
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, ptr %9, align 8, !tbaa !60
  %54 = or i32 %53, 65536
  store i32 %54, ptr %9, align 8, !tbaa !60
  br label %55

55:                                               ; preds = %8, %3, %52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @node_add_sockets_from_type(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !390 {
  %4 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !348
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 8, !tbaa !350
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %16, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %13, %10 ], [ %5, %7 ]
  %12 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, i32 noundef 1) #24
  %13 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %11, i64 1
  %14 = load i32, ptr %13, align 8, !tbaa !350
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %10, !llvm.loop !391

16:                                               ; preds = %10, %7, %3
  %17 = getelementptr inbounds %struct.bNodeType, ptr %2, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !349
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !350
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %26, %23 ], [ %18, %20 ]
  %25 = tail call ptr @node_add_socket_from_template(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %24, i32 noundef 2) #24
  %26 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %24, i64 1
  %27 = load i32, ptr %26, align 8, !tbaa !350
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %23, !llvm.loop !392

29:                                               ; preds = %23, %20, %16
  ret void
}

; Function Attrs: optsize
declare ptr @node_add_socket_from_template(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @node_socket_init_default_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_dynamic_typeinfo(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !393 {
  %2 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = icmp eq i32 %3, 123
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !348
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %10(ptr noundef nonnull %7) #24
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !349
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %16(ptr noundef nonnull %13) #24
  br label %17

17:                                               ; preds = %11, %15, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @unique_identifier_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !394 {
  br label %3

3:                                                ; preds = %7, %2
  %4 = phi ptr [ %0, %2 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %5, i64 0, i32 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %3, !llvm.loop !395

11:                                               ; preds = %3, %7
  %12 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %12
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_libblock_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_libblock_copy_nolib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !396 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !397
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !398 {
  tail call fastcc void @linearrgb_to_srgb_v3_v3(ptr noundef %0, ptr noundef %1) #23
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = load float, ptr %3, align 4, !tbaa !128
  %5 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %5, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #21

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @linearrgb_to_srgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !399 {
  %3 = load float, ptr %1, align 4, !tbaa !128
  %4 = tail call float @linearrgb_to_srgb(float noundef %3) #24
  store float %4, ptr %0, align 4, !tbaa !128
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !128
  %7 = tail call float @linearrgb_to_srgb(float noundef %6) #24
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !128
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !128
  %11 = tail call float @linearrgb_to_srgb(float noundef %10) #24
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare float @linearrgb_to_srgb(float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @node_unlink_attached(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #16 !PGOFuncName !400 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %13, %12 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @nodeDetachNode(ptr noundef nonnull %7) #23
  br label %12

12:                                               ; preds = %6, %11
  %13 = load ptr, ptr %7, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !401

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strescape(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_animdata_fix_paths_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @RNA_identifier_sanitize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @ntree_interface_unique_identifier_check(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !402 {
  %3 = tail call ptr @RNA_struct_find(ptr noundef %1) #24
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @RNA_def_struct_ptr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @unique_socket_template_identifier_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !403 {
  %3 = load ptr, ptr %0, align 8, !tbaa !357
  %4 = load i32, ptr %3, align 8, !tbaa !350
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.1, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !359
  br label %9

9:                                                ; preds = %6, %16
  %10 = phi ptr [ %3, %6 ], [ %17, %16 ]
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 0, i32 12
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9, %12
  %17 = getelementptr inbounds %struct.bNodeSocketTemplate, ptr %10, i64 1
  %18 = load i32, ptr %17, align 8, !tbaa !350
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %9, label %20, !llvm.loop !404

20:                                               ; preds = %12, %16, %2
  %21 = phi i8 [ 0, %2 ], [ 0, %16 ], [ 1, %12 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @node_undefined_poll(ptr nocapture readnone %0, ptr nocapture readnone %1) #7 !PGOFuncName !405 {
  ret i32 0
}

; Function Attrs: optsize
declare void @register_node_type_cmp_group() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_rlayers() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_image() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_texture() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_value() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_curve_time() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_movieclip() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_composite() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_viewer() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_splitviewer() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_output_file() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_view_levels() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_curve_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_mix_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_hue_sat() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_brightcontrast() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_gamma() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_invert() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_alphaover() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_zcombine() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_colorbalance() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_huecorrect() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_normal() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_curve_vec() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_map_value() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_map_range() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_normalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_filter() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_blur() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_dblur() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_bilateralblur() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_vecblur() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_dilateerode() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_inpaint() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_despeckle() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_defocus() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_sunbeams() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_valtorgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_rgbtobw() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_setalpha() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_idmask() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_math() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_seprgba() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_combrgba() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_sephsva() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_combhsva() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_sepyuva() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_combyuva() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_sepycca() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_combycca() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_premulkey() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_diff_matte() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_distance_matte() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_chroma_matte() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_color_matte() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_channel_matte() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_color_spill() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_luma_matte() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_doubleedgemask() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_keyingscreen() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_keying() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_translate() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_rotate() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_scale() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_flip() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_crop() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_displace() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_mapuv() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_glare() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_tonemap() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_lensdist() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_transform() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_stabilize2d() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_moviedistortion() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_colorcorrection() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_boxmask() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_ellipsemask() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_bokehimage() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_bokehblur() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_switch() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_pixelate() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_mask() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_trackpos() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_planetrackdeform() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_cmp_cornerpin() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_group() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_output() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_material() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_camera() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_lamp() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_gamma() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_brightcontrast() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_value() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_wireframe() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_wavelength() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_blackbody() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_mix_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_valtorgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_rgbtobw() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_texture() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_normal() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_geom() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_mapping() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_curve_vec() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_curve_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_math() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_vect_math() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_vect_transform() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_squeeze() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_material_ext() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_invert() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_seprgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_combrgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_sephsv() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_combhsv() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_sepxyz() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_combxyz() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_hue_sat() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_attribute() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_geometry() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_light_path() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_light_falloff() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_object_info() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_fresnel() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_layer_weight() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_coord() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_particle_info() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bump() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_background() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_anisotropic() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_diffuse() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_glossy() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_glass() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_translucent() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_transparent() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_velvet() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_toon() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_hair() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_emission() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_holdout() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_volume_absorption() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_volume_scatter() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_subsurface_scattering() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_mix_shader() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_add_shader() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_uvmap() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_uvalongstroke() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_output_lamp() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_output_material() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_output_world() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_output_linestyle() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_image() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_environment() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_sky() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_noise() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_wave() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_voronoi() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_musgrave() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_gradient() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_magic() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_checker() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tex_brick() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_group() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_math() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_mix_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_valtorgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_rgbtobw() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_valtonor() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_curve_rgb() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_curve_time() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_invert() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_hue_sat() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_coord() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_distance() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_compose() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_decompose() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_output() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_viewer() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_script() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_tangent() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_normal_map() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_hair_info() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_checker() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_texture() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_bricks() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_image() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_bsdf_refraction() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_sh_ambient_occlusion() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_rotate() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_translate() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_scale() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_at() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_voronoi() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_blend() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_magic() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_marble() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_clouds() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_wood() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_musgrave() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_noise() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_stucci() local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_node_type_tex_proc_distnoise() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind }
attributes #26 = { nounwind optsize willreturn memory(read) }

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
!46 = !{!37, !37, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !48}
!52 = distinct !{!52, !48}
!53 = !{!"node.c:ntree_set_typeinfo"}
!54 = !{!55, !41, i64 0}
!55 = !{!"bNodeTreeType", !41, i64 0, !38, i64 4, !38, i64 68, !38, i64 132, !41, i64 388, !37, i64 392, !37, i64 400, !37, i64 408, !37, i64 416, !37, i64 424, !37, i64 432, !37, i64 440, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !56, i64 480}
!56 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!57 = !{!35, !41, i64 256}
!58 = !{!38, !38, i64 0}
!59 = !{!"node.c:node_set_typeinfo"}
!60 = !{!61, !41, i64 168}
!61 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !41, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !38, i64 188, !42, i64 200, !42, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !42, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !38, i64 312, !40, i64 376, !40, i64 378, !44, i64 380, !44, i64 384, !40, i64 388, !40, i64 390, !37, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !41, i64 452, !37, i64 456}
!62 = !{!61, !37, i64 248}
!63 = !{!61, !37, i64 32}
!64 = !{!65, !41, i64 84}
!65 = !{!"bNodeType", !37, i64 0, !37, i64 8, !40, i64 16, !38, i64 18, !41, i64 84, !38, i64 88, !38, i64 152, !41, i64 408, !44, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !40, i64 436, !40, i64 438, !40, i64 440, !37, i64 448, !37, i64 456, !38, i64 464, !37, i64 528, !37, i64 536, !37, i64 544, !37, i64 552, !37, i64 560, !37, i64 568, !37, i64 576, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !37, i64 672, !37, i64 680, !37, i64 688, !37, i64 696, !37, i64 704, !37, i64 712, !56, i64 720}
!66 = !{!61, !40, i64 172}
!67 = !{!"node.c:node_socket_set_typeinfo"}
!68 = !{!69, !37, i64 176}
!69 = !{!"bNodeSocket", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !38, i64 96, !37, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !37, i64 176, !38, i64 184, !44, i64 248, !44, i64 252, !37, i64 256, !40, i64 264, !40, i64 266, !41, i64 268, !37, i64 272, !41, i64 280, !41, i64 284, !37, i64 288, !37, i64 296, !70, i64 304}
!70 = !{!"bNodeStack", !38, i64 0, !44, i64 16, !44, i64 20, !37, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !38, i64 44}
!71 = !{!72, !41, i64 192}
!72 = !{!"bNodeSocketType", !38, i64 0, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !56, i64 128, !56, i64 160, !41, i64 192, !41, i64 196}
!73 = !{!69, !40, i64 168}
!74 = !{!69, !37, i64 256}
!75 = !{!76, !37, i64 0}
!76 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!77 = !{!"node.c:update_typeinfo"}
!78 = !{i8 0, i8 2}
!79 = distinct !{!79, !48}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = distinct !{!83, !48}
!84 = distinct !{!84, !48}
!85 = !{!"node.c:ntree_free_type"}
!86 = !{!35, !37, i64 128}
!87 = !{!"node.c:node_free_type"}
!88 = !{!65, !40, i64 16}
!89 = !{!"node.c:node_free_socket_type"}
!90 = distinct !{!90, !48}
!91 = !{!61, !41, i64 308}
!92 = !{!"node.c:make_socket"}
!93 = !{!69, !40, i64 174}
!94 = !{!69, !40, i64 172}
!95 = !{!69, !37, i64 160}
!96 = !{!69, !40, i64 170}
!97 = !{!35, !37, i64 240}
!98 = !{!99, !37, i64 0}
!99 = !{!"bNodeLink", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 52}
!100 = !{!99, !37, i64 32}
!101 = !{!99, !37, i64 40}
!102 = distinct !{!102, !48}
!103 = !{!69, !37, i64 296}
!104 = !{!35, !41, i64 272}
!105 = !{!"node.c:node_socket_free"}
!106 = !{!69, !37, i64 24}
!107 = !{!99, !37, i64 16}
!108 = !{!99, !37, i64 24}
!109 = distinct !{!109, !48}
!110 = !{!61, !37, i64 200}
!111 = !{!69, !37, i64 0}
!112 = distinct !{!112, !48}
!113 = !{!61, !37, i64 216}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !48}
!117 = !{!41, !41, i64 0}
!118 = !{!65, !37, i64 664}
!119 = distinct !{!119, !48}
!120 = !{!"node.c:BLI_ghashIterator_done"}
!121 = !{!122, !37, i64 8}
!122 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !41, i64 16}
!123 = !{!"node.c:BLI_ghashIterator_getValue"}
!124 = !{!125, !37, i64 16}
!125 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
!126 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46, i64 32, i64 8, !46, i64 40, i64 64, !58, i64 104, i64 64, !58, i64 168, i64 4, !117, i64 172, i64 2, !127, i64 174, i64 2, !127, i64 176, i64 2, !127, i64 178, i64 2, !127, i64 180, i64 2, !127, i64 182, i64 2, !127, i64 184, i64 2, !127, i64 186, i64 2, !127, i64 188, i64 12, !58, i64 200, i64 8, !46, i64 208, i64 8, !46, i64 216, i64 8, !46, i64 224, i64 8, !46, i64 232, i64 8, !46, i64 240, i64 8, !46, i64 248, i64 8, !46, i64 256, i64 8, !46, i64 264, i64 8, !46, i64 272, i64 8, !46, i64 280, i64 4, !128, i64 284, i64 4, !128, i64 288, i64 4, !128, i64 292, i64 4, !128, i64 296, i64 4, !128, i64 300, i64 4, !128, i64 304, i64 4, !128, i64 308, i64 4, !117, i64 312, i64 64, !58, i64 376, i64 2, !127, i64 378, i64 2, !127, i64 380, i64 4, !128, i64 384, i64 4, !128, i64 388, i64 2, !127, i64 390, i64 2, !127, i64 392, i64 8, !46, i64 400, i64 4, !128, i64 404, i64 4, !128, i64 408, i64 4, !128, i64 412, i64 4, !128, i64 416, i64 4, !128, i64 420, i64 4, !128, i64 424, i64 4, !128, i64 428, i64 4, !128, i64 432, i64 4, !128, i64 436, i64 4, !128, i64 440, i64 4, !128, i64 444, i64 4, !128, i64 448, i64 2, !127, i64 450, i64 2, !127, i64 452, i64 4, !117, i64 456, i64 8, !46}
!127 = !{!40, !40, i64 0}
!128 = !{!44, !44, i64 0}
!129 = distinct !{!129, !48}
!130 = distinct !{!130, !48}
!131 = !{!61, !37, i64 24}
!132 = !{!69, !37, i64 16}
!133 = distinct !{!133, !48}
!134 = !{!65, !37, i64 632}
!135 = !{!61, !37, i64 16}
!136 = !{!65, !37, i64 656}
!137 = !{!"node.c:node_socket_copy"}
!138 = !{!69, !40, i64 264}
!139 = !{!69, !37, i64 272}
!140 = distinct !{!140, !48}
!141 = !{i32 0, i32 2}
!142 = distinct !{!142, !48}
!143 = !{!99, !41, i64 48}
!144 = distinct !{!144, !48}
!145 = distinct !{!145, !48}
!146 = !{!61, !37, i64 232}
!147 = !{!61, !44, i64 280}
!148 = !{!61, !44, i64 284}
!149 = distinct !{!149, !48}
!150 = !{!"node.c:ntreeCopyTree_internal"}
!151 = !{!35, !37, i64 24}
!152 = !{!35, !37, i64 208}
!153 = !{!35, !37, i64 360}
!154 = !{!35, !37, i64 232}
!155 = !{!61, !37, i64 240}
!156 = distinct !{!156, !48}
!157 = distinct !{!157, !48}
!158 = distinct !{!158, !48}
!159 = distinct !{!159, !48}
!160 = !{!35, !37, i64 344}
!161 = distinct !{!161, !48}
!162 = distinct !{!162, !48}
!163 = !{!35, !37, i64 200}
!164 = distinct !{!164, !48}
!165 = distinct !{!165, !48}
!166 = distinct !{!166, !48}
!167 = !{!65, !40, i64 438}
!168 = !{!169, !37, i64 8}
!169 = !{!"bNodePreview", !170, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20}
!170 = !{!"bNodeInstanceHashEntry", !45, i64 0, !40, i64 4, !40, i64 6}
!171 = !{!169, !40, i64 16}
!172 = !{!169, !40, i64 18}
!173 = !{!174, !37, i64 0}
!174 = !{!"bNodeInstanceHash", !37, i64 0}
!175 = !{i64 0, i64 4, !117}
!176 = !{!170, !40, i64 4}
!177 = !{!"node.c:node_preview_init_tree_recursive"}
!178 = !{!61, !40, i64 448}
!179 = !{!61, !40, i64 450}
!180 = distinct !{!180, !48}
!181 = distinct !{!181, !48}
!182 = !{!"node.c:node_preview_tag_used_recursive"}
!183 = distinct !{!183, !48}
!184 = distinct !{!184, !48}
!185 = !{i32 0, i32 256}
!186 = distinct !{!186, !48}
!187 = distinct !{!187, !48}
!188 = !{!"node.c:BKE_node_instance_hash_iterator_init"}
!189 = !{!"node.c:BKE_node_instance_hash_iterator_done"}
!190 = !{!"node.c:BKE_node_instance_hash_iterator_get_value"}
!191 = !{!"node.c:BKE_node_instance_hash_iterator_step"}
!192 = distinct !{!192, !48}
!193 = !{!"node.c:BKE_node_instance_hash_iterator_get_key"}
!194 = !{!"node.c:node_preview_sync"}
!195 = distinct !{!195, !48}
!196 = !{!"node.c:linearrgb_to_srgb_uchar4"}
!197 = distinct !{!197, !48}
!198 = distinct !{!198, !48}
!199 = !{!"node.c:node_free_node_ex"}
!200 = !{!35, !41, i64 268}
!201 = !{!65, !37, i64 648}
!202 = !{!55, !37, i64 400}
!203 = !{!65, !37, i64 624}
!204 = distinct !{!204, !48}
!205 = distinct !{!205, !48}
!206 = !{!35, !37, i64 224}
!207 = !{!61, !37, i64 0}
!208 = distinct !{!208, !48}
!209 = !{!35, !37, i64 312}
!210 = distinct !{!210, !48}
!211 = !{!35, !37, i64 328}
!212 = distinct !{!212, !48}
!213 = distinct !{!213, !48}
!214 = !{!"node.c:free_localized_node_groups"}
!215 = distinct !{!215, !48}
!216 = !{!"node.c:node_socket_interface_free"}
!217 = !{!55, !37, i64 392}
!218 = !{!65, !40, i64 436}
!219 = distinct !{!219, !48}
!220 = distinct !{!220, !48}
!221 = distinct !{!221, !48}
!222 = !{!35, !41, i64 100}
!223 = !{!36, !37, i64 24}
!224 = distinct !{!224, !48}
!225 = distinct !{!225, !48}
!226 = distinct !{!226, !48}
!227 = distinct !{!227, !48}
!228 = !{!229, !37, i64 1472}
!229 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !230, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!230 = !{!"long", !38, i64 0}
!231 = !{!232, !37, i64 0}
!232 = !{!"NodeTreeIterStore", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!233 = !{!229, !37, i64 1088}
!234 = !{!232, !37, i64 8}
!235 = !{!229, !37, i64 1184}
!236 = !{!232, !37, i64 16}
!237 = !{!229, !37, i64 1200}
!238 = !{!232, !37, i64 24}
!239 = !{!229, !37, i64 1248}
!240 = !{!232, !37, i64 32}
!241 = !{!229, !37, i64 1312}
!242 = !{!232, !37, i64 40}
!243 = !{!229, !37, i64 1616}
!244 = !{!232, !37, i64 48}
!245 = distinct !{!245, !48}
!246 = distinct !{!246, !48}
!247 = !{!248, !37, i64 0}
!248 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !37, i64 40, !42, i64 48, !42, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!249 = !{!248, !37, i64 8}
!250 = distinct !{!250, !48}
!251 = !{!252, !41, i64 100}
!252 = !{!"bAction", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!253 = distinct !{!253, !48}
!254 = !{!55, !37, i64 432}
!255 = !{!55, !37, i64 440}
!256 = !{!55, !37, i64 448}
!257 = distinct !{!257, !48}
!258 = !{!"node.c:make_socket_interface"}
!259 = !{!35, !41, i64 264}
!260 = !{!69, !41, i64 280}
!261 = !{!72, !37, i64 120}
!262 = !{!"node.c:ntree_interface_identifier_base"}
!263 = !{!"node.c:ntree_interface_identifier"}
!264 = !{!"node.c:ntree_interface_type_create"}
!265 = !{!72, !37, i64 96}
!266 = distinct !{!266, !48}
!267 = distinct !{!267, !48}
!268 = distinct !{!268, !48}
!269 = distinct !{!269, !48}
!270 = distinct !{!270, !48}
!271 = distinct !{!271, !48}
!272 = distinct !{!272, !48}
!273 = !{!"node.c:node_get_active_id_recursive"}
!274 = distinct !{!274, !48}
!275 = distinct !{!275, !48}
!276 = distinct !{!276, !48}
!277 = distinct !{!277, !48}
!278 = distinct !{!278, !48}
!279 = distinct !{!279, !48}
!280 = distinct !{!280, !48}
!281 = distinct !{!281, !48}
!282 = distinct !{!282, !48}
!283 = !{!284, !41, i64 48}
!284 = !{!"bNodeClipboard", !42, i64 0, !42, i64 16, !42, i64 32, !41, i64 48}
!285 = !{!284, !37, i64 32}
!286 = distinct !{!286, !48}
!287 = !{!284, !37, i64 0}
!288 = distinct !{!288, !48}
!289 = !{!"node.c:BLI_listbase_clear"}
!290 = !{!291, !37, i64 16}
!291 = !{!"bNodeClipboardExtraInfo", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 90}
!292 = distinct !{!292, !48}
!293 = !{!"node.c:node_hash_int_str"}
!294 = distinct !{!294, !48}
!295 = !{!"node.c:node_instance_hash_key"}
!296 = !{!45, !41, i64 0}
!297 = !{!"node.c:node_instance_hash_key_cmp"}
!298 = !{!61, !40, i64 176}
!299 = distinct !{!299, !48}
!300 = !{i32 -32769, i32 4096}
!301 = !{!61, !40, i64 178}
!302 = distinct !{!302, !48}
!303 = !{!"node.c:node_get_deplist_recurs"}
!304 = distinct !{!304, !48}
!305 = !{!65, !37, i64 608}
!306 = distinct !{!306, !48}
!307 = distinct !{!307, !48}
!308 = !{!35, !40, i64 276}
!309 = !{!65, !37, i64 600}
!310 = distinct !{!310, !48}
!311 = !{!55, !37, i64 456}
!312 = distinct !{!312, !48}
!313 = !{!"node.c:ntree_update_link_pointers"}
!314 = distinct !{!314, !48}
!315 = distinct !{!315, !48}
!316 = distinct !{!316, !48}
!317 = distinct !{!317, !48}
!318 = !{!65, !37, i64 680}
!319 = !{!"node.c:ntree_update_node_level"}
!320 = distinct !{!320, !48}
!321 = distinct !{!321, !48}
!322 = !{!"node.c:ntree_validate_links"}
!323 = !{!55, !37, i64 464}
!324 = distinct !{!324, !48}
!325 = distinct !{!325, !48}
!326 = distinct !{!326, !48}
!327 = !{!328, !44, i64 4}
!328 = !{!"bNodeSocketValueFloat", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!329 = !{!330, !44, i64 204}
!330 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !331, i64 224, !332, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !38, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !38, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!331 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!332 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!333 = !{!330, !44, i64 180}
!334 = !{!330, !44, i64 184}
!335 = !{!330, !44, i64 192}
!336 = !{!330, !44, i64 196}
!337 = !{!330, !44, i64 200}
!338 = !{!330, !44, i64 220}
!339 = distinct !{!339, !48}
!340 = !{!"node.c:copy_v3_v3"}
!341 = !{!65, !37, i64 568}
!342 = !{!65, !37, i64 728}
!343 = !{!65, !37, i64 672}
!344 = !{!"node.c:node_type_base_defaults"}
!345 = !{!65, !44, i64 432}
!346 = !{!"node.c:node_poll_default"}
!347 = !{!"node.c:node_poll_instance_default"}
!348 = !{!65, !37, i64 448}
!349 = !{!65, !37, i64 456}
!350 = !{!351, !41, i64 0}
!351 = !{!"bNodeSocketTemplate", !41, i64 0, !41, i64 4, !38, i64 8, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !41, i64 96, !41, i64 100, !37, i64 104, !38, i64 112}
!352 = distinct !{!352, !48}
!353 = distinct !{!353, !48}
!354 = distinct !{!354, !48}
!355 = distinct !{!355, !48}
!356 = !{!"node.c:unique_socket_template_identifier"}
!357 = !{!358, !37, i64 0}
!358 = !{!"", !37, i64 0, !37, i64 8}
!359 = !{!358, !37, i64 8}
!360 = !{!65, !37, i64 616}
!361 = !{!65, !37, i64 688}
!362 = !{!65, !37, i64 696}
!363 = !{!65, !37, i64 704}
!364 = !{!65, !37, i64 712}
!365 = !{!65, !40, i64 440}
!366 = !{!"node.c:register_undefined_types"}
!367 = !{!72, !41, i64 196}
!368 = !{!"node.c:registerCompositNodes"}
!369 = !{!"node.c:registerShaderNodes"}
!370 = !{!"node.c:registerTextureNodes"}
!371 = !{!65, !37, i64 744}
!372 = !{!65, !37, i64 720}
!373 = distinct !{!373, !48}
!374 = !{!72, !37, i64 152}
!375 = !{!72, !37, i64 128}
!376 = !{!72, !37, i64 184}
!377 = !{!72, !37, i64 160}
!378 = distinct !{!378, !48}
!379 = !{!55, !37, i64 504}
!380 = !{!55, !37, i64 480}
!381 = distinct !{!381, !48}
!382 = !{!"node.c:node_init"}
!383 = !{!65, !44, i64 412}
!384 = !{!61, !44, i64 288}
!385 = !{!61, !44, i64 296}
!386 = !{!65, !44, i64 424}
!387 = !{!61, !44, i64 292}
!388 = !{!55, !37, i64 472}
!389 = !{!65, !37, i64 640}
!390 = !{!"node.c:node_add_sockets_from_type"}
!391 = distinct !{!391, !48}
!392 = distinct !{!392, !48}
!393 = !{!"node.c:free_dynamic_typeinfo"}
!394 = !{!"node.c:unique_identifier_check"}
!395 = distinct !{!395, !48}
!396 = !{!"node.c:BLI_ghashIterator_getKey"}
!397 = !{!125, !37, i64 8}
!398 = !{!"node.c:linearrgb_to_srgb_v4"}
!399 = !{!"node.c:linearrgb_to_srgb_v3_v3"}
!400 = !{!"node.c:node_unlink_attached"}
!401 = distinct !{!401, !48}
!402 = !{!"node.c:ntree_interface_unique_identifier_check"}
!403 = !{!"node.c:unique_socket_template_identifier_check"}
!404 = distinct !{!404, !48}
!405 = !{!"node.c:node_undefined_poll"}
