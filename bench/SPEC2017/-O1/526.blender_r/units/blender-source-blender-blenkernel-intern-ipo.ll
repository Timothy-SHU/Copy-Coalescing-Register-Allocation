; ModuleID = 'blender/source/blender/blenkernel/intern/ipo.c'
source_filename = "blender/source/blender/blenkernel/intern/ipo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.AdrBit2Path = type { i32, ptr, i32 }
%struct.Ipo = type { %struct.ID, %struct.ListBase, %struct.rctf, i16, i16, i16, i16 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.IpoCurve = type { ptr, ptr, ptr, ptr, %struct.rctf, %struct.rctf, i16, i16, i16, i16, i16, i16, i16, i16, float, float, i32, float, float, float, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bActionStrip = type { ptr, ptr, i16, i16, i16, i16, ptr, ptr, ptr, float, float, float, float, float, float, float, float, float, float, [32 x i8], [32 x i8], %struct.ListBase }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintChannel = type { ptr, ptr, ptr, i16, [30 x i8] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
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
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.bActionChannel = type { ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i32 }
%struct.IpoDriver = type { ptr, i16, i16, i16, i16, [128 x i8] }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FMod_Cycles = type { i16, i16, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [49 x i8] c"Freed %d (Unconverted) Ipo-Curves from IPO '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"WARNING: Animation data too new to convert (Version %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\09converting ob %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09converting key %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\09converting material %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"\09converting world %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"\09converting sequence strip %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\09converting texture %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09converting camera %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\09converting lamp %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09converting curve %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"\09converting action %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\09converting ipo %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [80 x i8] c"ipo to animdata - ID:%s, IPO:%s, actname:%s constname:%s seqname:%s  curves:%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"<None>\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"CDA:%s\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\09\09added new action - '%s'\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"NlaStrip\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"FCurve\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"\09convert bitflag ipocurve, totbits = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"BezTriples\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"eval_time\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"ChannelDriver\00", align 1
@ob_layer_bits = internal constant [20 x %struct.AdrBit2Path] [%struct.AdrBit2Path { i32 1, ptr @.str.33, i32 0 }, %struct.AdrBit2Path { i32 2, ptr @.str.33, i32 1 }, %struct.AdrBit2Path { i32 4, ptr @.str.33, i32 2 }, %struct.AdrBit2Path { i32 8, ptr @.str.33, i32 3 }, %struct.AdrBit2Path { i32 16, ptr @.str.33, i32 4 }, %struct.AdrBit2Path { i32 32, ptr @.str.33, i32 5 }, %struct.AdrBit2Path { i32 64, ptr @.str.33, i32 6 }, %struct.AdrBit2Path { i32 128, ptr @.str.33, i32 7 }, %struct.AdrBit2Path { i32 256, ptr @.str.33, i32 8 }, %struct.AdrBit2Path { i32 512, ptr @.str.33, i32 9 }, %struct.AdrBit2Path { i32 1024, ptr @.str.33, i32 10 }, %struct.AdrBit2Path { i32 2048, ptr @.str.33, i32 11 }, %struct.AdrBit2Path { i32 4096, ptr @.str.33, i32 12 }, %struct.AdrBit2Path { i32 8192, ptr @.str.33, i32 13 }, %struct.AdrBit2Path { i32 16384, ptr @.str.33, i32 14 }, %struct.AdrBit2Path { i32 32768, ptr @.str.33, i32 15 }, %struct.AdrBit2Path { i32 65536, ptr @.str.33, i32 16 }, %struct.AdrBit2Path { i32 131072, ptr @.str.33, i32 17 }, %struct.AdrBit2Path { i32 262144, ptr @.str.33, i32 18 }, %struct.AdrBit2Path { i32 524288, ptr @.str.33, i32 19 }], align 16
@ma_mode_bits = internal constant [2 x %struct.AdrBit2Path] [%struct.AdrBit2Path { i32 131072, ptr @.str.34, i32 0 }, %struct.AdrBit2Path { i32 262144, ptr @.str.35, i32 0 }], align 16
@.str.33 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"transparency\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"raytrace_mirror.enabled\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"bActionGroup\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"effect_fader\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"speed_fader\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"blend_opacity\00", align 1
@.str.41 = private unnamed_addr constant [63 x i8] c"IPO2ANIMATO WARNING: No path for blocktype %d, adrcode %d yet\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"pose.bones[\22%s\22].constraints[\22%s\22]\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"data.shape_keys\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"pose.bones[\22%s\22]\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"constraints[\22%s\22]\00", align 1
@.str.46 = private unnamed_addr constant [36 x i8] c"sequence_editor.sequences_all[\22%s\22]\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"delta_location\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"rotation_euler\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"delta_rotation_euler\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"delta_scale\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"rotation_quaternion\00", align 1
@.str.57 = private unnamed_addr constant [48 x i8] c"ERROR: unmatched PoseChannel setting (code %d)\0A\00", align 1
@shapekey_adrcodes_to_paths.buf = internal global [128 x i8] zeroinitializer, align 16
@.str.58 = private unnamed_addr constant [21 x i8] c"key_blocks[%d].value\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"data.head_tail\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"noise_size\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"turbulence\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"noise_basis\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"feature_weights\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"minkovsky_exponent\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"distance_metric\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"color_type\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"noise_intensity\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"distortion_amount\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"highest_dimension\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"lacunarity\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"octaves\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"rgb_factor\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"constrast\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"diffuse_color\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"specular_color\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"mirror_color\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"diffuse_intensity\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"emit\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"specular_intensity\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"specular_hardness\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"specular_opacity\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"halo.size\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"translucency\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"raytrace_mirror.reflect\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"raytrace_mirror.fresnel\00", align 1
@.str.93 = private unnamed_addr constant [31 x i8] c"raytrace_mirror.fresnel_factor\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"raytrace_transparency.fresnel\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"raytrace_transparency.fresnel_factor\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"halo.add\00", align 1
@mtex_adrcodes_to_paths.buf = internal global [128 x i8] zeroinitializer, align 16
@.str.97 = private unnamed_addr constant [12 x i8] c"textures[0]\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"textures[1]\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"textures[2]\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"textures[3]\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"textures[4]\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"textures[5]\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"textures[6]\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"textures[7]\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"textures[8]\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"textures[9]\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"textures[10]\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"textures[11]\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"textures[12]\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"textures[13]\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"textures[14]\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"textures[15]\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"textures[16]\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"textures[17]\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"warp_factor\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"lens\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"clip_start\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"clip_end\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"shift_x\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"shift_y\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"energy\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"spot_size\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"spot_blend\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"linear_attenuation\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"quadratic_attenuation\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"halo_intensity\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"pitch\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"attenuation\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"horizon_color\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"zenith_color\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"mist.intensity\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"mist.depth\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"mist.start\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"mist.height\00", align 1
@.str.139 = private unnamed_addr constant [22 x i8] c"settings.clump_factor\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"settings.angular_velocity_factor\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"settings.particle_size\00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"settings.drag_factor\00", align 1
@.str.143 = private unnamed_addr constant [25 x i8] c"settings.brownian_factor\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"settings.damp_factor\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"settings.length\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"settings.acceleration\00", align 1
@.str.147 = private unnamed_addr constant [24 x i8] c"settings.kink_amplitude\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"settings.kink_frequency\00", align 1
@.str.149 = private unnamed_addr constant [20 x i8] c"settings.kink_shape\00", align 1
@.str.150 = private unnamed_addr constant [24 x i8] c"settings.billboard_tilt\00", align 1
@str = private unnamed_addr constant [31 x i8] c"INFO: Converting to Animato...\00", align 1
@str.151 = private unnamed_addr constant [27 x i8] c"INFO: Animato convert done\00", align 1
@str.152 = private unnamed_addr constant [52 x i8] c"Argh! Main is NULL in do_versions_ipos_to_animato()\00", align 1
@str.153 = private unnamed_addr constant [10 x i8] c"\09has anim\00", align 1
@str.154 = private unnamed_addr constant [13 x i8] c"\09has drivers\00", align 1
@str.155 = private unnamed_addr constant [37 x i8] c"ERROR ipo_to_animdata(): adt invalid\00", align 1
@str.156 = private unnamed_addr constant [35 x i8] c"act_to_adt - set adt action to act\00", align 1
@str.157 = private unnamed_addr constant [15 x i8] c"ipo_to_animato\00", align 1
@switch.table.icu_to_fcurves.158 = private unnamed_addr constant [14 x i16] [i16 1, i16 2, i16 0, i16 0, i16 0, i16 3, i16 4, i16 5, i16 0, i16 0, i16 0, i16 6, i16 6, i16 6], align 2
@switch.table.icu_to_fcurves.159 = private unnamed_addr constant [7 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr null, ptr null, ptr @.str.120, ptr @.str.121], align 8
@switch.table.icu_to_fcurves.160 = private unnamed_addr constant [4 x ptr] [ptr @.str.129, ptr @.str.130, ptr null, ptr @.str.131], align 8
@reltable.icu_to_fcurves = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.icu_to_fcurves to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.icu_to_fcurves to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.icu_to_fcurves to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @BKE_ipo_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Ipo, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1, %27
  %6 = phi i32 [ %9, %27 ], [ 0, %1 ]
  %7 = phi ptr [ %8, %27 ], [ %3, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = add nuw nsw i32 %6, 1
  %10 = getelementptr inbounds %struct.IpoCurve, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %14(ptr noundef nonnull %11) #9
  br label %15

15:                                               ; preds = %13, %5
  %16 = getelementptr inbounds %struct.IpoCurve, ptr %7, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %20(ptr noundef nonnull %17) #9
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.IpoCurve, ptr %7, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %26(ptr noundef nonnull %23) #9
  br label %27

27:                                               ; preds = %25, %21
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %7) #9
  %28 = icmp eq ptr %8, null
  br i1 %28, label %29, label %5, !llvm.loop !51

29:                                               ; preds = %27, %1
  %30 = phi i32 [ 0, %1 ], [ %9, %27 ]
  %31 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %30, ptr noundef nonnull %35)
  br label %37

37:                                               ; preds = %34, %29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @do_versions_ipos_to_animato(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.SeqIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.152)
  br label %693

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !56
  %10 = icmp sgt i16 %9, 249
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = zext nneg i16 %9 to i32
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %12)
  br label %693

14:                                               ; preds = %7
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %20

20:                                               ; preds = %14, %18
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %320, label %24

24:                                               ; preds = %20, %317
  %25 = phi ptr [ %318, %317 ], [ %22, %20 ]
  %26 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4, i64 2
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 107
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  %35 = icmp eq ptr %34, null
  br i1 %35, label %165, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #9
  %38 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !62
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %39, ptr noundef null, ptr noundef null, ptr noundef null)
  %42 = load ptr, ptr %38, align 8, !tbaa !62
  %43 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !63
  %45 = add nsw i32 %44, -1
  store i32 %45, ptr %43, align 4, !tbaa !63
  store ptr null, ptr %38, align 8, !tbaa !62
  br label %46

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 16
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !65
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %51, align 4, !tbaa !65
  store ptr null, ptr %47, align 8, !tbaa !64
  br label %54

54:                                               ; preds = %50, %46
  %55 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %25) #9
  %56 = load ptr, ptr %33, align 8, !tbaa !67
  %57 = icmp eq ptr %56, null
  br i1 %57, label %234, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.AnimData, ptr %55, i64 0, i32 5
  br label %60

60:                                               ; preds = %58, %163
  %61 = phi ptr [ null, %58 ], [ %158, %163 ]
  %62 = phi ptr [ %56, %58 ], [ %63, %163 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !68
  %64 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  %66 = icmp eq ptr %65, null
  br i1 %66, label %157, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.bAction, ptr %65, i64 0, i32 3
  %69 = getelementptr inbounds %struct.bAction, ptr %65, i64 0, i32 1
  tail call fastcc void @action_to_animato(ptr noundef nonnull %25, ptr noundef nonnull %65, ptr noundef nonnull %68, ptr noundef nonnull %69, ptr noundef nonnull %59)
  %70 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %71 = tail call ptr %70(i64 noundef 208, ptr noundef nonnull @.str.23) #9
  %72 = load ptr, ptr %64, align 8, !tbaa !70
  %73 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 3
  store ptr %72, ptr %73, align 8, !tbaa !71
  %74 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 9
  %75 = load float, ptr %74, align 8, !tbaa !73
  %76 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 10
  store float %75, ptr %76, align 8, !tbaa !74
  %77 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 10
  %78 = load float, ptr %77, align 4, !tbaa !75
  %79 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 11
  store float %78, ptr %79, align 4, !tbaa !76
  %80 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 11
  %81 = load float, ptr %80, align 8, !tbaa !77
  %82 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 12
  store float %81, ptr %82, align 8, !tbaa !78
  %83 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 12
  %84 = load float, ptr %83, align 4, !tbaa !79
  %85 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 13
  store float %84, ptr %85, align 4, !tbaa !80
  %86 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 15
  %87 = load float, ptr %86, align 8, !tbaa !81
  %88 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 14
  store float %87, ptr %88, align 8, !tbaa !82
  %89 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 16
  %90 = load float, ptr %89, align 4, !tbaa !83
  %91 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 15
  store float %90, ptr %91, align 4, !tbaa !84
  %92 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 2
  %93 = load i16, ptr %92, align 8, !tbaa !85
  %94 = and i16 %93, 32
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %67
  %97 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 23
  %98 = load i32, ptr %97, align 8, !tbaa !86
  %99 = or i32 %98, 512
  store i32 %99, ptr %97, align 8, !tbaa !86
  br label %100

100:                                              ; preds = %96, %67
  %101 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 17
  %102 = load float, ptr %101, align 8, !tbaa !87
  %103 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 16
  store float %102, ptr %103, align 8, !tbaa !88
  %104 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 18
  %105 = load float, ptr %104, align 4, !tbaa !89
  %106 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 17
  store float %105, ptr %106, align 4, !tbaa !90
  %107 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 3
  %108 = load i16, ptr %107, align 2, !tbaa !91
  %109 = icmp eq i16 %108, 1
  %110 = zext i1 %109 to i16
  %111 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 18
  store i16 %110, ptr %111, align 8, !tbaa !92
  %112 = and i16 %93, 2048
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 23
  %116 = load i32, ptr %115, align 8, !tbaa !86
  %117 = or i32 %116, 1024
  store i32 %117, ptr %115, align 8, !tbaa !86
  br label %118

118:                                              ; preds = %114, %100
  %119 = and i16 %93, 1
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 23
  %123 = load i32, ptr %122, align 8, !tbaa !86
  %124 = or i32 %123, 2
  store i32 %124, ptr %122, align 8, !tbaa !86
  br label %125

125:                                              ; preds = %121, %118
  %126 = and i16 %93, 16
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 23
  %130 = load i32, ptr %129, align 8, !tbaa !86
  %131 = or i32 %130, 1
  store i32 %131, ptr %129, align 8, !tbaa !86
  br label %132

132:                                              ; preds = %128, %125
  %133 = and i16 %93, 64
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 23
  %137 = load i32, ptr %136, align 8, !tbaa !86
  %138 = or i32 %137, 4096
  store i32 %138, ptr %136, align 8, !tbaa !86
  br label %139

139:                                              ; preds = %135, %132
  %140 = and i16 %93, 128
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 23
  %144 = load i32, ptr %143, align 8, !tbaa !86
  %145 = or i32 %144, 2048
  store i32 %145, ptr %143, align 8, !tbaa !86
  br label %146

146:                                              ; preds = %142, %139
  %147 = and i16 %93, 8
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.NlaStrip, ptr %71, i64 0, i32 19
  store i16 2, ptr %150, align 2, !tbaa !93
  br label %151

151:                                              ; preds = %149, %146
  %152 = tail call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %61, ptr noundef %71) #9
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = tail call ptr @add_nlatrack(ptr noundef %55, ptr noundef null) #9
  %156 = tail call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %155, ptr noundef %71) #9
  br label %157

