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
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintChannel = type { ptr, ptr, ptr, i16, [30 x i8] }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
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
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.bActionStrip = type { ptr, ptr, i16, i16, i16, i16, ptr, ptr, ptr, float, float, float, float, float, float, float, float, float, float, [32 x i8], [32 x i8], %struct.ListBase }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.bActionChannel = type { ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i32 }
%struct.IpoDriver = type { ptr, i16, i16, i16, i16, [128 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FMod_Cycles = type { i16, i16, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
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
@ob_layer_bits = internal global [20 x %struct.AdrBit2Path] [%struct.AdrBit2Path { i32 1, ptr @.str.33, i32 0 }, %struct.AdrBit2Path { i32 2, ptr @.str.33, i32 1 }, %struct.AdrBit2Path { i32 4, ptr @.str.33, i32 2 }, %struct.AdrBit2Path { i32 8, ptr @.str.33, i32 3 }, %struct.AdrBit2Path { i32 16, ptr @.str.33, i32 4 }, %struct.AdrBit2Path { i32 32, ptr @.str.33, i32 5 }, %struct.AdrBit2Path { i32 64, ptr @.str.33, i32 6 }, %struct.AdrBit2Path { i32 128, ptr @.str.33, i32 7 }, %struct.AdrBit2Path { i32 256, ptr @.str.33, i32 8 }, %struct.AdrBit2Path { i32 512, ptr @.str.33, i32 9 }, %struct.AdrBit2Path { i32 1024, ptr @.str.33, i32 10 }, %struct.AdrBit2Path { i32 2048, ptr @.str.33, i32 11 }, %struct.AdrBit2Path { i32 4096, ptr @.str.33, i32 12 }, %struct.AdrBit2Path { i32 8192, ptr @.str.33, i32 13 }, %struct.AdrBit2Path { i32 16384, ptr @.str.33, i32 14 }, %struct.AdrBit2Path { i32 32768, ptr @.str.33, i32 15 }, %struct.AdrBit2Path { i32 65536, ptr @.str.33, i32 16 }, %struct.AdrBit2Path { i32 131072, ptr @.str.33, i32 17 }, %struct.AdrBit2Path { i32 262144, ptr @.str.33, i32 18 }, %struct.AdrBit2Path { i32 524288, ptr @.str.33, i32 19 }], align 16
@ma_mode_bits = internal global [2 x %struct.AdrBit2Path] [%struct.AdrBit2Path { i32 131072, ptr @.str.34, i32 0 }, %struct.AdrBit2Path { i32 262144, ptr @.str.35, i32 0 }], align 16
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
@.str.48 = private unnamed_addr constant [7 x i8] c"[\22%d\22]\00", align 1
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
@reltable.get_rna_access = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.get_rna_access to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.get_rna_access to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.get_rna_access to i64)) to i32)], align 4
@switch.table.adrcode_to_dtar_transchan = private unnamed_addr constant [14 x i16] [i16 1, i16 2, i16 0, i16 0, i16 0, i16 3, i16 4, i16 5, i16 0, i16 0, i16 0, i16 6, i16 6, i16 6], align 2
@switch.table.camera_adrcodes_to_paths = private unnamed_addr constant [7 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr null, ptr null, ptr @.str.120, ptr @.str.121], align 8
@switch.table.sound_adrcodes_to_paths = private unnamed_addr constant [4 x ptr] [ptr @.str.129, ptr @.str.130, ptr null, ptr @.str.131], align 8

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %14(ptr noundef nonnull %11) #13
  br label %15

15:                                               ; preds = %13, %5
  %16 = getelementptr inbounds %struct.IpoCurve, ptr %7, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %20(ptr noundef nonnull %17) #13
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.IpoCurve, ptr %7, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !50
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %26(ptr noundef nonnull %23) #13
  br label %27

27:                                               ; preds = %25, %21
  tail call void @BLI_freelinkN(ptr noundef nonnull %2, ptr noundef nonnull %7) #13
  %28 = icmp eq ptr %8, null
  br i1 %28, label %29, label %5, !llvm.loop !51

29:                                               ; preds = %27, %1
  %30 = phi i32 [ 0, %1 ], [ %9, %27 ]
  %31 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %30, ptr noundef nonnull %35) #14
  br label %37

37:                                               ; preds = %34, %29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @do_versions_ipos_to_animato(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.SeqIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.152)
  br label %555

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !55
  %10 = icmp sgt i16 %9, 249
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = zext nneg i16 %9 to i32
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %12) #14
  br label %555

14:                                               ; preds = %7
  %15 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
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
  br i1 %23, label %188, label %24

24:                                               ; preds = %20, %185
  %25 = phi ptr [ %186, %185 ], [ %22, %20 ]
  %26 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 4, i64 2
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %30) #14
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 107
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #13
  %38 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %39, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %42 = load ptr, ptr %38, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.ID, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !62
  %45 = add nsw i32 %44, -1
  store i32 %45, ptr %43, align 4, !tbaa !62
  store ptr null, ptr %38, align 8, !tbaa !61
  br label %46

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 16
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !64
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %51, align 4, !tbaa !64
  store ptr null, ptr %47, align 8, !tbaa !63
  br label %54

54:                                               ; preds = %50, %46
  tail call fastcc void @nlastrips_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %33) #14
  br label %102

55:                                               ; preds = %32
  %56 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 14
  %57 = load ptr, ptr %56, align 8, !tbaa !61
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 16
  %61 = load ptr, ptr %60, align 8, !tbaa !63
  %62 = icmp eq ptr %61, null
  br i1 %62, label %102, label %63

63:                                               ; preds = %59, %55
  %64 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #13
  %65 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 16
  %66 = load ptr, ptr %65, align 8, !tbaa !63
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  tail call fastcc void @action_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %66) #14
  %69 = load ptr, ptr %65, align 8, !tbaa !63
  %70 = load ptr, ptr %64, align 8, !tbaa !66
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ID, ptr %69, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !64
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %73, align 4, !tbaa !64
  store ptr null, ptr %65, align 8, !tbaa !63
  br label %76

76:                                               ; preds = %68, %72, %63
  %77 = load ptr, ptr %56, align 8, !tbaa !61
  %78 = icmp eq ptr %77, null
  br i1 %78, label %102, label %79

79:                                               ; preds = %76
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %77, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %80 = load ptr, ptr %56, align 8, !tbaa !61
  %81 = getelementptr inbounds %struct.ID, ptr %80, i64 0, i32 6
  %82 = load i32, ptr %81, align 4, !tbaa !62
  %83 = add nsw i32 %82, -1
  store i32 %83, ptr %81, align 4, !tbaa !62
  store ptr null, ptr %56, align 8, !tbaa !61
  %84 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 94
  %85 = load ptr, ptr %84, align 8, !tbaa !48
  %86 = icmp eq ptr %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 1
  br label %89

89:                                               ; preds = %87, %99
  %90 = phi ptr [ %85, %87 ], [ %100, %99 ]
  %91 = getelementptr inbounds %struct.bActuator, ptr %90, i64 0, i32 3
  %92 = load i16, ptr %91, align 8, !tbaa !68
  %93 = icmp eq i16 %92, 1
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.bActuator, ptr %90, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !70
  %97 = load ptr, ptr %88, align 8, !tbaa !71
  %98 = load ptr, ptr %97, align 8, !tbaa !66
  store ptr %98, ptr %96, align 8, !tbaa !72
  store i16 15, ptr %91, align 8, !tbaa !68
  br label %99

99:                                               ; preds = %89, %94
  %100 = load ptr, ptr %90, align 8, !tbaa !48
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %89, !llvm.loop !74

102:                                              ; preds = %99, %79, %76, %59, %54
  %103 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 18
  %104 = load ptr, ptr %103, align 8, !tbaa !75
  %105 = icmp eq ptr %104, null
  br i1 %105, label %135, label %106

106:                                              ; preds = %102
  %107 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #13
  %108 = load ptr, ptr %103, align 8, !tbaa !75
  %109 = load ptr, ptr %108, align 8, !tbaa !48
  %110 = icmp eq ptr %109, null
  br i1 %110, label %135, label %114

111:                                              ; preds = %132, %114
  %112 = load ptr, ptr %115, align 8, !tbaa !48
  %113 = icmp eq ptr %112, null
  br i1 %113, label %135, label %114, !llvm.loop !76

114:                                              ; preds = %106, %111
  %115 = phi ptr [ %112, %111 ], [ %109, %106 ]
  %116 = getelementptr inbounds %struct.bPoseChannel, ptr %115, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !48
  %118 = icmp eq ptr %117, null
  br i1 %118, label %111, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.bPoseChannel, ptr %115, i64 0, i32 4
  br label %121

121:                                              ; preds = %119, %132
  %122 = phi ptr [ %117, %119 ], [ %133, %132 ]
  %123 = getelementptr inbounds %struct.bConstraint, ptr %122, i64 0, i32 11
  %124 = load ptr, ptr %123, align 8, !tbaa !77
  %125 = icmp eq ptr %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.bConstraint, ptr %122, i64 0, i32 7
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %124, ptr noundef nonnull %120, ptr noundef nonnull %127, ptr noundef null) #14
  %128 = load ptr, ptr %123, align 8, !tbaa !77
  %129 = getelementptr inbounds %struct.ID, ptr %128, i64 0, i32 6
  %130 = load i32, ptr %129, align 4, !tbaa !62
  %131 = add nsw i32 %130, -1
  store i32 %131, ptr %129, align 4, !tbaa !62
  store ptr null, ptr %123, align 8, !tbaa !77
  br label %132

132:                                              ; preds = %121, %126
  %133 = load ptr, ptr %122, align 8, !tbaa !48
  %134 = icmp eq ptr %133, null
  br i1 %134, label %111, label %121, !llvm.loop !79

135:                                              ; preds = %111, %106, %102
  %136 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 106
  %137 = load ptr, ptr %136, align 8, !tbaa !48
  %138 = icmp eq ptr %137, null
  br i1 %138, label %155, label %139

139:                                              ; preds = %135, %152
  %140 = phi ptr [ %153, %152 ], [ %137, %135 ]
  %141 = getelementptr inbounds %struct.bConstraint, ptr %140, i64 0, i32 11
  %142 = load ptr, ptr %141, align 8, !tbaa !77
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %139
  %145 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #13
  %146 = load ptr, ptr %141, align 8, !tbaa !77
  %147 = getelementptr inbounds %struct.bConstraint, ptr %140, i64 0, i32 7
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef %146, ptr noundef null, ptr noundef nonnull %147, ptr noundef null) #14
  %148 = load ptr, ptr %141, align 8, !tbaa !77
  %149 = getelementptr inbounds %struct.ID, ptr %148, i64 0, i32 6
  %150 = load i32, ptr %149, align 4, !tbaa !62
  %151 = add nsw i32 %150, -1
  store i32 %151, ptr %149, align 4, !tbaa !62
  store ptr null, ptr %141, align 8, !tbaa !77
  br label %152

152:                                              ; preds = %139, %144
  %153 = load ptr, ptr %140, align 8, !tbaa !48
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %139, !llvm.loop !80

155:                                              ; preds = %152, %135
  %156 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 23
  %157 = load ptr, ptr %156, align 8, !tbaa !81
  %158 = icmp eq ptr %157, null
  br i1 %158, label %177, label %159

159:                                              ; preds = %155
  %160 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %25) #13
  %161 = load ptr, ptr %156, align 8, !tbaa !81
  %162 = icmp eq ptr %161, null
  br i1 %162, label %177, label %163

163:                                              ; preds = %159, %175
  %164 = phi ptr [ %165, %175 ], [ %161, %159 ]
  %165 = load ptr, ptr %164, align 8, !tbaa !82
  %166 = getelementptr inbounds %struct.bConstraintChannel, ptr %164, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !84
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.bConstraintChannel, ptr %164, i64 0, i32 4
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %25, ptr noundef nonnull %167, ptr noundef null, ptr noundef nonnull %170, ptr noundef null) #14
  %171 = load ptr, ptr %166, align 8, !tbaa !84
  %172 = getelementptr inbounds %struct.ID, ptr %171, i64 0, i32 6
  %173 = load i32, ptr %172, align 4, !tbaa !62
  %174 = add nsw i32 %173, -1
  store i32 %174, ptr %172, align 4, !tbaa !62
  store ptr null, ptr %166, align 8, !tbaa !84
  br label %175

175:                                              ; preds = %169, %163
  tail call void @BLI_freelinkN(ptr noundef nonnull %156, ptr noundef nonnull %164) #13
  %176 = icmp eq ptr %165, null
  br i1 %176, label %177, label %163, !llvm.loop !85

177:                                              ; preds = %175, %159, %155
  %178 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %25) #13
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr %178, align 8, !tbaa !66
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.bAction, ptr %181, i64 0, i32 7
  store i32 16975, ptr %184, align 8, !tbaa !86
  br label %185

185:                                              ; preds = %183, %180, %177
  %186 = load ptr, ptr %25, align 8, !tbaa !48
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %24, !llvm.loop !87

188:                                              ; preds = %185, %20
  %189 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %190 = load ptr, ptr %189, align 8, !tbaa !48
  %191 = icmp eq ptr %190, null
  br i1 %191, label %222, label %192

192:                                              ; preds = %188, %219
  %193 = phi ptr [ %220, %219 ], [ %190, %188 ]
  %194 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.ID, ptr %193, i64 0, i32 4, i64 2
  %199 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %198) #14
  br label %200

200:                                              ; preds = %197, %192
  %201 = getelementptr inbounds %struct.Key, ptr %193, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !88
  %203 = icmp eq ptr %202, null
  br i1 %203, label %219, label %204

