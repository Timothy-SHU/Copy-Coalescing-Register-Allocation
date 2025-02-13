; ModuleID = 'blender/source/creator/creator.c'
source_filename = "blender/source/creator/creator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.RenderEngineType = type { ptr, ptr, [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"--debug\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"--debug-memory\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@use_crash_handler = internal unnamed_addr global i1 false, align 1
@G = external global %struct.Global, align 8
@datatoc_bfont_pfb = external global [0 x i8], align 1
@datatoc_bfont_pfb_size = external local_unnamed_addr global i32, align 4
@U = external global %struct.UserDef, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"Game AutoStart\00", align 1
@setupArguments.output_doc = internal global [557 x i8] c"<path>\0A\09Set the render path and file name.\0A\09Use // at the start of the path to\0A\09\09render relative to the blend file.\0A\09The # characters are replaced by the frame number, and used to define zero padding.\0A\09\09ani_##_test.png becomes ani_01_test.png\0A\09\09test-######.png becomes test-000001.png\0A\09\09When the filename does not contain #, The suffix #### is added to the filename\0A\09The frame number will be added at the end of the filename.\0A\09\09eg: blender -b foobar.blend -o //render_ -F PNG -x 1 -a\0A\09\09//render_ becomes //render_####, writing frames as //render_0001.png//\00", align 16
@setupArguments.format_doc = internal global [265 x i8] c"<format>\0A\09Set the render format, Valid options are...\0A\09\09TGA IRIS JPEG MOVIE IRIZ RAWTGA\0A\09\09AVIRAW AVIJPEG PNG BMP FRAMESERVER\0A\09(formats that can be compiled into blender, not available on all systems)\0A\09\09HDR TIFF EXR MULTILAYER MPEG AVICODEC QUICKTIME CINEON DPX DDS\00", align 16
@setupArguments.playback_doc = internal global [340 x i8] c"<options> <file(s)>\0A\09Playback <file(s)>, only operates this way when not running in background.\0A\09\09-p <sx> <sy>\09Open with lower left corner at <sx>, <sy>\0A\09\09-m\09\09Read from disk (Don't buffer)\0A\09\09-f <fps> <fps-base>\09\09Specify FPS to start with\0A\09\09-j <frame>\09Set frame step to <frame>\0A\09\09-s <frame>\09Play from <frame>\0A\09\09-e <frame>\09Play until <frame>\00", align 16
@setupArguments.game_doc = internal global [260 x i8] c"Game Engine specific options\0A\09-g fixedtime\09\09Run on 50 hertz without dropping frames\0A\09-g vertexarrays\09\09Use Vertex Arrays for rendering (usually faster)\0A\09-g nomipmap\09\09No Texture Mipmapping\0A\09-g linearmipmap\09\09Linear Texture Mipmapping instead of Nearest (default)\00", align 16
@setupArguments.debug_doc = internal global [195 x i8] c"\0A\09Turn debugging on\0A\0A\09* Prints every operator call and their arguments\0A\09* Disables mouse grab (to interact with a debugger in some cases)\0A\09* Keeps python sys.stdin rather than setting it to None\00", align 16
@.str.6 = private unnamed_addr constant [93 x i8] c"\0A\09Ends option processing, following arguments passed unchanged. Access via python's sys.argv\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\0A\09Print this help text and exit\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"\0A\09Print this help text and exit (windows only)\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"\0A\09Print Blender version and exit\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"--enable-autoexec\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"\0A\09Enable automatic python script execution, (default)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-Y\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"--disable-autoexec\00", align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"\0A\09Disable automatic python script execution (pydrivers & startup scripts)\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"--disable-crash-handler\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"\0A\09Disable the crash handler\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"--background\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"\0A\09Run in background (often used for UI-less rendering)\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"--debug-python\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"\0A\09Enable debug messages for python\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"--debug-events\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"\0A\09Enable debug messages for the event system\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"--debug-handlers\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"\0A\09Enable debug messages for event handling\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"--debug-wm\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"\0A\09Enable debug messages for the window manager\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"--debug-all\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"\0A\09Enable all debug messages (excludes libmv)\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"--debug-fpe\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"\0A\09Enable floating point exceptions\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"\0A\09Enable fully guarded memory allocation and debugging\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"--debug-value\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"<value>\0A\09Set debug value of <value> on startup\0A\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"--debug-jobs\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"\0A\09Enable time profiling for background jobs.\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"--debug-depsgraph\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"\0A\09Enable debug messages from dependency graph\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"<verbose>\0A\09Set logging verbosity level.\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"--factory-startup\00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c"\0A\09Skip reading the \22startup.blend\22 in the users home directory\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"--env-system-datafiles\00", align 1
@.str.51 = private unnamed_addr constant [56 x i8] c"\0A\09Set the BLENDER_SYSTEM_DATAFILES environment variable\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"--env-system-scripts\00", align 1
@.str.53 = private unnamed_addr constant [54 x i8] c"\0A\09Set the BLENDER_SYSTEM_SCRIPTS environment variable\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"--env-system-python\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"\0A\09Set the BLENDER_SYSTEM_PYTHON environment variable\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"--window-geometry\00", align 1
@.str.58 = private unnamed_addr constant [94 x i8] c"<sx> <sy> <w> <h>\0A\09Open with lower left corner at <sx>, <sy> and width and height as <w>, <h>\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"--window-border\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"\0A\09Force opening with borders (default)\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"--window-borderless\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"\0A\09Force opening without borders\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"-con\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"--start-console\00", align 1
@.str.67 = private unnamed_addr constant [76 x i8] c"\0A\09Start with the console window open (ignored if -b is set), (Windows only)\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"\0A\09Register .blend extension, then exit (Windows only)\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.71 = private unnamed_addr constant [63 x i8] c"\0A\09Silently register .blend extension, then exit (Windows only)\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"--no-native-pixels\00", align 1
@.str.73 = private unnamed_addr constant [80 x i8] c"\0A\09Do not use native pixel size, for high resolution displays (MacBook 'Retina')\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"-nojoystick\00", align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"\0A\09Disable joystick support\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"-noglsl\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"\0A\09Disable GLSL shading\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"-noaudio\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"\0A\09Force sound system to None\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"-setaudio\00", align 1
@.str.81 = private unnamed_addr constant [64 x i8] c"\0A\09Force sound system to a specific device\0A\09NULL SDL OPENAL JACK\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"--render-frame\00", align 1
@.str.85 = private unnamed_addr constant [104 x i8] c"<frame>\0A\09Render frame <frame> and save it.\0A\09+<frame> start frame relative, -<frame> end frame relative.\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"--render-anim\00", align 1
@.str.87 = private unnamed_addr constant [46 x i8] c"\0A\09Render frames from start to end (inclusive)\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"--scene\00", align 1
@.str.90 = private unnamed_addr constant [50 x i8] c"<name>\0A\09Set the active scene <name> for rendering\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"--frame-start\00", align 1
@.str.93 = private unnamed_addr constant [65 x i8] c"<frame>\0A\09Set start to frame <frame> (use before the -a argument)\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"--frame-end\00", align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"<frame>\0A\09Set end to frame <frame> (use before the -a argument)\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"-j\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"--frame-jump\00", align 1
@.str.99 = private unnamed_addr constant [73 x i8] c"<frames>\0A\09Set number of frames to step forward after each rendered frame\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"--python\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"<filename>\0A\09Run the given Python script file\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"--python-text\00", align 1
@.str.104 = private unnamed_addr constant [47 x i8] c"<name>\0A\09Run the given Python script text block\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"--python-console\00", align 1
@.str.106 = private unnamed_addr constant [42 x i8] c"\0A\09Run blender with an interactive console\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"--addons\00", align 1
@.str.108 = private unnamed_addr constant [45 x i8] c"\0A\09Comma separated list of addons (no spaces)\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"--render-output\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"--engine\00", align 1
@.str.113 = private unnamed_addr constant [75 x i8] c"<engine>\0A\09Specify the render engine\0A\09use -E help to list available engines\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"--render-format\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"--threads\00", align 1
@.str.118 = private unnamed_addr constant [109 x i8] c"<threads>\0A\09Use amount of <threads> for rendering and other operations\0A\09[1-1], 0 for systems processor count.\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"--use-extension\00", align 1
@.str.121 = private unnamed_addr constant [68 x i8] c"<bool>\0A\09Set option to add the file extension to the end of the file\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"Blender %d.%02d (sub %d)\0A\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"--env-system-config\00", align 1
@MEM_set_memory_debug = external local_unnamed_addr global ptr, align 8
@__const.set_env.env = private unnamed_addr constant [64 x i8] c"BLENDER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.159 = private unnamed_addr constant [26 x i8] c"%s requires one argument\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.160 = private unnamed_addr constant [28 x i8] c"-p requires four arguments\0A\00", align 1
@wm_start_with_console = external local_unnamed_addr global i8, align 1
@.str.161 = private unnamed_addr constant [32 x i8] c"-setaudio require one argument\0A\00", align 1
@.str.162 = private unnamed_addr constant [48 x i8] c"error: argument assignment (%s) without value.\0A\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"nomipmap\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"linearmipmap\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@R_engines = external global %struct.ListBase, align 8
@.str.181 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.182 = private unnamed_addr constant [31 x i8] c"\0AError: engine not found '%s'\0A\00", align 1
@.str.188 = private unnamed_addr constant [40 x i8] c"Error, threads has to be in range 0-%d\0A\00", align 1
@.str.189 = private unnamed_addr constant [81 x i8] c"\0AError: you must specify a number of threads between 0 and %d '-t / --threads'.\0A\00", align 1
@.str.193 = private unnamed_addr constant [18 x i8] c"blender.crash.txt\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c".crash.txt\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"Writing: %s\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.196 = private unnamed_addr constant [46 x i8] c"# Blender %d.%02d (sub %d), Unknown revision\0A\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.198 = private unnamed_addr constant [25 x i8] c"Unable to save '%s': %s\0A\00", align 1
@.str.199 = private unnamed_addr constant [27 x i8] c"Unknown error opening file\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"\0A# backtrace\0A\00", align 1
@.str.201 = private unnamed_addr constant [39 x i8] c"unknown argument, loading as file: %s\0A\00", align 1
@MEM_set_error_callback = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [45 x i8] c"Switching to fully guarded memory allocator.\00", align 1
@str.202 = private unnamed_addr constant [45 x i8] c"Usage: blender [args ...] [file] [args ...]\0A\00", align 1
@str.203 = private unnamed_addr constant [16 x i8] c"Render Options:\00", align 1
@str.204 = private unnamed_addr constant [16 x i8] c"Format Options:\00", align 1
@str.205 = private unnamed_addr constant [28 x i8] c"Animation Playback Options:\00", align 1
@str.206 = private unnamed_addr constant [16 x i8] c"Window Options:\00", align 1
@str.207 = private unnamed_addr constant [30 x i8] c"Game Engine Specific Options:\00", align 1
@str.208 = private unnamed_addr constant [16 x i8] c"Python Options:\00", align 1
@str.209 = private unnamed_addr constant [15 x i8] c"Debug Options:\00", align 1
@str.210 = private unnamed_addr constant [14 x i8] c"Misc Options:\00", align 1
@str.211 = private unnamed_addr constant [15 x i8] c"Other Options:\00", align 1
@str.212 = private unnamed_addr constant [18 x i8] c"Argument Parsing:\00", align 1
@str.213 = private unnamed_addr constant [48 x i8] c"\09arguments must be separated by white space. eg\00", align 1
@str.214 = private unnamed_addr constant [27 x i8] c"\09\09\22blender -ba test.blend\22\00", align 1
@str.215 = private unnamed_addr constant [24 x i8] c"\09...will ignore the 'a'\00", align 1
@str.216 = private unnamed_addr constant [30 x i8] c"\09\09\22blender -b test.blend -f8\22\00", align 1
@str.217 = private unnamed_addr constant [80 x i8] c"\09...will ignore 8 because there is no space between the -f and the frame value\0A\00", align 1
@str.218 = private unnamed_addr constant [16 x i8] c"Argument Order:\00", align 1
@str.219 = private unnamed_addr constant [56 x i8] c"\09arguments are executed in the order they are given. eg\00", align 1
@str.220 = private unnamed_addr constant [74 x i8] c"\09\09\22blender --background test.blend --render-frame 1 --render-output /tmp\22\00", align 1
@str.221 = private unnamed_addr constant [93 x i8] c"\09...will not render to /tmp because '--render-frame 1' renders before the output path is set\00", align 1
@str.222 = private unnamed_addr constant [74 x i8] c"\09\09\22blender --background --render-output /tmp test.blend --render-frame 1\22\00", align 1
@str.223 = private unnamed_addr constant [101 x i8] c"\09...will not render to /tmp because loading the blend file overwrites the render output that was set\00", align 1
@str.224 = private unnamed_addr constant [94 x i8] c"\09\09\22blender --background test.blend --render-output /tmp --render-frame 1\22 works as expected.\0A\00", align 1
@str.225 = private unnamed_addr constant [24 x i8] c"\0AEnvironment Variables:\00", align 1
@str.226 = private unnamed_addr constant [68 x i8] c"  $BLENDER_USER_CONFIG      Directory for user configuration files.\00", align 1
@str.227 = private unnamed_addr constant [56 x i8] c"  $BLENDER_USER_SCRIPTS     Directory for user scripts.\00", align 1
@str.228 = private unnamed_addr constant [63 x i8] c"  $BLENDER_SYSTEM_SCRIPTS   Directory for system wide scripts.\00", align 1
@str.229 = private unnamed_addr constant [85 x i8] c"  $BLENDER_USER_DATAFILES   Directory for user data files (icons, translations, ..).\00", align 1
@str.230 = private unnamed_addr constant [66 x i8] c"  $BLENDER_SYSTEM_DATAFILES Directory for system wide data files.\00", align 1
@str.231 = private unnamed_addr constant [67 x i8] c"  $BLENDER_SYSTEM_PYTHON    Directory for system python libraries.\00", align 1
@str.232 = private unnamed_addr constant [56 x i8] c"  $TMP or $TMPDIR           Store temporary files here.\00", align 1
@str.233 = private unnamed_addr constant [80 x i8] c"  $PYTHONHOME               Path to the python directory, eg. /usr/lib/python.\0A\00", align 1
@str.234 = private unnamed_addr constant [45 x i8] c"\0AError: you must specify debug value to set.\00", align 1
@str.235 = private unnamed_addr constant [44 x i8] c"\0AError: you must specify a verbosity level.\00", align 1
@str.236 = private unnamed_addr constant [59 x i8] c"\0AError: no blend loaded. cannot use '-f / --render-frame'.\00", align 1
@str.237 = private unnamed_addr constant [56 x i8] c"\0AError: frame number must follow '-f / --render-frame'.\00", align 1
@str.238 = private unnamed_addr constant [42 x i8] c"\0AError: no blend loaded. cannot use '-a'.\00", align 1
@str.239 = private unnamed_addr constant [47 x i8] c"\0AError: Scene name must follow '-S / --scene'.\00", align 1
@str.240 = private unnamed_addr constant [58 x i8] c"\0AError: no blend loaded. cannot use '-s / --frame-start'.\00", align 1
@str.241 = private unnamed_addr constant [55 x i8] c"\0AError: frame number must follow '-s / --frame-start'.\00", align 1
@str.242 = private unnamed_addr constant [56 x i8] c"\0AError: no blend loaded. cannot use '-e / --frame-end'.\00", align 1
@str.243 = private unnamed_addr constant [53 x i8] c"\0AError: frame number must follow '-e / --frame-end'.\00", align 1
@str.244 = private unnamed_addr constant [57 x i8] c"\0AError: no blend loaded. cannot use '-j / --frame-jump'.\00", align 1
@str.245 = private unnamed_addr constant [66 x i8] c"\0AError: number of frames to step must follow '-j / --frame-jump'.\00", align 1
@str.248 = private unnamed_addr constant [46 x i8] c"This blender was built without python support\00", align 1
@str.249 = private unnamed_addr constant [66 x i8] c"\0AError: you must specify a comma separated list after '--addons'.\00", align 1
@str.250 = private unnamed_addr constant [63 x i8] c"\0AError: you must specify a path after '-o  / --render-output'.\00", align 1
@str.251 = private unnamed_addr constant [60 x i8] c"\0AError: no blend loaded. cannot use '-o / --render-output'.\00", align 1
@str.252 = private unnamed_addr constant [68 x i8] c"\0AEngine not specified, give 'help' for a list of available engines.\00", align 1
@str.253 = private unnamed_addr constant [24 x i8] c"Blender Engine Listing:\00", align 1
@str.254 = private unnamed_addr constant [94 x i8] c"\0AError: no blend loaded. order the arguments so '-E  / --engine ' is after a blend is loaded.\00", align 1
@str.255 = private unnamed_addr constant [65 x i8] c"\0AError: you must specify a format after '-F  / --render-foramt'.\00", align 1
@str.256 = private unnamed_addr constant [102 x i8] c"\0AError: no blend loaded. order the arguments so '-F  / --render-format' is after the blend is loaded.\00", align 1
@str.257 = private unnamed_addr constant [86 x i8] c"\0AError: Format from '-F / --render-format' not known or not compiled in this release.\00", align 1
@str.258 = private unnamed_addr constant [44 x i8] c"\0AError: you must specify a path after '- '.\00", align 1
@str.259 = private unnamed_addr constant [70 x i8] c"\0AError: no blend loaded. order the arguments so '-o ' is after '-x '.\00", align 1
@str.260 = private unnamed_addr constant [75 x i8] c"\0AError: Use '-x 1 / -x 0' To set the extension option or '--use-extension'\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = zext nneg i32 %0 to i64
  br label %7