157:                                              ; preds = %154, %151, %60
  %158 = phi ptr [ %155, %154 ], [ %61, %151 ], [ %61, %60 ]
  %159 = getelementptr inbounds %struct.bActionStrip, ptr %62, i64 0, i32 21
  %160 = load ptr, ptr %159, align 8, !tbaa !94
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  tail call void @BLI_freelistN(ptr noundef nonnull %159) #9
  br label %163

163:                                              ; preds = %162, %157
  tail call void @BLI_freelinkN(ptr noundef nonnull %33, ptr noundef nonnull %62) #9
  %164 = icmp eq ptr %63, null
  br i1 %164, label %234, label %60, !llvm.loop !95

165:                                              ; preds = %32
  %166 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 14
  %167 = load ptr, ptr %166, align 8, !tbaa !62
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 16
  %171 = load ptr, ptr %170, align 8, !tbaa !64
  %172 = icmp eq ptr %171, null
  br i1 %172, label %234, label %173

173:                                              ; preds = %169, %165
  %174 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #9
  %175 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 16
  %176 = load ptr, ptr %175, align 8, !tbaa !64
  %177 = icmp eq ptr %176, null
  br i1 %177, label %208, label %178

178:                                              ; preds = %173
  %179 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %25) #9
  %180 = icmp eq ptr %179, null
  br i1 %180, label %200, label %181

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.bAction, ptr %176, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !96
  %184 = icmp eq ptr %183, null
  br i1 %184, label %200, label %185

185:                                              ; preds = %181
  %186 = load ptr, ptr %179, align 8, !tbaa !97
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %195

188:                                              ; preds = %185
  %189 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.156)
  br label %194

194:                                              ; preds = %192, %188
  store ptr %176, ptr %179, align 8, !tbaa !97
  br label %195

195:                                              ; preds = %194, %185
  %196 = load ptr, ptr %179, align 8, !tbaa !97
  %197 = getelementptr inbounds %struct.bAction, ptr %196, i64 0, i32 3
  %198 = getelementptr inbounds %struct.bAction, ptr %196, i64 0, i32 1
  %199 = getelementptr inbounds %struct.AnimData, ptr %179, i64 0, i32 5
  tail call fastcc void @action_to_animato(ptr noundef nonnull %25, ptr noundef nonnull %176, ptr noundef nonnull %197, ptr noundef nonnull %198, ptr noundef nonnull %199)
  br label %200

200:                                              ; preds = %178, %181, %195
  %201 = load ptr, ptr %175, align 8, !tbaa !64
  %202 = load ptr, ptr %174, align 8, !tbaa !97
  %203 = icmp eq ptr %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.ID, ptr %201, i64 0, i32 6
  %206 = load i32, ptr %205, align 4, !tbaa !65
  %207 = add nsw i32 %206, -1
  store i32 %207, ptr %205, align 4, !tbaa !65
  store ptr null, ptr %175, align 8, !tbaa !64
  br label %208

208:                                              ; preds = %200, %204, %173
  %209 = load ptr, ptr %166, align 8, !tbaa !62
  %210 = icmp eq ptr %209, null
  br i1 %210, label %234, label %211

211:                                              ; preds = %208
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %209, ptr noundef null, ptr noundef null, ptr noundef null)
  %212 = load ptr, ptr %166, align 8, !tbaa !62
  %213 = getelementptr inbounds %struct.ID, ptr %212, i64 0, i32 6
  %214 = load i32, ptr %213, align 4, !tbaa !63
  %215 = add nsw i32 %214, -1
  store i32 %215, ptr %213, align 4, !tbaa !63
  store ptr null, ptr %166, align 8, !tbaa !62
  %216 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 94
  %217 = load ptr, ptr %216, align 8, !tbaa !48
  %218 = icmp eq ptr %217, null
  br i1 %218, label %234, label %219

219:                                              ; preds = %211
  %220 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 1
  br label %221

221:                                              ; preds = %219, %231
  %222 = phi ptr [ %217, %219 ], [ %232, %231 ]
  %223 = getelementptr inbounds %struct.bActuator, ptr %222, i64 0, i32 3
  %224 = load i16, ptr %223, align 8, !tbaa !99
  %225 = icmp eq i16 %224, 1
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.bActuator, ptr %222, i64 0, i32 8
  %228 = load ptr, ptr %227, align 8, !tbaa !101
  %229 = load ptr, ptr %220, align 8, !tbaa !102
  %230 = load ptr, ptr %229, align 8, !tbaa !97
  store ptr %230, ptr %228, align 8, !tbaa !103
  store i16 15, ptr %223, align 8, !tbaa !99
  br label %231

231:                                              ; preds = %221, %226
  %232 = load ptr, ptr %222, align 8, !tbaa !48
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %221, !llvm.loop !105

234:                                              ; preds = %163, %231, %54, %211, %208, %169
  %235 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 18
  %236 = load ptr, ptr %235, align 8, !tbaa !106
  %237 = icmp eq ptr %236, null
  br i1 %237, label %267, label %238

238:                                              ; preds = %234
  %239 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #9
  %240 = load ptr, ptr %235, align 8, !tbaa !106
  %241 = load ptr, ptr %240, align 8, !tbaa !48
  %242 = icmp eq ptr %241, null
  br i1 %242, label %267, label %246

243:                                              ; preds = %264, %246
  %244 = load ptr, ptr %247, align 8, !tbaa !48
  %245 = icmp eq ptr %244, null
  br i1 %245, label %267, label %246, !llvm.loop !107

246:                                              ; preds = %238, %243
  %247 = phi ptr [ %244, %243 ], [ %241, %238 ]
  %248 = getelementptr inbounds %struct.bPoseChannel, ptr %247, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !48
  %250 = icmp eq ptr %249, null
  br i1 %250, label %243, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.bPoseChannel, ptr %247, i64 0, i32 4
  br label %253

253:                                              ; preds = %251, %264
  %254 = phi ptr [ %249, %251 ], [ %265, %264 ]
  %255 = getelementptr inbounds %struct.bConstraint, ptr %254, i64 0, i32 11
  %256 = load ptr, ptr %255, align 8, !tbaa !108
  %257 = icmp eq ptr %256, null
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.bConstraint, ptr %254, i64 0, i32 7
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %256, ptr noundef nonnull %252, ptr noundef nonnull %259, ptr noundef null)
  %260 = load ptr, ptr %255, align 8, !tbaa !108
  %261 = getelementptr inbounds %struct.ID, ptr %260, i64 0, i32 6
  %262 = load i32, ptr %261, align 4, !tbaa !63
  %263 = add nsw i32 %262, -1
  store i32 %263, ptr %261, align 4, !tbaa !63
  store ptr null, ptr %255, align 8, !tbaa !108
  br label %264

264:                                              ; preds = %253, %258
  %265 = load ptr, ptr %254, align 8, !tbaa !48
  %266 = icmp eq ptr %265, null
  br i1 %266, label %243, label %253, !llvm.loop !110

267:                                              ; preds = %243, %238, %234
  %268 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 106
  %269 = load ptr, ptr %268, align 8, !tbaa !48
  %270 = icmp eq ptr %269, null
  br i1 %270, label %287, label %271

271:                                              ; preds = %267, %284
  %272 = phi ptr [ %285, %284 ], [ %269, %267 ]
  %273 = getelementptr inbounds %struct.bConstraint, ptr %272, i64 0, i32 11
  %274 = load ptr, ptr %273, align 8, !tbaa !108
  %275 = icmp eq ptr %274, null
  br i1 %275, label %284, label %276

276:                                              ; preds = %271
  %277 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #9
  %278 = load ptr, ptr %273, align 8, !tbaa !108
  %279 = getelementptr inbounds %struct.bConstraint, ptr %272, i64 0, i32 7
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef %278, ptr noundef null, ptr noundef nonnull %279, ptr noundef null)
  %280 = load ptr, ptr %273, align 8, !tbaa !108
  %281 = getelementptr inbounds %struct.ID, ptr %280, i64 0, i32 6
  %282 = load i32, ptr %281, align 4, !tbaa !63
  %283 = add nsw i32 %282, -1
  store i32 %283, ptr %281, align 4, !tbaa !63
  store ptr null, ptr %273, align 8, !tbaa !108
  br label %284

284:                                              ; preds = %271, %276
  %285 = load ptr, ptr %272, align 8, !tbaa !48
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %271, !llvm.loop !111

287:                                              ; preds = %284, %267
  %288 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 23
  %289 = load ptr, ptr %288, align 8, !tbaa !112
  %290 = icmp eq ptr %289, null
  br i1 %290, label %309, label %291

291:                                              ; preds = %287
  %292 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #9
  %293 = load ptr, ptr %288, align 8, !tbaa !112
  %294 = icmp eq ptr %293, null
  br i1 %294, label %309, label %295

295:                                              ; preds = %291, %307
  %296 = phi ptr [ %297, %307 ], [ %293, %291 ]
  %297 = load ptr, ptr %296, align 8, !tbaa !113
  %298 = getelementptr inbounds %struct.bConstraintChannel, ptr %296, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !115
  %300 = icmp eq ptr %299, null
  br i1 %300, label %307, label %301

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.bConstraintChannel, ptr %296, i64 0, i32 4
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %299, ptr noundef null, ptr noundef nonnull %302, ptr noundef null)
  %303 = load ptr, ptr %298, align 8, !tbaa !115
  %304 = getelementptr inbounds %struct.ID, ptr %303, i64 0, i32 6
  %305 = load i32, ptr %304, align 4, !tbaa !63
  %306 = add nsw i32 %305, -1
  store i32 %306, ptr %304, align 4, !tbaa !63
  store ptr null, ptr %298, align 8, !tbaa !115
  br label %307

307:                                              ; preds = %301, %295
  tail call void @BLI_freelinkN(ptr noundef nonnull %288, ptr noundef nonnull %296) #9
  %308 = icmp eq ptr %297, null
  br i1 %308, label %309, label %295, !llvm.loop !116

309:                                              ; preds = %307, %291, %287
  %310 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %25) #9
  %311 = icmp eq ptr %310, null
  br i1 %311, label %317, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr %310, align 8, !tbaa !97
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315

315:                                              ; preds = %312
  %316 = getelementptr inbounds %struct.bAction, ptr %313, i64 0, i32 7
  store i32 16975, ptr %316, align 8, !tbaa !117
  br label %317

317:                                              ; preds = %315, %312, %309
  %318 = load ptr, ptr %25, align 8, !tbaa !48
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %24, !llvm.loop !118

320:                                              ; preds = %317, %20
  %321 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %322 = load ptr, ptr %321, align 8, !tbaa !48
  %323 = icmp eq ptr %322, null
  br i1 %323, label %355, label %324

324:                                              ; preds = %320, %352
  %325 = phi ptr [ %353, %352 ], [ %322, %320 ]
  %326 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %327 = and i32 %326, 1
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.ID, ptr %325, i64 0, i32 4, i64 2
  %331 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %330)
  br label %332

332:                                              ; preds = %329, %324
  %333 = getelementptr inbounds %struct.Key, ptr %325, i64 0, i32 7
  %334 = load ptr, ptr %333, align 8, !tbaa !119
  %335 = icmp eq ptr %334, null
  br i1 %335, label %352, label %336

336:                                              ; preds = %332
  %337 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %325) #9
  %338 = load ptr, ptr %333, align 8, !tbaa !119
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %325, ptr noundef %338, ptr noundef null, ptr noundef null, ptr noundef null)
  %339 = load ptr, ptr %337, align 8, !tbaa !97
  %340 = icmp eq ptr %339, null
  br i1 %340, label %347, label %341

341:                                              ; preds = %336
  %342 = load ptr, ptr %333, align 8, !tbaa !119
  %343 = getelementptr inbounds %struct.Ipo, ptr %342, i64 0, i32 3
  %344 = load i16, ptr %343, align 8, !tbaa !121
  %345 = sext i16 %344 to i32
  %346 = getelementptr inbounds %struct.bAction, ptr %339, i64 0, i32 7
  store i32 %345, ptr %346, align 8, !tbaa !117
  br label %347

347:                                              ; preds = %341, %336
  %348 = load ptr, ptr %333, align 8, !tbaa !119
  %349 = getelementptr inbounds %struct.ID, ptr %348, i64 0, i32 6
  %350 = load i32, ptr %349, align 4, !tbaa !63
  %351 = add nsw i32 %350, -1
  store i32 %351, ptr %349, align 4, !tbaa !63
  store ptr null, ptr %333, align 8, !tbaa !119
  br label %352

352:                                              ; preds = %347, %332
  %353 = load ptr, ptr %325, align 8, !tbaa !48
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %324, !llvm.loop !122

355:                                              ; preds = %352, %320
  %356 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %357 = load ptr, ptr %356, align 8, !tbaa !48
  %358 = icmp eq ptr %357, null
  br i1 %358, label %390, label %359

359:                                              ; preds = %355, %387
  %360 = phi ptr [ %388, %387 ], [ %357, %355 ]
  %361 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %362 = and i32 %361, 1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %367, label %364

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.ID, ptr %360, i64 0, i32 4, i64 2
  %366 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %365)
  br label %367

367:                                              ; preds = %364, %359
  %368 = getelementptr inbounds %struct.Material, ptr %360, i64 0, i32 104
  %369 = load ptr, ptr %368, align 8, !tbaa !123
  %370 = icmp eq ptr %369, null
  br i1 %370, label %387, label %371

371:                                              ; preds = %367
  %372 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %360) #9
  %373 = load ptr, ptr %368, align 8, !tbaa !123
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %360, ptr noundef %373, ptr noundef null, ptr noundef null, ptr noundef null)
  %374 = load ptr, ptr %372, align 8, !tbaa !97
  %375 = icmp eq ptr %374, null
  br i1 %375, label %382, label %376

376:                                              ; preds = %371
  %377 = load ptr, ptr %368, align 8, !tbaa !123
  %378 = getelementptr inbounds %struct.Ipo, ptr %377, i64 0, i32 3
  %379 = load i16, ptr %378, align 8, !tbaa !121
  %380 = sext i16 %379 to i32
  %381 = getelementptr inbounds %struct.bAction, ptr %374, i64 0, i32 7
  store i32 %380, ptr %381, align 8, !tbaa !117
  br label %382

382:                                              ; preds = %376, %371
  %383 = load ptr, ptr %368, align 8, !tbaa !123
  %384 = getelementptr inbounds %struct.ID, ptr %383, i64 0, i32 6
  %385 = load i32, ptr %384, align 4, !tbaa !63
  %386 = add nsw i32 %385, -1
  store i32 %386, ptr %384, align 4, !tbaa !63
  store ptr null, ptr %368, align 8, !tbaa !123
  br label %387