204:                                              ; preds = %200
  %205 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %193) #13
  %206 = load ptr, ptr %201, align 8, !tbaa !88
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %193, ptr noundef %206, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %207 = load ptr, ptr %205, align 8, !tbaa !66
  %208 = icmp eq ptr %207, null
  %209 = load ptr, ptr %201, align 8, !tbaa !88
  br i1 %208, label %215, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.Ipo, ptr %209, i64 0, i32 3
  %212 = load i16, ptr %211, align 8, !tbaa !90
  %213 = sext i16 %212 to i32
  %214 = getelementptr inbounds %struct.bAction, ptr %207, i64 0, i32 7
  store i32 %213, ptr %214, align 8, !tbaa !86
  br label %215

215:                                              ; preds = %210, %204
  %216 = getelementptr inbounds %struct.ID, ptr %209, i64 0, i32 6
  %217 = load i32, ptr %216, align 4, !tbaa !62
  %218 = add nsw i32 %217, -1
  store i32 %218, ptr %216, align 4, !tbaa !62
  store ptr null, ptr %201, align 8, !tbaa !88
  br label %219

219:                                              ; preds = %215, %200
  %220 = load ptr, ptr %193, align 8, !tbaa !48
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %192, !llvm.loop !91

222:                                              ; preds = %219, %188
  %223 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %224 = load ptr, ptr %223, align 8, !tbaa !48
  %225 = icmp eq ptr %224, null
  br i1 %225, label %256, label %226

226:                                              ; preds = %222, %253
  %227 = phi ptr [ %254, %253 ], [ %224, %222 ]
  %228 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %229 = and i32 %228, 1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.ID, ptr %227, i64 0, i32 4, i64 2
  %233 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %232) #14
  br label %234

234:                                              ; preds = %231, %226
  %235 = getelementptr inbounds %struct.Material, ptr %227, i64 0, i32 104
  %236 = load ptr, ptr %235, align 8, !tbaa !92
  %237 = icmp eq ptr %236, null
  br i1 %237, label %253, label %238

238:                                              ; preds = %234
  %239 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %227) #13
  %240 = load ptr, ptr %235, align 8, !tbaa !92
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %227, ptr noundef %240, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %241 = load ptr, ptr %239, align 8, !tbaa !66
  %242 = icmp eq ptr %241, null
  %243 = load ptr, ptr %235, align 8, !tbaa !92
  br i1 %242, label %249, label %244

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.Ipo, ptr %243, i64 0, i32 3
  %246 = load i16, ptr %245, align 8, !tbaa !90
  %247 = sext i16 %246 to i32
  %248 = getelementptr inbounds %struct.bAction, ptr %241, i64 0, i32 7
  store i32 %247, ptr %248, align 8, !tbaa !86
  br label %249

249:                                              ; preds = %244, %238
  %250 = getelementptr inbounds %struct.ID, ptr %243, i64 0, i32 6
  %251 = load i32, ptr %250, align 4, !tbaa !62
  %252 = add nsw i32 %251, -1
  store i32 %252, ptr %250, align 4, !tbaa !62
  store ptr null, ptr %235, align 8, !tbaa !92
  br label %253

253:                                              ; preds = %249, %234
  %254 = load ptr, ptr %227, align 8, !tbaa !48
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %226, !llvm.loop !96

256:                                              ; preds = %253, %222
  %257 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %258 = load ptr, ptr %257, align 8, !tbaa !48
  %259 = icmp eq ptr %258, null
  br i1 %259, label %290, label %260

260:                                              ; preds = %256, %287
  %261 = phi ptr [ %288, %287 ], [ %258, %256 ]
  %262 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %263 = and i32 %262, 1
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.ID, ptr %261, i64 0, i32 4, i64 2
  %267 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef nonnull %266) #14
  br label %268

268:                                              ; preds = %265, %260
  %269 = getelementptr inbounds %struct.World, ptr %261, i64 0, i32 69
  %270 = load ptr, ptr %269, align 8, !tbaa !97
  %271 = icmp eq ptr %270, null
  br i1 %271, label %287, label %272

272:                                              ; preds = %268
  %273 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %261) #13
  %274 = load ptr, ptr %269, align 8, !tbaa !97
  tail call fastcc void @ipo_to_animdata(ptr noundef nonnull %261, ptr noundef %274, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %275 = load ptr, ptr %273, align 8, !tbaa !66
  %276 = icmp eq ptr %275, null
  %277 = load ptr, ptr %269, align 8, !tbaa !97
  br i1 %276, label %283, label %278

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.Ipo, ptr %277, i64 0, i32 3
  %280 = load i16, ptr %279, align 8, !tbaa !90
  %281 = sext i16 %280 to i32
  %282 = getelementptr inbounds %struct.bAction, ptr %275, i64 0, i32 7
  store i32 %281, ptr %282, align 8, !tbaa !86
  br label %283

283:                                              ; preds = %278, %272
  %284 = getelementptr inbounds %struct.ID, ptr %277, i64 0, i32 6
  %285 = load i32, ptr %284, align 4, !tbaa !62
  %286 = add nsw i32 %285, -1
  store i32 %286, ptr %284, align 4, !tbaa !62
  store ptr null, ptr %269, align 8, !tbaa !97
  br label %287

287:                                              ; preds = %283, %268
  %288 = load ptr, ptr %261, align 8, !tbaa !48
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %260, !llvm.loop !99

290:                                              ; preds = %287, %256
  %291 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %292 = load ptr, ptr %291, align 8, !tbaa !48
  %293 = icmp eq ptr %292, null
  br i1 %293, label %359, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %296 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  br label %297

297:                                              ; preds = %294, %356
  %298 = phi ptr [ %292, %294 ], [ %357, %356 ]
  %299 = getelementptr inbounds %struct.Scene, ptr %298, i64 0, i32 19
  %300 = load ptr, ptr %299, align 8, !tbaa !100
  %301 = icmp eq ptr %300, null
  br i1 %301, label %356, label %302

302:                                              ; preds = %297
  %303 = load ptr, ptr %300, align 8, !tbaa !118
  %304 = icmp eq ptr %303, null
  br i1 %304, label %356, label %305

305:                                              ; preds = %302
  %306 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %298) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %300, ptr noundef nonnull %3, i8 noundef zeroext 0) #13
  %307 = load i32, ptr %295, align 8, !tbaa !120
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %355, label %309

309:                                              ; preds = %305, %352
  %310 = load ptr, ptr %296, align 8, !tbaa !122
  %311 = getelementptr inbounds %struct.Sequence, ptr %310, i64 0, i32 25
  %312 = load ptr, ptr %311, align 8, !tbaa !123
  %313 = icmp eq ptr %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.Ipo, ptr %312, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !34
  br label %317

317:                                              ; preds = %309, %314
  %318 = phi ptr [ %316, %314 ], [ null, %309 ]
  %319 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %320 = and i32 %319, 1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.Sequence, ptr %310, i64 0, i32 4, i64 2
  %324 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %323) #14
  %325 = load ptr, ptr %311, align 8, !tbaa !123
  br label %326

326:                                              ; preds = %322, %317
  %327 = phi ptr [ %325, %322 ], [ %312, %317 ]
  %328 = icmp eq ptr %327, null
  %329 = icmp eq ptr %318, null
  %330 = select i1 %328, i1 true, i1 %329
  br i1 %330, label %331, label %335

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.Sequence, ptr %310, i64 0, i32 5
  %333 = load i32, ptr %332, align 8, !tbaa !125
  %334 = or i32 %333, 4194304
  store i32 %334, ptr %332, align 8, !tbaa !125
  br label %352

335:                                              ; preds = %326
  %336 = getelementptr inbounds %struct.Sequence, ptr %310, i64 0, i32 6
  %337 = load i32, ptr %336, align 4, !tbaa !126
  switch i32 %337, label %340 [
    i32 0, label %338
    i32 1, label %338
    i32 2, label %338
    i32 3, label %338
    i32 28, label %338
    i32 29, label %339
  ]

338:                                              ; preds = %335, %335, %335, %335, %335
  br label %340

339:                                              ; preds = %335
  br label %340

340:                                              ; preds = %335, %339, %338
  %341 = phi i16 [ 1, %335 ], [ 2, %339 ], [ 3, %338 ]
  %342 = getelementptr inbounds %struct.IpoCurve, ptr %318, i64 0, i32 7
  store i16 %341, ptr %342, align 2, !tbaa !127
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %298, ptr noundef nonnull %327, ptr noundef null, ptr noundef null, ptr noundef nonnull %310) #14
  %343 = load ptr, ptr %306, align 8, !tbaa !66
  %344 = icmp eq ptr %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.bAction, ptr %343, i64 0, i32 7
  store i32 17235, ptr %346, align 8, !tbaa !86
  br label %347

347:                                              ; preds = %345, %340
  %348 = load ptr, ptr %311, align 8, !tbaa !123
  %349 = getelementptr inbounds %struct.ID, ptr %348, i64 0, i32 6
  %350 = load i32, ptr %349, align 4, !tbaa !62
  %351 = add nsw i32 %350, -1
  store i32 %351, ptr %349, align 4, !tbaa !62
  store ptr null, ptr %311, align 8, !tbaa !123
  br label %352

352:                                              ; preds = %347, %331
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #13
  %353 = load i32, ptr %295, align 8, !tbaa !120
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %309, !llvm.loop !128

355:                                              ; preds = %352, %305
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  br label %356

356:                                              ; preds = %355, %302, %297
  %357 = load ptr, ptr %298, align 8, !tbaa !48
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %297, !llvm.loop !129

359:                                              ; preds = %356, %290
  %360 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %361 = load ptr, ptr %360, align 8, !tbaa !48
  %362 = icmp eq ptr %361, null
  br i1 %362, label %393, label %363

363:                                              ; preds = %359, %390
  %364 = phi ptr [ %391, %390 ], [ %361, %359 ]
  %365 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %366 = and i32 %365, 1
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.ID, ptr %364, i64 0, i32 4, i64 2
  %370 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %369) #14
  br label %371

371:                                              ; preds = %368, %363
  %372 = getelementptr inbounds %struct.Tex, ptr %364, i64 0, i32 53
  %373 = load ptr, ptr %372, align 8, !tbaa !130
  %374 = icmp eq ptr %373, null
  br i1 %374, label %390, label %375

375:                                              ; preds = %371
  %376 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %364) #13
  %377 = load ptr, ptr %372, align 8, !tbaa !130
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %364, ptr noundef %377, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %378 = load ptr, ptr %376, align 8, !tbaa !66
  %379 = icmp eq ptr %378, null
  %380 = load ptr, ptr %372, align 8, !tbaa !130
  br i1 %379, label %386, label %381

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.Ipo, ptr %380, i64 0, i32 3
  %383 = load i16, ptr %382, align 8, !tbaa !90
  %384 = sext i16 %383 to i32
  %385 = getelementptr inbounds %struct.bAction, ptr %378, i64 0, i32 7
  store i32 %384, ptr %385, align 8, !tbaa !86
  br label %386

386:                                              ; preds = %381, %375
  %387 = getelementptr inbounds %struct.ID, ptr %380, i64 0, i32 6
  %388 = load i32, ptr %387, align 4, !tbaa !62
  %389 = add nsw i32 %388, -1
  store i32 %389, ptr %387, align 4, !tbaa !62
  store ptr null, ptr %372, align 8, !tbaa !130
  br label %390

390:                                              ; preds = %386, %371
  %391 = load ptr, ptr %364, align 8, !tbaa !48
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %363, !llvm.loop !133

393:                                              ; preds = %390, %359
  %394 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %395 = load ptr, ptr %394, align 8, !tbaa !48
  %396 = icmp eq ptr %395, null
  br i1 %396, label %427, label %397

397:                                              ; preds = %393, %424
  %398 = phi ptr [ %425, %424 ], [ %395, %393 ]
  %399 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %400 = and i32 %399, 1
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds %struct.ID, ptr %398, i64 0, i32 4, i64 2
  %404 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %403) #14
  br label %405

405:                                              ; preds = %402, %397
  %406 = getelementptr inbounds %struct.Camera, ptr %398, i64 0, i32 16
  %407 = load ptr, ptr %406, align 8, !tbaa !134
  %408 = icmp eq ptr %407, null
  br i1 %408, label %424, label %409

409:                                              ; preds = %405
  %410 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %398) #13
  %411 = load ptr, ptr %406, align 8, !tbaa !134
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %398, ptr noundef %411, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %412 = load ptr, ptr %410, align 8, !tbaa !66
  %413 = icmp eq ptr %412, null
  %414 = load ptr, ptr %406, align 8, !tbaa !134
  br i1 %413, label %420, label %415

415:                                              ; preds = %409
  %416 = getelementptr inbounds %struct.Ipo, ptr %414, i64 0, i32 3
  %417 = load i16, ptr %416, align 8, !tbaa !90
  %418 = sext i16 %417 to i32
  %419 = getelementptr inbounds %struct.bAction, ptr %412, i64 0, i32 7
  store i32 %418, ptr %419, align 8, !tbaa !86
  br label %420

420:                                              ; preds = %415, %409
  %421 = getelementptr inbounds %struct.ID, ptr %414, i64 0, i32 6
  %422 = load i32, ptr %421, align 4, !tbaa !62
  %423 = add nsw i32 %422, -1
  store i32 %423, ptr %421, align 4, !tbaa !62
  store ptr null, ptr %406, align 8, !tbaa !134
  br label %424

424:                                              ; preds = %420, %405
  %425 = load ptr, ptr %398, align 8, !tbaa !48
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %397, !llvm.loop !136

427:                                              ; preds = %424, %393
  %428 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %429 = load ptr, ptr %428, align 8, !tbaa !48
  %430 = icmp eq ptr %429, null
  br i1 %430, label %461, label %431

431:                                              ; preds = %427, %458
  %432 = phi ptr [ %459, %458 ], [ %429, %427 ]
  %433 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %434 = and i32 %433, 1
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %439, label %436

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.ID, ptr %432, i64 0, i32 4, i64 2
  %438 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %437) #14
  br label %439