7:                                                ; preds = %21, %5
  %8 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(8) @.str) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.1) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(15) @.str.2) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %7
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @MEM_use_guarded_allocator() #21
  br label %27

21:                                               ; preds = %16
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(3) @.str.4) #20
  %23 = icmp eq i32 %22, 0
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp eq i64 %24, %6
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %7, !llvm.loop !38

27:                                               ; preds = %21, %2, %19
  %28 = tail call ptr @CTX_create() #21
  tail call fastcc void @setCallbacks() #22
  %29 = load ptr, ptr %1, align 8, !tbaa !34
  tail call void @BLI_init_program_path(ptr noundef %29) #21
  tail call void @BLI_threadapi_init() #21
  tail call void @initglobals() #21
  tail call void @IMB_init() #21
  tail call void @BKE_images_init() #21
  tail call void @BKE_modifier_init() #21
  tail call void @DAG_init() #21
  tail call void @BKE_brush_system_init() #21
  tail call void @RE_init_texture_rng() #21
  tail call void @BLI_callback_global_init() #21
  store i32 0, ptr %3, align 4, !tbaa !40
  %30 = tail call ptr @BLI_argsInit(i32 noundef %0, ptr noundef nonnull %1) #21
  call fastcc void @setupArguments(ptr noundef %28, ptr noundef %30, ptr noundef nonnull %3) #22
  call void @BLI_argsParse(ptr noundef %30, i32 noundef 1, ptr noundef null, ptr noundef null) #21
  %31 = load i1, ptr @use_crash_handler, align 1
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call ptr @signal(i32 noundef 11, ptr noundef nonnull @blender_crash_handler) #21
  br label %34