387:                                              ; preds = %382, %367
  %388 = load ptr, ptr %360, align 8, !tbaa !48
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %359, !llvm.loop !127

390:                                              ; preds = %387, %355
  %391 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %392 = load ptr, ptr %391, align 8, !tbaa !48
  %393 = icmp eq ptr %392, null
  br i1 %393, label %425, label %394

394:                                              ; preds = %390, %422
  %395 = phi ptr [ %423, %422 ], [ %392, %390 ]
  %396 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %397 = and i32 %396, 1
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %394
  %400 = getelementptr inbounds %struct.ID, ptr %395, i64 0, i32 4, i64 2
  %401 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %400)
  br label %402

402:                                              ; preds = %399, %394
  %403 = getelementptr inbounds %struct.World, ptr %395, i64 0, i32 69
  %404 = load ptr, ptr %403, align 8, !tbaa !128
  %405 = icmp eq ptr %404, null
  br i1 %405, label %422, label %406

406:                                              ; preds = %402
  %407 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %395) #9
  %408 = load ptr, ptr %403, align 8, !tbaa !128
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %395, ptr noundef %408, ptr noundef null, ptr noundef null, ptr noundef null)
  %409 = load ptr, ptr %407, align 8, !tbaa !97
  %410 = icmp eq ptr %409, null
  br i1 %410, label %417, label %411

411:                                              ; preds = %406
  %412 = load ptr, ptr %403, align 8, !tbaa !128
  %413 = getelementptr inbounds %struct.Ipo, ptr %412, i64 0, i32 3
  %414 = load i16, ptr %413, align 8, !tbaa !121
  %415 = sext i16 %414 to i32
  %416 = getelementptr inbounds %struct.bAction, ptr %409, i64 0, i32 7
  store i32 %415, ptr %416, align 8, !tbaa !117
  br label %417

417:                                              ; preds = %411, %406
  %418 = load ptr, ptr %403, align 8, !tbaa !128
  %419 = getelementptr inbounds %struct.ID, ptr %418, i64 0, i32 6
  %420 = load i32, ptr %419, align 4, !tbaa !63
  %421 = add nsw i32 %420, -1
  store i32 %421, ptr %419, align 4, !tbaa !63
  store ptr null, ptr %403, align 8, !tbaa !128
  br label %422

422:                                              ; preds = %417, %402
  %423 = load ptr, ptr %395, align 8, !tbaa !48
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %394, !llvm.loop !130

425:                                              ; preds = %422, %390
  %426 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %427 = load ptr, ptr %426, align 8, !tbaa !48
  %428 = icmp eq ptr %427, null
  br i1 %428, label %493, label %429

429:                                              ; preds = %425
  %430 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %431 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %432

432:                                              ; preds = %429, %490
  %433 = phi ptr [ %427, %429 ], [ %491, %490 ]
  %434 = getelementptr inbounds %struct.Scene, ptr %433, i64 0, i32 19
  %435 = load ptr, ptr %434, align 8, !tbaa !131
  %436 = icmp eq ptr %435, null
  br i1 %436, label %490, label %437

437:                                              ; preds = %432
  %438 = load ptr, ptr %435, align 8, !tbaa !149
  %439 = icmp eq ptr %438, null
  br i1 %439, label %490, label %440

440:                                              ; preds = %437
  %441 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %433) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %435, ptr noundef nonnull %3, i8 noundef zeroext 0) #9
  %442 = load i32, ptr %430, align 8, !tbaa !151
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %489, label %444

444:                                              ; preds = %440, %486
  %445 = load ptr, ptr %431, align 8, !tbaa !153
  %446 = getelementptr inbounds %struct.Sequence, ptr %445, i64 0, i32 25
  %447 = load ptr, ptr %446, align 8, !tbaa !154
  %448 = icmp eq ptr %447, null
  br i1 %448, label %452, label %449

449:                                              ; preds = %444
  %450 = getelementptr inbounds %struct.Ipo, ptr %447, i64 0, i32 1
  %451 = load ptr, ptr %450, align 8, !tbaa !34
  br label %452

452:                                              ; preds = %444, %449
  %453 = phi ptr [ %451, %449 ], [ null, %444 ]
  %454 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %455 = and i32 %454, 1
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %460, label %457

457:                                              ; preds = %452
  %458 = getelementptr inbounds %struct.Sequence, ptr %445, i64 0, i32 4, i64 2
  %459 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %458)
  br label %460

460:                                              ; preds = %457, %452
  %461 = load ptr, ptr %446, align 8, !tbaa !154
  %462 = icmp eq ptr %461, null
  %463 = icmp eq ptr %453, null
  %464 = select i1 %462, i1 true, i1 %463
  br i1 %464, label %465, label %469

465:                                              ; preds = %460
  %466 = getelementptr inbounds %struct.Sequence, ptr %445, i64 0, i32 5
  %467 = load i32, ptr %466, align 8, !tbaa !156
  %468 = or i32 %467, 4194304
  store i32 %468, ptr %466, align 8, !tbaa !156
  br label %486

469:                                              ; preds = %460
  %470 = getelementptr inbounds %struct.Sequence, ptr %445, i64 0, i32 6
  %471 = load i32, ptr %470, align 4, !tbaa !157
  switch i32 %471, label %474 [
    i32 0, label %472
    i32 1, label %472
    i32 2, label %472
    i32 3, label %472
    i32 28, label %472
    i32 29, label %473
  ]

472:                                              ; preds = %469, %469, %469, %469, %469
  br label %474

473:                                              ; preds = %469
  br label %474

474:                                              ; preds = %469, %473, %472
  %475 = phi i16 [ 1, %469 ], [ 2, %473 ], [ 3, %472 ]
  %476 = getelementptr inbounds %struct.IpoCurve, ptr %453, i64 0, i32 7
  store i16 %475, ptr %476, align 2, !tbaa !158
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %433, ptr noundef %461, ptr noundef null, ptr noundef null, ptr noundef %445)
  %477 = load ptr, ptr %441, align 8, !tbaa !97
  %478 = icmp eq ptr %477, null
  br i1 %478, label %481, label %479

479:                                              ; preds = %474
  %480 = getelementptr inbounds %struct.bAction, ptr %477, i64 0, i32 7
  store i32 17235, ptr %480, align 8, !tbaa !117
  br label %481

481:                                              ; preds = %479, %474
  %482 = load ptr, ptr %446, align 8, !tbaa !154
  %483 = getelementptr inbounds %struct.ID, ptr %482, i64 0, i32 6
  %484 = load i32, ptr %483, align 4, !tbaa !63
  %485 = add nsw i32 %484, -1
  store i32 %485, ptr %483, align 4, !tbaa !63
  store ptr null, ptr %446, align 8, !tbaa !154
  br label %486

486:                                              ; preds = %481, %465
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #9
  %487 = load i32, ptr %430, align 8, !tbaa !151
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %444, !llvm.loop !159

489:                                              ; preds = %486, %440
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %490

490:                                              ; preds = %489, %437, %432
  %491 = load ptr, ptr %433, align 8, !tbaa !48
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %432, !llvm.loop !160

493:                                              ; preds = %490, %425
  %494 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %495 = load ptr, ptr %494, align 8, !tbaa !48
  %496 = icmp eq ptr %495, null
  br i1 %496, label %528, label %497

497:                                              ; preds = %493, %525
  %498 = phi ptr [ %526, %525 ], [ %495, %493 ]
  %499 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %500 = and i32 %499, 1
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %497
  %503 = getelementptr inbounds %struct.ID, ptr %498, i64 0, i32 4, i64 2
  %504 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %503)
  br label %505

505:                                              ; preds = %502, %497
  %506 = getelementptr inbounds %struct.Tex, ptr %498, i64 0, i32 53
  %507 = load ptr, ptr %506, align 8, !tbaa !161
  %508 = icmp eq ptr %507, null
  br i1 %508, label %525, label %509

509:                                              ; preds = %505
  %510 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %498) #9
  %511 = load ptr, ptr %506, align 8, !tbaa !161
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %498, ptr noundef %511, ptr noundef null, ptr noundef null, ptr noundef null)
  %512 = load ptr, ptr %510, align 8, !tbaa !97
  %513 = icmp eq ptr %512, null
  br i1 %513, label %520, label %514

514:                                              ; preds = %509
  %515 = load ptr, ptr %506, align 8, !tbaa !161
  %516 = getelementptr inbounds %struct.Ipo, ptr %515, i64 0, i32 3
  %517 = load i16, ptr %516, align 8, !tbaa !121
  %518 = sext i16 %517 to i32
  %519 = getelementptr inbounds %struct.bAction, ptr %512, i64 0, i32 7
  store i32 %518, ptr %519, align 8, !tbaa !117
  br label %520

520:                                              ; preds = %514, %509
  %521 = load ptr, ptr %506, align 8, !tbaa !161
  %522 = getelementptr inbounds %struct.ID, ptr %521, i64 0, i32 6
  %523 = load i32, ptr %522, align 4, !tbaa !63
  %524 = add nsw i32 %523, -1
  store i32 %524, ptr %522, align 4, !tbaa !63
  store ptr null, ptr %506, align 8, !tbaa !161
  br label %525

525:                                              ; preds = %520, %505
  %526 = load ptr, ptr %498, align 8, !tbaa !48
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %497, !llvm.loop !164

528:                                              ; preds = %525, %493
  %529 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %530 = load ptr, ptr %529, align 8, !tbaa !48
  %531 = icmp eq ptr %530, null
  br i1 %531, label %563, label %532

532:                                              ; preds = %528, %560
  %533 = phi ptr [ %561, %560 ], [ %530, %528 ]
  %534 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %535 = and i32 %534, 1
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %540, label %537

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.ID, ptr %533, i64 0, i32 4, i64 2
  %539 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %538)
  br label %540

540:                                              ; preds = %537, %532
  %541 = getelementptr inbounds %struct.Camera, ptr %533, i64 0, i32 16
  %542 = load ptr, ptr %541, align 8, !tbaa !165
  %543 = icmp eq ptr %542, null
  br i1 %543, label %560, label %544

544:                                              ; preds = %540
  %545 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %533) #9
  %546 = load ptr, ptr %541, align 8, !tbaa !165
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %533, ptr noundef %546, ptr noundef null, ptr noundef null, ptr noundef null)
  %547 = load ptr, ptr %545, align 8, !tbaa !97
  %548 = icmp eq ptr %547, null
  br i1 %548, label %555, label %549

549:                                              ; preds = %544
  %550 = load ptr, ptr %541, align 8, !tbaa !165
  %551 = getelementptr inbounds %struct.Ipo, ptr %550, i64 0, i32 3
  %552 = load i16, ptr %551, align 8, !tbaa !121
  %553 = sext i16 %552 to i32
  %554 = getelementptr inbounds %struct.bAction, ptr %547, i64 0, i32 7
  store i32 %553, ptr %554, align 8, !tbaa !117
  br label %555

555:                                              ; preds = %549, %544
  %556 = load ptr, ptr %541, align 8, !tbaa !165
  %557 = getelementptr inbounds %struct.ID, ptr %556, i64 0, i32 6
  %558 = load i32, ptr %557, align 4, !tbaa !63
  %559 = add nsw i32 %558, -1
  store i32 %559, ptr %557, align 4, !tbaa !63
  store ptr null, ptr %541, align 8, !tbaa !165
  br label %560

560:                                              ; preds = %555, %540
  %561 = load ptr, ptr %533, align 8, !tbaa !48
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %532, !llvm.loop !167

563:                                              ; preds = %560, %528
  %564 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %565 = load ptr, ptr %564, align 8, !tbaa !48
  %566 = icmp eq ptr %565, null
  br i1 %566, label %598, label %567

567:                                              ; preds = %563, %595
  %568 = phi ptr [ %596, %595 ], [ %565, %563 ]
  %569 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %570 = and i32 %569, 1
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %575, label %572

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.ID, ptr %568, i64 0, i32 4, i64 2
  %574 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %573)
  br label %575

575:                                              ; preds = %572, %567
  %576 = getelementptr inbounds %struct.Lamp, ptr %568, i64 0, i32 68
  %577 = load ptr, ptr %576, align 8, !tbaa !168
  %578 = icmp eq ptr %577, null
  br i1 %578, label %595, label %579

579:                                              ; preds = %575
  %580 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %568) #9
  %581 = load ptr, ptr %576, align 8, !tbaa !168
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %568, ptr noundef %581, ptr noundef null, ptr noundef null, ptr noundef null)
  %582 = load ptr, ptr %580, align 8, !tbaa !97
  %583 = icmp eq ptr %582, null
  br i1 %583, label %590, label %584

584:                                              ; preds = %579
  %585 = load ptr, ptr %576, align 8, !tbaa !168
  %586 = getelementptr inbounds %struct.Ipo, ptr %585, i64 0, i32 3
  %587 = load i16, ptr %586, align 8, !tbaa !121
  %588 = sext i16 %587 to i32
  %589 = getelementptr inbounds %struct.bAction, ptr %582, i64 0, i32 7
  store i32 %588, ptr %589, align 8, !tbaa !117
  br label %590

590:                                              ; preds = %584, %579
  %591 = load ptr, ptr %576, align 8, !tbaa !168
  %592 = getelementptr inbounds %struct.ID, ptr %591, i64 0, i32 6
  %593 = load i32, ptr %592, align 4, !tbaa !63
  %594 = add nsw i32 %593, -1
  store i32 %594, ptr %592, align 4, !tbaa !63
  store ptr null, ptr %576, align 8, !tbaa !168
  br label %595

595:                                              ; preds = %590, %575
  %596 = load ptr, ptr %568, align 8, !tbaa !48
  %597 = icmp eq ptr %596, null
  br i1 %597, label %598, label %567, !llvm.loop !170

598:                                              ; preds = %595, %563
  %599 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %600 = load ptr, ptr %599, align 8, !tbaa !48
  %601 = icmp eq ptr %600, null
  br i1 %601, label %633, label %602

602:                                              ; preds = %598, %630
  %603 = phi ptr [ %631, %630 ], [ %600, %598 ]
  %604 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %605 = and i32 %604, 1
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %610, label %607

607:                                              ; preds = %602
  %608 = getelementptr inbounds %struct.ID, ptr %603, i64 0, i32 4, i64 2
  %609 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %608)
  br label %610

610:                                              ; preds = %607, %602
  %611 = getelementptr inbounds %struct.Curve, ptr %603, i64 0, i32 8
  %612 = load ptr, ptr %611, align 8, !tbaa !171
  %613 = icmp eq ptr %612, null
  br i1 %613, label %630, label %614

614:                                              ; preds = %610
  %615 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %603) #9
  %616 = load ptr, ptr %611, align 8, !tbaa !171
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %603, ptr noundef %616, ptr noundef null, ptr noundef null, ptr noundef null)
  %617 = load ptr, ptr %615, align 8, !tbaa !97
  %618 = icmp eq ptr %617, null
  br i1 %618, label %625, label %619