439:                                              ; preds = %436, %431
  %440 = getelementptr inbounds %struct.Lamp, ptr %432, i64 0, i32 68
  %441 = load ptr, ptr %440, align 8, !tbaa !137
  %442 = icmp eq ptr %441, null
  br i1 %442, label %458, label %443

443:                                              ; preds = %439
  %444 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %432) #13
  %445 = load ptr, ptr %440, align 8, !tbaa !137
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %432, ptr noundef %445, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %446 = load ptr, ptr %444, align 8, !tbaa !66
  %447 = icmp eq ptr %446, null
  %448 = load ptr, ptr %440, align 8, !tbaa !137
  br i1 %447, label %454, label %449

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.Ipo, ptr %448, i64 0, i32 3
  %451 = load i16, ptr %450, align 8, !tbaa !90
  %452 = sext i16 %451 to i32
  %453 = getelementptr inbounds %struct.bAction, ptr %446, i64 0, i32 7
  store i32 %452, ptr %453, align 8, !tbaa !86
  br label %454

454:                                              ; preds = %449, %443
  %455 = getelementptr inbounds %struct.ID, ptr %448, i64 0, i32 6
  %456 = load i32, ptr %455, align 4, !tbaa !62
  %457 = add nsw i32 %456, -1
  store i32 %457, ptr %455, align 4, !tbaa !62
  store ptr null, ptr %440, align 8, !tbaa !137
  br label %458

458:                                              ; preds = %454, %439
  %459 = load ptr, ptr %432, align 8, !tbaa !48
  %460 = icmp eq ptr %459, null
  br i1 %460, label %461, label %431, !llvm.loop !139

461:                                              ; preds = %458, %427
  %462 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %463 = load ptr, ptr %462, align 8, !tbaa !48
  %464 = icmp eq ptr %463, null
  br i1 %464, label %495, label %465

465:                                              ; preds = %461, %492
  %466 = phi ptr [ %493, %492 ], [ %463, %461 ]
  %467 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %468 = and i32 %467, 1
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.ID, ptr %466, i64 0, i32 4, i64 2
  %472 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %471) #14
  br label %473

473:                                              ; preds = %470, %465
  %474 = getelementptr inbounds %struct.Curve, ptr %466, i64 0, i32 8
  %475 = load ptr, ptr %474, align 8, !tbaa !140
  %476 = icmp eq ptr %475, null
  br i1 %476, label %492, label %477

477:                                              ; preds = %473
  %478 = call ptr @BKE_id_add_animdata(ptr noundef nonnull %466) #13
  %479 = load ptr, ptr %474, align 8, !tbaa !140
  call fastcc void @ipo_to_animdata(ptr noundef nonnull %466, ptr noundef %479, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %480 = load ptr, ptr %478, align 8, !tbaa !66
  %481 = icmp eq ptr %480, null
  %482 = load ptr, ptr %474, align 8, !tbaa !140
  br i1 %481, label %488, label %483

483:                                              ; preds = %477
  %484 = getelementptr inbounds %struct.Ipo, ptr %482, i64 0, i32 3
  %485 = load i16, ptr %484, align 8, !tbaa !90
  %486 = sext i16 %485 to i32
  %487 = getelementptr inbounds %struct.bAction, ptr %480, i64 0, i32 7
  store i32 %486, ptr %487, align 8, !tbaa !86
  br label %488

488:                                              ; preds = %483, %477
  %489 = getelementptr inbounds %struct.ID, ptr %482, i64 0, i32 6
  %490 = load i32, ptr %489, align 4, !tbaa !62
  %491 = add nsw i32 %490, -1
  store i32 %491, ptr %489, align 4, !tbaa !62
  store ptr null, ptr %474, align 8, !tbaa !140
  br label %492

492:                                              ; preds = %488, %473
  %493 = load ptr, ptr %466, align 8, !tbaa !48
  %494 = icmp eq ptr %493, null
  br i1 %494, label %495, label %465, !llvm.loop !143

495:                                              ; preds = %492, %461
  %496 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  %497 = load ptr, ptr %496, align 8, !tbaa !48
  %498 = icmp eq ptr %497, null
  br i1 %498, label %518, label %499

499:                                              ; preds = %495, %513
  %500 = phi ptr [ %516, %513 ], [ %497, %495 ]
  %501 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %502 = and i32 %501, 1
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %507, label %504

504:                                              ; preds = %499
  %505 = getelementptr inbounds %struct.ID, ptr %500, i64 0, i32 4, i64 2
  %506 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %505) #14
  br label %507

507:                                              ; preds = %504, %499
  %508 = getelementptr inbounds %struct.bAction, ptr %500, i64 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !144
  %510 = icmp eq ptr %509, null
  br i1 %510, label %513, label %511

511:                                              ; preds = %507
  %512 = getelementptr inbounds %struct.bAction, ptr %500, i64 0, i32 7
  store i32 16975, ptr %512, align 8, !tbaa !86
  br label %513

513:                                              ; preds = %511, %507
  %514 = getelementptr inbounds %struct.bAction, ptr %500, i64 0, i32 3
  %515 = getelementptr inbounds %struct.bAction, ptr %500, i64 0, i32 1
  call fastcc void @action_to_animato(ptr noundef null, ptr noundef nonnull %500, ptr noundef nonnull %514, ptr noundef nonnull %515, ptr noundef nonnull %2) #14
  %516 = load ptr, ptr %500, align 8, !tbaa !48
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %499, !llvm.loop !145

518:                                              ; preds = %513, %495
  %519 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 23
  %520 = load ptr, ptr %519, align 8, !tbaa !48
  %521 = icmp eq ptr %520, null
  br i1 %521, label %549, label %522

522:                                              ; preds = %518, %542
  %523 = phi ptr [ %547, %542 ], [ %520, %518 ]
  %524 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %525 = and i32 %524, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %522
  %528 = getelementptr inbounds %struct.ID, ptr %523, i64 0, i32 4, i64 2
  %529 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %528) #14
  br label %530

530:                                              ; preds = %527, %522
  %531 = getelementptr inbounds %struct.Ipo, ptr %523, i64 0, i32 1
  %532 = load ptr, ptr %531, align 8, !tbaa !34
  %533 = icmp eq ptr %532, null
  br i1 %533, label %542, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.ID, ptr %523, i64 0, i32 4, i64 2
  %536 = call ptr @add_empty_action(ptr noundef nonnull %0, ptr noundef nonnull %535) #13
  %537 = getelementptr inbounds %struct.bAction, ptr %536, i64 0, i32 1
  call fastcc void @ipo_to_animato(ptr noundef null, ptr noundef nonnull %523, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %537, ptr noundef nonnull %2) #14
  %538 = getelementptr inbounds %struct.Ipo, ptr %523, i64 0, i32 3
  %539 = load i16, ptr %538, align 8, !tbaa !90
  %540 = sext i16 %539 to i32
  %541 = getelementptr inbounds %struct.bAction, ptr %536, i64 0, i32 7
  store i32 %540, ptr %541, align 8, !tbaa !86
  br label %542

542:                                              ; preds = %534, %530
  %543 = getelementptr inbounds %struct.ID, ptr %523, i64 0, i32 6
  store i32 0, ptr %543, align 4, !tbaa !62
  %544 = getelementptr inbounds %struct.ID, ptr %523, i64 0, i32 5
  %545 = load i16, ptr %544, align 2, !tbaa !146
  %546 = and i16 %545, -513
  store i16 %546, ptr %544, align 2, !tbaa !146
  %547 = load ptr, ptr %523, align 8, !tbaa !48
  %548 = icmp eq ptr %547, null
  br i1 %548, label %549, label %522, !llvm.loop !147

549:                                              ; preds = %542, %518
  call void @free_fcurves(ptr noundef nonnull %2) #13
  %550 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %551 = and i32 %550, 1
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %555, label %553

553:                                              ; preds = %549
  %554 = call i32 @puts(ptr nonnull dereferenceable(1) @str.151)
  br label %555

555:                                              ; preds = %549, %553, %11, %5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipo_to_animdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !148 {
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca [66 x i8], align 16
  %9 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %10 = icmp eq ptr %1, null
  br i1 %10, label %71, label %11

11:                                               ; preds = %5
  %12 = icmp eq ptr %9, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.155)
  br label %71

15:                                               ; preds = %11
  %16 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
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
  %30 = tail call i32 @BLI_countlist(ptr noundef nonnull %29) #13
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %23, ptr noundef nonnull %25, ptr noundef nonnull %28, i32 noundef %30) #14
  br label %32

32:                                               ; preds = %19, %15
  call fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %33 = load ptr, ptr %6, align 8, !tbaa !149
  %34 = icmp eq ptr %33, null
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 @puts(ptr nonnull dereferenceable(1) @str.153)
  br label %41

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr %9, align 8, !tbaa !66
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %8) #15
  %45 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %46 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 66, ptr noundef nonnull @.str.20, ptr noundef nonnull %45) #13
  %47 = load ptr, ptr @G, align 8, !tbaa !150
  %48 = call ptr @add_empty_action(ptr noundef %47, ptr noundef nonnull %8) #13
  store ptr %48, ptr %9, align 8, !tbaa !66
  %49 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %8) #14
  %54 = load ptr, ptr %9, align 8, !tbaa !66
  br label %55

55:                                               ; preds = %52, %44
  %56 = phi ptr [ %54, %52 ], [ %48, %44 ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %8) #15
  br label %57

57:                                               ; preds = %55, %41
  %58 = phi ptr [ %56, %55 ], [ %42, %41 ]
  %59 = getelementptr inbounds %struct.bAction, ptr %58, i64 0, i32 1
  call void @BLI_movelisttolist(ptr noundef nonnull %59, ptr noundef nonnull %6) #13
  br label %60

60:                                               ; preds = %57, %32
  %61 = load ptr, ptr %7, align 8, !tbaa !149
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.154)
  br label %69

69:                                               ; preds = %67, %63
  %70 = getelementptr inbounds %struct.AnimData, ptr %9, i64 0, i32 5
  call void @BLI_movelisttolist(ptr noundef nonnull %70, ptr noundef nonnull %7) #13
  br label %71

71:                                               ; preds = %60, %69, %5, %13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @nlastrips_to_animdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !151 {
  %3 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #13
  %4 = load ptr, ptr %1, align 8, !tbaa !149
  %5 = icmp eq ptr %4, null
  br i1 %5, label %98, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %96
  %9 = phi ptr [ null, %6 ], [ %91, %96 ]
  %10 = phi ptr [ %4, %6 ], [ %11, %96 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %struct.bActionStrip, ptr %10, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !154
  %14 = icmp eq ptr %13, null
  br i1 %14, label %90, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bAction, ptr %13, i64 0, i32 3
  %17 = getelementptr inbounds %struct.bAction, ptr %13, i64 0, i32 1
  tail call fastcc void @action_to_animato(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %7) #14
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %19 = tail call ptr %18(i64 noundef 208, ptr noundef nonnull @.str.23) #13
  %20 = load ptr, ptr %12, align 8, !tbaa !154
  %21 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !155
  %22 = getelementptr inbounds %struct.bActionStrip, ptr %10, i64 0, i32 9
  %23 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 10
  %24 = load <4 x float>, ptr %22, align 8, !tbaa !157
  store <4 x float> %24, ptr %23, align 8, !tbaa !157
  %25 = getelementptr inbounds %struct.bActionStrip, ptr %10, i64 0, i32 15
  %26 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 14
  %27 = load <2 x float>, ptr %25, align 8, !tbaa !157
  store <2 x float> %27, ptr %26, align 8, !tbaa !157
  %28 = getelementptr inbounds %struct.bActionStrip, ptr %10, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !158
  %30 = and i16 %29, 32
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 23
  %34 = load i32, ptr %33, align 8, !tbaa !159
  %35 = or i32 %34, 512
  store i32 %35, ptr %33, align 8, !tbaa !159
  br label %36

36:                                               ; preds = %32, %15
  %37 = getelementptr inbounds %struct.bActionStrip, ptr %10, i64 0, i32 17
  %38 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 16
  %39 = load <2 x float>, ptr %37, align 8, !tbaa !157
  store <2 x float> %39, ptr %38, align 8, !tbaa !157
  %40 = getelementptr inbounds %struct.bActionStrip, ptr %10, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !160
  %42 = icmp eq i16 %41, 1
  %43 = zext i1 %42 to i16
  %44 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 18
  store i16 %43, ptr %44, align 8, !tbaa !161
  %45 = and i16 %29, 2048
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 23
  %49 = load i32, ptr %48, align 8, !tbaa !159
  %50 = or i32 %49, 1024
  store i32 %50, ptr %48, align 8, !tbaa !159
  br label %51

51:                                               ; preds = %47, %36
  %52 = and i16 %29, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 23
  %56 = load i32, ptr %55, align 8, !tbaa !159
  %57 = or i32 %56, 2
  store i32 %57, ptr %55, align 8, !tbaa !159
  br label %58

58:                                               ; preds = %54, %51
  %59 = and i16 %29, 16
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 23
  %63 = load i32, ptr %62, align 8, !tbaa !159
  %64 = or i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !159
  br label %65

65:                                               ; preds = %61, %58
  %66 = and i16 %29, 64
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 23
  %70 = load i32, ptr %69, align 8, !tbaa !159
  %71 = or i32 %70, 4096
  store i32 %71, ptr %69, align 8, !tbaa !159
  br label %72

72:                                               ; preds = %68, %65
  %73 = and i16 %29, 128
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 23
  %77 = load i32, ptr %76, align 8, !tbaa !159
  %78 = or i32 %77, 2048
  store i32 %78, ptr %76, align 8, !tbaa !159
  br label %79

79:                                               ; preds = %75, %72
  %80 = and i16 %29, 8
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.NlaStrip, ptr %19, i64 0, i32 19
  store i16 2, ptr %83, align 2, !tbaa !162
  br label %84

84:                                               ; preds = %82, %79
  %85 = tail call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %9, ptr noundef nonnull %19) #13
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = tail call ptr @add_nlatrack(ptr noundef %3, ptr noundef null) #13
  %89 = tail call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef %88, ptr noundef nonnull %19) #13
  br label %90