34:                                               ; preds = %32, %27
  call void @RNA_init() #21
  call void @RE_engines_init() #21
  call void @init_nodesystem() #21
  call void @psys_init_rng() #21
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !42
  %35 = load i32, ptr @datatoc_bfont_pfb_size, align 4, !tbaa !40
  call void @BKE_vfont_builtin_register(ptr noundef nonnull @datatoc_bfont_pfb, i32 noundef %35) #21
  call void @sound_init_once() #21
  call void @init_def_material() #21
  %36 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !42
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @BLI_argsParse(ptr noundef %30, i32 noundef 2, ptr noundef null, ptr noundef null) #21
  call void @BLI_argsParse(ptr noundef %30, i32 noundef 3, ptr noundef null, ptr noundef null) #21
  call void @WM_init(ptr noundef %28, i32 noundef %0, ptr noundef nonnull %1) #21
  call void @BLI_temp_dir_init(ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 5)) #21
  br label %40

39:                                               ; preds = %34
  call void @BLI_argsParse(ptr noundef %30, i32 noundef 3, ptr noundef null, ptr noundef null) #21
  call void @WM_init(ptr noundef %28, i32 noundef %0, ptr noundef nonnull %1) #21
  call void @BLI_temp_dir_init(ptr noundef null) #21
  br label %40

40:                                               ; preds = %39, %38
  call void @CTX_py_init_set(ptr noundef %28, i32 noundef 1) #21
  call void @WM_keymap_init(ptr noundef %28) #21
  call void @BLI_argsParse(ptr noundef %30, i32 noundef 4, ptr noundef nonnull @load_file, ptr noundef %28) #21
  %41 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !42
  %42 = icmp ne i8 %41, 0
  %43 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 4), align 1
  %44 = icmp ne i8 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 23), align 8, !tbaa !46
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call void @WM_recover_last_session(ptr noundef %28, ptr noundef null) #21
  br label %51

51:                                               ; preds = %50, %46, %40
  call void @BLI_argsFree(ptr noundef %30) #21
  %52 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !42
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void @WM_exit(ptr noundef %28) #21
  br label %76

55:                                               ; preds = %51
  %56 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !51
  %57 = and i32 %56, 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !52
  %61 = and i32 %60, 8192
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = call zeroext i8 @WM_init_game(ptr noundef %28) #21
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %77

66:                                               ; preds = %59
  %67 = and i32 %60, 65536
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = or i32 %60, 32768
  store i32 %70, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !52
  %71 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 20), i64 noundef 200, ptr noundef nonnull @.str.5) #21
  br label %72

72:                                               ; preds = %63, %69, %66, %55
  %73 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 4), align 1, !tbaa !53
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  call void @WM_init_splash(ptr noundef %28) #21
  br label %76

76:                                               ; preds = %72, %75, %54
  call void @WM_main(ptr noundef %28) #21
  br label %77

77:                                               ; preds = %63, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @MEM_use_guarded_allocator() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_create() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setCallbacks() unnamed_addr #0 !PGOFuncName !54 {
  %1 = load ptr, ptr @MEM_set_error_callback, align 8, !tbaa !34
  tail call void %1(ptr noundef nonnull @mem_error_cb) #21
  ret void
}