619:                                              ; preds = %614
  %620 = load ptr, ptr %611, align 8, !tbaa !171
  %621 = getelementptr inbounds %struct.Ipo, ptr %620, i64 0, i32 3
  %622 = load i16, ptr %621, align 8, !tbaa !121
  %623 = sext i16 %622 to i32
  %624 = getelementptr inbounds %struct.bAction, ptr %617, i64 0, i32 7
  store i32 %623, ptr %624, align 8, !tbaa !117
  br label %625

625:                                              ; preds = %619, %614
  %626 = load ptr, ptr %611, align 8, !tbaa !171
  %627 = getelementptr inbounds %struct.ID, ptr %626, i64 0, i32 6
  %628 = load i32, ptr %627, align 4, !tbaa !63
  %629 = add nsw i32 %628, -1
  store i32 %629, ptr %627, align 4, !tbaa !63
  store ptr null, ptr %611, align 8, !tbaa !171
  br label %630

630:                                              ; preds = %625, %610
  %631 = load ptr, ptr %603, align 8, !tbaa !48
  %632 = icmp eq ptr %631, null
  br i1 %632, label %633, label %602, !llvm.loop !174

633:                                              ; preds = %630, %598
  %634 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  %635 = load ptr, ptr %634, align 8, !tbaa !48
  %636 = icmp eq ptr %635, null
  br i1 %636, label %656, label %637

637:                                              ; preds = %633, %651
  %638 = phi ptr [ %654, %651 ], [ %635, %633 ]
  %639 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %640 = and i32 %639, 1
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %645, label %642

642:                                              ; preds = %637
  %643 = getelementptr inbounds %struct.ID, ptr %638, i64 0, i32 4, i64 2
  %644 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %643)
  br label %645

645:                                              ; preds = %642, %637
  %646 = getelementptr inbounds %struct.bAction, ptr %638, i64 0, i32 2
  %647 = load ptr, ptr %646, align 8, !tbaa !96
  %648 = icmp eq ptr %647, null
  br i1 %648, label %651, label %649

649:                                              ; preds = %645
  %650 = getelementptr inbounds %struct.bAction, ptr %638, i64 0, i32 7
  store i32 16975, ptr %650, align 8, !tbaa !117
  br label %651

651:                                              ; preds = %649, %645
  %652 = getelementptr inbounds %struct.bAction, ptr %638, i64 0, i32 3
  %653 = getelementptr inbounds %struct.bAction, ptr %638, i64 0, i32 1
  call fastcc void @action_to_animato(ptr noundef null, ptr noundef nonnull %638, ptr noundef nonnull %652, ptr noundef nonnull %653, ptr noundef nonnull %2)
  %654 = load ptr, ptr %638, align 8, !tbaa !48
  %655 = icmp eq ptr %654, null
  br i1 %655, label %656, label %637, !llvm.loop !175

656:                                              ; preds = %651, %633
  %657 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 23
  %658 = load ptr, ptr %657, align 8, !tbaa !48
  %659 = icmp eq ptr %658, null
  br i1 %659, label %687, label %660

660:                                              ; preds = %656, %680
  %661 = phi ptr [ %685, %680 ], [ %658, %656 ]
  %662 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %663 = and i32 %662, 1
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %668, label %665

665:                                              ; preds = %660
  %666 = getelementptr inbounds %struct.ID, ptr %661, i64 0, i32 4, i64 2
  %667 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %666)
  br label %668

668:                                              ; preds = %665, %660
  %669 = getelementptr inbounds %struct.Ipo, ptr %661, i64 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !34
  %671 = icmp eq ptr %670, null
  br i1 %671, label %680, label %672

672:                                              ; preds = %668
  %673 = getelementptr inbounds %struct.ID, ptr %661, i64 0, i32 4, i64 2
  %674 = call ptr @add_empty_action(ptr noundef nonnull %0, ptr noundef nonnull %673) #9
  %675 = getelementptr inbounds %struct.bAction, ptr %674, i64 0, i32 1
  call fastcc void @ipo_to_animato(ptr noundef null, ptr noundef nonnull %661, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %675, ptr noundef nonnull %2)
  %676 = getelementptr inbounds %struct.Ipo, ptr %661, i64 0, i32 3
  %677 = load i16, ptr %676, align 8, !tbaa !121
  %678 = sext i16 %677 to i32
  %679 = getelementptr inbounds %struct.bAction, ptr %674, i64 0, i32 7
  store i32 %678, ptr %679, align 8, !tbaa !117
  br label %680

680:                                              ; preds = %672, %668
  %681 = getelementptr inbounds %struct.ID, ptr %661, i64 0, i32 6
  store i32 0, ptr %681, align 4, !tbaa !63
  %682 = getelementptr inbounds %struct.ID, ptr %661, i64 0, i32 5
  %683 = load i16, ptr %682, align 2, !tbaa !176
  %684 = and i16 %683, -513
  store i16 %684, ptr %682, align 2, !tbaa !176
  %685 = load ptr, ptr %661, align 8, !tbaa !48
  %686 = icmp eq ptr %685, null
  br i1 %686, label %687, label %660, !llvm.loop !177

687:                                              ; preds = %680, %656
  call void @free_fcurves(ptr noundef nonnull %2) #9
  %688 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %689 = and i32 %688, 1
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %693, label %691

691:                                              ; preds = %687
  %692 = call i32 @puts(ptr nonnull dereferenceable(1) @str.151)
  br label %693

693:                                              ; preds = %687, %691, %11, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipo_to_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca [66 x i8], align 16
  %9 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %10 = icmp eq ptr %1, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %5
  %12 = icmp eq ptr %9, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.155)
  br label %69

15:                                               ; preds = %11
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %21 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %22 = icmp eq ptr %2, null
  %23 = select i1 %22, ptr @.str.18, ptr %2
  %24 = icmp eq ptr %3, null
  %25 = select i1 %24, ptr @.str.18, ptr %3
  %26 = icmp eq ptr %4, null
  %27 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 4, i64 2
  %28 = select i1 %26, ptr @.str.18, ptr %27
  %29 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 1
  %30 = tail call i32 @BLI_countlist(ptr noundef nonnull %29) #9
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %23, ptr noundef nonnull %25, ptr noundef nonnull %28, i32 noundef %30)
  br label %32

32:                                               ; preds = %19, %15
  call fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %33 = load ptr, ptr %6, align 8, !tbaa !67
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @puts(ptr nonnull dereferenceable(1) @str.153)
  br label %41

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr %9, align 8, !tbaa !97
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %8) #9
  %45 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %46 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 66, ptr noundef nonnull @.str.20, ptr noundef nonnull %45) #9
  %47 = load ptr, ptr @G, align 8, !tbaa !178
  %48 = call ptr @add_empty_action(ptr noundef %47, ptr noundef nonnull %8) #9
  store ptr %48, ptr %9, align 8, !tbaa !97
  %49 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %8)
  br label %54

54:                                               ; preds = %52, %44
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %8) #9
  br label %55

55:                                               ; preds = %54, %41
  %56 = load ptr, ptr %9, align 8, !tbaa !97
  %57 = getelementptr inbounds %struct.bAction, ptr %56, i64 0, i32 1
  call void @BLI_movelisttolist(ptr noundef nonnull %57, ptr noundef nonnull %6) #9
  br label %58

58:                                               ; preds = %55, %32
  %59 = load ptr, ptr %7, align 8, !tbaa !67
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 @puts(ptr nonnull dereferenceable(1) @str.154)
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.AnimData, ptr %9, i64 0, i32 5
  call void @BLI_movelisttolist(ptr noundef nonnull %68, ptr noundef nonnull %7) #9
  br label %69

69:                                               ; preds = %58, %67, %5, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret void
}

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @action_to_animato(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !179
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #9
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %6, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %14, %49
  %18 = phi ptr [ %19, %49 ], [ %15, %14 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !180
  %20 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !182
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 6
  tail call fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %25 = load ptr, ptr %20, align 8, !tbaa !182
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !63
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !63
  store ptr null, ptr %20, align 8, !tbaa !182
  br label %29

29:                                               ; preds = %23, %17
  %30 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !183
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 6
  br label %35

35:                                               ; preds = %33, %47
  %36 = phi ptr [ %31, %33 ], [ %37, %47 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = getelementptr inbounds %struct.bConstraintChannel, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !115
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.bConstraintChannel, ptr %36, i64 0, i32 4
  tail call fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef nonnull %39, ptr noundef nonnull %34, ptr noundef nonnull %42, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %43 = load ptr, ptr %38, align 8, !tbaa !115
  %44 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !63
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %44, align 4, !tbaa !63
  store ptr null, ptr %38, align 8, !tbaa !115
  br label %47

47:                                               ; preds = %41, %35
  tail call void @BLI_freelinkN(ptr noundef nonnull %30, ptr noundef nonnull %36) #9
  %48 = icmp eq ptr %37, null
  br i1 %48, label %49, label %35, !llvm.loop !184

49:                                               ; preds = %47, %29
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %18) #9
  %50 = icmp eq ptr %19, null
  br i1 %50, label %51, label %17, !llvm.loop !185

51:                                               ; preds = %49, %14, %5
  ret void
}

declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  %10 = icmp eq ptr %7, null
  %11 = or i1 %9, %10
  br i1 %11, label %100, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.157)
  br label %18

18:                                               ; preds = %16, %12
  %19 = icmp eq ptr %2, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !121
  %23 = icmp ne i16 %22, 16975
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.26) #10
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %23, %26
  %28 = select i1 %26, ptr null, ptr %2
  br i1 %27, label %33, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.27) #10
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr null, ptr %2
  br label %33

33:                                               ; preds = %20, %24, %29, %18
  %34 = phi ptr [ %32, %29 ], [ null, %18 ], [ %28, %24 ], [ %2, %20 ]
  %35 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 5
  %40 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 5
  br label %41

41:                                               ; preds = %38, %61
  %42 = phi ptr [ %36, %38 ], [ %62, %61 ]
  %43 = getelementptr inbounds %struct.IpoCurve, ptr %42, i64 0, i32 20
  %44 = load ptr, ptr %43, align 8, !tbaa !50
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %44, align 8, !tbaa !186
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.IpoDriver, ptr %44, i64 0, i32 3
  %51 = load i16, ptr %50, align 4, !tbaa !188
  %52 = icmp eq i16 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %46
  %54 = load i16, ptr %39, align 4, !tbaa !189
  %55 = sext i16 %54 to i32
  tail call fastcc void @icu_to_fcurves(ptr noundef %0, ptr noundef null, ptr noundef %7, ptr noundef nonnull %42, ptr noundef %34, ptr noundef %3, ptr noundef %4, i32 noundef %55)
  br label %61

56:                                               ; preds = %49
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %57(ptr noundef nonnull %44) #9
  store ptr null, ptr %43, align 8, !tbaa !50
  br label %61

58:                                               ; preds = %41
  %59 = load i16, ptr %40, align 4, !tbaa !189
  %60 = sext i16 %59 to i32
  tail call fastcc void @icu_to_fcurves(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %42, ptr noundef %34, ptr noundef %3, ptr noundef %4, i32 noundef %60)
  br label %61

61:                                               ; preds = %58, %56, %53
  %62 = load ptr, ptr %42, align 8, !tbaa !48
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %41, !llvm.loop !190

64:                                               ; preds = %61, %33
  %65 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  %66 = load i32, ptr %65, align 4, !tbaa !63
  %67 = add nsw i32 %66, -1
  store i32 %67, ptr %65, align 4, !tbaa !63
  %68 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %69 = load i16, ptr %68, align 2, !tbaa !191
  %70 = lshr i16 %69, 9
  %71 = and i16 %70, 1
  %72 = zext nneg i16 %71 to i32
  %73 = icmp sgt i32 %67, %72
  br i1 %73, label %100, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %35, align 8, !tbaa !34
  %76 = icmp eq ptr %75, null
  br i1 %76, label %100, label %77

77:                                               ; preds = %74, %98
  %78 = phi ptr [ %79, %98 ], [ %75, %74 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !45
  %80 = getelementptr inbounds %struct.IpoCurve, ptr %78, i64 0, i32 20
  %81 = load ptr, ptr %80, align 8, !tbaa !50
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %84(ptr noundef nonnull %81) #9
  br label %85

85:                                               ; preds = %83, %77
  %86 = getelementptr inbounds %struct.IpoCurve, ptr %78, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %90(ptr noundef nonnull %87) #9
  br label %91

91:                                               ; preds = %89, %85
  %92 = getelementptr inbounds %struct.IpoCurve, ptr %78, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !49
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %97 = load ptr, ptr %86, align 8, !tbaa !47
  tail call void %96(ptr noundef %97) #9
  br label %98

98:                                               ; preds = %95, %91
  tail call void @BLI_freelinkN(ptr noundef nonnull %35, ptr noundef nonnull %78) #9
  %99 = icmp eq ptr %79, null
  br i1 %99, label %100, label %77, !llvm.loop !192

100:                                              ; preds = %98, %74, %64, %8
  ret void
}

declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @icu_to_fcurves(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [512 x i8], align 16
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %11 = tail call ptr %10(i64 noundef 112, ptr noundef nonnull @.str.28) #9
  %12 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %97, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %17 = tail call ptr %16(i64 noundef 296, ptr noundef nonnull @.str.32) #9
  %18 = getelementptr inbounds %struct.IpoDriver, ptr %13, i64 0, i32 3
  %19 = load i16, ptr %18, align 4, !tbaa !188
  %20 = icmp eq i16 %19, 1
  %21 = getelementptr inbounds %struct.ChannelDriver, ptr %17, i64 0, i32 5
  br i1 %20, label %22, label %29

22:                                               ; preds = %15
  store i32 1, ptr %21, align 8, !tbaa !193
  %23 = getelementptr inbounds %struct.IpoDriver, ptr %13, i64 0, i32 5
  %24 = load i8, ptr %23, align 8, !tbaa !195
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %95, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ChannelDriver, ptr %17, i64 0, i32 1
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef nonnull %23, i64 noundef 256) #9
  br label %95

29:                                               ; preds = %15
  store i32 0, ptr %21, align 8, !tbaa !193
  %30 = getelementptr inbounds %struct.IpoDriver, ptr %13, i64 0, i32 1
  %31 = load i16, ptr %30, align 8, !tbaa !196
  %32 = icmp eq i16 %31, 21057
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.IpoDriver, ptr %13, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !197
  %36 = icmp eq i16 %35, 100
  %37 = tail call ptr @driver_add_new_variable(ptr noundef %17) #9
  %38 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3
  %39 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 0, i32 5
  %40 = getelementptr inbounds %struct.IpoDriver, ptr %13, i64 0, i32 5
  br i1 %36, label %41, label %58

41:                                               ; preds = %33
  tail call void @driver_change_variable_type(ptr noundef %37, i32 noundef 1) #9
  %42 = load ptr, ptr %13, align 8, !tbaa !186
  store ptr %42, ptr %38, align 8, !tbaa !198
  store i32 16975, ptr %39, align 4, !tbaa !200
  %43 = load i8, ptr %40, align 8, !tbaa !195
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 0, i32 2
  %47 = tail call ptr @BLI_strncpy(ptr noundef nonnull %46, ptr noundef nonnull %40, i64 noundef 32) #9
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 1
  %50 = load ptr, ptr %13, align 8, !tbaa !186
  store ptr %50, ptr %49, align 8, !tbaa !198
  %51 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 1, i32 5
  store i32 16975, ptr %51, align 4, !tbaa !200
  %52 = load i8, ptr %40, align 8, !tbaa !195
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %95, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 1, i32 2
  %56 = getelementptr inbounds %struct.IpoDriver, ptr %13, i64 0, i32 5, i64 32
  %57 = tail call ptr @BLI_strncpy(ptr noundef nonnull %55, ptr noundef nonnull %56, i64 noundef 32) #9
  br label %95