90:                                               ; preds = %84, %87, %8
  %91 = phi ptr [ %88, %87 ], [ %9, %84 ], [ %9, %8 ]
  %92 = getelementptr inbounds %struct.bActionStrip, ptr %10, i64 0, i32 21
  %93 = load ptr, ptr %92, align 8, !tbaa !163
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  tail call void @BLI_freelistN(ptr noundef nonnull %92) #13
  br label %96

96:                                               ; preds = %95, %90
  tail call void @BLI_freelinkN(ptr noundef nonnull %1, ptr noundef nonnull %10) #13
  %97 = icmp eq ptr %11, null
  br i1 %97, label %98, label %8, !llvm.loop !164

98:                                               ; preds = %96, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @action_to_animdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !165 {
  %3 = tail call ptr @BKE_animdata_from_id(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !144
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !66
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.156)
  br label %18

18:                                               ; preds = %16, %12
  store ptr %1, ptr %3, align 8, !tbaa !66
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi ptr [ %1, %18 ], [ %10, %9 ]
  %21 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 3
  %22 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 1
  %23 = getelementptr inbounds %struct.AnimData, ptr %3, i64 0, i32 5
  tail call fastcc void @action_to_animato(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #14
  br label %24

24:                                               ; preds = %2, %5, %19
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @action_to_animato(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !166 {
  %6 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 2
  %7 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %6) #14, !range !167
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bAction, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !168
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @BLI_freelistN(ptr noundef nonnull %10) #13
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %6, align 8, !tbaa !144
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %14, %49
  %18 = phi ptr [ %19, %49 ], [ %15, %14 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !169
  %20 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !171
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 6
  tail call fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  %25 = load ptr, ptr %20, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.ID, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !62
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !62
  store ptr null, ptr %20, align 8, !tbaa !171
  br label %29

29:                                               ; preds = %23, %17
  %30 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !172
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bActionChannel, ptr %18, i64 0, i32 6
  br label %35

35:                                               ; preds = %33, %47
  %36 = phi ptr [ %31, %33 ], [ %37, %47 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !82
  %38 = getelementptr inbounds %struct.bConstraintChannel, ptr %36, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !84
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.bConstraintChannel, ptr %36, i64 0, i32 4
  tail call fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef nonnull %39, ptr noundef nonnull %34, ptr noundef nonnull %42, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  %43 = load ptr, ptr %38, align 8, !tbaa !84
  %44 = getelementptr inbounds %struct.ID, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !62
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %44, align 4, !tbaa !62
  store ptr null, ptr %38, align 8, !tbaa !84
  br label %47

47:                                               ; preds = %41, %35
  tail call void @BLI_freelinkN(ptr noundef nonnull %30, ptr noundef nonnull %36) #13
  %48 = icmp eq ptr %37, null
  br i1 %48, label %49, label %35, !llvm.loop !173

49:                                               ; preds = %47, %29
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %18) #13
  %50 = icmp eq ptr %19, null
  br i1 %50, label %51, label %17, !llvm.loop !174

51:                                               ; preds = %49, %14, %5
  ret void
}

; Function Attrs: optsize
declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ipo_to_animato(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !175 {
  %9 = icmp eq ptr %6, null
  %10 = icmp eq ptr %7, null
  %11 = or i1 %9, %10
  br i1 %11, label %97, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.157)
  br label %18

18:                                               ; preds = %16, %12
  %19 = icmp eq ptr %2, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !90
  %23 = icmp eq i16 %22, 16975
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.26) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.27) #16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr null, ptr %2
  br label %31

31:                                               ; preds = %20, %24, %27, %18
  %32 = phi ptr [ %30, %27 ], [ null, %18 ], [ null, %24 ], [ %2, %20 ]
  %33 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %61, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Ipo, ptr %1, i64 0, i32 5
  br label %38

38:                                               ; preds = %36, %58
  %39 = phi ptr [ %34, %36 ], [ %59, %58 ]
  %40 = getelementptr inbounds %struct.IpoCurve, ptr %39, i64 0, i32 20
  %41 = load ptr, ptr %40, align 8, !tbaa !50
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %41, align 8, !tbaa !176
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.IpoDriver, ptr %41, i64 0, i32 3
  %48 = load i16, ptr %47, align 4, !tbaa !178
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %43
  %51 = load i16, ptr %37, align 4, !tbaa !179
  %52 = sext i16 %51 to i32
  tail call fastcc void @icu_to_fcurves(ptr noundef %0, ptr noundef null, ptr noundef %7, ptr noundef nonnull %39, ptr noundef %32, ptr noundef %3, ptr noundef %4, i32 noundef %52) #14
  br label %58

53:                                               ; preds = %46
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %54(ptr noundef nonnull %41) #13
  store ptr null, ptr %40, align 8, !tbaa !50
  br label %58

55:                                               ; preds = %38
  %56 = load i16, ptr %37, align 4, !tbaa !179
  %57 = sext i16 %56 to i32
  tail call fastcc void @icu_to_fcurves(ptr noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %39, ptr noundef %32, ptr noundef %3, ptr noundef %4, i32 noundef %57) #14
  br label %58

58:                                               ; preds = %55, %53, %50
  %59 = load ptr, ptr %39, align 8, !tbaa !48
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %38, !llvm.loop !180

61:                                               ; preds = %58, %31
  %62 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  %63 = load i32, ptr %62, align 4, !tbaa !62
  %64 = add nsw i32 %63, -1
  store i32 %64, ptr %62, align 4, !tbaa !62
  %65 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %66 = load i16, ptr %65, align 2, !tbaa !181
  %67 = lshr i16 %66, 9
  %68 = and i16 %67, 1
  %69 = zext nneg i16 %68 to i32
  %70 = icmp sgt i32 %64, %69
  br i1 %70, label %97, label %71

71:                                               ; preds = %61
  %72 = load ptr, ptr %33, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %97, label %74

74:                                               ; preds = %71, %95
  %75 = phi ptr [ %76, %95 ], [ %72, %71 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !45
  %77 = getelementptr inbounds %struct.IpoCurve, ptr %75, i64 0, i32 20
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %81(ptr noundef nonnull %78) #13
  br label %82

82:                                               ; preds = %80, %74
  %83 = getelementptr inbounds %struct.IpoCurve, ptr %75, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  tail call void %87(ptr noundef nonnull %84) #13
  br label %88

88:                                               ; preds = %86, %82
  %89 = getelementptr inbounds %struct.IpoCurve, ptr %75, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !49
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  %94 = load ptr, ptr %83, align 8, !tbaa !47
  tail call void %93(ptr noundef %94) #13
  br label %95

95:                                               ; preds = %92, %88
  tail call void @BLI_freelinkN(ptr noundef nonnull %33, ptr noundef nonnull %75) #13
  %96 = icmp eq ptr %76, null
  br i1 %96, label %97, label %74, !llvm.loop !182

97:                                               ; preds = %95, %71, %61, %8
  ret void
}

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_movelisttolist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_nlatrack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !183 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @icu_to_fcurves(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !184 {
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %11 = tail call ptr %10(i64 noundef 112, ptr noundef nonnull @.str.28) #13
  %12 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @idriver_to_cdriver(ptr noundef nonnull %13) #14
  %17 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !185
  br label %18

18:                                               ; preds = %15, %8
  %19 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 12
  %20 = load i16, ptr %19, align 4, !tbaa !187
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %25 = load i16, ptr %24, align 8, !tbaa !188
  %26 = or i16 %25, 1
  store i16 %26, ptr %24, align 8, !tbaa !188
  br label %27

27:                                               ; preds = %23, %18
  %28 = and i16 %20, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %32 = load i16, ptr %31, align 8, !tbaa !188
  %33 = or i16 %32, 2
  store i16 %33, ptr %31, align 8, !tbaa !188
  br label %34

34:                                               ; preds = %30, %27
  %35 = and i16 %20, 32
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %39 = load i16, ptr %38, align 8, !tbaa !188
  %40 = or i16 %39, 4
  store i16 %40, ptr %38, align 8, !tbaa !188
  br label %41

41:                                               ; preds = %37, %34
  %42 = and i16 %20, 128
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %46 = load i16, ptr %45, align 8, !tbaa !188
  %47 = or i16 %46, 16
  store i16 %47, ptr %45, align 8, !tbaa !188
  br label %48

48:                                               ; preds = %44, %41
  %49 = and i16 %20, 64
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %53 = load i16, ptr %52, align 8, !tbaa !188
  %54 = or i16 %53, 8
  store i16 %54, ptr %52, align 8, !tbaa !188
  br label %55

55:                                               ; preds = %51, %48
  %56 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 11
  %57 = load i16, ptr %56, align 2, !tbaa !189
  switch i16 %57, label %69 [
    i16 0, label %58
    i16 1, label %58
    i16 2, label %60
    i16 3, label %60
  ]

58:                                               ; preds = %55, %55
  %59 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 10
  store i16 %57, ptr %59, align 2, !tbaa !190
  br label %69

60:                                               ; preds = %55, %55
  %61 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 4
  %62 = tail call ptr @add_fmodifier(ptr noundef nonnull %61, i32 noundef 4) #13
  %63 = getelementptr inbounds %struct.FModifier, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !191
  %65 = load i16, ptr %56, align 2, !tbaa !189
  %66 = icmp eq i16 %65, 3
  %67 = select i1 %66, i16 2, i16 1
  %68 = getelementptr inbounds %struct.FMod_Cycles, ptr %64, i64 0, i32 1
  store i16 %67, ptr %68, align 2
  store i16 %67, ptr %64, align 2, !tbaa !193
  br label %69

69:                                               ; preds = %55, %60, %58
  %70 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 6
  %71 = load i16, ptr %70, align 8, !tbaa !195
  %72 = sext i16 %71 to i32
  %73 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 7
  %74 = load i16, ptr %73, align 2, !tbaa !127
  %75 = sext i16 %74 to i32
  %76 = call fastcc ptr @adrcode_bitmaps_to_paths(i32 noundef %72, i32 noundef %75, ptr noundef nonnull %9) #14
  %77 = icmp ne ptr %76, null
  %78 = load i32, ptr %9, align 4
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %164

81:                                               ; preds = %69
  %82 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !53
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %78) #14
  br label %87

87:                                               ; preds = %85, %81
  %88 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %89 = load i16, ptr %88, align 8, !tbaa !188
  %90 = or i16 %89, 6144
  store i16 %90, ptr %88, align 8, !tbaa !188
  %91 = icmp sgt i32 %78, 0
  br i1 %91, label %92, label %316

92:                                               ; preds = %87
  %93 = add nsw i32 %78, -1
  %94 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 9
  %95 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 3
  br label %96

96:                                               ; preds = %92, %160
  %97 = phi ptr [ %76, %92 ], [ %162, %160 ]
  %98 = phi i32 [ 0, %92 ], [ %161, %160 ]
  %99 = icmp slt i32 %98, %93
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = tail call ptr @copy_fcurve(ptr noundef %11) #13
  br label %102

102:                                              ; preds = %96, %100
  %103 = phi ptr [ %101, %100 ], [ %11, %96 ]
  %104 = getelementptr inbounds %struct.AdrBit2Path, ptr %97, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !196
  %106 = tail call ptr @BLI_strdup(ptr noundef %105) #13
  %107 = getelementptr inbounds %struct.FCurve, ptr %103, i64 0, i32 12
  store ptr %106, ptr %107, align 8, !tbaa !198
  %108 = getelementptr inbounds %struct.AdrBit2Path, ptr %97, i64 0, i32 2
  %109 = load i32, ptr %108, align 8, !tbaa !199
  %110 = getelementptr inbounds %struct.FCurve, ptr %103, i64 0, i32 11
  store i32 %109, ptr %110, align 4, !tbaa !200
  %111 = load i16, ptr %94, align 2, !tbaa !201
  %112 = sext i16 %111 to i32
  %113 = getelementptr inbounds %struct.FCurve, ptr %103, i64 0, i32 7
  store i32 %112, ptr %113, align 8, !tbaa !202
  %114 = load ptr, ptr %95, align 8, !tbaa !47
  %115 = icmp eq ptr %114, null
  br i1 %115, label %160, label %116

116:                                              ; preds = %102
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %118 = zext i32 %112 to i64
  %119 = mul nuw nsw i64 %118, 72
  %120 = tail call ptr %117(i64 noundef %119, ptr noundef nonnull @.str.30) #13
  %121 = getelementptr inbounds %struct.FCurve, ptr %103, i64 0, i32 5
  store ptr %120, ptr %121, align 8, !tbaa !203
  %122 = load i32, ptr %113, align 8, !tbaa !202
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %160, label %124

124:                                              ; preds = %116
  %125 = load ptr, ptr %95, align 8, !tbaa !47
  br label %126

126:                                              ; preds = %124, %145
  %127 = phi i32 [ %155, %145 ], [ 0, %124 ]
  %128 = phi ptr [ %156, %145 ], [ %120, %124 ]
  %129 = phi ptr [ %157, %145 ], [ %125, %124 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %128, ptr noundef nonnull align 4 dereferenceable(72) %129, i64 72, i1 false), !tbaa.struct !204
  %130 = getelementptr inbounds %struct.BezTriple, ptr %128, i64 0, i32 4
  store i8 0, ptr %130, align 4, !tbaa !206
  %131 = getelementptr inbounds %struct.BezTriple, ptr %128, i64 0, i32 10
  store i8 0, ptr %131, align 2, !tbaa !208
  %132 = load i16, ptr %19, align 4, !tbaa !187
  %133 = and i16 %132, 16
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.BezTriple, ptr %128, i64 0, i32 5
  %137 = load i8, ptr %136, align 1, !tbaa !209
  %138 = icmp eq i8 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i8 4, ptr %136, align 1, !tbaa !209
  br label %140

140:                                              ; preds = %139, %135
  %141 = getelementptr inbounds %struct.BezTriple, ptr %128, i64 0, i32 6
  %142 = load i8, ptr %141, align 2, !tbaa !210
  %143 = icmp eq i8 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i8 4, ptr %141, align 2, !tbaa !210
  br label %145

145:                                              ; preds = %140, %144, %126
  %146 = getelementptr inbounds [3 x [3 x float]], ptr %128, i64 0, i64 1, i64 1
  %147 = load float, ptr %146, align 4, !tbaa !157
  %148 = fptosi float %147 to i32
  %149 = load i32, ptr %97, align 8, !tbaa !211
  %150 = and i32 %149, %148
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, float 0.000000e+00, float 1.000000e+00
  %153 = getelementptr inbounds [3 x [3 x float]], ptr %128, i64 0, i64 2, i64 1
  store float %152, ptr %153, align 4
  store float %152, ptr %146, align 4
  %154 = getelementptr inbounds [3 x float], ptr %128, i64 0, i64 1
  store float %152, ptr %154, align 4
  %155 = add nuw i32 %127, 1
  %156 = getelementptr inbounds %struct.BezTriple, ptr %128, i64 1
  %157 = getelementptr inbounds %struct.BezTriple, ptr %129, i64 1
  %158 = load i32, ptr %113, align 8, !tbaa !202
  %159 = icmp ult i32 %155, %158
  br i1 %159, label %126, label %160, !llvm.loop !212

160:                                              ; preds = %145, %116, %102
  tail call fastcc void @fcurve_add_to_list(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %103, ptr noundef %4, i32 noundef %7) #14
  %161 = add nuw nsw i32 %98, 1
  %162 = getelementptr inbounds %struct.AdrBit2Path, ptr %97, i64 1
  %163 = icmp eq i32 %161, %78
  br i1 %163, label %316, label %96, !llvm.loop !213

164:                                              ; preds = %69
  %165 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 11
  %166 = tail call fastcc ptr @get_rna_access(i32 noundef %72, i32 noundef %75, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %165) #14
  %167 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 12
  store ptr %166, ptr %167, align 8, !tbaa !198
  %168 = icmp eq ptr %166, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 9
  %171 = load i16, ptr %170, align 8, !tbaa !188
  %172 = or i16 %171, 1024
  store i16 %172, ptr %170, align 8, !tbaa !188
  br label %173

173:                                              ; preds = %169, %164
  %174 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 9
  %175 = load i16, ptr %174, align 2, !tbaa !201
  %176 = sext i16 %175 to i32
  %177 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 7
  store i32 %176, ptr %177, align 8, !tbaa !202
  %178 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !47
  %180 = icmp eq ptr %179, null
  br i1 %180, label %315, label %181

181:                                              ; preds = %173
  %182 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %183 = zext i32 %176 to i64
  %184 = mul nuw nsw i64 %183, 72
  %185 = tail call ptr %182(i64 noundef %184, ptr noundef nonnull @.str.30) #13
  %186 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 5
  store ptr %185, ptr %186, align 8, !tbaa !203
  %187 = load i32, ptr %177, align 8, !tbaa !202
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %315, label %189

189:                                              ; preds = %181
  %190 = load ptr, ptr %178, align 8, !tbaa !47
  %191 = getelementptr inbounds %struct.IpoCurve, ptr %3, i64 0, i32 10
  %192 = icmp eq ptr %0, null
  %193 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4
  %194 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 20
  %195 = getelementptr inbounds %struct.FCurve, ptr %11, i64 0, i32 3
  %196 = icmp eq ptr %6, null
  %197 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 5
  %198 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 16
  %199 = getelementptr inbounds %struct.Sequence, ptr %6, i64 0, i32 15
  br label %200

200:                                              ; preds = %189, %309
  %201 = phi i32 [ 0, %189 ], [ %310, %309 ]
  %202 = phi ptr [ %190, %189 ], [ %312, %309 ]
  %203 = phi ptr [ %185, %189 ], [ %311, %309 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %203, ptr noundef nonnull align 4 dereferenceable(72) %202, i64 72, i1 false), !tbaa.struct !204
  %204 = load i16, ptr %191, align 8, !tbaa !214
  %205 = icmp eq i16 %204, 3
  br i1 %205, label %209, label %206

206:                                              ; preds = %200
  %207 = trunc i16 %204 to i8
  %208 = getelementptr inbounds %struct.BezTriple, ptr %203, i64 0, i32 4
  store i8 %207, ptr %208, align 4, !tbaa !206
  br label %209

209:                                              ; preds = %206, %200
  %210 = getelementptr inbounds %struct.BezTriple, ptr %203, i64 0, i32 10
  store i8 0, ptr %210, align 2, !tbaa !208
  %211 = load i16, ptr %19, align 4, !tbaa !187
  %212 = and i16 %211, 16
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.BezTriple, ptr %203, i64 0, i32 5
  %216 = load i8, ptr %215, align 1, !tbaa !209
  %217 = icmp eq i8 %216, 1
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i8 4, ptr %215, align 1, !tbaa !209
  br label %219

219:                                              ; preds = %218, %214
  %220 = getelementptr inbounds %struct.BezTriple, ptr %203, i64 0, i32 6
  %221 = load i8, ptr %220, align 2, !tbaa !210
  %222 = icmp eq i8 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i8 4, ptr %220, align 2, !tbaa !210
  br label %224

224:                                              ; preds = %219, %223, %209
  %225 = load i16, ptr %70, align 8, !tbaa !195
  switch i16 %225, label %244 [
    i16 16975, label %226
    i16 17217, label %230
  ]

226:                                              ; preds = %224
  %227 = load i16, ptr %73, align 2, !tbaa !127
  %228 = add i16 %227, -7
  %229 = icmp ult i16 %228, 3
  br i1 %229, label %234, label %244

230:                                              ; preds = %224
  %231 = load i16, ptr %73, align 2, !tbaa !127
  %232 = add i16 %231, -16
  %233 = icmp ult i16 %232, 3
  br i1 %233, label %234, label %244

234:                                              ; preds = %230, %226
  %235 = getelementptr inbounds [3 x float], ptr %203, i64 0, i64 1
  %236 = load float, ptr %235, align 4, !tbaa !157
  %237 = fmul float %236, 0x3FC6571860000000
  store float %237, ptr %235, align 4, !tbaa !157
  %238 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 1, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !157
  %240 = fmul float %239, 0x3FC6571860000000
  store float %240, ptr %238, align 4, !tbaa !157
  %241 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 2, i64 1
  %242 = load float, ptr %241, align 4, !tbaa !157
  %243 = fmul float %242, 0x3FC6571860000000
  store float %243, ptr %241, align 4, !tbaa !157
  br label %244

244:                                              ; preds = %224, %226, %230, %234
  br i1 %192, label %266, label %245

245:                                              ; preds = %244
  %246 = load i16, ptr %193, align 8, !tbaa !215
  %247 = icmp eq i16 %225, %246
  br i1 %247, label %248, label %266

248:                                              ; preds = %245
  %249 = load ptr, ptr %167, align 8, !tbaa !198
  %250 = icmp eq ptr %249, null
  br i1 %250, label %266, label %251

251:                                              ; preds = %248
  %252 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %249, ptr noundef nonnull dereferenceable(10) @.str.31) #16
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %251
  %255 = load i32, ptr %194, align 4, !tbaa !216
  %256 = sitofp i32 %255 to float
  %257 = getelementptr inbounds [3 x float], ptr %203, i64 0, i64 1
  %258 = load float, ptr %257, align 4, !tbaa !157
  %259 = fmul float %258, %256
  store float %259, ptr %257, align 4, !tbaa !157
  %260 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 1, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !157
  %262 = fmul float %261, %256
  store float %262, ptr %260, align 4, !tbaa !157
  %263 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 2, i64 1
  %264 = load float, ptr %263, align 4, !tbaa !157
  %265 = fmul float %264, %256
  store float %265, ptr %263, align 4, !tbaa !157
  br label %266

266:                                              ; preds = %254, %251, %248, %245, %244
  %267 = load ptr, ptr %195, align 8, !tbaa !185
  %268 = icmp eq ptr %267, null
  br i1 %268, label %286, label %269

269:                                              ; preds = %266
  %270 = load ptr, ptr %267, align 8, !tbaa !217
  %271 = icmp eq ptr %270, null
  br i1 %271, label %286, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.DriverVar, ptr %270, i64 0, i32 3, i64 0, i32 3
  %274 = load i16, ptr %273, align 8, !tbaa !219
  %275 = add i16 %274, -3
  %276 = icmp ult i16 %275, 3
  br i1 %276, label %277, label %286

277:                                              ; preds = %272
  %278 = load float, ptr %203, align 4, !tbaa !157
  %279 = fmul float %278, 0x3FC6571860000000
  store float %279, ptr %203, align 4, !tbaa !157
  %280 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !157
  %282 = fmul float %281, 0x3FC6571860000000
  store float %282, ptr %280, align 4, !tbaa !157
  %283 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 2
  %284 = load float, ptr %283, align 4, !tbaa !157
  %285 = fmul float %284, 0x3FC6571860000000
  store float %285, ptr %283, align 4, !tbaa !157
  br label %286

286:                                              ; preds = %272, %277, %269, %266
  br i1 %196, label %309, label %287

287:                                              ; preds = %286
  %288 = load i32, ptr %197, align 8, !tbaa !125
  %289 = and i32 %288, 256
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %309

291:                                              ; preds = %287
  %292 = load i32, ptr %198, align 4, !tbaa !221
  %293 = load i32, ptr %199, align 8, !tbaa !222
  %294 = sub nsw i32 %292, %293
  %295 = sitofp i32 %294 to float
  %296 = fdiv float %295, 1.000000e+02
  %297 = sitofp i32 %293 to float
  %298 = load float, ptr %203, align 4, !tbaa !157
  %299 = fmul float %298, %296
  %300 = fadd float %299, %297
  store float %300, ptr %203, align 4, !tbaa !157
  %301 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 1
  %302 = load float, ptr %301, align 4, !tbaa !157
  %303 = fmul float %302, %296
  %304 = fadd float %303, %297
  store float %304, ptr %301, align 4, !tbaa !157
  %305 = getelementptr inbounds [3 x [3 x float]], ptr %203, i64 0, i64 2
  %306 = load float, ptr %305, align 4, !tbaa !157
  %307 = fmul float %296, %306
  %308 = fadd float %307, %297
  store float %308, ptr %305, align 4, !tbaa !157
  br label %309

309:                                              ; preds = %286, %287, %291
  %310 = add nuw i32 %201, 1
  %311 = getelementptr inbounds %struct.BezTriple, ptr %203, i64 1
  %312 = getelementptr inbounds %struct.BezTriple, ptr %202, i64 1
  %313 = load i32, ptr %177, align 8, !tbaa !202
  %314 = icmp ult i32 %310, %313
  br i1 %314, label %200, label %315, !llvm.loop !223

315:                                              ; preds = %309, %181, %173
  tail call fastcc void @fcurve_add_to_list(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %11, ptr noundef %4, i32 noundef %7) #14
  br label %316

316:                                              ; preds = %160, %87, %315
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @idriver_to_cdriver(ptr noundef %0) unnamed_addr #0 !PGOFuncName !224 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %3 = tail call ptr %2(i64 noundef 296, ptr noundef nonnull @.str.32) #13
  %4 = getelementptr inbounds %struct.IpoDriver, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 4, !tbaa !178
  %6 = icmp eq i16 %5, 1
  %7 = getelementptr inbounds %struct.ChannelDriver, ptr %3, i64 0, i32 5
  br i1 %6, label %8, label %15

8:                                                ; preds = %1
  store i32 1, ptr %7, align 8, !tbaa !225
  %9 = getelementptr inbounds %struct.IpoDriver, ptr %0, i64 0, i32 5
  %10 = load i8, ptr %9, align 8, !tbaa !205
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ChannelDriver, ptr %3, i64 0, i32 1
  %14 = tail call ptr @BLI_strncpy(ptr noundef nonnull %13, ptr noundef nonnull %9, i64 noundef 256) #13
  br label %68

15:                                               ; preds = %1
  store i32 0, ptr %7, align 8, !tbaa !225
  %16 = getelementptr inbounds %struct.IpoDriver, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 8, !tbaa !226
  %18 = icmp eq i16 %17, 21057
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.IpoDriver, ptr %0, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !227
  %22 = icmp eq i16 %21, 100
  %23 = tail call ptr @driver_add_new_variable(ptr noundef nonnull %3) #13
  %24 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3
  %25 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 0, i32 5
  %26 = getelementptr inbounds %struct.IpoDriver, ptr %0, i64 0, i32 5
  br i1 %22, label %27, label %45

27:                                               ; preds = %19
  tail call void @driver_change_variable_type(ptr noundef %23, i32 noundef 1) #13
  %28 = load ptr, ptr %0, align 8, !tbaa !176
  store ptr %28, ptr %24, align 8, !tbaa !228
  store i32 16975, ptr %25, align 4, !tbaa !229
  %29 = load i8, ptr %26, align 8, !tbaa !205
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 0, i32 2
  %33 = tail call ptr @BLI_strncpy(ptr noundef nonnull %32, ptr noundef nonnull %26, i64 noundef 32) #13
  %34 = load ptr, ptr %0, align 8, !tbaa !176
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi ptr [ %34, %31 ], [ %28, %27 ]
  %37 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 1
  store ptr %36, ptr %37, align 8, !tbaa !228
  %38 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 1, i32 5
  store i32 16975, ptr %38, align 4, !tbaa !229
  %39 = load i8, ptr %26, align 8, !tbaa !205
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %68, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 1, i32 2
  %43 = getelementptr inbounds %struct.IpoDriver, ptr %0, i64 0, i32 5, i64 32
  %44 = tail call ptr @BLI_strncpy(ptr noundef nonnull %42, ptr noundef nonnull %43, i64 noundef 32) #13
  br label %68

45:                                               ; preds = %19
  tail call void @driver_change_variable_type(ptr noundef %23, i32 noundef 3) #13
  %46 = load ptr, ptr %0, align 8, !tbaa !176
  store ptr %46, ptr %24, align 8, !tbaa !228
  store i32 16975, ptr %25, align 4, !tbaa !229
  %47 = load i8, ptr %26, align 8, !tbaa !205
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 0, i32 2
  %51 = tail call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull %26, i64 noundef 32) #13
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i16, ptr %20, align 2, !tbaa !227
  %54 = tail call fastcc signext i16 @adrcode_to_dtar_transchan(i16 noundef signext %53) #14, !range !230
  %55 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 0, i32 3
  store i16 %54, ptr %55, align 8, !tbaa !219
  %56 = getelementptr inbounds %struct.DriverVar, ptr %23, i64 0, i32 3, i64 0, i32 4
  %57 = load i16, ptr %56, align 2, !tbaa !231
  %58 = or i16 %57, 4
  store i16 %58, ptr %56, align 2, !tbaa !231
  br label %68

59:                                               ; preds = %15
  %60 = tail call ptr @driver_add_new_variable(ptr noundef nonnull %3) #13
  tail call void @driver_change_variable_type(ptr noundef %60, i32 noundef 3) #13
  %61 = getelementptr inbounds %struct.DriverVar, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %0, align 8, !tbaa !176
  store ptr %62, ptr %61, align 8, !tbaa !228
  %63 = getelementptr inbounds %struct.DriverVar, ptr %60, i64 0, i32 3, i64 0, i32 5
  store i32 16975, ptr %63, align 4, !tbaa !229
  %64 = getelementptr inbounds %struct.IpoDriver, ptr %0, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !227
  %66 = tail call fastcc signext i16 @adrcode_to_dtar_transchan(i16 noundef signext %65) #14, !range !230
  %67 = getelementptr inbounds %struct.DriverVar, ptr %60, i64 0, i32 3, i64 0, i32 3
  store i16 %66, ptr %67, align 8, !tbaa !219
  br label %68

68:                                               ; preds = %59, %35, %41, %52, %8, %12
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef ptr @adrcode_bitmaps_to_paths(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !PGOFuncName !232 {
  %4 = icmp eq i32 %0, 16975
  %5 = icmp eq i32 %1, 19
  %6 = and i1 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %0, 16717
  %9 = icmp eq i32 %1, 18
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 20, %3 ], [ 2, %7 ]
  %13 = phi ptr [ @ob_layer_bits, %3 ], [ @ma_mode_bits, %7 ]
  store i32 %12, ptr %2, align 4, !tbaa !233
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ null, %7 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fcurve_add_to_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !234 {
  %6 = alloca %struct.bAction, align 8
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %3, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %11 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 3
  %12 = load <2 x ptr>, ptr %0, align 8, !tbaa !48
  store <2 x ptr> %12, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.bAction, ptr %6, i64 0, i32 1
  %14 = load <2 x ptr>, ptr %1, align 8, !tbaa !48
  store <2 x ptr> %14, ptr %13, align 8, !tbaa !48
  %15 = call ptr @BKE_action_group_find_name(ptr noundef nonnull %6, ptr noundef nonnull %3) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !48
  %19 = call ptr %18(i64 noundef 120, ptr noundef nonnull @.str.36) #13
  %20 = getelementptr inbounds %struct.bActionGroup, ptr %19, i64 0, i32 3
  %21 = icmp eq i32 %4, 0
  %22 = select i1 %21, i32 1, i32 17
  store i32 %22, ptr %20, align 8, !tbaa !235
  %23 = getelementptr inbounds %struct.bActionGroup, ptr %19, i64 0, i32 5
  %24 = call ptr @BLI_strncpy(ptr noundef nonnull %23, ptr noundef nonnull %3, i64 noundef 64) #13
  call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %19) #13
  call void @BLI_uniquename(ptr noundef nonnull %11, ptr noundef %19, ptr noundef nonnull @.str.37, i8 noundef zeroext 46, i32 noundef 40, i32 noundef 64) #13
  br label %25

25:                                               ; preds = %17, %10
  %26 = phi ptr [ %19, %17 ], [ %15, %10 ]
  call void @action_groups_add_channel(ptr noundef nonnull %6, ptr noundef nonnull %26, ptr noundef %2) #13
  %27 = getelementptr inbounds %struct.bActionGroup, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !235
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 9
  %33 = load i16, ptr %32, align 8, !tbaa !188
  %34 = or i16 %33, 16
  store i16 %34, ptr %32, align 8, !tbaa !188
  br label %35

35:                                               ; preds = %31, %25
  %36 = load <2 x ptr>, ptr %11, align 8, !tbaa !48
  store <2 x ptr> %36, ptr %0, align 8, !tbaa !48
  %37 = load <2 x ptr>, ptr %13, align 8, !tbaa !48
  store <2 x ptr> %37, ptr %1, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %6) #15
  br label %39

38:                                               ; preds = %5
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %2) #13
  br label %39