; Function Attrs: optsize
declare void @BLI_init_program_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_threadapi_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @initglobals() local_unnamed_addr #4

; Function Attrs: optsize
declare void @IMB_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_images_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_modifier_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @DAG_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_brush_system_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @RE_init_texture_rng() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_callback_global_init() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_argsInit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setupArguments(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !55 {
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef -1, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @end_arguments, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @print_help, ptr noundef %1) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @print_help, ptr noundef %1) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @print_version, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @enable_python, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @disable_python, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @disable_crash_handler, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @background_mode, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef nonnull @setupArguments.playback_doc, ptr noundef nonnull @playback_mode, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, ptr noundef nonnull @setupArguments.debug_doc, ptr noundef nonnull @debug_mode, ptr noundef %1) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @debug_mode_generic, ptr noundef nonnull inttoptr (i64 4 to ptr)) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @debug_mode_generic, ptr noundef nonnull inttoptr (i64 8 to ptr)) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @debug_mode_generic, ptr noundef nonnull inttoptr (i64 16 to ptr)) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @debug_mode_generic, ptr noundef nonnull inttoptr (i64 32 to ptr)) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @debug_mode_generic, ptr noundef nonnull inttoptr (i64 495 to ptr)) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @set_fpe, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.39, ptr noundef nonnull @debug_mode_memory, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @set_debug_value, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @debug_mode_generic, ptr noundef nonnull inttoptr (i64 64 to ptr)) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef nonnull @debug_mode_generic, ptr noundef nonnull inttoptr (i64 256 to ptr)) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @set_verbosity, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @set_factory_startup, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @set_env, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @set_env, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @set_env, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull @prefsize, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @with_borders, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull @without_borders, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef nonnull @start_with_console, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @register_extension, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @register_extension, ptr noundef %1) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 2, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, ptr noundef nonnull @native_pixels, ptr noundef %1) #21
  tail call void @BLI_argsAddCase(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.74, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.75, ptr noundef nonnull @no_joystick, ptr noundef %2) #21
  tail call void @BLI_argsAddCase(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.76, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull @no_glsl, ptr noundef null) #21
  tail call void @BLI_argsAddCase(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.78, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.79, ptr noundef nonnull @no_audio, ptr noundef null) #21
  tail call void @BLI_argsAddCase(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @.str.80, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.81, ptr noundef nonnull @set_audio, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef nonnull @setupArguments.game_doc, ptr noundef nonnull @set_ge_parameters, ptr noundef %2) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull @render_frame, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull @render_animation, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @set_scene, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull @set_start_frame, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, ptr noundef nonnull @set_end_frame, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, ptr noundef nonnull @set_skip_frame, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef nonnull @run_python_file, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull @run_python_text, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, ptr noundef nonnull @run_python_console, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, ptr noundef nonnull @set_addons, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, ptr noundef nonnull @setupArguments.output_doc, ptr noundef nonnull @set_output, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef nonnull @set_engine, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, ptr noundef nonnull @setupArguments.format_doc, ptr noundef nonnull @set_image_type, ptr noundef %0) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, ptr noundef nonnull @set_threads, ptr noundef null) #21
  tail call void @BLI_argsAdd(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef nonnull @set_extension, ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare void @BLI_argsParse(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @blender_crash_handler(i32 noundef %0) #0 !PGOFuncName !56 {
  %2 = alloca [512 x i8], align 16
  %3 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #19
  %4 = load ptr, ptr @G, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 40
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #19
  %7 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !61
  %9 = icmp eq i8 %8, 0
  %10 = tail call ptr @BLI_temp_dir_base() #21
  br i1 %9, label %11, label %12

11:                                               ; preds = %1
  call void @BLI_join_dirfile(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef %10, ptr noundef nonnull @.str.193) #21
  br label %17

12:                                               ; preds = %1
  %13 = load ptr, ptr @G, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = tail call ptr @BLI_path_basename(ptr noundef nonnull %14) #21
  call void @BLI_join_dirfile(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef %10, ptr noundef %15) #21
  %16 = call zeroext i8 @BLI_replace_extension(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.194) #21
  br label %17

17:                                               ; preds = %12, %11
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.195, ptr noundef nonnull %3) #22
  %19 = load ptr, ptr @stdout, align 8, !tbaa !34
  %20 = call i32 @fflush(ptr noundef %19) #22
  %21 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 512, ptr noundef nonnull @.str.196, i32 noundef 2, i32 noundef 72, i32 noundef 1) #21
  %22 = tail call ptr @__errno_location() #23
  store i32 0, ptr %22, align 4, !tbaa !40
  %23 = call ptr @BLI_fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.197) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load ptr, ptr @stderr, align 8, !tbaa !34
  %27 = load i32, ptr %22, align 4, !tbaa !40
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call ptr @strerror(i32 noundef %27) #21
  br label %31

31:                                               ; preds = %25, %29
  %32 = phi ptr [ %30, %29 ], [ @.str.199, %25 ]
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.198, ptr noundef nonnull %3, ptr noundef %32) #24
  br label %41

34:                                               ; preds = %17
  %35 = icmp eq ptr %6, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.wmWindowManager, ptr %6, i64 0, i32 9
  %38 = call zeroext i8 @BKE_report_write_file_fp(ptr noundef nonnull %23, ptr noundef nonnull %37, ptr noundef nonnull %2) #21
  br label %39

39:                                               ; preds = %36, %34
  call fastcc void @blender_crash_handler_backtrace(ptr noundef nonnull %23) #22
  %40 = call i32 @fclose(ptr noundef nonnull %23) #22
  br label %41

41:                                               ; preds = %39, %31
  call void @BLI_temp_dir_session_purge() #21
  %42 = call ptr @signal(i32 noundef %0, ptr noundef null) #21
  %43 = call i32 @getpid() #21
  %44 = call i32 @kill(i32 noundef %43, i32 noundef %0) #21
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare void @RNA_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @RE_engines_init() local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_nodesystem() local_unnamed_addr #4

; Function Attrs: optsize
declare void @psys_init_rng() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_vfont_builtin_register(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sound_init_once() local_unnamed_addr #4

; Function Attrs: optsize
declare void @init_def_material() local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_temp_dir_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_py_init_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_keymap_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @load_file(i32 %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !62 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca %struct.ReportList, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #19
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = load i8, ptr %6, align 1, !tbaa !61
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !34
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.201, ptr noundef nonnull %6) #24
  %12 = load ptr, ptr %1, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %12, %9 ], [ %6, %3 ]
  %15 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %14, i64 noundef 1024) #21
  %16 = call zeroext i8 @BLI_path_cwd(ptr noundef nonnull %4) #21
  %17 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !42
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %13
  %20 = call ptr @CTX_data_main(ptr noundef %2) #21
  call void @BLI_callback_exec(ptr noundef %20, ptr noundef null, i32 noundef 8) #21
  %21 = call i32 @BKE_read_file(ptr noundef %2, ptr noundef nonnull %4, ptr noundef null) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %19
  %24 = call ptr @CTX_wm_manager(ptr noundef %2) #21
  %25 = call ptr @CTX_data_main(ptr noundef %2) #21
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 40
  %29 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %28) #22, !range !63
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 26
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  call void @CTX_wm_screen_set(ptr noundef %2, ptr noundef %33) #21
  call void @wm_add_default(ptr noundef %2) #21
  br label %34