58:                                               ; preds = %33
  tail call void @driver_change_variable_type(ptr noundef %37, i32 noundef 3) #9
  %59 = load ptr, ptr %13, align 8, !tbaa !186
  store ptr %59, ptr %38, align 8, !tbaa !198
  store i32 16975, ptr %39, align 4, !tbaa !200
  %60 = load i8, ptr %40, align 8, !tbaa !195
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 0, i32 2
  %64 = tail call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull %40, i64 noundef 32) #9
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i16, ptr %34, align 2, !tbaa !197
  %67 = add i16 %66, -2
  %68 = icmp ult i16 %67, 14
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = zext nneg i16 %67 to i64
  %71 = getelementptr inbounds [14 x i16], ptr @switch.table.icu_to_fcurves.158, i64 0, i64 %70
  %72 = load i16, ptr %71, align 2
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i16 [ 0, %65 ], [ %72, %69 ]
  %75 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 0, i32 3
  store i16 %74, ptr %75, align 8, !tbaa !201
  %76 = getelementptr inbounds %struct.DriverVar, ptr %37, i64 0, i32 3, i64 0, i32 4
  %77 = load i16, ptr %76, align 2, !tbaa !202
  %78 = or i16 %77, 4
  store i16 %78, ptr %76, align 2, !tbaa !202
  br label %95

79:                                               ; preds = %29
  %80 = tail call ptr @driver_add_new_variable(ptr noundef %17) #9
  tail call void @driver_change_variable_type(ptr noundef %80, i32 noundef 3) #9
  %81 = getelementptr inbounds %struct.DriverVar, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %13, align 8, !tbaa !186
  store ptr %82, ptr %81, align 8, !tbaa !198
  %83 = getelementptr inbounds %struct.DriverVar, ptr %80, i64 0, i32 3, i64 0, i32 5
  store i32 16975, ptr %83, align 4, !tbaa !200
  %84 = getelementptr inbounds %struct.IpoDriver, ptr %13, i64 0, i32 2
  %85 = load i16, ptr %84, align 2, !tbaa !197
  %86 = add i16 %85, -2
  %87 = icmp ult i16 %86, 14
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = zext nneg i16 %86 to i64
  %90 = getelementptr inbounds [14 x i16], ptr @switch.table.icu_to_fcurves.158, i64 0, i64 %89
  %91 = load i16, ptr %90, align 2
  br label %92

92:                                               ; preds = %88, %79
  %93 = phi i16 [ 0, %79 ], [ %91, %88 ]
  %94 = getelementptr inbounds %struct.DriverVar, ptr %80, i64 0, i32 3, i64 0, i32 3
  store i16 %93, ptr %94, align 8, !tbaa !201
  br label %95

95:                                               ; preds = %22, %26, %48, %54, %73, %92
  %96 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 3
  store ptr %17, ptr %96, align 8, !tbaa !203
  br label %97

97:                                               ; preds = %95, %8
  %98 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 12
  %99 = load i16, ptr %98, align 4, !tbaa !205
  %100 = and i16 %99, 1
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %104 = load i16, ptr %103, align 8, !tbaa !206
  %105 = or i16 %104, 1
  store i16 %105, ptr %103, align 8, !tbaa !206
  br label %106

106:                                              ; preds = %102, %97
  %107 = and i16 %99, 2
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %111 = load i16, ptr %110, align 8, !tbaa !206
  %112 = or i16 %111, 2
  store i16 %112, ptr %110, align 8, !tbaa !206
  br label %113

113:                                              ; preds = %109, %106
  %114 = and i16 %99, 32
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %118 = load i16, ptr %117, align 8, !tbaa !206
  %119 = or i16 %118, 4
  store i16 %119, ptr %117, align 8, !tbaa !206
  br label %120

120:                                              ; preds = %116, %113
  %121 = and i16 %99, 128
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %125 = load i16, ptr %124, align 8, !tbaa !206
  %126 = or i16 %125, 16
  store i16 %126, ptr %124, align 8, !tbaa !206
  br label %127

127:                                              ; preds = %123, %120
  %128 = and i16 %99, 64
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %132 = load i16, ptr %131, align 8, !tbaa !206
  %133 = or i16 %132, 8
  store i16 %133, ptr %131, align 8, !tbaa !206
  br label %134

134:                                              ; preds = %130, %127
  %135 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 11
  %136 = load i16, ptr %135, align 2, !tbaa !207
  switch i16 %136, label %148 [
    i16 0, label %137
    i16 1, label %137
    i16 2, label %139
    i16 3, label %139
  ]

137:                                              ; preds = %134, %134
  %138 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 10
  store i16 %136, ptr %138, align 2, !tbaa !208
  br label %148

139:                                              ; preds = %134, %134
  %140 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 4
  %141 = tail call ptr @add_fmodifier(ptr noundef nonnull %140, i32 noundef 4) #9
  %142 = getelementptr inbounds %struct.FModifier, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !209
  %144 = load i16, ptr %135, align 2, !tbaa !207
  %145 = icmp eq i16 %144, 3
  %146 = getelementptr inbounds %struct.FMod_Cycles, ptr %143, i64 0, i32 1
  %147 = select i1 %145, i16 2, i16 1
  store i16 %147, ptr %146, align 2, !tbaa !211
  store i16 %147, ptr %143, align 2, !tbaa !213
  br label %148

148:                                              ; preds = %134, %139, %137
  %149 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 6
  %150 = load i16, ptr %149, align 8, !tbaa !214
  %151 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 7
  %152 = load i16, ptr %151, align 2, !tbaa !158
  %153 = icmp eq i16 %150, 16975
  %154 = icmp eq i16 %152, 19
  %155 = and i1 %153, %154
  %156 = icmp eq i16 %150, 16717
  %157 = icmp eq i16 %152, 18
  %158 = and i1 %156, %157
  %159 = select i1 %158, ptr @ma_mode_bits, ptr null
  %160 = select i1 %155, i32 20, i32 2
  %161 = select i1 %155, ptr @ob_layer_bits, ptr %159
  %162 = icmp eq ptr %161, null
  br i1 %162, label %244, label %163

163:                                              ; preds = %148
  %164 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !54
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %160)
  br label %169

169:                                              ; preds = %167, %163
  %170 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %171 = load i16, ptr %170, align 8, !tbaa !206
  %172 = or i16 %171, 6144
  store i16 %172, ptr %170, align 8, !tbaa !206
  %173 = add nsw i32 %160, -1
  %174 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 9
  %175 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 3
  br label %176

176:                                              ; preds = %169, %240
  %177 = phi ptr [ %161, %169 ], [ %242, %240 ]
  %178 = phi i32 [ 0, %169 ], [ %241, %240 ]
  %179 = icmp slt i32 %178, %173
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = tail call ptr @copy_fcurve(ptr noundef %11) #9
  br label %182

182:                                              ; preds = %176, %180
  %183 = phi ptr [ %181, %180 ], [ %11, %176 ]
  %184 = getelementptr inbounds %struct.AdrBit2Path, ptr %177, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !215
  %186 = tail call ptr @BLI_strdup(ptr noundef %185) #9
  %187 = getelementptr inbounds %struct.FCurve, ptr %183, i64 0, i32 12
  store ptr %186, ptr %187, align 8, !tbaa !217
  %188 = getelementptr inbounds %struct.AdrBit2Path, ptr %177, i64 0, i32 2
  %189 = load i32, ptr %188, align 8, !tbaa !218
  %190 = getelementptr inbounds %struct.FCurve, ptr %183, i64 0, i32 11
  store i32 %189, ptr %190, align 4, !tbaa !219
  %191 = load i16, ptr %174, align 2, !tbaa !220
  %192 = sext i16 %191 to i32
  %193 = getelementptr inbounds %struct.FCurve, ptr %183, i64 0, i32 7
  store i32 %192, ptr %193, align 8, !tbaa !221
  %194 = load ptr, ptr %175, align 8, !tbaa !47
  %195 = icmp eq ptr %194, null
  br i1 %195, label %240, label %196

196:                                              ; preds = %182
  %197 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %198 = zext i32 %192 to i64
  %199 = mul nuw nsw i64 %198, 72
  %200 = tail call ptr %197(i64 noundef %199, ptr noundef nonnull @.str.30) #9
  %201 = getelementptr inbounds %struct.FCurve, ptr %183, i64 0, i32 5
  store ptr %200, ptr %201, align 8, !tbaa !222
  %202 = load i32, ptr %193, align 8, !tbaa !221
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %240, label %204

204:                                              ; preds = %196
  %205 = load ptr, ptr %175, align 8, !tbaa !47
  br label %206

206:                                              ; preds = %204, %225
  %207 = phi i32 [ %235, %225 ], [ 0, %204 ]
  %208 = phi ptr [ %236, %225 ], [ %200, %204 ]
  %209 = phi ptr [ %237, %225 ], [ %205, %204 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %208, ptr noundef nonnull align 4 dereferenceable(72) %209, i64 72, i1 false), !tbaa.struct !223
  %210 = getelementptr inbounds %struct.BezTriple, ptr %208, i64 0, i32 4
  store i8 0, ptr %210, align 4, !tbaa !225
  %211 = getelementptr inbounds %struct.BezTriple, ptr %208, i64 0, i32 10
  store i8 0, ptr %211, align 2, !tbaa !227
  %212 = load i16, ptr %98, align 4, !tbaa !205
  %213 = and i16 %212, 16
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %225, label %215

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.BezTriple, ptr %208, i64 0, i32 5
  %217 = load i8, ptr %216, align 1, !tbaa !228
  %218 = icmp eq i8 %217, 1
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  store i8 4, ptr %216, align 1, !tbaa !228
  br label %220

220:                                              ; preds = %219, %215
  %221 = getelementptr inbounds %struct.BezTriple, ptr %208, i64 0, i32 6
  %222 = load i8, ptr %221, align 2, !tbaa !229
  %223 = icmp eq i8 %222, 1
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i8 4, ptr %221, align 2, !tbaa !229
  br label %225

225:                                              ; preds = %220, %224, %206
  %226 = getelementptr inbounds [3 x [3 x float]], ptr %208, i64 0, i64 1, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !224
  %228 = fptosi float %227 to i32
  %229 = load i32, ptr %177, align 8, !tbaa !230
  %230 = and i32 %229, %228
  %231 = icmp eq i32 %230, 0
  %232 = getelementptr inbounds [3 x [3 x float]], ptr %208, i64 0, i64 2, i64 1
  %233 = getelementptr inbounds [3 x float], ptr %208, i64 0, i64 1
  %234 = select i1 %231, float 0.000000e+00, float 1.000000e+00
  store float %234, ptr %232, align 4, !tbaa !224
  store float %234, ptr %226, align 4, !tbaa !224
  store float %234, ptr %233, align 4, !tbaa !224
  %235 = add nuw i32 %207, 1
  %236 = getelementptr inbounds %struct.BezTriple, ptr %208, i64 1
  %237 = getelementptr inbounds %struct.BezTriple, ptr %209, i64 1
  %238 = load i32, ptr %193, align 8, !tbaa !221
  %239 = icmp ult i32 %235, %238
  br i1 %239, label %206, label %240, !llvm.loop !231

240:                                              ; preds = %225, %196, %182
  tail call fastcc void @fcurve_add_to_list(ptr noundef %1, ptr noundef %2, ptr noundef %183, ptr noundef %4, i32 noundef %7)
  %241 = add nuw nsw i32 %178, 1
  %242 = getelementptr inbounds %struct.AdrBit2Path, ptr %177, i64 1
  %243 = icmp eq i32 %241, %160
  br i1 %243, label %619, label %176, !llvm.loop !232

244:                                              ; preds = %148
  %245 = sext i16 %150 to i32
  %246 = sext i16 %152 to i32
  %247 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 11
  %248 = tail call ptr @BLI_dynstr_new() #9
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #9
  %249 = icmp ne ptr %5, null
  %250 = select i1 %249, i32 20291, i32 %245
  switch i32 %250, label %401 [
    i32 16975, label %251
    i32 17217, label %274
    i32 17739, label %289
    i32 20291, label %295
    i32 17748, label %300
    i32 16717, label %324
    i32 16707, label %351
    i32 16716, label %354
    i32 20307, label %366
    i32 20311, label %369
    i32 16720, label %382
    i32 21827, label %397
    i32 20819, label %398
    i32 -1, label %415
  ]

251:                                              ; preds = %244
  switch i16 %152, label %415 [
    i16 1, label %252
    i16 2, label %253
    i16 3, label %254
    i16 4, label %255
    i16 5, label %256
    i16 6, label %257
    i16 7, label %258
    i16 8, label %259
    i16 9, label %260
    i16 10, label %261
    i16 11, label %262
    i16 12, label %263
    i16 13, label %264
    i16 14, label %265
    i16 15, label %266
    i16 16, label %267
    i16 17, label %268
    i16 18, label %269
    i16 21, label %270
    i16 22, label %271
    i16 23, label %272
    i16 24, label %273
  ]

252:                                              ; preds = %251
  br label %415

253:                                              ; preds = %251
  br label %415

254:                                              ; preds = %251
  br label %415

255:                                              ; preds = %251
  br label %415

256:                                              ; preds = %251
  br label %415

257:                                              ; preds = %251
  br label %415

258:                                              ; preds = %251
  br label %415

259:                                              ; preds = %251
  br label %415

260:                                              ; preds = %251
  br label %415

261:                                              ; preds = %251
  br label %415

262:                                              ; preds = %251
  br label %415

263:                                              ; preds = %251
  br label %415

264:                                              ; preds = %251
  br label %415

265:                                              ; preds = %251
  br label %415

266:                                              ; preds = %251
  br label %415

267:                                              ; preds = %251
  br label %415

268:                                              ; preds = %251
  br label %415

269:                                              ; preds = %251
  br label %415

270:                                              ; preds = %251
  br label %415

271:                                              ; preds = %251
  br label %415

272:                                              ; preds = %251
  br label %415

273:                                              ; preds = %251
  br label %415

274:                                              ; preds = %244
  switch i16 %152, label %287 [
    i16 25, label %415
    i16 26, label %275
    i16 27, label %276
    i16 28, label %277
    i16 16, label %278
    i16 17, label %279
    i16 18, label %280
    i16 1, label %281
    i16 2, label %282
    i16 3, label %283
    i16 13, label %284
    i16 14, label %285
    i16 15, label %286
  ]

275:                                              ; preds = %274
  br label %415

276:                                              ; preds = %274
  br label %415

277:                                              ; preds = %274
  br label %415

278:                                              ; preds = %274
  br label %415

279:                                              ; preds = %274
  br label %415

280:                                              ; preds = %274
  br label %415

281:                                              ; preds = %274
  br label %415

282:                                              ; preds = %274
  br label %415

283:                                              ; preds = %274
  br label %415

284:                                              ; preds = %274
  br label %415

285:                                              ; preds = %274
  br label %415