39:                                               ; preds = %38, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_rna_access(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 !PGOFuncName !238 {
  %7 = alloca [512 x i8], align 16
  %8 = alloca i32, align 4
  %9 = tail call ptr @BLI_dynstr_new() #13
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !tbaa !233
  %10 = icmp ne ptr %3, null
  %11 = select i1 %10, i32 20291, i32 %0
  switch i32 %11, label %37 [
    i32 16975, label %12
    i32 17217, label %14
    i32 17739, label %16
    i32 20291, label %17
    i32 17748, label %19
    i32 16717, label %21
    i32 16707, label %23
    i32 16716, label %25
    i32 20307, label %27
    i32 20311, label %29
    i32 16720, label %31
    i32 21827, label %33
    i32 20819, label %34
    i32 -1, label %52
  ]

12:                                               ; preds = %6
  %13 = call fastcc ptr @ob_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

14:                                               ; preds = %6
  %15 = call fastcc ptr @pchan_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

16:                                               ; preds = %6
  tail call fastcc void @shapekey_adrcodes_to_paths(i32 noundef %1) #14
  br label %52

17:                                               ; preds = %6
  %18 = call fastcc ptr @constraint_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

19:                                               ; preds = %6
  %20 = call fastcc ptr @texture_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

21:                                               ; preds = %6
  %22 = call fastcc ptr @material_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

23:                                               ; preds = %6
  %24 = call fastcc ptr @camera_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

25:                                               ; preds = %6
  %26 = call fastcc ptr @lamp_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

27:                                               ; preds = %6
  %28 = call fastcc ptr @sound_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

29:                                               ; preds = %6
  %30 = call fastcc ptr @world_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

31:                                               ; preds = %6
  %32 = call fastcc ptr @particle_adrcodes_to_paths(i32 noundef %1, ptr noundef nonnull %8) #14
  br label %39

33:                                               ; preds = %6
  br label %52

34:                                               ; preds = %6
  %35 = add i32 %1, -1
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %48, label %39

37:                                               ; preds = %6
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %11, i32 noundef %1) #14
  br label %39

39:                                               ; preds = %34, %37, %31, %29, %27, %25, %23, %21, %19, %17, %14, %12
  %40 = phi ptr [ null, %37 ], [ null, %34 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %15, %14 ], [ %13, %12 ]
  %41 = icmp eq ptr %40, null
  %42 = icmp sgt i32 %11, 0
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = icmp eq ptr %5, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  store i32 0, ptr %5, align 4, !tbaa !233
  br label %47

47:                                               ; preds = %46, %44
  tail call void @BLI_dynstr_free(ptr noundef %9) #13
  br label %103

48:                                               ; preds = %34
  %49 = zext nneg i32 %35 to i64
  %50 = shl i64 %49, 2
  %51 = call ptr @llvm.load.relative.i64(ptr @reltable.get_rna_access, i64 %50)
  br label %52

52:                                               ; preds = %48, %6, %16, %33, %39
  %53 = phi ptr [ %40, %39 ], [ @shapekey_adrcodes_to_paths.buf, %16 ], [ @.str.31, %33 ], [ null, %6 ], [ %51, %48 ]
  %54 = icmp eq ptr %5, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %8, align 4, !tbaa !233
  store i32 %56, ptr %5, align 4, !tbaa !233
  br label %57

57:                                               ; preds = %52, %55
  %58 = icmp eq ptr %2, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %57
  %60 = load i8, ptr %2, align 1, !tbaa !205
  %61 = icmp ne i8 %60, 0
  %62 = and i1 %10, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8, ptr %3, align 1, !tbaa !205
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 512, ptr noundef nonnull @.str.42, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  br label %93

68:                                               ; preds = %59
  %69 = icmp eq i8 %60, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %63, %68
  switch i32 %11, label %79 [
    i32 16975, label %71
    i32 17739, label %75
  ]

71:                                               ; preds = %70
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.26) #16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  store i8 0, ptr %7, align 16, !tbaa !205
  br label %93