34:                                               ; preds = %31, %27, %23
  call void @CTX_wm_manager_set(ptr noundef %2, ptr noundef null) #21
  call void @WM_check(ptr noundef %2) #21
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !65
  %35 = call ptr @CTX_wm_manager(ptr noundef %2) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @CTX_wm_manager_set(ptr noundef %2, ptr noundef %24) #21
  br label %38

38:                                               ; preds = %37, %34
  call void @ED_editors_init(ptr noundef %2) #21
  call void @DAG_on_visible_update(ptr noundef %25, i8 noundef zeroext 1) #21
  %39 = getelementptr inbounds %struct.Main, ptr %25, i64 0, i32 46
  %40 = load ptr, ptr %39, align 8, !tbaa !66
  %41 = call ptr @CTX_data_scene(ptr noundef %2) #21
  call void @BKE_scene_update_tagged(ptr noundef %40, ptr noundef %25, ptr noundef %41) #21
  %42 = call ptr @CTX_data_main(ptr noundef %2) #21
  call void @BLI_callback_exec(ptr noundef %42, ptr noundef null, i32 noundef 9) #21
  br label %45

43:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  call void @BKE_reports_init(ptr noundef nonnull %5, i32 noundef 1) #21
  call void @WM_file_autoexec_init(ptr noundef nonnull %4) #21
  %44 = call zeroext i8 @WM_file_read(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  call void @BKE_reports_clear(ptr noundef nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  br label %45

45:                                               ; preds = %38, %43
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 4), align 1, !tbaa !53
  br label %46

46:                                               ; preds = %19, %45
  %47 = phi i32 [ 0, %45 ], [ -1, %19 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #19
  ret i32 %47
}

; Function Attrs: optsize
declare void @WM_recover_last_session(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_argsFree(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @WM_init_game(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_init_splash(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_main(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_argsAdd(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @end_arguments(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #6 !PGOFuncName !67 {
  ret i32 -1
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal noundef i32 @print_help(i32 %0, ptr nocapture readnone %1, ptr noundef %2) #7 !PGOFuncName !68 {
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.122, i32 noundef 2, i32 noundef 72, i32 noundef 1) #22
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.202)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.203)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.24) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.86) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.89) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.84) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.92) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.95) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.98) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.110) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.112) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.117) #21
  %7 = tail call i32 @putchar(i32 10)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.204)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.115) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.120) #21
  %9 = tail call i32 @putchar(i32 10)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.205)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.26) #21
  %11 = tail call i32 @putchar(i32 10)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.206)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.60) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.63) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.57) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.66) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.72) #21
  %13 = tail call i32 @putchar(i32 10)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.207)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.82) #21
  %15 = tail call i32 @putchar(i32 10)
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.208)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.16) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.19) #21
  %17 = tail call i32 @putchar(i32 10)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.101) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.103) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.105) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.107) #21
  %18 = tail call i32 @putchar(i32 10)
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.209)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.40) #21
  %20 = tail call i32 @putchar(i32 10)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.29) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.31) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.2) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.42) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.27) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.44) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.33) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.35) #21
  %21 = tail call i32 @putchar(i32 10)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.37) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.21) #21
  %22 = tail call i32 @putchar(i32 10)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.210)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.48) #21
  %24 = tail call i32 @putchar(i32 10)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.133) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.50) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.52) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.54) #21
  %25 = tail call i32 @putchar(i32 10)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.74) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.76) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.78) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.80) #21
  %26 = tail call i32 @putchar(i32 10)
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.8) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.13) #21
  tail call void @BLI_argsPrintArgDoc(ptr noundef %2, ptr noundef nonnull @.str.4) #21
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.211)
  tail call void @BLI_argsPrintOtherDoc(ptr noundef %2) #21
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.212)
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.213)
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.214)
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.215)
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.216)
  %33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.217)
  %34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.218)
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.219)
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.220)
  %37 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.221)
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.222)
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.223)
  %40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.224)
  %41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.225)
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.226)
  %43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.227)
  %44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.228)
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.229)
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.230)
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.231)
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.232)
  %49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.233)
  tail call void @exit(i32 noundef 0) #25
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal noundef i32 @print_version(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #7 !PGOFuncName !69 {
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.122, i32 noundef 2, i32 noundef 72, i32 noundef 1) #22
  tail call void @exit(i32 noundef 0) #25
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @enable_python(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #8 !PGOFuncName !70 {
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !52
  %5 = or i32 %4, 24576
  store i32 %5, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !52
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @disable_python(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #8 !PGOFuncName !71 {
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !52
  %5 = and i32 %4, -24577
  %6 = or disjoint i32 %5, 16384
  store i32 %6, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !52
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @disable_crash_handler(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 !PGOFuncName !72 {
  store i1 true, ptr @use_crash_handler, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @background_mode(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 !PGOFuncName !73 {
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !42
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @playback_mode(i32 noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !74 {
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !42
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @WM_main_playanim(i32 noundef %0, ptr noundef %1) #21
  tail call void @exit(i32 noundef 0) #25
  unreachable

7:                                                ; preds = %3
  ret i32 -2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @debug_mode(i32 %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !75 {
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !76
  %5 = or i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !76
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.122, i32 noundef 2, i32 noundef 72, i32 noundef 1) #22
  %7 = load ptr, ptr @MEM_set_memory_debug, align 8, !tbaa !34
  tail call void %7() #21
  tail call void @BLI_argsPrint(ptr noundef %2) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @debug_mode_generic(i32 %0, ptr nocapture readnone %1, ptr noundef %2) #8 !PGOFuncName !77 {
  %4 = ptrtoint ptr %2 to i64
  %5 = trunc i64 %4 to i32
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !76
  %7 = or i32 %6, %5
  store i32 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !76
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @set_fpe(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #6 !PGOFuncName !78 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @debug_mode_memory(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !79 {
  %4 = load ptr, ptr @MEM_set_memory_debug, align 8, !tbaa !34
  tail call void %4() #21
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @set_debug_value(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #10 !PGOFuncName !80 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call i32 @atoi(ptr nocapture noundef %7) #20
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 14), align 4, !tbaa !81
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.234)
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ 1, %5 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @set_verbosity(i32 noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !PGOFuncName !82 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.235)
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ 1, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @set_factory_startup(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 !PGOFuncName !83 {
  store i8 1, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 9), align 2, !tbaa !84
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_env(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !85 {
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) @__const.set_env.env, i64 64, i1 false)
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %5, i64 5
  %9 = getelementptr inbounds i8, ptr %4, i64 7
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.159, ptr noundef %5) #22
  tail call void @exit(i32 noundef 1) #25
  unreachable

12:                                               ; preds = %7, %18
  %13 = phi ptr [ %21, %18 ], [ %9, %7 ]
  %14 = phi ptr [ %20, %18 ], [ %8, %7 ]
  %15 = load i8, ptr %14, align 1, !tbaa !61
  switch i8 %15, label %16 [
    i8 0, label %22
    i8 45, label %18
  ]

16:                                               ; preds = %12
  %17 = add i8 %15, -32
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi i8 [ %17, %16 ], [ 95, %12 ]
  store i8 %19, ptr %13, align 1, !tbaa !61
  %20 = getelementptr inbounds i8, ptr %14, i64 1
  %21 = getelementptr inbounds i8, ptr %13, i64 1
  br label %12, !llvm.loop !86

22:                                               ; preds = %12
  store i8 0, ptr %13, align 1, !tbaa !61
  %23 = getelementptr inbounds ptr, ptr %1, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  call void @BLI_setenv(ptr noundef nonnull %4, ptr noundef %24) #21
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @prefsize(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !87 {
  %4 = icmp slt i32 %0, 5
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = tail call i64 @fwrite(ptr nonnull @.str.160, i64 27, i64 1, ptr %6) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 @atoi(ptr nocapture noundef %10) #20
  %12 = getelementptr inbounds ptr, ptr %1, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call i32 @atoi(ptr nocapture noundef %13) #20
  %15 = getelementptr inbounds ptr, ptr %1, i64 3
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = tail call i32 @atoi(ptr nocapture noundef %16) #20
  %18 = getelementptr inbounds ptr, ptr %1, i64 4
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = tail call i32 @atoi(ptr nocapture noundef %19) #20
  tail call void @WM_init_state_size_set(i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20) #21
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @with_borders(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !88 {
  tail call void @WM_init_state_normal_set() #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @without_borders(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !89 {
  tail call void @WM_init_state_fullscreen_set() #21
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal noundef i32 @start_with_console(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #9 !PGOFuncName !90 {
  store i8 1, ptr @wm_start_with_console, align 1, !tbaa !61
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @register_extension(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #6 !PGOFuncName !91 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @native_pixels(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !92 {
  tail call void @WM_init_native_pixels(i8 noundef zeroext 0) #21
  ret i32 0
}

; Function Attrs: optsize
declare void @BLI_argsAddCase(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @no_joystick(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #6 !PGOFuncName !93 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @no_glsl(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !94 {
  tail call void @GPU_extensions_disable() #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @no_audio(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !PGOFuncName !95 {
  tail call void @sound_force_device(i32 noundef 0) #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_audio(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !96 {
  %4 = icmp slt i32 %0, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr @stderr, align 8, !tbaa !34
  %7 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 31, i64 1, ptr %6) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 @sound_define_from_str(ptr noundef %10) #21
  tail call void @sound_force_device(i32 noundef %11) #21
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_ge_parameters(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !97 {
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = icmp eq i32 %0, 1
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load i8, ptr %10, align 1, !tbaa !61
  %12 = icmp eq i8 %11, 61
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = icmp ugt i32 %0, 2
  br i1 %14, label %27, label %25

15:                                               ; preds = %8, %5
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(9) @.str.163) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  tail call void @GPU_set_mipmap(i32 noundef 0) #21
  %19 = load ptr, ptr %1, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ %6, %15 ]
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(13) @.str.164) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  tail call void @GPU_set_linear_mipmap(i32 noundef 1) #21
  br label %27

25:                                               ; preds = %13
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.162, ptr noundef %6) #22
  br label %27

27:                                               ; preds = %25, %13, %20, %24, %3
  %28 = phi i32 [ 0, %3 ], [ 0, %25 ], [ 2, %13 ], [ 0, %24 ], [ 0, %20 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_frame(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !98 {
  %4 = alloca %struct.ReportList, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_data_main(ptr noundef %2) #21
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %12 = tail call ptr @RE_NewRender(ptr noundef nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = load i8, ptr %14, align 1, !tbaa !61
  switch i8 %15, label %29 [
    i8 43, label %16
    i8 45, label %22
  ]

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !99
  %19 = getelementptr inbounds i8, ptr %14, i64 1
  %20 = tail call i32 @atoi(ptr nocapture noundef nonnull %19) #20
  %21 = add nsw i32 %20, %18
  br label %31

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !119
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  %26 = tail call i32 @atoi(ptr nocapture noundef nonnull %25) #20
  %27 = add i32 %24, 1
  %28 = sub i32 %27, %26
  br label %31

29:                                               ; preds = %10
  %30 = tail call i32 @atoi(ptr nocapture noundef nonnull %14) #20
  br label %31

31:                                               ; preds = %29, %22, %16
  %32 = phi i32 [ %30, %29 ], [ %28, %22 ], [ %21, %16 ]
  tail call void @BLI_begin_threaded_malloc() #21
  call void @BKE_reports_init(ptr noundef nonnull %4, i32 noundef 1) #21
  %33 = call i32 @llvm.smin.i32(i32 %32, i32 300000)
  %34 = call i32 @llvm.smax.i32(i32 %33, i32 -300000)
  call void @RE_SetReports(ptr noundef %12, ptr noundef nonnull %4) #21
  %35 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 12
  %36 = load i32, ptr %35, align 8, !tbaa !120
  %37 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 26
  %38 = load i32, ptr %37, align 4, !tbaa !121
  call void @RE_BlenderAnim(ptr noundef %12, ptr noundef %8, ptr noundef nonnull %5, ptr noundef null, i32 noundef %36, i32 noundef %34, i32 noundef %34, i32 noundef %38) #21
  call void @RE_SetReports(ptr noundef %12, ptr noundef null) #21
  call void @BLI_end_threaded_malloc() #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  br label %43

39:                                               ; preds = %7
  %40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.237)
  br label %43

41:                                               ; preds = %3
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.236)
  br label %43

43:                                               ; preds = %31, %39, %41
  %44 = phi i32 [ 0, %41 ], [ 1, %31 ], [ 0, %39 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @render_animation(i32 %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !122 {
  %4 = alloca %struct.ReportList, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_data_main(ptr noundef %2) #21
  %9 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 4
  %10 = tail call ptr @RE_NewRender(ptr noundef nonnull %9) #21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  tail call void @BLI_begin_threaded_malloc() #21
  call void @BKE_reports_init(ptr noundef nonnull %4, i32 noundef 1) #21
  call void @RE_SetReports(ptr noundef %10, ptr noundef nonnull %4) #21
  %11 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !99
  %15 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !119
  %17 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 26
  %18 = load i32, ptr %17, align 4, !tbaa !121
  call void @RE_BlenderAnim(ptr noundef %10, ptr noundef %8, ptr noundef nonnull %5, ptr noundef null, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #21
  call void @RE_SetReports(ptr noundef %10, ptr noundef null) #21
  call void @BLI_end_threaded_malloc() #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  br label %21

19:                                               ; preds = %3
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.238)
  br label %21

21:                                               ; preds = %19, %7
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_scene(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !123 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_data_main(ptr noundef %2) #21
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = tail call ptr @BKE_scene_set_name(ptr noundef %6, ptr noundef %8) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  tail call void @CTX_data_scene_set(ptr noundef %2, ptr noundef nonnull %9) #21
  br label %14

12:                                               ; preds = %3
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.239)
  br label %14

14:                                               ; preds = %5, %11, %12
  %15 = phi i32 [ 0, %12 ], [ 1, %11 ], [ 1, %5 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_start_frame(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !124 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 @atoi(ptr nocapture noundef %10) #20
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 300000)
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  store i32 %13, ptr %14, align 4, !tbaa !99
  br label %19

15:                                               ; preds = %6
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.241)
  br label %19

17:                                               ; preds = %3
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.240)
  br label %19

19:                                               ; preds = %17, %15, %8
  %20 = phi i32 [ 1, %8 ], [ 0, %15 ], [ 0, %17 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_end_frame(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !125 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 @atoi(ptr nocapture noundef %10) #20
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 300000)
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  store i32 %13, ptr %14, align 8, !tbaa !119
  br label %19

15:                                               ; preds = %6
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.243)
  br label %19

17:                                               ; preds = %3
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.242)
  br label %19

19:                                               ; preds = %17, %15, %8
  %20 = phi i32 [ 1, %8 ], [ 0, %15 ], [ 0, %17 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_skip_frame(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !126 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = tail call i32 @atoi(ptr nocapture noundef %10) #20
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 300000)
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 1)
  %14 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 26
  store i32 %13, ptr %14, align 4, !tbaa !121
  br label %19

15:                                               ; preds = %6
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.245)
  br label %19

17:                                               ; preds = %3
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.244)
  br label %19

19:                                               ; preds = %17, %15, %8
  %20 = phi i32 [ 1, %8 ], [ 0, %15 ], [ 0, %17 ]
  ret i32 %20
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @run_python_file(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !PGOFuncName !127 {
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.248)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @run_python_text(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !PGOFuncName !128 {
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.248)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @run_python_console(i32 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !PGOFuncName !129 {
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.248)
  ret i32 0
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @set_addons(i32 noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 !PGOFuncName !130 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.249)
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ 0, %5 ], [ 1, %3 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_output(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !131 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 84
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef %11, i64 noundef 1024) #21
  br label %17

13:                                               ; preds = %5
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.251)
  br label %17

15:                                               ; preds = %3
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.250)
  br label %17

17:                                               ; preds = %8, %13, %15
  %18 = phi i32 [ 0, %15 ], [ 1, %13 ], [ 1, %8 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_engine(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !132 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %37

5:                                                ; preds = %3
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(5) @.str.179) #20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.253)
  %12 = load ptr, ptr @R_engines, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %18, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.RenderEngineType, ptr %15, i64 0, i32 2
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.181, ptr noundef nonnull %16) #22
  %18 = load ptr, ptr %15, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %14, !llvm.loop !133

20:                                               ; preds = %14, %10
  tail call void @exit(i32 noundef 0) #25
  unreachable

21:                                               ; preds = %5
  %22 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8, !tbaa !34
  %26 = tail call ptr @BLI_findstring(ptr noundef nonnull @R_engines, ptr noundef %25, i32 noundef 16) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 115
  %30 = load ptr, ptr %6, align 8, !tbaa !34
  %31 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %29, ptr noundef %30, i64 noundef 32) #21
  br label %39

32:                                               ; preds = %24
  %33 = load ptr, ptr %6, align 8, !tbaa !34
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.182, ptr noundef %33) #22
  br label %39

35:                                               ; preds = %21
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.254)
  br label %39

37:                                               ; preds = %3
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.252)
  br label %39

39:                                               ; preds = %35, %32, %28, %37
  %40 = phi i32 [ 0, %37 ], [ 1, %28 ], [ 1, %32 ], [ 1, %35 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_image_type(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !134 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = tail call zeroext i8 @BKE_imtype_from_arg(ptr noundef %7) #21
  %12 = icmp eq i8 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.257)
  br label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22
  store i8 %11, ptr %16, align 8, !tbaa !135
  br label %21

17:                                               ; preds = %5
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.256)
  br label %21

19:                                               ; preds = %3
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.255)
  br label %21

21:                                               ; preds = %17, %15, %13, %19
  %22 = phi i32 [ 0, %19 ], [ 1, %13 ], [ 1, %15 ], [ 1, %17 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_threads(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !136 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds ptr, ptr %1, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call i32 @atoi(ptr nocapture noundef %7) #20
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @BLI_system_num_threads_override_set(i32 noundef %8) #21
  br label %15

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.188, i32 noundef 1) #22
  br label %15

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.189, i32 noundef 1) #22
  br label %15

15:                                               ; preds = %10, %11, %13
  %16 = phi i32 [ 0, %13 ], [ 1, %11 ], [ 1, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_extension(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !137 {
  %4 = icmp sgt i32 %0, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_data_scene(ptr noundef %2) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = load i8, ptr %10, align 1, !tbaa !61
  switch i8 %11, label %20 [
    i8 48, label %12
    i8 49, label %16
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !138
  %15 = and i32 %14, -17
  store i32 %15, ptr %13, align 4, !tbaa !138
  br label %26

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 46
  %18 = load i32, ptr %17, align 4, !tbaa !138
  %19 = or i32 %18, 16
  store i32 %19, ptr %17, align 4, !tbaa !138
  br label %26

20:                                               ; preds = %8
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.260)
  br label %26

22:                                               ; preds = %5
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.259)
  br label %26

24:                                               ; preds = %3
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.258)
  br label %26

26:                                               ; preds = %22, %16, %20, %12, %24
  %27 = phi i32 [ 0, %24 ], [ 1, %12 ], [ 1, %20 ], [ 1, %16 ], [ 1, %22 ]
  ret i32 %27
}

; Function Attrs: optsize
declare void @BLI_argsPrintArgDoc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_argsPrintOtherDoc(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @WM_main_playanim(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_argsPrint(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare void @BLI_setenv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_init_state_size_set(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_init_state_normal_set() local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_init_state_fullscreen_set() local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_init_native_pixels(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @GPU_extensions_disable() local_unnamed_addr #4

; Function Attrs: optsize
declare void @sound_force_device(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @sound_define_from_str(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @GPU_set_mipmap(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @GPU_set_linear_mipmap(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @RE_NewRender(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_begin_threaded_malloc() local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_reports_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RE_SetReports(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @RE_BlenderAnim(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_end_threaded_malloc() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_scene_set_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_data_scene_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BKE_imtype_from_arg(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_system_num_threads_override_set(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_temp_dir_base() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_path_basename(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @BLI_replace_extension(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_report_write_file_fp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @blender_crash_handler_backtrace(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !139 {
  %2 = alloca [100 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %2) #19
  %3 = tail call i32 @fputs(ptr noundef nonnull @.str.200, ptr noundef %0) #22
  %4 = call i32 @backtrace(ptr noundef nonnull %2, i32 noundef 100) #21
  %5 = call ptr @backtrace_symbols(ptr noundef nonnull %2, i32 noundef %4) #21
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = zext nneg i32 %4 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %11 = getelementptr inbounds ptr, ptr %5, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = call i32 @fputs(ptr noundef %12, ptr noundef %0) #22
  %14 = call i32 @fputc(i32 noundef 10, ptr noundef %0) #22
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !140

17:                                               ; preds = %9, %1
  call void @free(ptr noundef %5) #21
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_temp_dir_session_purge() local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @backtrace(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @backtrace_symbols(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare zeroext i8 @BLI_path_cwd(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BLI_callback_exec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @BKE_read_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !141 {
  %2 = load ptr, ptr %0, align 8, !tbaa !142
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @CTX_wm_screen_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @wm_add_default(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @CTX_wm_manager_set(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_check(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ED_editors_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @DAG_on_visible_update(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_scene_update_tagged(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @WM_file_autoexec_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @WM_file_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @BKE_reports_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal void @mem_error_cb(ptr nocapture noundef readonly %0) #10 !PGOFuncName !143 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !34
  %3 = tail call i32 @fputs(ptr noundef %0, ptr noundef %2) #24
  %4 = load ptr, ptr @stderr, align 8, !tbaa !34
  %5 = tail call i32 @fflush(ptr noundef %4) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind optsize willreturn memory(none) }
attributes #24 = { cold optsize }
attributes #25 = { noreturn nounwind optsize }
attributes #26 = { cold }

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
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !36, i64 2081}
!43 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !44, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !45, i64 2084, !45, i64 2086, !45, i64 2088, !36, i64 2090, !45, i64 2092, !41, i64 2096, !41, i64 2100, !36, i64 2104, !41, i64 2108, !41, i64 2112, !36, i64 2116}
!44 = !{!"ListBase", !35, i64 0, !35, i64 8}
!45 = !{!"short", !36, i64 0}
!46 = !{!47, !41, i64 8488}
!47 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !41, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !45, i64 8496, !45, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !41, i64 8912, !41, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !48, i64 8956, !48, i64 8960, !41, i64 8964, !45, i64 8968, !45, i64 8970, !48, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !49, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !41, i64 10896, !41, i64 10900, !48, i64 10904, !48, i64 10908, !41, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !50, i64 10928}
!48 = !{!"float", !36, i64 0}
!49 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!50 = !{!"WalkNavigation", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !45, i64 24, !36, i64 26}
!51 = !{!43, !41, i64 2108}
!52 = !{!43, !41, i64 2096}
!53 = !{!43, !36, i64 2057}
!54 = !{!"creator.c:setCallbacks"}
!55 = !{!"creator.c:setupArguments"}
!56 = !{!"creator.c:blender_crash_handler"}
!57 = !{!43, !35, i64 0}
!58 = !{!59, !35, i64 1552}
!59 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !45, i64 1040, !45, i64 1042, !45, i64 1044, !45, i64 1046, !60, i64 1048, !36, i64 1056, !45, i64 1072, !35, i64 1080, !44, i64 1088, !44, i64 1104, !44, i64 1120, !44, i64 1136, !44, i64 1152, !44, i64 1168, !44, i64 1184, !44, i64 1200, !44, i64 1216, !44, i64 1232, !44, i64 1248, !44, i64 1264, !44, i64 1280, !44, i64 1296, !44, i64 1312, !44, i64 1328, !44, i64 1344, !44, i64 1360, !44, i64 1376, !44, i64 1392, !44, i64 1408, !44, i64 1424, !44, i64 1440, !44, i64 1456, !44, i64 1472, !44, i64 1488, !44, i64 1504, !44, i64 1520, !44, i64 1536, !44, i64 1552, !44, i64 1568, !44, i64 1584, !44, i64 1600, !44, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!60 = !{!"long", !36, i64 0}
!61 = !{!36, !36, i64 0}
!62 = !{!"creator.c:load_file"}
!63 = !{i8 0, i8 2}
!64 = !{!59, !35, i64 1328}
!65 = !{!43, !36, i64 2056}
!66 = !{!59, !35, i64 1888}
!67 = !{!"creator.c:end_arguments"}
!68 = !{!"creator.c:print_help"}
!69 = !{!"creator.c:print_version"}
!70 = !{!"creator.c:enable_python"}
!71 = !{!"creator.c:disable_python"}
!72 = !{!"creator.c:disable_crash_handler"}
!73 = !{!"creator.c:background_mode"}
!74 = !{!"creator.c:playback_mode"}
!75 = !{!"creator.c:debug_mode"}
!76 = !{!43, !41, i64 2100}
!77 = !{!"creator.c:debug_mode_generic"}
!78 = !{!"creator.c:set_fpe"}
!79 = !{!"creator.c:debug_mode_memory"}
!80 = !{!"creator.c:set_debug_value"}
!81 = !{!43, !45, i64 2092}
!82 = !{!"creator.c:set_verbosity"}
!83 = !{!"creator.c:set_factory_startup"}
!84 = !{!43, !36, i64 2082}
!85 = !{!"creator.c:set_env"}
!86 = distinct !{!86, !39}
!87 = !{!"creator.c:prefsize"}
!88 = !{!"creator.c:with_borders"}
!89 = !{!"creator.c:without_borders"}
!90 = !{!"creator.c:start_with_console"}
!91 = !{!"creator.c:register_extension"}
!92 = !{!"creator.c:native_pixels"}
!93 = !{!"creator.c:no_joystick"}
!94 = !{!"creator.c:no_glsl"}
!95 = !{!"creator.c:no_audio"}
!96 = !{!"creator.c:set_audio"}
!97 = !{!"creator.c:set_ge_parameters"}
!98 = !{!"creator.c:render_frame"}
!99 = !{!100, !41, i64 684}
!100 = !{!"Scene", !101, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !44, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !102, i64 280, !111, i64 4264, !44, i64 4296, !44, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !41, i64 4380, !44, i64 4384, !112, i64 4400, !113, i64 4416, !116, i64 4600, !35, i64 4608, !117, i64 4616, !35, i64 4640, !60, i64 4648, !60, i64 4656, !104, i64 4664, !105, i64 4824, !118, i64 4888, !35, i64 4952}
!101 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!102 = !{!"RenderData", !103, i64 0, !35, i64 248, !35, i64 256, !106, i64 264, !107, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !48, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !45, i64 432, !45, i64 434, !48, i64 436, !48, i64 440, !48, i64 444, !48, i64 448, !48, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !41, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !41, i64 484, !41, i64 488, !45, i64 492, !45, i64 494, !41, i64 496, !41, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !108, i64 544, !108, i64 560, !109, i64 576, !44, i64 592, !45, i64 608, !45, i64 610, !48, i64 612, !48, i64 616, !48, i64 620, !48, i64 624, !41, i64 628, !48, i64 632, !48, i64 636, !48, i64 640, !48, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !48, i64 660, !48, i64 664, !45, i64 668, !45, i64 670, !48, i64 672, !48, i64 676, !36, i64 680, !41, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !41, i64 2520, !45, i64 2524, !45, i64 2526, !48, i64 2528, !48, i64 2532, !45, i64 2536, !45, i64 2538, !48, i64 2540, !45, i64 2544, !45, i64 2546, !41, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !48, i64 2560, !48, i64 2564, !35, i64 2568, !41, i64 2576, !48, i64 2580, !36, i64 2584, !110, i64 2616, !41, i64 3976, !41, i64 3980}
!103 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !48, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !104, i64 24, !105, i64 184}
!104 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 72, !48, i64 136, !48, i64 140, !35, i64 144, !35, i64 152}
!105 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!106 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !45, i64 48, !45, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!107 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !48, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !35, i64 64}
!108 = !{!"rctf", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!109 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!110 = !{!"BakeData", !103, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !48, i64 1280, !48, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!111 = !{!"AudioData", !41, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !41, i64 16, !45, i64 20, !45, i64 22, !48, i64 24, !48, i64 28}
!112 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!113 = !{!"GameData", !112, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !114, i64 40, !45, i64 64, !45, i64 66, !48, i64 68, !115, i64 72, !48, i64 128, !48, i64 132, !41, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !48, i64 164, !48, i64 168, !48, i64 172, !48, i64 176, !48, i64 180}
!114 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !48, i64 8, !48, i64 12, !35, i64 16}
!115 = !{!"RecastData", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !41, i64 40, !48, i64 44, !48, i64 48, !45, i64 52, !45, i64 54}
!116 = !{!"UnitSettings", !48, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!117 = !{!"PhysicsSettings", !36, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!118 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!119 = !{!100, !41, i64 688}
!120 = !{!100, !41, i64 232}
!121 = !{!100, !41, i64 748}
!122 = !{!"creator.c:render_animation"}
!123 = !{!"creator.c:set_scene"}
!124 = !{!"creator.c:set_start_frame"}
!125 = !{!"creator.c:set_end_frame"}
!126 = !{!"creator.c:set_skip_frame"}
!127 = !{!"creator.c:run_python_file"}
!128 = !{!"creator.c:run_python_text"}
!129 = !{!"creator.c:run_python_console"}
!130 = !{!"creator.c:set_addons"}
!131 = !{!"creator.c:set_output"}
!132 = !{!"creator.c:set_engine"}
!133 = distinct !{!133, !39}
!134 = !{!"creator.c:set_image_type"}
!135 = !{!100, !36, i64 280}
!136 = !{!"creator.c:set_threads"}
!137 = !{!"creator.c:set_extension"}
!138 = !{!100, !41, i64 796}
!139 = !{!"creator.c:blender_crash_handler_backtrace"}
!140 = distinct !{!140, !39}
!141 = !{!"creator.c:BLI_listbase_is_empty"}
!142 = !{!44, !35, i64 0}
!143 = !{!"creator.c:mem_error_cb"}