286:                                              ; preds = %274
  br label %415

287:                                              ; preds = %274
  %288 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, i32 noundef %246)
  br label %415

289:                                              ; preds = %244
  %290 = icmp eq i16 %152, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %289
  %292 = tail call ptr @BLI_strncpy(ptr noundef nonnull @shapekey_adrcodes_to_paths.buf, ptr noundef nonnull @.str.31, i64 noundef 128) #9
  br label %415

293:                                              ; preds = %289
  %294 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @shapekey_adrcodes_to_paths.buf, i64 noundef 128, ptr noundef nonnull @.str.58, i32 noundef %246) #9
  br label %415

295:                                              ; preds = %244
  %296 = icmp eq i16 %152, 2
  %297 = select i1 %296, ptr @.str.60, ptr null
  %298 = icmp eq i16 %152, 1
  %299 = select i1 %298, ptr @.str.59, ptr %297
  br label %415

300:                                              ; preds = %244
  switch i16 %152, label %323 [
    i16 1, label %415
    i16 4, label %301
    i16 26, label %322
    i16 25, label %321
    i16 20, label %302
    i16 21, label %303
    i16 5, label %304
    i16 6, label %305
    i16 7, label %306
    i16 8, label %307
    i16 9, label %308
    i16 10, label %309
    i16 11, label %310
    i16 12, label %311
    i16 13, label %312
    i16 24, label %320
    i16 15, label %313
    i16 16, label %314
    i16 17, label %315
    i16 18, label %316
    i16 19, label %317
    i16 22, label %318
    i16 23, label %319
  ]

301:                                              ; preds = %300
  br label %415

302:                                              ; preds = %300
  br label %415

303:                                              ; preds = %300
  br label %415

304:                                              ; preds = %300
  br label %415

305:                                              ; preds = %300
  br label %415

306:                                              ; preds = %300
  br label %415

307:                                              ; preds = %300
  br label %415

308:                                              ; preds = %300
  br label %415

309:                                              ; preds = %300
  br label %415

310:                                              ; preds = %300
  br label %415

311:                                              ; preds = %300
  br label %415

312:                                              ; preds = %300
  br label %415

313:                                              ; preds = %300
  br label %415

314:                                              ; preds = %300
  br label %415

315:                                              ; preds = %300
  br label %415

316:                                              ; preds = %300
  br label %415

317:                                              ; preds = %300
  br label %415

318:                                              ; preds = %300
  br label %415

319:                                              ; preds = %300
  br label %415

320:                                              ; preds = %300
  br label %415

321:                                              ; preds = %300
  br label %415

322:                                              ; preds = %300
  br label %415

323:                                              ; preds = %300
  br label %415

324:                                              ; preds = %244
  switch i16 %152, label %349 [
    i16 1, label %325
    i16 2, label %326
    i16 3, label %327
    i16 4, label %328
    i16 5, label %329
    i16 6, label %330
    i16 7, label %331
    i16 8, label %332
    i16 9, label %333
    i16 11, label %415
    i16 10, label %334
    i16 12, label %335
    i16 13, label %336
    i16 14, label %337
    i16 15, label %338
    i16 16, label %339
    i16 17, label %340
    i16 19, label %341
    i16 20, label %342
    i16 21, label %343
    i16 22, label %344
    i16 23, label %345
    i16 24, label %346
    i16 25, label %347
    i16 26, label %348
  ]

325:                                              ; preds = %324
  br label %415

326:                                              ; preds = %324
  br label %415

327:                                              ; preds = %324
  br label %415

328:                                              ; preds = %324
  br label %415

329:                                              ; preds = %324
  br label %415

330:                                              ; preds = %324
  br label %415

331:                                              ; preds = %324
  br label %415

332:                                              ; preds = %324
  br label %415

333:                                              ; preds = %324
  br label %415

334:                                              ; preds = %324
  br label %415

335:                                              ; preds = %324
  br label %415

336:                                              ; preds = %324
  br label %415

337:                                              ; preds = %324
  br label %415

338:                                              ; preds = %324
  br label %415

339:                                              ; preds = %324
  br label %415

340:                                              ; preds = %324
  br label %415

341:                                              ; preds = %324
  br label %415

342:                                              ; preds = %324
  br label %415

343:                                              ; preds = %324
  br label %415

344:                                              ; preds = %324
  br label %415

345:                                              ; preds = %324
  br label %415

346:                                              ; preds = %324
  br label %415

347:                                              ; preds = %324
  br label %415

348:                                              ; preds = %324
  br label %415

349:                                              ; preds = %324
  %350 = tail call fastcc ptr @mtex_adrcodes_to_paths(i32 noundef %246)
  br label %415

351:                                              ; preds = %244
  %352 = add i16 %152, -1
  %353 = icmp ult i16 %352, 7
  br i1 %353, label %403, label %415

354:                                              ; preds = %244
  switch i16 %152, label %364 [
    i16 1, label %415
    i16 2, label %355
    i16 3, label %356
    i16 4, label %357
    i16 5, label %358
    i16 6, label %359
    i16 7, label %360
    i16 8, label %361
    i16 9, label %362
    i16 10, label %363
  ]

355:                                              ; preds = %354
  br label %415

356:                                              ; preds = %354
  br label %415

357:                                              ; preds = %354
  br label %415

358:                                              ; preds = %354
  br label %415

359:                                              ; preds = %354
  br label %415

360:                                              ; preds = %354
  br label %415

361:                                              ; preds = %354
  br label %415

362:                                              ; preds = %354
  br label %415

363:                                              ; preds = %354
  br label %415

364:                                              ; preds = %354
  %365 = tail call fastcc ptr @mtex_adrcodes_to_paths(i32 noundef %246)
  br label %415

366:                                              ; preds = %244
  %367 = add i16 %152, -1
  %368 = icmp ult i16 %367, 4
  br i1 %368, label %407, label %415

369:                                              ; preds = %244
  switch i16 %152, label %380 [
    i16 1, label %370
    i16 2, label %371
    i16 3, label %372
    i16 4, label %373
    i16 5, label %374
    i16 6, label %375
    i16 7, label %415
    i16 8, label %376
    i16 9, label %377
    i16 10, label %378
    i16 11, label %379
  ]

370:                                              ; preds = %369
  br label %415

371:                                              ; preds = %369
  br label %415

372:                                              ; preds = %369
  br label %415

373:                                              ; preds = %369
  br label %415

374:                                              ; preds = %369
  br label %415

375:                                              ; preds = %369
  br label %415

376:                                              ; preds = %369
  br label %415

377:                                              ; preds = %369
  br label %415

378:                                              ; preds = %369
  br label %415

379:                                              ; preds = %369
  br label %415

380:                                              ; preds = %369
  %381 = tail call fastcc ptr @mtex_adrcodes_to_paths(i32 noundef %246)
  br label %415

382:                                              ; preds = %244
  switch i16 %152, label %396 [
    i16 12, label %415
    i16 6, label %383
    i16 7, label %384
    i16 8, label %385
    i16 9, label %386
    i16 10, label %387
    i16 11, label %388
    i16 13, label %389
    i16 14, label %390
    i16 15, label %391
    i16 16, label %392
    i16 17, label %393
    i16 18, label %394
    i16 19, label %395
  ]

383:                                              ; preds = %382
  br label %415

384:                                              ; preds = %382
  br label %415

385:                                              ; preds = %382
  br label %415

386:                                              ; preds = %382
  br label %415

387:                                              ; preds = %382
  br label %415

388:                                              ; preds = %382
  br label %415

389:                                              ; preds = %382
  br label %415

390:                                              ; preds = %382
  br label %415

391:                                              ; preds = %382
  br label %415

392:                                              ; preds = %382
  br label %415

393:                                              ; preds = %382
  br label %415

394:                                              ; preds = %382
  br label %415

395:                                              ; preds = %382
  br label %415

396:                                              ; preds = %382
  br label %415

397:                                              ; preds = %244
  br label %415

398:                                              ; preds = %244
  %399 = add i16 %152, -1
  %400 = icmp ult i16 %399, 3
  br i1 %400, label %411, label %415

401:                                              ; preds = %244
  %402 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %250, i32 noundef %246)
  br label %415

403:                                              ; preds = %351
  %404 = zext nneg i16 %352 to i64
  %405 = getelementptr inbounds [7 x ptr], ptr @switch.table.icu_to_fcurves.159, i64 0, i64 %404
  %406 = load ptr, ptr %405, align 8
  br label %415

407:                                              ; preds = %366
  %408 = zext nneg i16 %367 to i64
  %409 = getelementptr inbounds [4 x ptr], ptr @switch.table.icu_to_fcurves.160, i64 0, i64 %408
  %410 = load ptr, ptr %409, align 8
  br label %415

411:                                              ; preds = %398
  %412 = zext nneg i16 %399 to i64
  %413 = shl i64 %412, 2
  %414 = call ptr @llvm.load.relative.i64(ptr @reltable.icu_to_fcurves, i64 %413)
  br label %415

415:                                              ; preds = %274, %411, %398, %366, %407, %351, %403, %401, %397, %396, %395, %394, %393, %392, %391, %390, %389, %388, %387, %386, %385, %384, %383, %382, %380, %379, %378, %377, %376, %375, %374, %373, %372, %371, %370, %369, %364, %363, %362, %361, %360, %359, %358, %357, %356, %355, %354, %349, %348, %347, %346, %345, %344, %343, %342, %341, %340, %339, %338, %337, %336, %335, %334, %333, %332, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %318, %317, %316, %315, %314, %313, %312, %311, %310, %309, %308, %307, %306, %305, %304, %303, %302, %301, %300, %295, %293, %291, %287, %286, %285, %284, %283, %282, %281, %280, %279, %278, %277, %276, %275, %273, %272, %271, %270, %269, %268, %267, %266, %265, %264, %263, %262, %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %244
  %416 = phi i32 [ 0, %401 ], [ 0, %244 ], [ 0, %411 ], [ 0, %398 ], [ 0, %397 ], [ 0, %396 ], [ 0, %395 ], [ 0, %394 ], [ 0, %393 ], [ 0, %392 ], [ 2, %391 ], [ 1, %390 ], [ 0, %389 ], [ 0, %388 ], [ 0, %387 ], [ 0, %386 ], [ 0, %385 ], [ 0, %384 ], [ 0, %383 ], [ 0, %382 ], [ 0, %380 ], [ 0, %379 ], [ 0, %378 ], [ 0, %377 ], [ 0, %376 ], [ 0, %369 ], [ 2, %375 ], [ 1, %374 ], [ 0, %373 ], [ 2, %372 ], [ 1, %371 ], [ 0, %370 ], [ 0, %407 ], [ 0, %366 ], [ 0, %364 ], [ 0, %363 ], [ 0, %362 ], [ 0, %361 ], [ 0, %360 ], [ 0, %359 ], [ 0, %358 ], [ 2, %357 ], [ 1, %356 ], [ 0, %355 ], [ 0, %354 ], [ 0, %403 ], [ 0, %351 ], [ 0, %349 ], [ 0, %348 ], [ 0, %347 ], [ 0, %346 ], [ 0, %345 ], [ 0, %344 ], [ 0, %343 ], [ 0, %342 ], [ 0, %341 ], [ 0, %340 ], [ 0, %339 ], [ 0, %338 ], [ 0, %337 ], [ 0, %336 ], [ 0, %335 ], [ 0, %334 ], [ 0, %324 ], [ 2, %333 ], [ 1, %332 ], [ 0, %331 ], [ 2, %330 ], [ 1, %329 ], [ 0, %328 ], [ 2, %327 ], [ 1, %326 ], [ 0, %325 ], [ 0, %323 ], [ 1, %319 ], [ 0, %318 ], [ 0, %317 ], [ 0, %316 ], [ 0, %315 ], [ 0, %314 ], [ 0, %313 ], [ 2, %320 ], [ 0, %312 ], [ 0, %311 ], [ 0, %310 ], [ 0, %309 ], [ 0, %308 ], [ 3, %307 ], [ 2, %306 ], [ 1, %305 ], [ 0, %304 ], [ 0, %303 ], [ 0, %302 ], [ 0, %321 ], [ 0, %322 ], [ 0, %301 ], [ 0, %300 ], [ 0, %295 ], [ 0, %291 ], [ 0, %293 ], [ 0, %287 ], [ 2, %286 ], [ 1, %285 ], [ 0, %284 ], [ 2, %283 ], [ 1, %282 ], [ 0, %281 ], [ 2, %280 ], [ 1, %279 ], [ 0, %278 ], [ 3, %277 ], [ 2, %276 ], [ 1, %275 ], [ 0, %251 ], [ 3, %273 ], [ 2, %272 ], [ 1, %271 ], [ 0, %270 ], [ 2, %269 ], [ 1, %268 ], [ 0, %267 ], [ 2, %266 ], [ 1, %265 ], [ 0, %264 ], [ 2, %263 ], [ 1, %262 ], [ 0, %261 ], [ 2, %260 ], [ 1, %259 ], [ 0, %258 ], [ 2, %257 ], [ 1, %256 ], [ 0, %255 ], [ 2, %254 ], [ 1, %253 ], [ 0, %252 ], [ 0, %274 ]
  %417 = phi ptr [ null, %401 ], [ null, %244 ], [ %414, %411 ], [ null, %398 ], [ @.str.31, %397 ], [ null, %396 ], [ @.str.150, %395 ], [ @.str.149, %394 ], [ @.str.148, %393 ], [ @.str.147, %392 ], [ @.str.146, %391 ], [ @.str.146, %390 ], [ @.str.146, %389 ], [ @.str.145, %388 ], [ @.str.144, %387 ], [ @.str.143, %386 ], [ @.str.142, %385 ], [ @.str.141, %384 ], [ @.str.140, %383 ], [ @.str.139, %382 ], [ %381, %380 ], [ @.str.138, %379 ], [ @.str.137, %378 ], [ @.str.136, %377 ], [ @.str.135, %376 ], [ @.str.134, %369 ], [ @.str.133, %375 ], [ @.str.133, %374 ], [ @.str.133, %373 ], [ @.str.132, %372 ], [ @.str.132, %371 ], [ @.str.132, %370 ], [ %410, %407 ], [ null, %366 ], [ %365, %364 ], [ @.str.128, %363 ], [ @.str.127, %362 ], [ @.str.126, %361 ], [ @.str.125, %360 ], [ @.str.124, %359 ], [ @.str.123, %358 ], [ @.str.55, %357 ], [ @.str.55, %356 ], [ @.str.55, %355 ], [ @.str.122, %354 ], [ %406, %403 ], [ null, %351 ], [ %350, %349 ], [ @.str.96, %348 ], [ @.str.95, %347 ], [ @.str.94, %346 ], [ @.str.93, %345 ], [ @.str.92, %344 ], [ @.str.91, %343 ], [ @.str.90, %342 ], [ @.str.89, %341 ], [ @.str.88, %340 ], [ @.str.87, %339 ], [ @.str.86, %338 ], [ @.str.85, %337 ], [ @.str.84, %336 ], [ @.str.83, %335 ], [ @.str.82, %334 ], [ @.str.81, %324 ], [ @.str.80, %333 ], [ @.str.80, %332 ], [ @.str.80, %331 ], [ @.str.79, %330 ], [ @.str.79, %329 ], [ @.str.79, %328 ], [ @.str.78, %327 ], [ @.str.78, %326 ], [ @.str.78, %325 ], [ null, %323 ], [ @.str.75, %319 ], [ @.str.75, %318 ], [ @.str.74, %317 ], [ @.str.73, %316 ], [ @.str.72, %315 ], [ @.str.71, %314 ], [ @.str.70, %313 ], [ @.str.75, %320 ], [ @.str.69, %312 ], [ @.str.68, %311 ], [ @.str.67, %310 ], [ @.str.66, %309 ], [ @.str.65, %308 ], [ @.str.64, %307 ], [ @.str.64, %306 ], [ @.str.64, %305 ], [ @.str.64, %304 ], [ @.str.63, %303 ], [ @.str.63, %302 ], [ @.str.76, %321 ], [ @.str.77, %322 ], [ @.str.62, %301 ], [ @.str.61, %300 ], [ %299, %295 ], [ @shapekey_adrcodes_to_paths.buf, %291 ], [ @shapekey_adrcodes_to_paths.buf, %293 ], [ null, %287 ], [ @.str.53, %286 ], [ @.str.53, %285 ], [ @.str.53, %284 ], [ @.str.49, %283 ], [ @.str.49, %282 ], [ @.str.49, %281 ], [ @.str.51, %280 ], [ @.str.51, %279 ], [ @.str.51, %278 ], [ @.str.56, %277 ], [ @.str.56, %276 ], [ @.str.56, %275 ], [ null, %251 ], [ @.str.55, %273 ], [ @.str.55, %272 ], [ @.str.55, %271 ], [ @.str.55, %270 ], [ @.str.54, %269 ], [ @.str.54, %268 ], [ @.str.54, %267 ], [ @.str.53, %266 ], [ @.str.53, %265 ], [ @.str.53, %264 ], [ @.str.52, %263 ], [ @.str.52, %262 ], [ @.str.52, %261 ], [ @.str.51, %260 ], [ @.str.51, %259 ], [ @.str.51, %258 ], [ @.str.50, %257 ], [ @.str.50, %256 ], [ @.str.50, %255 ], [ @.str.49, %254 ], [ @.str.49, %253 ], [ @.str.49, %252 ], [ @.str.56, %274 ]
  %418 = icmp eq ptr %417, null
  %419 = icmp sgt i32 %250, 0
  %420 = and i1 %419, %418
  br i1 %420, label %421, label %422