75:                                               ; preds = %70
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.27) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(16) @.str.43, i64 16, i1 false) #13
  br label %93

79:                                               ; preds = %71, %70, %75
  %80 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 512, ptr noundef nonnull @.str.44, ptr noundef nonnull %2) #13
  br label %93

81:                                               ; preds = %57, %68
  br i1 %10, label %82, label %87

82:                                               ; preds = %81
  %83 = load i8, ptr %3, align 1, !tbaa !205
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 512, ptr noundef nonnull @.str.45, ptr noundef nonnull %3) #13
  br label %93

87:                                               ; preds = %82, %81
  %88 = icmp eq ptr %4, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.Sequence, ptr %4, i64 0, i32 4, i64 2
  %91 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 512, ptr noundef nonnull @.str.46, ptr noundef nonnull %90) #13
  br label %93

92:                                               ; preds = %87
  store i8 0, ptr %7, align 16, !tbaa !205
  br label %93

93:                                               ; preds = %78, %79, %74, %89, %92, %85, %66
  call void @BLI_dynstr_append(ptr noundef %9, ptr noundef nonnull %7) #13
  %94 = load i8, ptr %7, align 16, !tbaa !205
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  call void @BLI_dynstr_append(ptr noundef %9, ptr noundef nonnull @.str.47) #13
  br label %97

97:                                               ; preds = %96, %93
  call void @BLI_dynstr_append(ptr noundef %9, ptr noundef %53) #13
  br i1 %54, label %98, label %101

98:                                               ; preds = %97
  %99 = load i32, ptr %8, align 4, !tbaa !233
  %100 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 512, ptr noundef nonnull @.str.48, i32 noundef %99) #13
  call void @BLI_dynstr_append(ptr noundef %9, ptr noundef nonnull %7) #13
  br label %101

101:                                              ; preds = %98, %97
  %102 = call ptr @BLI_dynstr_get_cstring(ptr noundef %9) #13
  call void @BLI_dynstr_free(ptr noundef %9) #13
  br label %103

103:                                              ; preds = %101, %47
  %104 = phi ptr [ null, %47 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #15
  ret ptr %104
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @driver_add_new_variable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @driver_change_variable_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef signext i16 @adrcode_to_dtar_transchan(i16 noundef signext %0) unnamed_addr #9 !PGOFuncName !239 {
  %2 = add i16 %0, -2
  %3 = icmp ult i16 %2, 14
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i16 %2 to i64
  %6 = getelementptr inbounds [14 x i16], ptr @switch.table.adrcode_to_dtar_transchan, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i16 [ 0, %1 ], [ %7, %4 ]
  ret i16 %9
}