421:                                              ; preds = %415
  store i32 0, ptr %247, align 4, !tbaa !233
  br label %466

422:                                              ; preds = %415
  store i32 %416, ptr %247, align 4, !tbaa !233
  %423 = icmp eq ptr %4, null
  br i1 %423, label %448, label %424

424:                                              ; preds = %422
  %425 = load i8, ptr %4, align 1, !tbaa !195
  %426 = icmp ne i8 %425, 0
  %427 = and i1 %249, %426
  br i1 %427, label %428, label %433

428:                                              ; preds = %424
  %429 = load i8, ptr %5, align 1, !tbaa !195
  %430 = icmp eq i8 %429, 0
  br i1 %430, label %433, label %431

431:                                              ; preds = %428
  %432 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 512, ptr noundef nonnull @.str.42, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  br label %460

433:                                              ; preds = %428, %424
  %434 = icmp eq i8 %425, 0
  br i1 %434, label %448, label %435

435:                                              ; preds = %433
  switch i32 %250, label %446 [
    i32 16975, label %436
    i32 17739, label %442
  ]

436:                                              ; preds = %435
  %437 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(7) @.str.26) #10
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %436
  store i8 0, ptr %9, align 16, !tbaa !195
  br label %460

440:                                              ; preds = %436
  %441 = icmp eq i32 %250, 17739
  br i1 %441, label %442, label %446

442:                                              ; preds = %440, %435
  %443 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(6) @.str.27) #10
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(16) @.str.43, i64 16, i1 false) #9
  br label %460

446:                                              ; preds = %442, %440, %435
  %447 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 512, ptr noundef nonnull @.str.44, ptr noundef nonnull %4) #9
  br label %460

448:                                              ; preds = %433, %422
  br i1 %249, label %449, label %454

449:                                              ; preds = %448
  %450 = load i8, ptr %5, align 1, !tbaa !195
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %454, label %452

452:                                              ; preds = %449
  %453 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 512, ptr noundef nonnull @.str.45, ptr noundef nonnull %5) #9
  br label %460

454:                                              ; preds = %449, %448
  %455 = icmp eq ptr %6, null
  br i1 %455, label %459, label %456

456:                                              ; preds = %454
  %457 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 4, i64 2
  %458 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 512, ptr noundef nonnull @.str.46, ptr noundef nonnull %457) #9
  br label %460

459:                                              ; preds = %454
  store i8 0, ptr %9, align 16, !tbaa !195
  br label %460

460:                                              ; preds = %459, %456, %452, %446, %445, %439, %431
  call void @BLI_dynstr_append(ptr noundef %248, ptr noundef nonnull %9) #9
  %461 = load i8, ptr %9, align 16, !tbaa !195
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %464, label %463

463:                                              ; preds = %460
  call void @BLI_dynstr_append(ptr noundef %248, ptr noundef nonnull @.str.47) #9
  br label %464

464:                                              ; preds = %463, %460
  call void @BLI_dynstr_append(ptr noundef %248, ptr noundef %417) #9
  %465 = call ptr @BLI_dynstr_get_cstring(ptr noundef %248) #9
  br label %466

466:                                              ; preds = %421, %464
  %467 = phi ptr [ null, %421 ], [ %465, %464 ]
  call void @BLI_dynstr_free(ptr noundef %248) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #9
  %468 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 12
  store ptr %467, ptr %468, align 8, !tbaa !217
  %469 = icmp eq ptr %467, null
  br i1 %469, label %470, label %474

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %472 = load i16, ptr %471, align 8, !tbaa !206
  %473 = or i16 %472, 1024
  store i16 %473, ptr %471, align 8, !tbaa !206
  br label %474

474:                                              ; preds = %470, %466
  %475 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 9
  %476 = load i16, ptr %475, align 2, !tbaa !220
  %477 = sext i16 %476 to i32
  %478 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 7
  store i32 %477, ptr %478, align 8, !tbaa !221
  %479 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !47
  %481 = icmp eq ptr %480, null
  br i1 %481, label %618, label %482

482:                                              ; preds = %474
  %483 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %484 = zext i32 %477 to i64
  %485 = mul nuw nsw i64 %484, 72
  %486 = call ptr %483(i64 noundef %485, ptr noundef nonnull @.str.30) #9
  %487 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 5
  store ptr %486, ptr %487, align 8, !tbaa !222
  %488 = load i32, ptr %478, align 8, !tbaa !221
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %618, label %490

490:                                              ; preds = %482
  %491 = load ptr, ptr %479, align 8, !tbaa !47
  %492 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 10
  %493 = icmp eq ptr %0, null
  %494 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %495 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 20
  %496 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 3
  %497 = icmp eq ptr %6, null
  %498 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %499 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 16
  %500 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 15
  br label %501

501:                                              ; preds = %490, %612
  %502 = phi i32 [ 0, %490 ], [ %613, %612 ]
  %503 = phi ptr [ %491, %490 ], [ %615, %612 ]
  %504 = phi ptr [ %486, %490 ], [ %614, %612 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %504, ptr noundef nonnull align 4 dereferenceable(72) %503, i64 72, i1 false), !tbaa.struct !223
  %505 = load i16, ptr %492, align 8, !tbaa !234
  %506 = icmp eq i16 %505, 3
  br i1 %506, label %510, label %507

507:                                              ; preds = %501
  %508 = trunc i16 %505 to i8
  %509 = getelementptr inbounds %struct.BezTriple, ptr %504, i64 0, i32 4
  store i8 %508, ptr %509, align 4, !tbaa !225
  br label %510

510:                                              ; preds = %507, %501
  %511 = getelementptr inbounds %struct.BezTriple, ptr %504, i64 0, i32 10
  store i8 0, ptr %511, align 2, !tbaa !227
  %512 = load i16, ptr %98, align 4, !tbaa !205
  %513 = and i16 %512, 16
  %514 = icmp eq i16 %513, 0
  br i1 %514, label %525, label %515

515:                                              ; preds = %510
  %516 = getelementptr inbounds %struct.BezTriple, ptr %504, i64 0, i32 5
  %517 = load i8, ptr %516, align 1, !tbaa !228
  %518 = icmp eq i8 %517, 1
  br i1 %518, label %519, label %520

519:                                              ; preds = %515
  store i8 4, ptr %516, align 1, !tbaa !228
  br label %520

520:                                              ; preds = %519, %515
  %521 = getelementptr inbounds %struct.BezTriple, ptr %504, i64 0, i32 6
  %522 = load i8, ptr %521, align 2, !tbaa !229
  %523 = icmp eq i8 %522, 1
  br i1 %523, label %524, label %525

524:                                              ; preds = %520
  store i8 4, ptr %521, align 2, !tbaa !229
  br label %525

525:                                              ; preds = %520, %524, %510
  %526 = load i16, ptr %149, align 8, !tbaa !214
  switch i16 %526, label %547 [
    i16 16975, label %527
    i16 17217, label %533
  ]

527:                                              ; preds = %525
  %528 = load i16, ptr %151, align 2, !tbaa !158
  %529 = add i16 %528, -7
  %530 = icmp ult i16 %529, 3
  br i1 %530, label %537, label %531

531:                                              ; preds = %527
  %532 = icmp eq i16 %526, 17217
  br i1 %532, label %533, label %547

533:                                              ; preds = %525, %531
  %534 = load i16, ptr %151, align 2, !tbaa !158
  %535 = add i16 %534, -16
  %536 = icmp ult i16 %535, 3
  br i1 %536, label %537, label %547

537:                                              ; preds = %533, %527
  %538 = getelementptr inbounds [3 x float], ptr %504, i64 0, i64 1
  %539 = load float, ptr %538, align 4, !tbaa !224
  %540 = fmul float %539, 0x3FC6571860000000
  store float %540, ptr %538, align 4, !tbaa !224
  %541 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 1, i64 1
  %542 = load float, ptr %541, align 4, !tbaa !224
  %543 = fmul float %542, 0x3FC6571860000000
  store float %543, ptr %541, align 4, !tbaa !224
  %544 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 2, i64 1
  %545 = load float, ptr %544, align 4, !tbaa !224
  %546 = fmul float %545, 0x3FC6571860000000
  store float %546, ptr %544, align 4, !tbaa !224
  br label %547

547:                                              ; preds = %525, %533, %537, %531
  br i1 %493, label %569, label %548

548:                                              ; preds = %547
  %549 = load i16, ptr %494, align 8, !tbaa !235
  %550 = icmp eq i16 %526, %549
  br i1 %550, label %551, label %569

551:                                              ; preds = %548
  %552 = load ptr, ptr %468, align 8, !tbaa !217
  %553 = icmp eq ptr %552, null
  br i1 %553, label %569, label %554

554:                                              ; preds = %551
  %555 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %552, ptr noundef nonnull dereferenceable(10) @.str.31) #10
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %569

557:                                              ; preds = %554
  %558 = load i32, ptr %495, align 4, !tbaa !236
  %559 = sitofp i32 %558 to float
  %560 = getelementptr inbounds [3 x float], ptr %504, i64 0, i64 1
  %561 = load float, ptr %560, align 4, !tbaa !224
  %562 = fmul float %561, %559
  store float %562, ptr %560, align 4, !tbaa !224
  %563 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 1, i64 1
  %564 = load float, ptr %563, align 4, !tbaa !224
  %565 = fmul float %564, %559
  store float %565, ptr %563, align 4, !tbaa !224
  %566 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 2, i64 1
  %567 = load float, ptr %566, align 4, !tbaa !224
  %568 = fmul float %567, %559
  store float %568, ptr %566, align 4, !tbaa !224
  br label %569

569:                                              ; preds = %557, %554, %551, %548, %547
  %570 = load ptr, ptr %496, align 8, !tbaa !203
  %571 = icmp eq ptr %570, null
  br i1 %571, label %589, label %572

572:                                              ; preds = %569
  %573 = load ptr, ptr %570, align 8, !tbaa !237
  %574 = icmp eq ptr %573, null
  br i1 %574, label %589, label %575

575:                                              ; preds = %572
  %576 = getelementptr inbounds %struct.DriverVar, ptr %573, i64 0, i32 3, i64 0, i32 3
  %577 = load i16, ptr %576, align 8, !tbaa !201
  %578 = add i16 %577, -3
  %579 = icmp ult i16 %578, 3
  br i1 %579, label %580, label %589

580:                                              ; preds = %575
  %581 = load float, ptr %504, align 4, !tbaa !224
  %582 = fmul float %581, 0x3FC6571860000000
  store float %582, ptr %504, align 4, !tbaa !224
  %583 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 1
  %584 = load float, ptr %583, align 4, !tbaa !224
  %585 = fmul float %584, 0x3FC6571860000000
  store float %585, ptr %583, align 4, !tbaa !224
  %586 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 2
  %587 = load float, ptr %586, align 4, !tbaa !224
  %588 = fmul float %587, 0x3FC6571860000000
  store float %588, ptr %586, align 4, !tbaa !224
  br label %589

589:                                              ; preds = %575, %580, %572, %569
  br i1 %497, label %612, label %590

590:                                              ; preds = %589
  %591 = load i32, ptr %498, align 8, !tbaa !156
  %592 = and i32 %591, 256
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %612

594:                                              ; preds = %590
  %595 = load i32, ptr %499, align 4, !tbaa !238
  %596 = load i32, ptr %500, align 8, !tbaa !239
  %597 = sub nsw i32 %595, %596
  %598 = sitofp i32 %597 to float
  %599 = fdiv float %598, 1.000000e+02
  %600 = sitofp i32 %596 to float
  %601 = load float, ptr %504, align 4, !tbaa !224
  %602 = fmul float %601, %599
  %603 = fadd float %602, %600
  store float %603, ptr %504, align 4, !tbaa !224
  %604 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 1
  %605 = load float, ptr %604, align 4, !tbaa !224
  %606 = fmul float %605, %599
  %607 = fadd float %606, %600
  store float %607, ptr %604, align 4, !tbaa !224
  %608 = getelementptr inbounds [3 x [3 x float]], ptr %504, i64 0, i64 2
  %609 = load float, ptr %608, align 4, !tbaa !224
  %610 = fmul float %599, %609
  %611 = fadd float %610, %600
  store float %611, ptr %608, align 4, !tbaa !224
  br label %612

612:                                              ; preds = %589, %590, %594
  %613 = add nuw i32 %502, 1
  %614 = getelementptr inbounds %struct.BezTriple, ptr %504, i64 1
  %615 = getelementptr inbounds %struct.BezTriple, ptr %503, i64 1
  %616 = load i32, ptr %478, align 8, !tbaa !221
  %617 = icmp ult i32 %613, %616
  br i1 %617, label %501, label %618, !llvm.loop !240

618:                                              ; preds = %612, %482, %474
  call fastcc void @fcurve_add_to_list(ptr noundef %1, ptr noundef %2, ptr noundef %11, ptr noundef %4, i32 noundef %7)
  br label %619