; Function Attrs: optsize
declare ptr @BKE_action_group_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @action_groups_add_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef ptr @ob_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !240 {
  store i32 0, ptr %1, align 4, !tbaa !233
  switch i32 %0, label %25 [
    i32 1, label %3
    i32 2, label %4
    i32 3, label %5
    i32 4, label %6
    i32 5, label %7
    i32 6, label %8
    i32 7, label %9
    i32 8, label %10
    i32 9, label %11
    i32 10, label %12
    i32 11, label %13
    i32 12, label %14
    i32 13, label %15
    i32 14, label %16
    i32 15, label %17
    i32 16, label %18
    i32 17, label %19
    i32 18, label %20
    i32 21, label %21
    i32 22, label %22
    i32 23, label %23
    i32 24, label %24
  ]

3:                                                ; preds = %2
  br label %25

4:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %25

5:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %25

6:                                                ; preds = %2
  br label %25

7:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %25

8:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %25

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %25

11:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %25

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %25

14:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %25

15:                                               ; preds = %2
  br label %25

16:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %25

17:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %25

18:                                               ; preds = %2
  br label %25

19:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %25

20:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %25

21:                                               ; preds = %2
  br label %25

22:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %25

23:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %25

24:                                               ; preds = %2
  store i32 3, ptr %1, align 4, !tbaa !233
  br label %25

25:                                               ; preds = %2, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %26 = phi ptr [ @.str.55, %24 ], [ @.str.55, %23 ], [ @.str.55, %22 ], [ @.str.55, %21 ], [ @.str.54, %20 ], [ @.str.54, %19 ], [ @.str.54, %18 ], [ @.str.53, %17 ], [ @.str.53, %16 ], [ @.str.53, %15 ], [ @.str.52, %14 ], [ @.str.52, %13 ], [ @.str.52, %12 ], [ @.str.51, %11 ], [ @.str.51, %10 ], [ @.str.51, %9 ], [ @.str.50, %8 ], [ @.str.50, %7 ], [ @.str.50, %6 ], [ @.str.49, %5 ], [ @.str.49, %4 ], [ @.str.49, %3 ], [ null, %2 ]
  ret ptr %26
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef ptr @pchan_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !241 {
  store i32 0, ptr %1, align 4, !tbaa !233
  switch i32 %0, label %15 [
    i32 25, label %17
    i32 26, label %3
    i32 27, label %4
    i32 28, label %5
    i32 16, label %6
    i32 17, label %7
    i32 18, label %8
    i32 1, label %9
    i32 2, label %10
    i32 3, label %11
    i32 13, label %12
    i32 14, label %13
    i32 15, label %14
  ]

3:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %17

4:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %17

5:                                                ; preds = %2
  store i32 3, ptr %1, align 4, !tbaa !233
  br label %17

6:                                                ; preds = %2
  br label %17

7:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %17

8:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %17

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %17

11:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %17

12:                                               ; preds = %2
  br label %17

13:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %17

14:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %17

15:                                               ; preds = %2
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, i32 noundef %0) #14
  br label %17

17:                                               ; preds = %2, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %18 = phi ptr [ null, %15 ], [ @.str.53, %14 ], [ @.str.53, %13 ], [ @.str.53, %12 ], [ @.str.49, %11 ], [ @.str.49, %10 ], [ @.str.49, %9 ], [ @.str.51, %8 ], [ @.str.51, %7 ], [ @.str.51, %6 ], [ @.str.56, %5 ], [ @.str.56, %4 ], [ @.str.56, %3 ], [ @.str.56, %2 ]
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shapekey_adrcodes_to_paths(i32 noundef %0) unnamed_addr #0 !PGOFuncName !242 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call ptr @BLI_strncpy(ptr noundef nonnull @shapekey_adrcodes_to_paths.buf, ptr noundef nonnull @.str.31, i64 noundef 128) #13
  br label %7

5:                                                ; preds = %1
  %6 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @shapekey_adrcodes_to_paths.buf, i64 noundef 128, ptr noundef nonnull @.str.58, i32 noundef %0) #13
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef ptr @constraint_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !243 {
  store i32 0, ptr %1, align 4, !tbaa !233
  %3 = icmp eq i32 %0, 2
  %4 = select i1 %3, ptr @.str.60, ptr null
  %5 = icmp eq i32 %0, 1
  %6 = select i1 %5, ptr @.str.59, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef ptr @texture_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !244 {
  store i32 0, ptr %1, align 4, !tbaa !233
  switch i32 %0, label %25 [
    i32 1, label %26
    i32 4, label %3
    i32 26, label %24
    i32 25, label %23
    i32 20, label %4
    i32 21, label %5
    i32 5, label %6
    i32 6, label %7
    i32 7, label %8
    i32 8, label %9
    i32 9, label %10
    i32 10, label %11
    i32 11, label %12
    i32 12, label %13
    i32 13, label %14
    i32 24, label %22
    i32 15, label %15
    i32 16, label %16
    i32 17, label %17
    i32 18, label %18
    i32 19, label %19
    i32 22, label %20
    i32 23, label %21
  ]

3:                                                ; preds = %2
  br label %26

4:                                                ; preds = %2
  br label %26

5:                                                ; preds = %2
  br label %26

6:                                                ; preds = %2
  br label %26

7:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %26

8:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %26

9:                                                ; preds = %2
  store i32 3, ptr %1, align 4, !tbaa !233
  br label %26

10:                                               ; preds = %2
  br label %26

11:                                               ; preds = %2
  br label %26

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  br label %26

14:                                               ; preds = %2
  br label %26

15:                                               ; preds = %2
  br label %26

16:                                               ; preds = %2
  br label %26

17:                                               ; preds = %2
  br label %26

18:                                               ; preds = %2
  br label %26

19:                                               ; preds = %2
  br label %26

20:                                               ; preds = %2
  br label %26

21:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %26

22:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %26

23:                                               ; preds = %2
  br label %26

24:                                               ; preds = %2
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %2, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %27 = phi ptr [ null, %25 ], [ @.str.75, %21 ], [ @.str.75, %20 ], [ @.str.74, %19 ], [ @.str.73, %18 ], [ @.str.72, %17 ], [ @.str.71, %16 ], [ @.str.70, %15 ], [ @.str.75, %22 ], [ @.str.69, %14 ], [ @.str.68, %13 ], [ @.str.67, %12 ], [ @.str.66, %11 ], [ @.str.65, %10 ], [ @.str.64, %9 ], [ @.str.64, %8 ], [ @.str.64, %7 ], [ @.str.64, %6 ], [ @.str.63, %5 ], [ @.str.63, %4 ], [ @.str.76, %23 ], [ @.str.77, %24 ], [ @.str.62, %3 ], [ @.str.61, %2 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @material_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !245 {
  store i32 0, ptr %1, align 4, !tbaa !233
  switch i32 %0, label %27 [
    i32 1, label %3
    i32 2, label %4
    i32 3, label %5
    i32 4, label %6
    i32 5, label %7
    i32 6, label %8
    i32 7, label %9
    i32 8, label %10
    i32 9, label %11
    i32 11, label %29
    i32 10, label %12
    i32 12, label %13
    i32 13, label %14
    i32 14, label %15
    i32 15, label %16
    i32 16, label %17
    i32 17, label %18
    i32 19, label %19
    i32 20, label %20
    i32 21, label %21
    i32 22, label %22
    i32 23, label %23
    i32 24, label %24
    i32 25, label %25
    i32 26, label %26
  ]

3:                                                ; preds = %2
  br label %29

4:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %29

5:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %29

6:                                                ; preds = %2
  br label %29

7:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %29

8:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %29

9:                                                ; preds = %2
  br label %29

10:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %29

11:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %29

12:                                               ; preds = %2
  br label %29

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  br label %29

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  br label %29

17:                                               ; preds = %2
  br label %29

18:                                               ; preds = %2
  br label %29

19:                                               ; preds = %2
  br label %29

20:                                               ; preds = %2
  br label %29

21:                                               ; preds = %2
  br label %29

22:                                               ; preds = %2
  br label %29

23:                                               ; preds = %2
  br label %29

24:                                               ; preds = %2
  br label %29

25:                                               ; preds = %2
  br label %29

26:                                               ; preds = %2
  br label %29

27:                                               ; preds = %2
  %28 = tail call fastcc ptr @mtex_adrcodes_to_paths(i32 noundef %0) #14
  br label %29

29:                                               ; preds = %2, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %30 = phi ptr [ %28, %27 ], [ @.str.96, %26 ], [ @.str.95, %25 ], [ @.str.94, %24 ], [ @.str.93, %23 ], [ @.str.92, %22 ], [ @.str.91, %21 ], [ @.str.90, %20 ], [ @.str.89, %19 ], [ @.str.88, %18 ], [ @.str.87, %17 ], [ @.str.86, %16 ], [ @.str.85, %15 ], [ @.str.84, %14 ], [ @.str.83, %13 ], [ @.str.82, %12 ], [ @.str.80, %11 ], [ @.str.80, %10 ], [ @.str.80, %9 ], [ @.str.79, %8 ], [ @.str.79, %7 ], [ @.str.79, %6 ], [ @.str.78, %5 ], [ @.str.78, %4 ], [ @.str.78, %3 ], [ @.str.81, %2 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef ptr @camera_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !246 {
  store i32 0, ptr %1, align 4, !tbaa !233
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 7
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [7 x ptr], ptr @switch.table.camera_adrcodes_to_paths, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @lamp_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !247 {
  store i32 0, ptr %1, align 4, !tbaa !233
  switch i32 %0, label %12 [
    i32 1, label %14
    i32 2, label %3
    i32 3, label %4
    i32 4, label %5
    i32 5, label %6
    i32 6, label %7
    i32 7, label %8
    i32 8, label %9
    i32 9, label %10
    i32 10, label %11
  ]

3:                                                ; preds = %2
  br label %14

4:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %14

5:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %14

6:                                                ; preds = %2
  br label %14

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  br label %14

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  br label %14

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @mtex_adrcodes_to_paths(i32 noundef %0) #14
  br label %14

14:                                               ; preds = %2, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %15 = phi ptr [ %13, %12 ], [ @.str.128, %11 ], [ @.str.127, %10 ], [ @.str.126, %9 ], [ @.str.125, %8 ], [ @.str.124, %7 ], [ @.str.123, %6 ], [ @.str.55, %5 ], [ @.str.55, %4 ], [ @.str.55, %3 ], [ @.str.122, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef ptr @sound_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !248 {
  store i32 0, ptr %1, align 4, !tbaa !233
  %3 = add i32 %0, -1
  %4 = icmp ult i32 %3, 4
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [4 x ptr], ptr @switch.table.sound_adrcodes_to_paths, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @world_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !249 {
  store i32 0, ptr %1, align 4, !tbaa !233
  switch i32 %0, label %13 [
    i32 1, label %3
    i32 2, label %4
    i32 3, label %5
    i32 4, label %6
    i32 5, label %7
    i32 6, label %8
    i32 7, label %15
    i32 8, label %9
    i32 9, label %10
    i32 10, label %11
    i32 11, label %12
  ]

3:                                                ; preds = %2
  br label %15

4:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %15

5:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %15

6:                                                ; preds = %2
  br label %15

7:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %15

8:                                                ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %15

9:                                                ; preds = %2
  br label %15

10:                                               ; preds = %2
  br label %15

11:                                               ; preds = %2
  br label %15

12:                                               ; preds = %2
  br label %15

13:                                               ; preds = %2
  %14 = tail call fastcc ptr @mtex_adrcodes_to_paths(i32 noundef %0) #14
  br label %15

15:                                               ; preds = %2, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %16 = phi ptr [ %14, %13 ], [ @.str.138, %12 ], [ @.str.137, %11 ], [ @.str.136, %10 ], [ @.str.135, %9 ], [ @.str.133, %8 ], [ @.str.133, %7 ], [ @.str.133, %6 ], [ @.str.132, %5 ], [ @.str.132, %4 ], [ @.str.132, %3 ], [ @.str.134, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc noundef ptr @particle_adrcodes_to_paths(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !PGOFuncName !250 {
  store i32 0, ptr %1, align 4, !tbaa !233
  switch i32 %0, label %16 [
    i32 12, label %17
    i32 6, label %3
    i32 7, label %4
    i32 8, label %5
    i32 9, label %6
    i32 10, label %7
    i32 11, label %8
    i32 13, label %9
    i32 14, label %10
    i32 15, label %11
    i32 16, label %12
    i32 17, label %13
    i32 18, label %14
    i32 19, label %15
  ]

3:                                                ; preds = %2
  br label %17

4:                                                ; preds = %2
  br label %17

5:                                                ; preds = %2
  br label %17

6:                                                ; preds = %2
  br label %17

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  br label %17

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !233
  br label %17

11:                                               ; preds = %2
  store i32 2, ptr %1, align 4, !tbaa !233
  br label %17

12:                                               ; preds = %2
  br label %17

13:                                               ; preds = %2
  br label %17

14:                                               ; preds = %2
  br label %17

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %2, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %18 = phi ptr [ null, %16 ], [ @.str.150, %15 ], [ @.str.149, %14 ], [ @.str.148, %13 ], [ @.str.147, %12 ], [ @.str.146, %11 ], [ @.str.146, %10 ], [ @.str.146, %9 ], [ @.str.145, %8 ], [ @.str.144, %7 ], [ @.str.143, %6 ], [ @.str.142, %5 ], [ @.str.141, %4 ], [ @.str.140, %3 ], [ @.str.139, %2 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @mtex_adrcodes_to_paths(i32 noundef %0) unnamed_addr #0 !PGOFuncName !251 {
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
  %61 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull @mtex_adrcodes_to_paths.buf, i64 noundef 128, ptr noundef nonnull @.str.116, ptr noundef %57, ptr noundef nonnull @.str.115) #13
  br label %62

62:                                               ; preds = %56, %60
  %63 = phi ptr [ @mtex_adrcodes_to_paths.buf, %60 ], [ null, %56 ]
  ret ptr %63
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize willreturn memory(read) }

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
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!54, !41, i64 2100}
!54 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!55 = !{!56, !40, i64 1040}
!56 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !57, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
!57 = !{!"long", !38, i64 0}
!58 = !{!59, !37, i64 1192}
!59 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !60, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !57, i64 1304, !57, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!60 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!61 = !{!59, !37, i64 256}
!62 = !{!35, !41, i64 100}
!63 = !{!59, !37, i64 272}
!64 = !{!65, !41, i64 100}
!65 = !{!"bAction", !36, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196}
!66 = !{!67, !37, i64 0}
!67 = !{!"AnimData", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !37, i64 40, !42, i64 48, !42, i64 64, !41, i64 80, !41, i64 84, !40, i64 88, !40, i64 90, !44, i64 92}
!68 = !{!69, !40, i64 24}
!69 = !{!"bActuator", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !38, i64 32, !37, i64 96, !37, i64 104}
!70 = !{!69, !37, i64 96}
!71 = !{!59, !37, i64 120}
!72 = !{!73, !37, i64 0}
!73 = !{!"bActionActuator", !37, i64 0, !40, i64 8, !40, i64 10, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 84, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !44, i64 160, !44, i64 164}
!74 = distinct !{!74, !52}
!75 = !{!59, !37, i64 288}
!76 = distinct !{!76, !52}
!77 = !{!78, !37, i64 104}
!78 = !{!"bConstraint", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 26, !38, i64 28, !38, i64 29, !38, i64 30, !40, i64 94, !44, i64 96, !44, i64 100, !37, i64 104, !44, i64 112, !44, i64 116}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52}
!81 = !{!59, !37, i64 368}
!82 = !{!83, !37, i64 0}
!83 = !{!"bConstraintChannel", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !38, i64 26}
!84 = !{!83, !37, i64 16}
!85 = distinct !{!85, !52}
!86 = !{!65, !41, i64 192}
!87 = distinct !{!87, !52}
!88 = !{!89, !37, i64 192}
!89 = !{!"Key", !36, i64 0, !37, i64 120, !37, i64 128, !38, i64 136, !41, i64 168, !41, i64 172, !42, i64 176, !37, i64 192, !37, i64 200, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !41, i64 220}
!90 = !{!35, !40, i64 152}
!91 = distinct !{!91, !52}
!92 = !{!93, !37, i64 776}
!93 = !{!"Material", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !94, i64 224, !95, i64 312, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !44, i64 348, !44, i64 352, !40, i64 356, !40, i64 358, !40, i64 360, !38, i64 362, !38, i64 363, !44, i64 364, !44, i64 368, !40, i64 372, !40, i64 374, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !40, i64 394, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !40, i64 412, !40, i64 414, !40, i64 416, !40, i64 418, !44, i64 420, !44, i64 424, !44, i64 428, !44, i64 432, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !44, i64 456, !38, i64 460, !44, i64 524, !44, i64 528, !44, i64 532, !41, i64 536, !38, i64 540, !38, i64 541, !38, i64 542, !38, i64 543, !40, i64 544, !40, i64 546, !40, i64 548, !38, i64 550, !38, i64 551, !40, i64 552, !40, i64 554, !44, i64 556, !44, i64 560, !38, i64 564, !44, i64 580, !44, i64 584, !40, i64 588, !40, i64 590, !37, i64 592, !37, i64 600, !38, i64 608, !38, i64 609, !38, i64 610, !38, i64 611, !40, i64 612, !40, i64 614, !44, i64 616, !44, i64 620, !38, i64 624, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !44, i64 800, !44, i64 804, !44, i64 808, !44, i64 812, !44, i64 816, !40, i64 820, !40, i64 822, !38, i64 824, !38, i64 836, !44, i64 848, !44, i64 852, !44, i64 856, !44, i64 860, !44, i64 864, !44, i64 868, !44, i64 872, !40, i64 876, !40, i64 878, !41, i64 880, !40, i64 884, !40, i64 886, !38, i64 888, !40, i64 904, !40, i64 906, !40, i64 908, !40, i64 910, !40, i64 912, !38, i64 914, !37, i64 920, !42, i64 928}
!94 = !{!"VolumeSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !38, i64 40, !44, i64 52, !44, i64 56, !44, i64 60, !40, i64 64, !40, i64 66, !40, i64 68, !40, i64 70, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84}
!95 = !{!"GameSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!96 = distinct !{!96, !52}
!97 = !{!98, !37, i64 352}
!98 = !{!"World", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !40, i64 132, !40, i64 134, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !40, i64 200, !40, i64 202, !40, i64 204, !40, i64 206, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !40, i64 264, !40, i64 266, !40, i64 268, !40, i64 270, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !40, i64 288, !40, i64 290, !40, i64 292, !40, i64 294, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !40, i64 324, !40, i64 326, !40, i64 328, !40, i64 330, !40, i64 332, !40, i64 334, !37, i64 336, !37, i64 344, !37, i64 352, !38, i64 360, !40, i64 504, !40, i64 506, !38, i64 508, !37, i64 512, !37, i64 520}
!99 = distinct !{!99, !52}
!100 = !{!101, !37, i64 256}
!101 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !102, i64 280, !110, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !111, i64 4400, !112, i64 4416, !115, i64 4600, !37, i64 4608, !116, i64 4616, !37, i64 4640, !57, i64 4648, !57, i64 4656, !104, i64 4664, !105, i64 4824, !117, i64 4888, !37, i64 4952}
!102 = !{!"RenderData", !103, i64 0, !37, i64 248, !37, i64 256, !106, i64 264, !107, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !43, i64 544, !43, i64 560, !108, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !109, i64 2616, !41, i64 3976, !41, i64 3980}
!103 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !104, i64 24, !105, i64 184}
!104 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!105 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!106 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!107 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!108 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!109 = !{!"BakeData", !103, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!110 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!111 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!112 = !{!"GameData", !111, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !113, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !114, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!113 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!114 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!115 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!116 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!117 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!118 = !{!119, !37, i64 0}
!119 = !{!"Editing", !37, i64 0, !42, i64 8, !42, i64 24, !37, i64 40, !38, i64 48, !38, i64 1072, !41, i64 2096, !41, i64 2100, !41, i64 2104, !41, i64 2108, !43, i64 2112}
!120 = !{!121, !41, i64 24}
!121 = !{!"SeqIterator", !37, i64 0, !41, i64 8, !41, i64 12, !37, i64 16, !41, i64 24}
!122 = !{!121, !37, i64 16}
!123 = !{!124, !37, i64 176}
!124 = !{!"Sequence", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !40, i64 156, !40, i64 158, !41, i64 160, !41, i64 164, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !44, i64 224, !44, i64 228, !37, i64 232, !37, i64 240, !37, i64 248, !42, i64 256, !37, i64 272, !37, i64 280, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !37, i64 304, !41, i64 312, !41, i64 316, !41, i64 320, !44, i64 324, !41, i64 328, !38, i64 332, !38, i64 333, !42, i64 336}
!125 = !{!124, !41, i64 96}
!126 = !{!124, !41, i64 100}
!127 = !{!46, !40, i64 66}
!128 = distinct !{!128, !52}
!129 = distinct !{!129, !52}
!130 = !{!131, !37, i64 344}
!131 = !{!"Tex", !36, i64 0, !37, i64 120, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !44, i64 204, !44, i64 208, !44, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !41, i64 252, !41, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !132, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!132 = !{!"ImageUser", !37, i64 0, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !41, i64 36}
!133 = distinct !{!133, !52}
!134 = !{!135, !37, i64 176}
!135 = !{!"Camera", !36, i64 0, !37, i64 120, !38, i64 128, !38, i64 129, !40, i64 130, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !37, i64 176, !37, i64 184, !38, i64 192, !38, i64 193}
!136 = distinct !{!136, !52}
!137 = !{!138, !37, i64 344}
!138 = !{!"Lamp", !36, i64 0, !37, i64 120, !40, i64 128, !40, i64 130, !41, i64 132, !40, i64 136, !40, i64 138, !44, i64 140, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !37, i64 200, !40, i64 208, !40, i64 210, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !40, i64 240, !40, i64 242, !40, i64 244, !40, i64 246, !38, i64 248, !38, i64 249, !40, i64 250, !40, i64 252, !40, i64 254, !40, i64 256, !40, i64 258, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !40, i64 276, !40, i64 278, !40, i64 280, !40, i64 282, !40, i64 284, !40, i64 286, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !40, i64 340, !38, i64 342, !37, i64 344, !38, i64 352, !40, i64 496, !40, i64 498, !38, i64 500, !37, i64 504, !37, i64 512}
!139 = distinct !{!139, !52}
!140 = !{!141, !37, i64 184}
!141 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !42, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !142, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!142 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!143 = distinct !{!143, !52}
!144 = !{!65, !37, i64 136}
!145 = distinct !{!145, !52}
!146 = !{!35, !40, i64 98}
!147 = distinct !{!147, !52}
!148 = !{!"ipo.c:ipo_to_animdata"}
!149 = !{!42, !37, i64 0}
!150 = !{!54, !37, i64 0}
!151 = !{!"ipo.c:nlastrips_to_animdata"}
!152 = !{!153, !37, i64 0}
!153 = !{!"bActionStrip", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !37, i64 24, !37, i64 32, !37, i64 40, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !38, i64 88, !38, i64 120, !42, i64 152}
!154 = !{!153, !37, i64 32}
!155 = !{!156, !37, i64 32}
!156 = !{!"NlaStrip", !37, i64 0, !37, i64 8, !42, i64 16, !37, i64 32, !37, i64 40, !42, i64 48, !42, i64 64, !38, i64 80, !44, i64 144, !44, i64 148, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !40, i64 184, !40, i64 186, !40, i64 188, !40, i64 190, !37, i64 192, !41, i64 200, !41, i64 204}
!157 = !{!44, !44, i64 0}
!158 = !{!153, !40, i64 16}
!159 = !{!156, !41, i64 200}
!160 = !{!153, !40, i64 18}
!161 = !{!156, !40, i64 184}
!162 = !{!156, !40, i64 186}
!163 = !{!153, !37, i64 152}
!164 = distinct !{!164, !52}
!165 = !{!"ipo.c:action_to_animdata"}
!166 = !{!"ipo.c:action_to_animato"}
!167 = !{i8 0, i8 2}
!168 = !{!65, !37, i64 152}
!169 = !{!170, !37, i64 0}
!170 = !{!"bActionChannel", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !41, i64 48, !38, i64 52, !41, i64 116}
!171 = !{!170, !37, i64 24}
!172 = !{!170, !37, i64 32}
!173 = distinct !{!173, !52}
!174 = distinct !{!174, !52}
!175 = !{!"ipo.c:ipo_to_animato"}
!176 = !{!177, !37, i64 0}
!177 = !{!"IpoDriver", !37, i64 0, !40, i64 8, !40, i64 10, !40, i64 12, !40, i64 14, !38, i64 16}
!178 = !{!177, !40, i64 12}
!179 = !{!35, !40, i64 156}
!180 = distinct !{!180, !52}
!181 = !{!36, !40, i64 98}
!182 = distinct !{!182, !52}
!183 = !{!"ipo.c:BLI_listbase_is_empty"}
!184 = !{!"ipo.c:icu_to_fcurves"}
!185 = !{!186, !37, i64 24}
!186 = !{!"FCurve", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !42, i64 32, !37, i64 48, !37, i64 56, !41, i64 64, !44, i64 68, !40, i64 72, !40, i64 74, !41, i64 76, !37, i64 80, !41, i64 88, !38, i64 92, !44, i64 104, !44, i64 108}
!187 = !{!46, !40, i64 76}
!188 = !{!186, !40, i64 72}
!189 = !{!46, !40, i64 74}
!190 = !{!186, !40, i64 74}
!191 = !{!192, !37, i64 16}
!192 = !{!"FModifier", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !40, i64 88, !40, i64 90, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!193 = !{!194, !40, i64 0}
!194 = !{!"FMod_Cycles", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6}
!195 = !{!46, !40, i64 64}
!196 = !{!197, !37, i64 8}
!197 = !{!"AdrBit2Path", !41, i64 0, !37, i64 8, !41, i64 16}
!198 = !{!186, !37, i64 80}
!199 = !{!197, !41, i64 16}
!200 = !{!186, !41, i64 76}
!201 = !{!46, !40, i64 70}
!202 = !{!186, !41, i64 64}
!203 = !{!186, !37, i64 48}
!204 = !{i64 0, i64 36, !205, i64 36, i64 4, !157, i64 40, i64 4, !157, i64 44, i64 4, !157, i64 48, i64 1, !205, i64 49, i64 1, !205, i64 50, i64 1, !205, i64 51, i64 1, !205, i64 52, i64 1, !205, i64 53, i64 1, !205, i64 54, i64 1, !205, i64 55, i64 1, !205, i64 56, i64 4, !157, i64 60, i64 4, !157, i64 64, i64 4, !157, i64 68, i64 4, !205}
!205 = !{!38, !38, i64 0}
!206 = !{!207, !38, i64 48}
!207 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!208 = !{!207, !38, i64 54}
!209 = !{!207, !38, i64 49}
!210 = !{!207, !38, i64 50}
!211 = !{!197, !41, i64 0}
!212 = distinct !{!212, !52}
!213 = distinct !{!213, !52}
!214 = !{!46, !40, i64 72}
!215 = !{!40, !40, i64 0}
!216 = !{!141, !41, i64 260}
!217 = !{!218, !37, i64 0}
!218 = !{!"ChannelDriver", !42, i64 0, !38, i64 16, !37, i64 272, !44, i64 280, !44, i64 284, !41, i64 288, !41, i64 292}
!219 = !{!220, !40, i64 48}
!220 = !{!"DriverTarget", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 48, !40, i64 50, !41, i64 52}
!221 = !{!124, !41, i64 140}
!222 = !{!124, !41, i64 136}
!223 = distinct !{!223, !52}
!224 = !{!"ipo.c:idriver_to_cdriver"}
!225 = !{!218, !41, i64 288}
!226 = !{!177, !40, i64 8}
!227 = !{!177, !40, i64 10}
!228 = !{!220, !37, i64 0}
!229 = !{!220, !41, i64 52}
!230 = !{i16 0, i16 7}
!231 = !{!220, !40, i64 50}
!232 = !{!"ipo.c:adrcode_bitmaps_to_paths"}
!233 = !{!41, !41, i64 0}
!234 = !{!"ipo.c:fcurve_add_to_list"}
!235 = !{!236, !41, i64 32}
!236 = !{!"bActionGroup", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !41, i64 36, !38, i64 40, !237, i64 104}
!237 = !{!"ThemeWireColor", !38, i64 0, !38, i64 4, !38, i64 8, !40, i64 12, !40, i64 14}
!238 = !{!"ipo.c:get_rna_access"}
!239 = !{!"ipo.c:adrcode_to_dtar_transchan"}
!240 = !{!"ipo.c:ob_adrcodes_to_paths"}
!241 = !{!"ipo.c:pchan_adrcodes_to_paths"}
!242 = !{!"ipo.c:shapekey_adrcodes_to_paths"}
!243 = !{!"ipo.c:constraint_adrcodes_to_paths"}
!244 = !{!"ipo.c:texture_adrcodes_to_paths"}
!245 = !{!"ipo.c:material_adrcodes_to_paths"}
!246 = !{!"ipo.c:camera_adrcodes_to_paths"}
!247 = !{!"ipo.c:lamp_adrcodes_to_paths"}
!248 = !{!"ipo.c:sound_adrcodes_to_paths"}
!249 = !{!"ipo.c:world_adrcodes_to_paths"}
!250 = !{!"ipo.c:particle_adrcodes_to_paths"}
!251 = !{!"ipo.c:mtex_adrcodes_to_paths"}