619:                                              ; preds = %240, %618
  ret void
}

declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @fcurve_add_to_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.bAction, align 8
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %3, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %11 = load ptr, ptr %0, align 8, !tbaa !67
  %12 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 3
  store ptr %11, ptr %12, align 8, !tbaa !179
  %13 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !241
  %15 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 3, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !242
  %16 = load ptr, ptr %1, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !243
  %18 = getelementptr inbounds %struct.ListBase, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !241
  %20 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 1, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !244
  %21 = call ptr @BKE_action_group_find_name(ptr noundef nonnull %6, ptr noundef nonnull %3) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %10
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %25 = call ptr %24(i64 noundef 120, ptr noundef nonnull @.str.36) #9
  %26 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 3
  %27 = icmp eq i32 %4, 0
  %28 = select i1 %27, i32 1, i32 17
  store i32 %28, ptr %26, align 8, !tbaa !245
  %29 = getelementptr inbounds %struct.bActionGroup, ptr %25, i64 0, i32 5
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef nonnull %3, i64 noundef 64) #9
  call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %25) #9
  call void @BLI_uniquename(ptr noundef nonnull %12, ptr noundef %25, ptr noundef nonnull @.str.37, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #9
  br label %31

31:                                               ; preds = %23, %10
  %32 = phi ptr [ %25, %23 ], [ %21, %10 ]
  call void @action_groups_add_channel(ptr noundef nonnull %6, ptr noundef %32, ptr noundef %2) #9
  %33 = getelementptr inbounds %struct.bActionGroup, ptr %32, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !245
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %39 = load i16, ptr %38, align 8, !tbaa !206
  %40 = or i16 %39, 16
  store i16 %40, ptr %38, align 8, !tbaa !206
  br label %41

41:                                               ; preds = %37, %31
  %42 = load ptr, ptr %12, align 8, !tbaa !179
  store ptr %42, ptr %0, align 8, !tbaa !67
  %43 = load ptr, ptr %15, align 8, !tbaa !242
  store ptr %43, ptr %13, align 8, !tbaa !241
  %44 = load ptr, ptr %17, align 8, !tbaa !243
  store ptr %44, ptr %1, align 8, !tbaa !67
  %45 = load ptr, ptr %20, align 8, !tbaa !244
  store ptr %45, ptr %18, align 8, !tbaa !241
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #9
  br label %47

46:                                               ; preds = %5
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %2) #9
  br label %47

47:                                               ; preds = %46, %41
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @driver_add_new_variable(ptr noundef) local_unnamed_addr #2

declare void @driver_change_variable_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BKE_action_group_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_dynstr_new() local_unnamed_addr #2

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @mtex_adrcodes_to_paths(i32 noundef %0) unnamed_addr #0 {
  %2 = and i32 %0, 32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %56

4:                                                ; preds = %1
  %5 = and i32 %0, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %4
  %8 = and i32 %0, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = and i32 %0, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %10
  %14 = and i32 %0, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = and i32 %0, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %16
  %20 = and i32 %0, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = and i32 %0, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = and i32 %0, 8192
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = and i32 %0, 16384
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = and i32 %0, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = and i32 %0, 65536
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = and i32 %0, 131072
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = and i32 %0, 262144
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = and i32 %0, 524288
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = and i32 %0, 1048576
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = and i32 %0, 2097152
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = and i32 %0, 4194304
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, ptr null, ptr @.str.114
  br label %56

56:                                               ; preds = %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  %57 = phi ptr [ @.str.97, %1 ], [ @.str.98, %4 ], [ @.str.99, %7 ], [ @.str.100, %10 ], [ @.str.101, %13 ], [ @.str.102, %16 ], [ @.str.103, %19 ], [ @.str.104, %22 ], [ @.str.105, %25 ], [ @.str.106, %28 ], [ @.str.107, %31 ], [ @.str.108, %34 ], [ @.str.109, %37 ], [ @.str.110, %40 ], [ @.str.111, %43 ], [ @.str.112, %46 ], [ @.str.113, %49 ], [ %55, %52 ]
  %58 = and i32 %0, 31
  %59 = icmp eq i32 %58, 14
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @mtex_adrcodes_to_paths.buf, i64 noundef 128, ptr noundef nonnull @.str.116, ptr noundef %57, ptr noundef nonnull @.str.115) #9
  br label %62

62:                                               ; preds = %56, %60
  %63 = phi ptr [ @mtex_adrcodes_to_paths.buf, %60 ], [ null, %56 ]
  ret ptr %63
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
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
!34 = !{!35, !37, i64 120}
!35 = !{!"Ipo", !36, i64 0, !42, i64 120, !43, i64 136, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"float", !38, i64 0}
!45 = !{!46, !37, i64 0}
!46 = !{!"IpoCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !43, i64 48, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !44, i64 80, !44, i64 84, !41, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !37, i64 104}
!47 = !{!46, !37, i64 24}
!48 = !{!37, !37, i64 0}
!49 = !{!46, !37, i64 16}
!50 = !{!46, !37, i64 104}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 2100}
!55 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!56 = !{!57, !40, i64 1040}
!57 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !58, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!58 = !{!"long", !38, i64 0}
!59 = !{!60, !37, i64 1192}
!60 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !61, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !58, i64 1304, !58, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!61 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!62 = !{!60, !37, i64 256}
!63 = !{!35, !41, i64 100}
!64 = !{!60, !37, i64 272}
!65 = !{!66, !41, i64 100}
!66 = !{!"bAction", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!67 = !{!42, !37, i64 0}
!68 = !{!69, !37, i64 0}
!69 = !{!"bActionStrip", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !37, i64 24, !37, i64 32, !37, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !38, i64 88, !38, i64 120, !42, i64 152}
!70 = !{!69, !37, i64 32}
!71 = !{!72, !37, i64 32}
!72 = !{!"NlaStrip", !37, i64 0, !37, i64 8, !42, i64 16, !37, i64 32, !37, i64 40, !42, i64 48, !42, i64 64, !38, i64 80, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !37, i64 192, !41, i64 200, !41, i64 204}
!73 = !{!69, !44, i64 48}
!74 = !{!72, !44, i64 152}
!75 = !{!69, !44, i64 52}
!76 = !{!72, !44, i64 156}
!77 = !{!69, !44, i64 56}
!78 = !{!72, !44, i64 160}
!79 = !{!69, !44, i64 60}
!80 = !{!72, !44, i64 164}
!81 = !{!69, !44, i64 72}
!82 = !{!72, !44, i64 168}
!83 = !{!69, !44, i64 76}
!84 = !{!72, !44, i64 172}
!85 = !{!69, !40, i64 16}
!86 = !{!72, !41, i64 200}
!87 = !{!69, !44, i64 80}
!88 = !{!72, !44, i64 176}
!89 = !{!69, !44, i64 84}
!90 = !{!72, !44, i64 180}
!91 = !{!69, !40, i64 18}
!92 = !{!72, !40, i64 184}
!93 = !{!72, !40, i64 186}
!94 = !{!69, !37, i64 152}
!95 = distinct !{!95, !52, !53}
!96 = !{!66, !37, i64 136}
!97 = !{!98, !37, i64 0}
!98 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !37, i64 40, !42, i64 48, !42, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!99 = !{!100, !40, i64 24}
!100 = !{!"bActuator", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !38, i64 32, !37, i64 96, !37, i64 104}
!101 = !{!100, !37, i64 96}
!102 = !{!60, !37, i64 120}
!103 = !{!104, !37, i64 0}
!104 = !{!"bActionActuator", !37, i64 0, !40, i64 8, !40, i64 10, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 84, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !44, i64 160, !44, i64 164}
!105 = distinct !{!105, !52, !53}
!106 = !{!60, !37, i64 288}
!107 = distinct !{!107, !52, !53}
!108 = !{!109, !37, i64 104}
!109 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !44, i64 96, !44, i64 100, !37, i64 104, !44, i64 112, !44, i64 116}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = !{!60, !37, i64 368}
!113 = !{!114, !37, i64 0}
!114 = !{!"bConstraintChannel", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !38, i64 26}
!115 = !{!114, !37, i64 16}
!116 = distinct !{!116, !52, !53}
!117 = !{!66, !41, i64 192}
!118 = distinct !{!118, !52, !53}
!119 = !{!120, !37, i64 192}
!120 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !41, i64 220}
!121 = !{!35, !40, i64 152}
!122 = distinct !{!122, !52, !53}
!123 = !{!124, !37, i64 776}
!124 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !125, i64 224, !126, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !38, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !38, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!125 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!126 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!127 = distinct !{!127, !52, !53}
!128 = !{!129, !37, i64 352}
!129 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!130 = distinct !{!130, !52, !53}
!131 = !{!132, !37, i64 256}
!132 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !133, i64 280, !141, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !142, i64 4400, !143, i64 4416, !146, i64 4600, !37, i64 4608, !147, i64 4616, !37, i64 4640, !58, i64 4648, !58, i64 4656, !135, i64 4664, !136, i64 4824, !148, i64 4888, !37, i64 4952}
!133 = !{!"RenderData", !134, i64 0, !37, i64 248, !37, i64 256, !137, i64 264, !138, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !43, i64 544, !43, i64 560, !139, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !140, i64 2616, !41, i64 3976, !41, i64 3980}
!134 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !135, i64 24, !136, i64 184}
!135 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!136 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!137 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!138 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!139 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!140 = !{!"BakeData", !134, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!141 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!142 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!143 = !{!"GameData", !142, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !144, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !145, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!144 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!145 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!146 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!147 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!148 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!149 = !{!150, !37, i64 0}
!150 = !{!"Editing", !37, i64 0, !42, i64 8, !42, i64 24, !37, i64 40, !38, i64 48, !38, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !43, i64 2112}
!151 = !{!152, !41, i64 24}
!152 = !{!"SeqIterator", !37, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !41, i64 24}
!153 = !{!152, !37, i64 16}
!154 = !{!155, !37, i64 176}
!155 = !{!"Sequence", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !40, i64 156, !40, i64 158, !41, i64 160, !41, i64 164, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !44, i64 224, !44, i64 228, !37, i64 232, !37, i64 240, !37, i64 248, !42, i64 256, !37, i64 272, !37, i64 280, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !37, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !44, i64 324, !41, i64 328, !38, i64 332, !38, i64 333, !42, i64 336}
!156 = !{!155, !41, i64 96}
!157 = !{!155, !41, i64 100}
!158 = !{!46, !40, i64 66}
!159 = distinct !{!159, !52, !53}
!160 = distinct !{!160, !52, !53}
!161 = !{!162, !37, i64 344}
!162 = !{!"Tex", !36, i64 0, !37, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !163, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!163 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!164 = distinct !{!164, !52, !53}
!165 = !{!166, !37, i64 176}
!166 = !{!"Camera", !36, i64 0, !37, i64 120, !38, i64 128, !38, i64 129, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !37, i64 176, !37, i64 184, !38, i64 192, !38, i64 193}
!167 = distinct !{!167, !52, !53}
!168 = !{!169, !37, i64 344}
!169 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!170 = distinct !{!170, !52, !53}
!171 = !{!172, !37, i64 184}
!172 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !173, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!173 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!174 = distinct !{!174, !52, !53}
!175 = distinct !{!175, !52, !53}
!176 = !{!35, !40, i64 98}
!177 = distinct !{!177, !52, !53}
!178 = !{!55, !37, i64 0}
!179 = !{!66, !37, i64 152}
!180 = !{!181, !37, i64 0}
!181 = !{!"bActionChannel", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !41, i64 48, !38, i64 52, !41, i64 116}
!182 = !{!181, !37, i64 24}
!183 = !{!181, !37, i64 32}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = !{!187, !37, i64 0}
!187 = !{!"IpoDriver", !37, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !38, i64 16}
!188 = !{!187, !40, i64 12}
!189 = !{!35, !40, i64 156}
!190 = distinct !{!190, !52, !53}
!191 = !{!36, !40, i64 98}
!192 = distinct !{!192, !52, !53}
!193 = !{!194, !41, i64 288}
!194 = !{!"ChannelDriver", !42, i64 0, !38, i64 16, !37, i64 272, !44, i64 280, !44, i64 284, !41, i64 288, !41, i64 292}
!195 = !{!38, !38, i64 0}
!196 = !{!187, !40, i64 8}
!197 = !{!187, !40, i64 10}
!198 = !{!199, !37, i64 0}
!199 = !{!"DriverTarget", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 48, !40, i64 50, !41, i64 52}
!200 = !{!199, !41, i64 52}
!201 = !{!199, !40, i64 48}
!202 = !{!199, !40, i64 50}
!203 = !{!204, !37, i64 24}
!204 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !44, i64 104, !44, i64 108}
!205 = !{!46, !40, i64 76}
!206 = !{!204, !40, i64 72}
!207 = !{!46, !40, i64 74}
!208 = !{!204, !40, i64 74}
!209 = !{!210, !37, i64 16}
!210 = !{!"FModifier", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !40, i64 88, !40, i64 90, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!211 = !{!212, !40, i64 2}
!212 = !{!"FMod_Cycles", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6}
!213 = !{!212, !40, i64 0}
!214 = !{!46, !40, i64 64}
!215 = !{!216, !37, i64 8}
!216 = !{!"AdrBit2Path", !41, i64 0, !37, i64 8, !41, i64 16}
!217 = !{!204, !37, i64 80}
!218 = !{!216, !41, i64 16}
!219 = !{!204, !41, i64 76}
!220 = !{!46, !40, i64 70}
!221 = !{!204, !41, i64 64}
!222 = !{!204, !37, i64 48}
!223 = !{i64 0, i64 36, !195, i64 36, i64 4, !224, i64 40, i64 4, !224, i64 44, i64 4, !224, i64 48, i64 1, !195, i64 49, i64 1, !195, i64 50, i64 1, !195, i64 51, i64 1, !195, i64 52, i64 1, !195, i64 53, i64 1, !195, i64 54, i64 1, !195, i64 55, i64 1, !195, i64 56, i64 4, !224, i64 60, i64 4, !224, i64 64, i64 4, !224, i64 68, i64 4, !195}
!224 = !{!44, !44, i64 0}
!225 = !{!226, !38, i64 48}
!226 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!227 = !{!226, !38, i64 54}
!228 = !{!226, !38, i64 49}
!229 = !{!226, !38, i64 50}
!230 = !{!216, !41, i64 0}
!231 = distinct !{!231, !52, !53}
!232 = distinct !{!232, !52, !53}
!233 = !{!41, !41, i64 0}
!234 = !{!46, !40, i64 72}
!235 = !{!40, !40, i64 0}
!236 = !{!172, !41, i64 260}
!237 = !{!194, !37, i64 0}
!238 = !{!155, !41, i64 140}
!239 = !{!155, !41, i64 136}
!240 = distinct !{!240, !52, !53}
!241 = !{!42, !37, i64 8}
!242 = !{!66, !37, i64 160}
!243 = !{!66, !37, i64 120}
!244 = !{!66, !37, i64 128}
!245 = !{!246, !41, i64 32}
!246 = !{!"bActionGroup", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !41, i64 36, !38, i64 40, !247, i64 104}
!247 = !{!"ThemeWireColor", !38, i64 0, !38, i64 4, !38, i64 8, !40, i64 12, !40, i64 14}
