; ModuleID = 'magick/color.c'
source_filename = "magick/color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ColorMapInfo = type { ptr, i8, i8, i8, float, i64 }
%struct._ColorInfo = type { ptr, ptr, i32, %struct._MagickPixelPacket, i32, i32, ptr, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._LongPixelPacket = type { i32, i32, i32, i32, i32 }

@color_semaphore = internal global ptr null, align 8
@color_cache = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"magick/color.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"UnrecognizedColor\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%10lu\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%.*g%%\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"  Searching image...  \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [80 x i8] c"Name                  Color                                         Compliance\0A\00", align 1
@.str.20 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"%-21.21s \00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%-45.45s \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"SVG \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"X11 \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"XPM \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BackgroundColor = external constant [0 x i8], align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"device-\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"icc-color\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"HCL\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"HSB\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"HWB\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"%08lX%08lX\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"colors.xml\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@ColorMap = internal unnamed_addr constant [678 x %struct._ColorMapInfo] [%struct._ColorMapInfo { ptr @.str.59, i8 0, i8 0, i8 0, float 0.000000e+00, i64 5 }, %struct._ColorMapInfo { ptr @.str.60, i8 0, i8 0, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.61, i8 -1, i8 0, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.62, i8 -1, i8 0, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.63, i8 0, i8 -128, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.64, i8 0, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.65, i8 0, i8 0, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.66, i8 -1, i8 -1, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.67, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.68, i8 -16, i8 -8, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.69, i8 -6, i8 -21, i8 -41, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.70, i8 -1, i8 -17, i8 -37, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.71, i8 -18, i8 -33, i8 -52, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.72, i8 -51, i8 -64, i8 -80, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.73, i8 -117, i8 -125, i8 120, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.74, i8 0, i8 -1, i8 -1, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.75, i8 127, i8 -1, i8 -44, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.76, i8 127, i8 -1, i8 -44, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.77, i8 118, i8 -18, i8 -58, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.78, i8 102, i8 -51, i8 -86, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.79, i8 69, i8 -117, i8 116, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.80, i8 -16, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.81, i8 -16, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.82, i8 -32, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.83, i8 -63, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.84, i8 -125, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.85, i8 -11, i8 -11, i8 -36, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.86, i8 -1, i8 -28, i8 -60, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.87, i8 -1, i8 -28, i8 -60, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.88, i8 -18, i8 -43, i8 -73, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.89, i8 -51, i8 -73, i8 -98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.90, i8 -117, i8 125, i8 107, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.91, i8 -1, i8 -21, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.92, i8 0, i8 0, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.93, i8 0, i8 0, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.94, i8 0, i8 0, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.95, i8 0, i8 0, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.96, i8 -118, i8 43, i8 -30, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.97, i8 -91, i8 42, i8 42, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.98, i8 -1, i8 64, i8 64, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.99, i8 -18, i8 59, i8 59, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.100, i8 -51, i8 51, i8 51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.101, i8 -117, i8 35, i8 35, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.102, i8 -34, i8 -72, i8 -121, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.103, i8 -1, i8 -45, i8 -101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.104, i8 -18, i8 -59, i8 -111, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.105, i8 -51, i8 -86, i8 125, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.106, i8 -117, i8 115, i8 85, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.107, i8 95, i8 -98, i8 -96, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.108, i8 -104, i8 -11, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.109, i8 -114, i8 -27, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.110, i8 122, i8 -59, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.111, i8 83, i8 -122, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.112, i8 127, i8 -1, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.113, i8 127, i8 -1, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.114, i8 118, i8 -18, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.115, i8 102, i8 -51, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.116, i8 69, i8 -117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.117, i8 -46, i8 105, i8 30, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.118, i8 -1, i8 127, i8 36, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.119, i8 -18, i8 118, i8 33, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.120, i8 -51, i8 102, i8 29, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.121, i8 -117, i8 69, i8 19, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.122, i8 -1, i8 127, i8 80, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.123, i8 -1, i8 114, i8 86, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.124, i8 -18, i8 106, i8 80, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.125, i8 -51, i8 91, i8 69, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.126, i8 -117, i8 62, i8 47, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.127, i8 100, i8 -107, i8 -19, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.128, i8 -1, i8 -8, i8 -36, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.129, i8 -1, i8 -8, i8 -36, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.130, i8 -18, i8 -24, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.131, i8 -51, i8 -56, i8 -79, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.132, i8 -117, i8 -120, i8 120, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.133, i8 -36, i8 20, i8 60, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.134, i8 0, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.135, i8 0, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.136, i8 0, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.137, i8 0, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.138, i8 0, i8 0, i8 -117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.139, i8 0, i8 -117, i8 -117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.140, i8 -72, i8 -122, i8 11, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.141, i8 -1, i8 -71, i8 15, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.142, i8 -18, i8 -83, i8 14, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.143, i8 -51, i8 -107, i8 12, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.144, i8 -117, i8 101, i8 8, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.145, i8 -87, i8 -87, i8 -87, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.146, i8 0, i8 100, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.147, i8 -87, i8 -87, i8 -87, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.148, i8 -67, i8 -73, i8 107, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.149, i8 -117, i8 0, i8 -117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.150, i8 85, i8 107, i8 47, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.151, i8 -54, i8 -1, i8 112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.152, i8 -68, i8 -18, i8 104, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.153, i8 -94, i8 -51, i8 90, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.154, i8 110, i8 -117, i8 61, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.155, i8 -1, i8 -116, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.156, i8 -1, i8 127, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.157, i8 -18, i8 118, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.158, i8 -51, i8 102, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.159, i8 -117, i8 69, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.160, i8 -103, i8 50, i8 -52, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.161, i8 -65, i8 62, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.162, i8 -78, i8 58, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.163, i8 -102, i8 50, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.164, i8 104, i8 34, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.165, i8 -117, i8 0, i8 0, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.166, i8 -23, i8 -106, i8 122, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.167, i8 -113, i8 -68, i8 -113, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.168, i8 -63, i8 -1, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.169, i8 -76, i8 -18, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.170, i8 -101, i8 -51, i8 -101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.171, i8 105, i8 -117, i8 105, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.172, i8 72, i8 61, i8 -117, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.173, i8 47, i8 79, i8 79, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.174, i8 -105, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.175, i8 -115, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.176, i8 121, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.177, i8 82, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.178, i8 47, i8 79, i8 79, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.179, i8 0, i8 -50, i8 -47, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.180, i8 -108, i8 0, i8 -45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.181, i8 -1, i8 20, i8 -109, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.182, i8 -1, i8 20, i8 -109, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.183, i8 -18, i8 18, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.184, i8 -51, i8 16, i8 118, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.185, i8 -117, i8 10, i8 80, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.186, i8 0, i8 -65, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.187, i8 0, i8 -65, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.188, i8 0, i8 -78, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.189, i8 0, i8 -102, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.190, i8 0, i8 104, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.191, i8 105, i8 105, i8 105, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.192, i8 105, i8 105, i8 105, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.193, i8 30, i8 -112, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.194, i8 30, i8 -112, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.195, i8 28, i8 -122, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.196, i8 24, i8 116, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.197, i8 16, i8 78, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.198, i8 -78, i8 34, i8 34, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.199, i8 -1, i8 48, i8 48, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.200, i8 -18, i8 44, i8 44, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.201, i8 -51, i8 38, i8 38, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.202, i8 -117, i8 26, i8 26, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.203, i8 -1, i8 -6, i8 -16, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.204, i8 34, i8 -117, i8 34, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.205, i8 -128, i8 -128, i8 -128, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.206, i8 0, i8 0, i8 0, float 0.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.207, i8 -1, i8 0, i8 -1, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.208, i8 -36, i8 -36, i8 -36, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.209, i8 -8, i8 -8, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.210, i8 -1, i8 -41, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.211, i8 -1, i8 -41, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.212, i8 -18, i8 -55, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.213, i8 -51, i8 -83, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.214, i8 -117, i8 117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.215, i8 -38, i8 -91, i8 32, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.216, i8 -1, i8 -63, i8 37, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.217, i8 -18, i8 -76, i8 34, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.218, i8 -51, i8 -101, i8 29, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.219, i8 -117, i8 105, i8 20, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.29, i8 126, i8 126, i8 126, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.29, i8 -66, i8 -66, i8 -66, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.220, i8 0, i8 0, i8 0, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.221, i8 3, i8 3, i8 3, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.222, i8 26, i8 26, i8 26, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.223, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.223, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.224, i8 28, i8 28, i8 28, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.225, i8 31, i8 31, i8 31, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.226, i8 33, i8 33, i8 33, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.227, i8 36, i8 36, i8 36, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.228, i8 38, i8 38, i8 38, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.229, i8 41, i8 41, i8 41, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.230, i8 43, i8 43, i8 43, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.231, i8 46, i8 46, i8 46, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.232, i8 48, i8 48, i8 48, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.233, i8 5, i8 5, i8 5, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.234, i8 51, i8 51, i8 51, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.235, i8 54, i8 54, i8 54, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.236, i8 56, i8 56, i8 56, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.237, i8 59, i8 59, i8 59, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.238, i8 61, i8 61, i8 61, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.239, i8 64, i8 64, i8 64, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.240, i8 66, i8 66, i8 66, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.241, i8 69, i8 69, i8 69, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.242, i8 71, i8 71, i8 71, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.243, i8 74, i8 74, i8 74, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.244, i8 8, i8 8, i8 8, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.245, i8 77, i8 77, i8 77, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.246, i8 79, i8 79, i8 79, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.247, i8 82, i8 82, i8 82, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.248, i8 84, i8 84, i8 84, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.249, i8 87, i8 87, i8 87, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.250, i8 89, i8 89, i8 89, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.251, i8 92, i8 92, i8 92, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.252, i8 94, i8 94, i8 94, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.253, i8 97, i8 97, i8 97, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.254, i8 99, i8 99, i8 99, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.255, i8 10, i8 10, i8 10, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.256, i8 102, i8 102, i8 102, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.257, i8 105, i8 105, i8 105, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.258, i8 107, i8 107, i8 107, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.259, i8 110, i8 110, i8 110, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.260, i8 112, i8 112, i8 112, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.261, i8 115, i8 115, i8 115, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.262, i8 117, i8 117, i8 117, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.263, i8 120, i8 120, i8 120, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.264, i8 122, i8 122, i8 122, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.265, i8 125, i8 125, i8 125, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.266, i8 13, i8 13, i8 13, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.267, i8 127, i8 127, i8 127, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.268, i8 -126, i8 -126, i8 -126, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.269, i8 -123, i8 -123, i8 -123, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.270, i8 -121, i8 -121, i8 -121, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.271, i8 -118, i8 -118, i8 -118, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.272, i8 -116, i8 -116, i8 -116, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.273, i8 -113, i8 -113, i8 -113, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.274, i8 -111, i8 -111, i8 -111, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.275, i8 -108, i8 -108, i8 -108, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.276, i8 -106, i8 -106, i8 -106, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.277, i8 15, i8 15, i8 15, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.278, i8 -103, i8 -103, i8 -103, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.279, i8 -100, i8 -100, i8 -100, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.280, i8 -98, i8 -98, i8 -98, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.281, i8 -95, i8 -95, i8 -95, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.282, i8 -93, i8 -93, i8 -93, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.283, i8 -90, i8 -90, i8 -90, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.284, i8 -88, i8 -88, i8 -88, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.285, i8 -85, i8 -85, i8 -85, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.286, i8 -83, i8 -83, i8 -83, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.287, i8 -80, i8 -80, i8 -80, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.288, i8 18, i8 18, i8 18, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.289, i8 -77, i8 -77, i8 -77, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.290, i8 -75, i8 -75, i8 -75, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.291, i8 -72, i8 -72, i8 -72, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.292, i8 -70, i8 -70, i8 -70, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.293, i8 -67, i8 -67, i8 -67, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.294, i8 -65, i8 -65, i8 -65, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.295, i8 -62, i8 -62, i8 -62, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.296, i8 -60, i8 -60, i8 -60, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.297, i8 -57, i8 -57, i8 -57, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.298, i8 -55, i8 -55, i8 -55, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.299, i8 20, i8 20, i8 20, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.300, i8 -52, i8 -52, i8 -52, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.301, i8 -49, i8 -49, i8 -49, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.302, i8 -47, i8 -47, i8 -47, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.303, i8 -44, i8 -44, i8 -44, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.304, i8 -42, i8 -42, i8 -42, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.305, i8 -39, i8 -39, i8 -39, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.306, i8 -37, i8 -37, i8 -37, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.307, i8 -34, i8 -34, i8 -34, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.308, i8 -32, i8 -32, i8 -32, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.309, i8 -29, i8 -29, i8 -29, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.310, i8 23, i8 23, i8 23, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.311, i8 -27, i8 -27, i8 -27, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.312, i8 -24, i8 -24, i8 -24, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.313, i8 -21, i8 -21, i8 -21, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.314, i8 -19, i8 -19, i8 -19, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.315, i8 -16, i8 -16, i8 -16, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.316, i8 -14, i8 -14, i8 -14, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.317, i8 -11, i8 -11, i8 -11, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.318, i8 -9, i8 -9, i8 -9, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.319, i8 -6, i8 -6, i8 -6, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.320, i8 -4, i8 -4, i8 -4, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.63, i8 0, i8 -1, i8 0, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.321, i8 0, i8 -1, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.322, i8 0, i8 -18, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.323, i8 0, i8 -51, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.324, i8 0, i8 -117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.325, i8 -83, i8 -1, i8 47, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.326, i8 -66, i8 -66, i8 -66, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.327, i8 0, i8 0, i8 0, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.328, i8 3, i8 3, i8 3, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.329, i8 26, i8 26, i8 26, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.330, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.331, i8 28, i8 28, i8 28, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.332, i8 31, i8 31, i8 31, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.333, i8 33, i8 33, i8 33, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.334, i8 36, i8 36, i8 36, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.335, i8 38, i8 38, i8 38, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.336, i8 41, i8 41, i8 41, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.337, i8 43, i8 43, i8 43, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.338, i8 46, i8 46, i8 46, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.339, i8 48, i8 48, i8 48, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.340, i8 5, i8 5, i8 5, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.341, i8 51, i8 51, i8 51, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.342, i8 54, i8 54, i8 54, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.343, i8 56, i8 56, i8 56, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.344, i8 59, i8 59, i8 59, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.345, i8 61, i8 61, i8 61, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.346, i8 64, i8 64, i8 64, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.347, i8 66, i8 66, i8 66, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.348, i8 69, i8 69, i8 69, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.349, i8 71, i8 71, i8 71, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.350, i8 74, i8 74, i8 74, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.351, i8 8, i8 8, i8 8, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.352, i8 77, i8 77, i8 77, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.353, i8 79, i8 79, i8 79, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.354, i8 82, i8 82, i8 82, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.355, i8 84, i8 84, i8 84, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.356, i8 87, i8 87, i8 87, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.357, i8 89, i8 89, i8 89, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.358, i8 92, i8 92, i8 92, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.359, i8 94, i8 94, i8 94, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.360, i8 97, i8 97, i8 97, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.361, i8 99, i8 99, i8 99, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.362, i8 10, i8 10, i8 10, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.363, i8 102, i8 102, i8 102, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.364, i8 105, i8 105, i8 105, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.365, i8 107, i8 107, i8 107, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.366, i8 110, i8 110, i8 110, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.367, i8 112, i8 112, i8 112, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.368, i8 115, i8 115, i8 115, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.369, i8 117, i8 117, i8 117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.370, i8 120, i8 120, i8 120, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.371, i8 122, i8 122, i8 122, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.372, i8 125, i8 125, i8 125, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.373, i8 13, i8 13, i8 13, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.374, i8 127, i8 127, i8 127, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.375, i8 -126, i8 -126, i8 -126, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.376, i8 -123, i8 -123, i8 -123, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.377, i8 -121, i8 -121, i8 -121, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.378, i8 -118, i8 -118, i8 -118, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.379, i8 -116, i8 -116, i8 -116, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.380, i8 -113, i8 -113, i8 -113, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.381, i8 -111, i8 -111, i8 -111, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.382, i8 -108, i8 -108, i8 -108, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.383, i8 -106, i8 -106, i8 -106, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.384, i8 15, i8 15, i8 15, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.385, i8 -103, i8 -103, i8 -103, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.386, i8 -100, i8 -100, i8 -100, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.387, i8 -98, i8 -98, i8 -98, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.388, i8 -95, i8 -95, i8 -95, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.389, i8 -93, i8 -93, i8 -93, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.390, i8 -90, i8 -90, i8 -90, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.391, i8 -88, i8 -88, i8 -88, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.392, i8 -85, i8 -85, i8 -85, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.393, i8 -83, i8 -83, i8 -83, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.394, i8 -80, i8 -80, i8 -80, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.395, i8 18, i8 18, i8 18, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.396, i8 -77, i8 -77, i8 -77, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.397, i8 -75, i8 -75, i8 -75, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.398, i8 -72, i8 -72, i8 -72, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.399, i8 -70, i8 -70, i8 -70, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.400, i8 -67, i8 -67, i8 -67, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.401, i8 -65, i8 -65, i8 -65, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.402, i8 -62, i8 -62, i8 -62, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.403, i8 -60, i8 -60, i8 -60, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.404, i8 -57, i8 -57, i8 -57, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.405, i8 -55, i8 -55, i8 -55, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.406, i8 20, i8 20, i8 20, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.407, i8 -52, i8 -52, i8 -52, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.408, i8 -49, i8 -49, i8 -49, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.409, i8 -47, i8 -47, i8 -47, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.410, i8 -44, i8 -44, i8 -44, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.411, i8 -42, i8 -42, i8 -42, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.412, i8 -39, i8 -39, i8 -39, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.413, i8 -37, i8 -37, i8 -37, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.414, i8 -34, i8 -34, i8 -34, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.415, i8 -32, i8 -32, i8 -32, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.416, i8 -29, i8 -29, i8 -29, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.417, i8 23, i8 23, i8 23, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.418, i8 -27, i8 -27, i8 -27, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.419, i8 -24, i8 -24, i8 -24, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.420, i8 -21, i8 -21, i8 -21, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.421, i8 -19, i8 -19, i8 -19, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.422, i8 -16, i8 -16, i8 -16, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.423, i8 -14, i8 -14, i8 -14, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.424, i8 -11, i8 -11, i8 -11, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.425, i8 -9, i8 -9, i8 -9, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.426, i8 -6, i8 -6, i8 -6, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.427, i8 -4, i8 -4, i8 -4, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.428, i8 -16, i8 -1, i8 -16, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.429, i8 -16, i8 -1, i8 -16, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.430, i8 -32, i8 -18, i8 -32, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.431, i8 -63, i8 -51, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.432, i8 -125, i8 -117, i8 -125, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.433, i8 -1, i8 105, i8 -76, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.434, i8 -1, i8 110, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.435, i8 -18, i8 106, i8 -89, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.436, i8 -51, i8 96, i8 -112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.437, i8 -117, i8 58, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.438, i8 -51, i8 92, i8 92, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.439, i8 -1, i8 106, i8 106, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.440, i8 -18, i8 99, i8 99, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.441, i8 -51, i8 85, i8 85, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.442, i8 -117, i8 58, i8 58, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.443, i8 75, i8 0, i8 -126, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.444, i8 -1, i8 -1, i8 -16, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.445, i8 -1, i8 -1, i8 -16, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.446, i8 -18, i8 -18, i8 -32, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.447, i8 -51, i8 -51, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.448, i8 -117, i8 -117, i8 -125, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.449, i8 -16, i8 -26, i8 -116, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.450, i8 -1, i8 -10, i8 -113, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.451, i8 -18, i8 -26, i8 -123, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.452, i8 -51, i8 -58, i8 115, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.453, i8 -117, i8 -122, i8 78, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.454, i8 -26, i8 -26, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.455, i8 -1, i8 -16, i8 -11, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.456, i8 -1, i8 -16, i8 -11, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.457, i8 -18, i8 -32, i8 -27, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.458, i8 -51, i8 -63, i8 -59, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.459, i8 -117, i8 -125, i8 -122, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.460, i8 124, i8 -4, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.461, i8 -1, i8 -6, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.462, i8 -1, i8 -6, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.463, i8 -18, i8 -23, i8 -65, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.464, i8 -51, i8 -55, i8 -91, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.465, i8 -117, i8 -119, i8 112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.466, i8 -83, i8 -40, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.467, i8 -65, i8 -17, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.468, i8 -78, i8 -33, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.469, i8 -102, i8 -64, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.470, i8 104, i8 -125, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.471, i8 -16, i8 -128, i8 -128, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.472, i8 -32, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.473, i8 -32, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.474, i8 -47, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.475, i8 -76, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.476, i8 122, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.477, i8 -18, i8 -35, i8 -126, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.478, i8 -1, i8 -20, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.479, i8 -18, i8 -36, i8 -126, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.480, i8 -51, i8 -66, i8 112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.481, i8 -117, i8 -127, i8 76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.482, i8 -6, i8 -6, i8 -46, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.483, i8 -45, i8 -45, i8 -45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.484, i8 -112, i8 -18, i8 -112, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.485, i8 -45, i8 -45, i8 -45, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.486, i8 -1, i8 -74, i8 -63, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.487, i8 -1, i8 -82, i8 -71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.488, i8 -18, i8 -94, i8 -83, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.489, i8 -51, i8 -116, i8 -107, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.490, i8 -117, i8 95, i8 101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.491, i8 -1, i8 -96, i8 122, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.492, i8 -1, i8 -96, i8 122, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.493, i8 -18, i8 -107, i8 114, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.494, i8 -51, i8 -127, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.495, i8 -117, i8 87, i8 66, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.496, i8 32, i8 -78, i8 -86, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.497, i8 -121, i8 -50, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.498, i8 -80, i8 -30, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.499, i8 -92, i8 -45, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.500, i8 -115, i8 -74, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.501, i8 96, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.502, i8 -124, i8 112, i8 -1, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.503, i8 119, i8 -120, i8 -103, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.504, i8 119, i8 -120, i8 -103, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.505, i8 -80, i8 -60, i8 -34, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.506, i8 -54, i8 -31, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.507, i8 -68, i8 -46, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.508, i8 -94, i8 -75, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.509, i8 110, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.510, i8 -1, i8 -1, i8 -32, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.511, i8 -1, i8 -1, i8 -32, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.512, i8 -18, i8 -18, i8 -47, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.513, i8 -51, i8 -51, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.514, i8 -117, i8 -117, i8 122, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.515, i8 0, i8 -1, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.516, i8 50, i8 -51, i8 50, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.517, i8 -6, i8 -16, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.518, i8 -1, i8 0, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.519, i8 -18, i8 0, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.520, i8 -51, i8 0, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.521, i8 -117, i8 0, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.522, i8 -128, i8 0, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.522, i8 -80, i8 48, i8 96, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.523, i8 -1, i8 52, i8 -77, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.524, i8 -18, i8 48, i8 -89, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.525, i8 -51, i8 41, i8 -112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.526, i8 -117, i8 28, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.527, i8 102, i8 -51, i8 -86, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.528, i8 0, i8 0, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.529, i8 50, i8 -127, i8 75, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.530, i8 -47, i8 -63, i8 102, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.531, i8 -70, i8 85, i8 -45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.532, i8 -32, i8 102, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.533, i8 -47, i8 95, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.534, i8 -76, i8 82, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.535, i8 122, i8 55, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.536, i8 -109, i8 112, i8 -37, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.537, i8 -85, i8 -126, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.538, i8 -97, i8 121, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.539, i8 -119, i8 104, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.540, i8 93, i8 71, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.541, i8 60, i8 -77, i8 113, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.542, i8 123, i8 104, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.543, i8 0, i8 -6, i8 -102, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.544, i8 72, i8 -47, i8 -52, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.545, i8 -57, i8 21, i8 -123, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.546, i8 25, i8 25, i8 112, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.547, i8 -11, i8 -1, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.548, i8 -1, i8 -28, i8 -31, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.549, i8 -1, i8 -28, i8 -31, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.550, i8 -18, i8 -43, i8 -46, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.551, i8 -51, i8 -73, i8 -75, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.552, i8 -117, i8 125, i8 123, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.553, i8 -1, i8 -28, i8 -75, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.554, i8 -1, i8 -34, i8 -83, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.555, i8 -1, i8 -34, i8 -83, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.556, i8 -18, i8 -49, i8 -95, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.557, i8 -51, i8 -77, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.558, i8 -117, i8 121, i8 94, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.559, i8 0, i8 0, i8 -128, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.560, i8 0, i8 0, i8 -128, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.561, i8 0, i8 0, i8 0, float 0.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.562, i8 -3, i8 -11, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.563, i8 -128, i8 -128, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.564, i8 107, i8 -114, i8 35, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.565, i8 -64, i8 -1, i8 62, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.566, i8 -77, i8 -18, i8 58, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.567, i8 -102, i8 -51, i8 50, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.568, i8 105, i8 -117, i8 34, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.569, i8 0, i8 0, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.570, i8 -1, i8 -91, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.571, i8 -1, i8 -91, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.572, i8 -18, i8 -102, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.573, i8 -51, i8 -123, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.574, i8 -117, i8 90, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.575, i8 -1, i8 69, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.576, i8 -1, i8 69, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.577, i8 -18, i8 64, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.578, i8 -51, i8 55, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.579, i8 -117, i8 37, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.580, i8 -38, i8 112, i8 -42, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.581, i8 -1, i8 -125, i8 -6, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.582, i8 -18, i8 122, i8 -23, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.583, i8 -51, i8 105, i8 -55, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.584, i8 -117, i8 71, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.585, i8 -18, i8 -24, i8 -86, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.586, i8 -104, i8 -5, i8 -104, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.587, i8 -102, i8 -1, i8 -102, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.588, i8 -112, i8 -18, i8 -112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.589, i8 124, i8 -51, i8 124, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.590, i8 84, i8 -117, i8 84, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.591, i8 -81, i8 -18, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.592, i8 -69, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.593, i8 -82, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.594, i8 -106, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.595, i8 102, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.596, i8 -37, i8 112, i8 -109, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.597, i8 -1, i8 -126, i8 -85, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.598, i8 -18, i8 121, i8 -97, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.599, i8 -51, i8 104, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.600, i8 -117, i8 71, i8 93, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.601, i8 -1, i8 -17, i8 -43, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.602, i8 -1, i8 -38, i8 -71, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.603, i8 -1, i8 -38, i8 -71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.604, i8 -18, i8 -53, i8 -83, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.605, i8 -51, i8 -81, i8 -107, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.606, i8 -117, i8 119, i8 101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.607, i8 -51, i8 -123, i8 63, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.608, i8 -1, i8 -64, i8 -53, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.609, i8 -1, i8 -75, i8 -59, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.610, i8 -18, i8 -87, i8 -72, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.611, i8 -51, i8 -111, i8 -98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.612, i8 -117, i8 99, i8 108, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.613, i8 -35, i8 -96, i8 -35, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.614, i8 -1, i8 -69, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.615, i8 -18, i8 -82, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.616, i8 -51, i8 -106, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.617, i8 -117, i8 102, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.618, i8 -80, i8 -32, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.619, i8 -128, i8 0, i8 -128, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.619, i8 -96, i8 32, i8 -16, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.620, i8 -101, i8 48, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.621, i8 -111, i8 44, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.622, i8 125, i8 38, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.623, i8 85, i8 26, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.624, i8 -1, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.625, i8 -18, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.626, i8 -51, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.627, i8 -117, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.628, i8 -68, i8 -113, i8 -113, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.629, i8 -1, i8 -63, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.630, i8 -18, i8 -76, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.631, i8 -51, i8 -101, i8 -101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.632, i8 -117, i8 105, i8 105, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.633, i8 65, i8 105, i8 -31, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.634, i8 72, i8 118, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.635, i8 67, i8 110, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.636, i8 58, i8 95, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.637, i8 39, i8 64, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.638, i8 -117, i8 69, i8 19, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.639, i8 -6, i8 -128, i8 114, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.640, i8 -1, i8 -116, i8 105, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.641, i8 -18, i8 -126, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.642, i8 -51, i8 112, i8 84, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.643, i8 -117, i8 76, i8 57, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.644, i8 -12, i8 -92, i8 96, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.645, i8 46, i8 -117, i8 87, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.646, i8 84, i8 -1, i8 -97, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.647, i8 78, i8 -18, i8 -108, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.648, i8 67, i8 -51, i8 -128, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.649, i8 46, i8 -117, i8 87, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.650, i8 -1, i8 -11, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.651, i8 -1, i8 -11, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.652, i8 -18, i8 -27, i8 -34, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.653, i8 -51, i8 -59, i8 -65, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.654, i8 -117, i8 -122, i8 -126, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.655, i8 -96, i8 82, i8 45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.656, i8 -1, i8 -126, i8 71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.657, i8 -18, i8 121, i8 66, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.658, i8 -51, i8 104, i8 57, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.659, i8 -117, i8 71, i8 38, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.660, i8 -64, i8 -64, i8 -64, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.661, i8 -121, i8 -50, i8 -21, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.662, i8 -121, i8 -50, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.663, i8 126, i8 -64, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.664, i8 108, i8 -90, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.665, i8 74, i8 112, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.666, i8 106, i8 90, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.667, i8 -125, i8 111, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.668, i8 122, i8 103, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.669, i8 105, i8 89, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.670, i8 71, i8 60, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.671, i8 112, i8 -128, i8 -112, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.672, i8 -58, i8 -30, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.673, i8 -71, i8 -45, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.674, i8 -97, i8 -74, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.675, i8 108, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.676, i8 112, i8 -128, i8 -112, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.677, i8 -1, i8 -6, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.678, i8 -1, i8 -6, i8 -6, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.679, i8 -18, i8 -23, i8 -23, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.680, i8 -51, i8 -55, i8 -55, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.681, i8 -117, i8 -119, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.682, i8 0, i8 -1, i8 127, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.683, i8 0, i8 -1, i8 127, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.684, i8 0, i8 -18, i8 118, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.685, i8 0, i8 -51, i8 102, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.686, i8 0, i8 -117, i8 69, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.687, i8 70, i8 -126, i8 -76, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.688, i8 99, i8 -72, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.689, i8 92, i8 -84, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.690, i8 79, i8 -108, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.691, i8 54, i8 100, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.692, i8 -46, i8 -76, i8 -116, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.693, i8 -1, i8 -91, i8 79, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.694, i8 -18, i8 -102, i8 73, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.695, i8 -51, i8 -123, i8 63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.696, i8 -117, i8 90, i8 43, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.697, i8 0, i8 -128, i8 -128, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.698, i8 -40, i8 -65, i8 -40, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.699, i8 -1, i8 -31, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.700, i8 -18, i8 -46, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.701, i8 -51, i8 -75, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.702, i8 -117, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.703, i8 -1, i8 99, i8 71, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.704, i8 -1, i8 99, i8 71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.705, i8 -18, i8 92, i8 66, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.706, i8 -51, i8 79, i8 57, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.707, i8 -117, i8 54, i8 38, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.708, i8 0, i8 0, i8 0, float 0.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.709, i8 64, i8 -32, i8 -48, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.710, i8 0, i8 -11, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.711, i8 0, i8 -27, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.712, i8 0, i8 -59, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.713, i8 0, i8 -122, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.714, i8 -18, i8 -126, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.715, i8 -48, i8 32, i8 -112, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.716, i8 -1, i8 62, i8 -106, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.717, i8 -18, i8 58, i8 -116, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.718, i8 -51, i8 50, i8 120, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.719, i8 -117, i8 34, i8 82, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.720, i8 -11, i8 -34, i8 -77, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.721, i8 -1, i8 -25, i8 -70, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.722, i8 -18, i8 -40, i8 -82, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.723, i8 -51, i8 -70, i8 -106, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.724, i8 -117, i8 126, i8 102, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.725, i8 -11, i8 -11, i8 -11, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.726, i8 -1, i8 -1, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.727, i8 -18, i8 -18, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.728, i8 -51, i8 -51, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.729, i8 -117, i8 -117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.730, i8 -102, i8 -51, i8 50, float 1.000000e+00, i64 7 }], align 16
@.str.40 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Loading color file \22%s\22 ...\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"<color\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"compliance\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"*SVG*\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"*X11*\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"*XPM*\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"AliceBlue\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"AntiqueWhite\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"AntiqueWhite1\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"AntiqueWhite2\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"AntiqueWhite3\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"AntiqueWhite4\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"aqua\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"aquamarine\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"aquamarine1\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"aquamarine2\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"aquamarine3\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"aquamarine4\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"azure\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"azure1\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"azure2\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"azure3\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"azure4\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"beige\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"bisque\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"bisque1\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"bisque2\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"bisque3\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"bisque4\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"BlanchedAlmond\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"blue1\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"blue2\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"blue3\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"blue4\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"BlueViolet\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"brown\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"brown1\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"brown2\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"brown3\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"brown4\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"burlywood\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"burlywood1\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"burlywood2\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"burlywood3\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"burlywood4\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"CadetBlue\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"CadetBlue1\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"CadetBlue2\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"CadetBlue3\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"CadetBlue4\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"chartreuse\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"chartreuse1\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"chartreuse2\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"chartreuse3\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"chartreuse4\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"chocolate\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"chocolate1\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"chocolate2\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"chocolate3\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"chocolate4\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"coral\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"coral1\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"coral2\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"coral3\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"coral4\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"CornflowerBlue\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"cornsilk\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"cornsilk1\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"cornsilk2\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"cornsilk3\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"cornsilk4\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"crimson\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"cyan1\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"cyan2\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"cyan3\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"cyan4\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"DarkBlue\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"DarkCyan\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"DarkGoldenrod\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod1\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod2\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod3\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod4\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"DarkGray\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"DarkGreen\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"DarkGrey\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"DarkKhaki\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"DarkMagenta\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"DarkOliveGreen\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen1\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen2\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen3\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen4\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"DarkOrange\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"DarkOrange1\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"DarkOrange2\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"DarkOrange3\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"DarkOrange4\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"DarkOrchid\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"DarkOrchid1\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"DarkOrchid2\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"DarkOrchid3\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"DarkOrchid4\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"DarkRed\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"DarkSalmon\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"DarkSeaGreen\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen1\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen2\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen3\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen4\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"DarkSlateBlue\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"DarkSlateGray\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"DarkSlateGray1\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"DarkSlateGray2\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"DarkSlateGray3\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"DarkSlateGray4\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"DarkSlateGrey\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"DarkTurquoise\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"DarkViolet\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"DeepPink\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"DeepPink1\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"DeepPink2\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"DeepPink3\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"DeepPink4\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"DeepSkyBlue\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue1\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue2\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue3\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue4\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"DimGray\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"DimGrey\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"DodgerBlue\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"DodgerBlue1\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"DodgerBlue2\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"DodgerBlue3\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"DodgerBlue4\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"firebrick\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"firebrick1\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"firebrick2\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"firebrick3\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"firebrick4\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"FloralWhite\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"ForestGreen\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"fractal\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"fuchsia\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"gainsboro\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"GhostWhite\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"gold\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"gold1\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"gold2\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c"gold3\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"gold4\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"goldenrod\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"goldenrod1\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"goldenrod2\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"goldenrod3\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"goldenrod4\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"gray0\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"gray1\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"gray10\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"gray100\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"gray11\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"gray12\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"gray13\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"gray14\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"gray15\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"gray16\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"gray17\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"gray18\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"gray19\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"gray2\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"gray20\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"gray21\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"gray22\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"gray23\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"gray24\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"gray25\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"gray26\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"gray27\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"gray28\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"gray29\00", align 1
@.str.244 = private unnamed_addr constant [6 x i8] c"gray3\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"gray30\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"gray31\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"gray32\00", align 1
@.str.248 = private unnamed_addr constant [7 x i8] c"gray33\00", align 1
@.str.249 = private unnamed_addr constant [7 x i8] c"gray34\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"gray35\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"gray36\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"gray37\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"gray38\00", align 1
@.str.254 = private unnamed_addr constant [7 x i8] c"gray39\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"gray4\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"gray40\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"gray41\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"gray42\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c"gray43\00", align 1
@.str.260 = private unnamed_addr constant [7 x i8] c"gray44\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"gray45\00", align 1
@.str.262 = private unnamed_addr constant [7 x i8] c"gray46\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"gray47\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"gray48\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"gray49\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"gray5\00", align 1
@.str.267 = private unnamed_addr constant [7 x i8] c"gray50\00", align 1
@.str.268 = private unnamed_addr constant [7 x i8] c"gray51\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"gray52\00", align 1
@.str.270 = private unnamed_addr constant [7 x i8] c"gray53\00", align 1
@.str.271 = private unnamed_addr constant [7 x i8] c"gray54\00", align 1
@.str.272 = private unnamed_addr constant [7 x i8] c"gray55\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"gray56\00", align 1
@.str.274 = private unnamed_addr constant [7 x i8] c"gray57\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"gray58\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"gray59\00", align 1
@.str.277 = private unnamed_addr constant [6 x i8] c"gray6\00", align 1
@.str.278 = private unnamed_addr constant [7 x i8] c"gray60\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"gray61\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"gray62\00", align 1
@.str.281 = private unnamed_addr constant [7 x i8] c"gray63\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"gray64\00", align 1
@.str.283 = private unnamed_addr constant [7 x i8] c"gray65\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"gray66\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"gray67\00", align 1
@.str.286 = private unnamed_addr constant [7 x i8] c"gray68\00", align 1
@.str.287 = private unnamed_addr constant [7 x i8] c"gray69\00", align 1
@.str.288 = private unnamed_addr constant [6 x i8] c"gray7\00", align 1
@.str.289 = private unnamed_addr constant [7 x i8] c"gray70\00", align 1
@.str.290 = private unnamed_addr constant [7 x i8] c"gray71\00", align 1
@.str.291 = private unnamed_addr constant [7 x i8] c"gray72\00", align 1
@.str.292 = private unnamed_addr constant [7 x i8] c"gray73\00", align 1
@.str.293 = private unnamed_addr constant [7 x i8] c"gray74\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"gray75\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"gray76\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"gray77\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c"gray78\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"gray79\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"gray8\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"gray80\00", align 1
@.str.301 = private unnamed_addr constant [7 x i8] c"gray81\00", align 1
@.str.302 = private unnamed_addr constant [7 x i8] c"gray82\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c"gray83\00", align 1
@.str.304 = private unnamed_addr constant [7 x i8] c"gray84\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"gray85\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"gray86\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"gray87\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"gray88\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"gray89\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"gray9\00", align 1
@.str.311 = private unnamed_addr constant [7 x i8] c"gray90\00", align 1
@.str.312 = private unnamed_addr constant [7 x i8] c"gray91\00", align 1
@.str.313 = private unnamed_addr constant [7 x i8] c"gray92\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"gray93\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"gray94\00", align 1
@.str.316 = private unnamed_addr constant [7 x i8] c"gray95\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"gray96\00", align 1
@.str.318 = private unnamed_addr constant [7 x i8] c"gray97\00", align 1
@.str.319 = private unnamed_addr constant [7 x i8] c"gray98\00", align 1
@.str.320 = private unnamed_addr constant [7 x i8] c"gray99\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"green1\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"green2\00", align 1
@.str.323 = private unnamed_addr constant [7 x i8] c"green3\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"green4\00", align 1
@.str.325 = private unnamed_addr constant [12 x i8] c"GreenYellow\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@.str.327 = private unnamed_addr constant [6 x i8] c"grey0\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"grey1\00", align 1
@.str.329 = private unnamed_addr constant [7 x i8] c"grey10\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"grey100\00", align 1
@.str.331 = private unnamed_addr constant [7 x i8] c"grey11\00", align 1
@.str.332 = private unnamed_addr constant [7 x i8] c"grey12\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"grey13\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"grey14\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"grey15\00", align 1
@.str.336 = private unnamed_addr constant [7 x i8] c"grey16\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"grey17\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"grey18\00", align 1
@.str.339 = private unnamed_addr constant [7 x i8] c"grey19\00", align 1
@.str.340 = private unnamed_addr constant [6 x i8] c"grey2\00", align 1
@.str.341 = private unnamed_addr constant [7 x i8] c"grey20\00", align 1
@.str.342 = private unnamed_addr constant [7 x i8] c"grey21\00", align 1
@.str.343 = private unnamed_addr constant [7 x i8] c"grey22\00", align 1
@.str.344 = private unnamed_addr constant [7 x i8] c"grey23\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c"grey24\00", align 1
@.str.346 = private unnamed_addr constant [7 x i8] c"grey25\00", align 1
@.str.347 = private unnamed_addr constant [7 x i8] c"grey26\00", align 1
@.str.348 = private unnamed_addr constant [7 x i8] c"grey27\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"grey28\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"grey29\00", align 1
@.str.351 = private unnamed_addr constant [6 x i8] c"grey3\00", align 1
@.str.352 = private unnamed_addr constant [7 x i8] c"grey30\00", align 1
@.str.353 = private unnamed_addr constant [7 x i8] c"grey31\00", align 1
@.str.354 = private unnamed_addr constant [7 x i8] c"grey32\00", align 1
@.str.355 = private unnamed_addr constant [7 x i8] c"grey33\00", align 1
@.str.356 = private unnamed_addr constant [7 x i8] c"grey34\00", align 1
@.str.357 = private unnamed_addr constant [7 x i8] c"grey35\00", align 1
@.str.358 = private unnamed_addr constant [7 x i8] c"grey36\00", align 1
@.str.359 = private unnamed_addr constant [7 x i8] c"grey37\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"grey38\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"grey39\00", align 1
@.str.362 = private unnamed_addr constant [6 x i8] c"grey4\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"grey40\00", align 1
@.str.364 = private unnamed_addr constant [7 x i8] c"grey41\00", align 1
@.str.365 = private unnamed_addr constant [7 x i8] c"grey42\00", align 1
@.str.366 = private unnamed_addr constant [7 x i8] c"grey43\00", align 1
@.str.367 = private unnamed_addr constant [7 x i8] c"grey44\00", align 1
@.str.368 = private unnamed_addr constant [7 x i8] c"grey45\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"grey46\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"grey47\00", align 1
@.str.371 = private unnamed_addr constant [7 x i8] c"grey48\00", align 1
@.str.372 = private unnamed_addr constant [7 x i8] c"grey49\00", align 1
@.str.373 = private unnamed_addr constant [6 x i8] c"grey5\00", align 1
@.str.374 = private unnamed_addr constant [7 x i8] c"grey50\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"grey51\00", align 1
@.str.376 = private unnamed_addr constant [7 x i8] c"grey52\00", align 1
@.str.377 = private unnamed_addr constant [7 x i8] c"grey53\00", align 1
@.str.378 = private unnamed_addr constant [7 x i8] c"grey54\00", align 1
@.str.379 = private unnamed_addr constant [7 x i8] c"grey55\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"grey56\00", align 1
@.str.381 = private unnamed_addr constant [7 x i8] c"grey57\00", align 1
@.str.382 = private unnamed_addr constant [7 x i8] c"grey58\00", align 1
@.str.383 = private unnamed_addr constant [7 x i8] c"grey59\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"grey6\00", align 1
@.str.385 = private unnamed_addr constant [7 x i8] c"grey60\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"grey61\00", align 1
@.str.387 = private unnamed_addr constant [7 x i8] c"grey62\00", align 1
@.str.388 = private unnamed_addr constant [7 x i8] c"grey63\00", align 1
@.str.389 = private unnamed_addr constant [7 x i8] c"grey64\00", align 1
@.str.390 = private unnamed_addr constant [7 x i8] c"grey65\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"grey66\00", align 1
@.str.392 = private unnamed_addr constant [7 x i8] c"grey67\00", align 1
@.str.393 = private unnamed_addr constant [7 x i8] c"grey68\00", align 1
@.str.394 = private unnamed_addr constant [7 x i8] c"grey69\00", align 1
@.str.395 = private unnamed_addr constant [6 x i8] c"grey7\00", align 1
@.str.396 = private unnamed_addr constant [7 x i8] c"grey70\00", align 1
@.str.397 = private unnamed_addr constant [7 x i8] c"grey71\00", align 1
@.str.398 = private unnamed_addr constant [7 x i8] c"grey72\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c"grey73\00", align 1
@.str.400 = private unnamed_addr constant [7 x i8] c"grey74\00", align 1
@.str.401 = private unnamed_addr constant [7 x i8] c"grey75\00", align 1
@.str.402 = private unnamed_addr constant [7 x i8] c"grey76\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"grey77\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"grey78\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"grey79\00", align 1
@.str.406 = private unnamed_addr constant [6 x i8] c"grey8\00", align 1
@.str.407 = private unnamed_addr constant [7 x i8] c"grey80\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"grey81\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"grey82\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c"grey83\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"grey84\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c"grey85\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"grey86\00", align 1
@.str.414 = private unnamed_addr constant [7 x i8] c"grey87\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"grey88\00", align 1
@.str.416 = private unnamed_addr constant [7 x i8] c"grey89\00", align 1
@.str.417 = private unnamed_addr constant [6 x i8] c"grey9\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c"grey90\00", align 1
@.str.419 = private unnamed_addr constant [7 x i8] c"grey91\00", align 1
@.str.420 = private unnamed_addr constant [7 x i8] c"grey92\00", align 1
@.str.421 = private unnamed_addr constant [7 x i8] c"grey93\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"grey94\00", align 1
@.str.423 = private unnamed_addr constant [7 x i8] c"grey95\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c"grey96\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"grey97\00", align 1
@.str.426 = private unnamed_addr constant [7 x i8] c"grey98\00", align 1
@.str.427 = private unnamed_addr constant [7 x i8] c"grey99\00", align 1
@.str.428 = private unnamed_addr constant [9 x i8] c"honeydew\00", align 1
@.str.429 = private unnamed_addr constant [10 x i8] c"honeydew1\00", align 1
@.str.430 = private unnamed_addr constant [10 x i8] c"honeydew2\00", align 1
@.str.431 = private unnamed_addr constant [10 x i8] c"honeydew3\00", align 1
@.str.432 = private unnamed_addr constant [10 x i8] c"honeydew4\00", align 1
@.str.433 = private unnamed_addr constant [8 x i8] c"HotPink\00", align 1
@.str.434 = private unnamed_addr constant [9 x i8] c"HotPink1\00", align 1
@.str.435 = private unnamed_addr constant [9 x i8] c"HotPink2\00", align 1
@.str.436 = private unnamed_addr constant [9 x i8] c"HotPink3\00", align 1
@.str.437 = private unnamed_addr constant [9 x i8] c"HotPink4\00", align 1
@.str.438 = private unnamed_addr constant [10 x i8] c"IndianRed\00", align 1
@.str.439 = private unnamed_addr constant [11 x i8] c"IndianRed1\00", align 1
@.str.440 = private unnamed_addr constant [11 x i8] c"IndianRed2\00", align 1
@.str.441 = private unnamed_addr constant [11 x i8] c"IndianRed3\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"IndianRed4\00", align 1
@.str.443 = private unnamed_addr constant [7 x i8] c"indigo\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"ivory\00", align 1
@.str.445 = private unnamed_addr constant [7 x i8] c"ivory1\00", align 1
@.str.446 = private unnamed_addr constant [7 x i8] c"ivory2\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"ivory3\00", align 1
@.str.448 = private unnamed_addr constant [7 x i8] c"ivory4\00", align 1
@.str.449 = private unnamed_addr constant [6 x i8] c"khaki\00", align 1
@.str.450 = private unnamed_addr constant [7 x i8] c"khaki1\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"khaki2\00", align 1
@.str.452 = private unnamed_addr constant [7 x i8] c"khaki3\00", align 1
@.str.453 = private unnamed_addr constant [7 x i8] c"khaki4\00", align 1
@.str.454 = private unnamed_addr constant [9 x i8] c"lavender\00", align 1
@.str.455 = private unnamed_addr constant [14 x i8] c"LavenderBlush\00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"LavenderBlush1\00", align 1
@.str.457 = private unnamed_addr constant [15 x i8] c"LavenderBlush2\00", align 1
@.str.458 = private unnamed_addr constant [15 x i8] c"LavenderBlush3\00", align 1
@.str.459 = private unnamed_addr constant [15 x i8] c"LavenderBlush4\00", align 1
@.str.460 = private unnamed_addr constant [10 x i8] c"LawnGreen\00", align 1
@.str.461 = private unnamed_addr constant [13 x i8] c"LemonChiffon\00", align 1
@.str.462 = private unnamed_addr constant [14 x i8] c"LemonChiffon1\00", align 1
@.str.463 = private unnamed_addr constant [14 x i8] c"LemonChiffon2\00", align 1
@.str.464 = private unnamed_addr constant [14 x i8] c"LemonChiffon3\00", align 1
@.str.465 = private unnamed_addr constant [14 x i8] c"LemonChiffon4\00", align 1
@.str.466 = private unnamed_addr constant [10 x i8] c"LightBlue\00", align 1
@.str.467 = private unnamed_addr constant [11 x i8] c"LightBlue1\00", align 1
@.str.468 = private unnamed_addr constant [11 x i8] c"LightBlue2\00", align 1
@.str.469 = private unnamed_addr constant [11 x i8] c"LightBlue3\00", align 1
@.str.470 = private unnamed_addr constant [11 x i8] c"LightBlue4\00", align 1
@.str.471 = private unnamed_addr constant [11 x i8] c"LightCoral\00", align 1
@.str.472 = private unnamed_addr constant [10 x i8] c"LightCyan\00", align 1
@.str.473 = private unnamed_addr constant [11 x i8] c"LightCyan1\00", align 1
@.str.474 = private unnamed_addr constant [11 x i8] c"LightCyan2\00", align 1
@.str.475 = private unnamed_addr constant [11 x i8] c"LightCyan3\00", align 1
@.str.476 = private unnamed_addr constant [11 x i8] c"LightCyan4\00", align 1
@.str.477 = private unnamed_addr constant [15 x i8] c"LightGoldenrod\00", align 1
@.str.478 = private unnamed_addr constant [16 x i8] c"LightGoldenrod1\00", align 1
@.str.479 = private unnamed_addr constant [16 x i8] c"LightGoldenrod2\00", align 1
@.str.480 = private unnamed_addr constant [16 x i8] c"LightGoldenrod3\00", align 1
@.str.481 = private unnamed_addr constant [16 x i8] c"LightGoldenrod4\00", align 1
@.str.482 = private unnamed_addr constant [21 x i8] c"LightGoldenrodYellow\00", align 1
@.str.483 = private unnamed_addr constant [10 x i8] c"LightGray\00", align 1
@.str.484 = private unnamed_addr constant [11 x i8] c"LightGreen\00", align 1
@.str.485 = private unnamed_addr constant [10 x i8] c"LightGrey\00", align 1
@.str.486 = private unnamed_addr constant [10 x i8] c"LightPink\00", align 1
@.str.487 = private unnamed_addr constant [11 x i8] c"LightPink1\00", align 1
@.str.488 = private unnamed_addr constant [11 x i8] c"LightPink2\00", align 1
@.str.489 = private unnamed_addr constant [11 x i8] c"LightPink3\00", align 1
@.str.490 = private unnamed_addr constant [11 x i8] c"LightPink4\00", align 1
@.str.491 = private unnamed_addr constant [12 x i8] c"LightSalmon\00", align 1
@.str.492 = private unnamed_addr constant [13 x i8] c"LightSalmon1\00", align 1
@.str.493 = private unnamed_addr constant [13 x i8] c"LightSalmon2\00", align 1
@.str.494 = private unnamed_addr constant [13 x i8] c"LightSalmon3\00", align 1
@.str.495 = private unnamed_addr constant [13 x i8] c"LightSalmon4\00", align 1
@.str.496 = private unnamed_addr constant [14 x i8] c"LightSeaGreen\00", align 1
@.str.497 = private unnamed_addr constant [13 x i8] c"LightSkyBlue\00", align 1
@.str.498 = private unnamed_addr constant [14 x i8] c"LightSkyBlue1\00", align 1
@.str.499 = private unnamed_addr constant [14 x i8] c"LightSkyBlue2\00", align 1
@.str.500 = private unnamed_addr constant [14 x i8] c"LightSkyBlue3\00", align 1
@.str.501 = private unnamed_addr constant [14 x i8] c"LightSkyBlue4\00", align 1
@.str.502 = private unnamed_addr constant [15 x i8] c"LightSlateBlue\00", align 1
@.str.503 = private unnamed_addr constant [15 x i8] c"LightSlateGray\00", align 1
@.str.504 = private unnamed_addr constant [15 x i8] c"LightSlateGrey\00", align 1
@.str.505 = private unnamed_addr constant [15 x i8] c"LightSteelBlue\00", align 1
@.str.506 = private unnamed_addr constant [16 x i8] c"LightSteelBlue1\00", align 1
@.str.507 = private unnamed_addr constant [16 x i8] c"LightSteelBlue2\00", align 1
@.str.508 = private unnamed_addr constant [16 x i8] c"LightSteelBlue3\00", align 1
@.str.509 = private unnamed_addr constant [16 x i8] c"LightSteelBlue4\00", align 1
@.str.510 = private unnamed_addr constant [12 x i8] c"LightYellow\00", align 1
@.str.511 = private unnamed_addr constant [13 x i8] c"LightYellow1\00", align 1
@.str.512 = private unnamed_addr constant [13 x i8] c"LightYellow2\00", align 1
@.str.513 = private unnamed_addr constant [13 x i8] c"LightYellow3\00", align 1
@.str.514 = private unnamed_addr constant [13 x i8] c"LightYellow4\00", align 1
@.str.515 = private unnamed_addr constant [5 x i8] c"lime\00", align 1
@.str.516 = private unnamed_addr constant [10 x i8] c"LimeGreen\00", align 1
@.str.517 = private unnamed_addr constant [6 x i8] c"linen\00", align 1
@.str.518 = private unnamed_addr constant [9 x i8] c"magenta1\00", align 1
@.str.519 = private unnamed_addr constant [9 x i8] c"magenta2\00", align 1
@.str.520 = private unnamed_addr constant [9 x i8] c"magenta3\00", align 1
@.str.521 = private unnamed_addr constant [9 x i8] c"magenta4\00", align 1
@.str.522 = private unnamed_addr constant [7 x i8] c"maroon\00", align 1
@.str.523 = private unnamed_addr constant [8 x i8] c"maroon1\00", align 1
@.str.524 = private unnamed_addr constant [8 x i8] c"maroon2\00", align 1
@.str.525 = private unnamed_addr constant [8 x i8] c"maroon3\00", align 1
@.str.526 = private unnamed_addr constant [8 x i8] c"maroon4\00", align 1
@.str.527 = private unnamed_addr constant [17 x i8] c"MediumAquamarine\00", align 1
@.str.528 = private unnamed_addr constant [11 x i8] c"MediumBlue\00", align 1
@.str.529 = private unnamed_addr constant [18 x i8] c"MediumForestGreen\00", align 1
@.str.530 = private unnamed_addr constant [16 x i8] c"MediumGoldenRod\00", align 1
@.str.531 = private unnamed_addr constant [13 x i8] c"MediumOrchid\00", align 1
@.str.532 = private unnamed_addr constant [14 x i8] c"MediumOrchid1\00", align 1
@.str.533 = private unnamed_addr constant [14 x i8] c"MediumOrchid2\00", align 1
@.str.534 = private unnamed_addr constant [14 x i8] c"MediumOrchid3\00", align 1
@.str.535 = private unnamed_addr constant [14 x i8] c"MediumOrchid4\00", align 1
@.str.536 = private unnamed_addr constant [13 x i8] c"MediumPurple\00", align 1
@.str.537 = private unnamed_addr constant [14 x i8] c"MediumPurple1\00", align 1
@.str.538 = private unnamed_addr constant [14 x i8] c"MediumPurple2\00", align 1
@.str.539 = private unnamed_addr constant [14 x i8] c"MediumPurple3\00", align 1
@.str.540 = private unnamed_addr constant [14 x i8] c"MediumPurple4\00", align 1
@.str.541 = private unnamed_addr constant [15 x i8] c"MediumSeaGreen\00", align 1
@.str.542 = private unnamed_addr constant [16 x i8] c"MediumSlateBlue\00", align 1
@.str.543 = private unnamed_addr constant [18 x i8] c"MediumSpringGreen\00", align 1
@.str.544 = private unnamed_addr constant [16 x i8] c"MediumTurquoise\00", align 1
@.str.545 = private unnamed_addr constant [16 x i8] c"MediumVioletRed\00", align 1
@.str.546 = private unnamed_addr constant [13 x i8] c"MidnightBlue\00", align 1
@.str.547 = private unnamed_addr constant [10 x i8] c"MintCream\00", align 1
@.str.548 = private unnamed_addr constant [10 x i8] c"MistyRose\00", align 1
@.str.549 = private unnamed_addr constant [11 x i8] c"MistyRose1\00", align 1
@.str.550 = private unnamed_addr constant [11 x i8] c"MistyRose2\00", align 1
@.str.551 = private unnamed_addr constant [11 x i8] c"MistyRose3\00", align 1
@.str.552 = private unnamed_addr constant [11 x i8] c"MistyRose4\00", align 1
@.str.553 = private unnamed_addr constant [9 x i8] c"moccasin\00", align 1
@.str.554 = private unnamed_addr constant [12 x i8] c"NavajoWhite\00", align 1
@.str.555 = private unnamed_addr constant [13 x i8] c"NavajoWhite1\00", align 1
@.str.556 = private unnamed_addr constant [13 x i8] c"NavajoWhite2\00", align 1
@.str.557 = private unnamed_addr constant [13 x i8] c"NavajoWhite3\00", align 1
@.str.558 = private unnamed_addr constant [13 x i8] c"NavajoWhite4\00", align 1
@.str.559 = private unnamed_addr constant [5 x i8] c"navy\00", align 1
@.str.560 = private unnamed_addr constant [9 x i8] c"NavyBlue\00", align 1
@.str.561 = private unnamed_addr constant [6 x i8] c"matte\00", align 1
@.str.562 = private unnamed_addr constant [8 x i8] c"OldLace\00", align 1
@.str.563 = private unnamed_addr constant [6 x i8] c"olive\00", align 1
@.str.564 = private unnamed_addr constant [10 x i8] c"OliveDrab\00", align 1
@.str.565 = private unnamed_addr constant [11 x i8] c"OliveDrab1\00", align 1
@.str.566 = private unnamed_addr constant [11 x i8] c"OliveDrab2\00", align 1
@.str.567 = private unnamed_addr constant [11 x i8] c"OliveDrab3\00", align 1
@.str.568 = private unnamed_addr constant [11 x i8] c"OliveDrab4\00", align 1
@.str.569 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.570 = private unnamed_addr constant [7 x i8] c"orange\00", align 1
@.str.571 = private unnamed_addr constant [8 x i8] c"orange1\00", align 1
@.str.572 = private unnamed_addr constant [8 x i8] c"orange2\00", align 1
@.str.573 = private unnamed_addr constant [8 x i8] c"orange3\00", align 1
@.str.574 = private unnamed_addr constant [8 x i8] c"orange4\00", align 1
@.str.575 = private unnamed_addr constant [10 x i8] c"OrangeRed\00", align 1
@.str.576 = private unnamed_addr constant [11 x i8] c"OrangeRed1\00", align 1
@.str.577 = private unnamed_addr constant [11 x i8] c"OrangeRed2\00", align 1
@.str.578 = private unnamed_addr constant [11 x i8] c"OrangeRed3\00", align 1
@.str.579 = private unnamed_addr constant [11 x i8] c"OrangeRed4\00", align 1
@.str.580 = private unnamed_addr constant [7 x i8] c"orchid\00", align 1
@.str.581 = private unnamed_addr constant [8 x i8] c"orchid1\00", align 1
@.str.582 = private unnamed_addr constant [8 x i8] c"orchid2\00", align 1
@.str.583 = private unnamed_addr constant [8 x i8] c"orchid3\00", align 1
@.str.584 = private unnamed_addr constant [8 x i8] c"orchid4\00", align 1
@.str.585 = private unnamed_addr constant [14 x i8] c"PaleGoldenrod\00", align 1
@.str.586 = private unnamed_addr constant [10 x i8] c"PaleGreen\00", align 1
@.str.587 = private unnamed_addr constant [11 x i8] c"PaleGreen1\00", align 1
@.str.588 = private unnamed_addr constant [11 x i8] c"PaleGreen2\00", align 1
@.str.589 = private unnamed_addr constant [11 x i8] c"PaleGreen3\00", align 1
@.str.590 = private unnamed_addr constant [11 x i8] c"PaleGreen4\00", align 1
@.str.591 = private unnamed_addr constant [14 x i8] c"PaleTurquoise\00", align 1
@.str.592 = private unnamed_addr constant [15 x i8] c"PaleTurquoise1\00", align 1
@.str.593 = private unnamed_addr constant [15 x i8] c"PaleTurquoise2\00", align 1
@.str.594 = private unnamed_addr constant [15 x i8] c"PaleTurquoise3\00", align 1
@.str.595 = private unnamed_addr constant [15 x i8] c"PaleTurquoise4\00", align 1
@.str.596 = private unnamed_addr constant [14 x i8] c"PaleVioletRed\00", align 1
@.str.597 = private unnamed_addr constant [15 x i8] c"PaleVioletRed1\00", align 1
@.str.598 = private unnamed_addr constant [15 x i8] c"PaleVioletRed2\00", align 1
@.str.599 = private unnamed_addr constant [15 x i8] c"PaleVioletRed3\00", align 1
@.str.600 = private unnamed_addr constant [15 x i8] c"PaleVioletRed4\00", align 1
@.str.601 = private unnamed_addr constant [11 x i8] c"PapayaWhip\00", align 1
@.str.602 = private unnamed_addr constant [10 x i8] c"PeachPuff\00", align 1
@.str.603 = private unnamed_addr constant [11 x i8] c"PeachPuff1\00", align 1
@.str.604 = private unnamed_addr constant [11 x i8] c"PeachPuff2\00", align 1
@.str.605 = private unnamed_addr constant [11 x i8] c"PeachPuff3\00", align 1
@.str.606 = private unnamed_addr constant [11 x i8] c"PeachPuff4\00", align 1
@.str.607 = private unnamed_addr constant [5 x i8] c"peru\00", align 1
@.str.608 = private unnamed_addr constant [5 x i8] c"pink\00", align 1
@.str.609 = private unnamed_addr constant [6 x i8] c"pink1\00", align 1
@.str.610 = private unnamed_addr constant [6 x i8] c"pink2\00", align 1
@.str.611 = private unnamed_addr constant [6 x i8] c"pink3\00", align 1
@.str.612 = private unnamed_addr constant [6 x i8] c"pink4\00", align 1
@.str.613 = private unnamed_addr constant [5 x i8] c"plum\00", align 1
@.str.614 = private unnamed_addr constant [6 x i8] c"plum1\00", align 1
@.str.615 = private unnamed_addr constant [6 x i8] c"plum2\00", align 1
@.str.616 = private unnamed_addr constant [6 x i8] c"plum3\00", align 1
@.str.617 = private unnamed_addr constant [6 x i8] c"plum4\00", align 1
@.str.618 = private unnamed_addr constant [11 x i8] c"PowderBlue\00", align 1
@.str.619 = private unnamed_addr constant [7 x i8] c"purple\00", align 1
@.str.620 = private unnamed_addr constant [8 x i8] c"purple1\00", align 1
@.str.621 = private unnamed_addr constant [8 x i8] c"purple2\00", align 1
@.str.622 = private unnamed_addr constant [8 x i8] c"purple3\00", align 1
@.str.623 = private unnamed_addr constant [8 x i8] c"purple4\00", align 1
@.str.624 = private unnamed_addr constant [5 x i8] c"red1\00", align 1
@.str.625 = private unnamed_addr constant [5 x i8] c"red2\00", align 1
@.str.626 = private unnamed_addr constant [5 x i8] c"red3\00", align 1
@.str.627 = private unnamed_addr constant [5 x i8] c"red4\00", align 1
@.str.628 = private unnamed_addr constant [10 x i8] c"RosyBrown\00", align 1
@.str.629 = private unnamed_addr constant [11 x i8] c"RosyBrown1\00", align 1
@.str.630 = private unnamed_addr constant [11 x i8] c"RosyBrown2\00", align 1
@.str.631 = private unnamed_addr constant [11 x i8] c"RosyBrown3\00", align 1
@.str.632 = private unnamed_addr constant [11 x i8] c"RosyBrown4\00", align 1
@.str.633 = private unnamed_addr constant [10 x i8] c"RoyalBlue\00", align 1
@.str.634 = private unnamed_addr constant [11 x i8] c"RoyalBlue1\00", align 1
@.str.635 = private unnamed_addr constant [11 x i8] c"RoyalBlue2\00", align 1
@.str.636 = private unnamed_addr constant [11 x i8] c"RoyalBlue3\00", align 1
@.str.637 = private unnamed_addr constant [11 x i8] c"RoyalBlue4\00", align 1
@.str.638 = private unnamed_addr constant [12 x i8] c"SaddleBrown\00", align 1
@.str.639 = private unnamed_addr constant [7 x i8] c"salmon\00", align 1
@.str.640 = private unnamed_addr constant [8 x i8] c"salmon1\00", align 1
@.str.641 = private unnamed_addr constant [8 x i8] c"salmon2\00", align 1
@.str.642 = private unnamed_addr constant [8 x i8] c"salmon3\00", align 1
@.str.643 = private unnamed_addr constant [8 x i8] c"salmon4\00", align 1
@.str.644 = private unnamed_addr constant [11 x i8] c"SandyBrown\00", align 1
@.str.645 = private unnamed_addr constant [9 x i8] c"SeaGreen\00", align 1
@.str.646 = private unnamed_addr constant [10 x i8] c"SeaGreen1\00", align 1
@.str.647 = private unnamed_addr constant [10 x i8] c"SeaGreen2\00", align 1
@.str.648 = private unnamed_addr constant [10 x i8] c"SeaGreen3\00", align 1
@.str.649 = private unnamed_addr constant [10 x i8] c"SeaGreen4\00", align 1
@.str.650 = private unnamed_addr constant [9 x i8] c"seashell\00", align 1
@.str.651 = private unnamed_addr constant [10 x i8] c"seashell1\00", align 1
@.str.652 = private unnamed_addr constant [10 x i8] c"seashell2\00", align 1
@.str.653 = private unnamed_addr constant [10 x i8] c"seashell3\00", align 1
@.str.654 = private unnamed_addr constant [10 x i8] c"seashell4\00", align 1
@.str.655 = private unnamed_addr constant [7 x i8] c"sienna\00", align 1
@.str.656 = private unnamed_addr constant [8 x i8] c"sienna1\00", align 1
@.str.657 = private unnamed_addr constant [8 x i8] c"sienna2\00", align 1
@.str.658 = private unnamed_addr constant [8 x i8] c"sienna3\00", align 1
@.str.659 = private unnamed_addr constant [8 x i8] c"sienna4\00", align 1
@.str.660 = private unnamed_addr constant [7 x i8] c"silver\00", align 1
@.str.661 = private unnamed_addr constant [8 x i8] c"SkyBlue\00", align 1
@.str.662 = private unnamed_addr constant [9 x i8] c"SkyBlue1\00", align 1
@.str.663 = private unnamed_addr constant [9 x i8] c"SkyBlue2\00", align 1
@.str.664 = private unnamed_addr constant [9 x i8] c"SkyBlue3\00", align 1
@.str.665 = private unnamed_addr constant [9 x i8] c"SkyBlue4\00", align 1
@.str.666 = private unnamed_addr constant [10 x i8] c"SlateBlue\00", align 1
@.str.667 = private unnamed_addr constant [11 x i8] c"SlateBlue1\00", align 1
@.str.668 = private unnamed_addr constant [11 x i8] c"SlateBlue2\00", align 1
@.str.669 = private unnamed_addr constant [11 x i8] c"SlateBlue3\00", align 1
@.str.670 = private unnamed_addr constant [11 x i8] c"SlateBlue4\00", align 1
@.str.671 = private unnamed_addr constant [10 x i8] c"SlateGray\00", align 1
@.str.672 = private unnamed_addr constant [11 x i8] c"SlateGray1\00", align 1
@.str.673 = private unnamed_addr constant [11 x i8] c"SlateGray2\00", align 1
@.str.674 = private unnamed_addr constant [11 x i8] c"SlateGray3\00", align 1
@.str.675 = private unnamed_addr constant [11 x i8] c"SlateGray4\00", align 1
@.str.676 = private unnamed_addr constant [10 x i8] c"SlateGrey\00", align 1
@.str.677 = private unnamed_addr constant [5 x i8] c"snow\00", align 1
@.str.678 = private unnamed_addr constant [6 x i8] c"snow1\00", align 1
@.str.679 = private unnamed_addr constant [6 x i8] c"snow2\00", align 1
@.str.680 = private unnamed_addr constant [6 x i8] c"snow3\00", align 1
@.str.681 = private unnamed_addr constant [6 x i8] c"snow4\00", align 1
@.str.682 = private unnamed_addr constant [12 x i8] c"SpringGreen\00", align 1
@.str.683 = private unnamed_addr constant [13 x i8] c"SpringGreen1\00", align 1
@.str.684 = private unnamed_addr constant [13 x i8] c"SpringGreen2\00", align 1
@.str.685 = private unnamed_addr constant [13 x i8] c"SpringGreen3\00", align 1
@.str.686 = private unnamed_addr constant [13 x i8] c"SpringGreen4\00", align 1
@.str.687 = private unnamed_addr constant [10 x i8] c"SteelBlue\00", align 1
@.str.688 = private unnamed_addr constant [11 x i8] c"SteelBlue1\00", align 1
@.str.689 = private unnamed_addr constant [11 x i8] c"SteelBlue2\00", align 1
@.str.690 = private unnamed_addr constant [11 x i8] c"SteelBlue3\00", align 1
@.str.691 = private unnamed_addr constant [11 x i8] c"SteelBlue4\00", align 1
@.str.692 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.693 = private unnamed_addr constant [5 x i8] c"tan1\00", align 1
@.str.694 = private unnamed_addr constant [5 x i8] c"tan2\00", align 1
@.str.695 = private unnamed_addr constant [5 x i8] c"tan3\00", align 1
@.str.696 = private unnamed_addr constant [5 x i8] c"tan4\00", align 1
@.str.697 = private unnamed_addr constant [5 x i8] c"teal\00", align 1
@.str.698 = private unnamed_addr constant [8 x i8] c"thistle\00", align 1
@.str.699 = private unnamed_addr constant [9 x i8] c"thistle1\00", align 1
@.str.700 = private unnamed_addr constant [9 x i8] c"thistle2\00", align 1
@.str.701 = private unnamed_addr constant [9 x i8] c"thistle3\00", align 1
@.str.702 = private unnamed_addr constant [9 x i8] c"thistle4\00", align 1
@.str.703 = private unnamed_addr constant [7 x i8] c"tomato\00", align 1
@.str.704 = private unnamed_addr constant [8 x i8] c"tomato1\00", align 1
@.str.705 = private unnamed_addr constant [8 x i8] c"tomato2\00", align 1
@.str.706 = private unnamed_addr constant [8 x i8] c"tomato3\00", align 1
@.str.707 = private unnamed_addr constant [8 x i8] c"tomato4\00", align 1
@.str.708 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@.str.709 = private unnamed_addr constant [10 x i8] c"turquoise\00", align 1
@.str.710 = private unnamed_addr constant [11 x i8] c"turquoise1\00", align 1
@.str.711 = private unnamed_addr constant [11 x i8] c"turquoise2\00", align 1
@.str.712 = private unnamed_addr constant [11 x i8] c"turquoise3\00", align 1
@.str.713 = private unnamed_addr constant [11 x i8] c"turquoise4\00", align 1
@.str.714 = private unnamed_addr constant [7 x i8] c"violet\00", align 1
@.str.715 = private unnamed_addr constant [10 x i8] c"VioletRed\00", align 1
@.str.716 = private unnamed_addr constant [11 x i8] c"VioletRed1\00", align 1
@.str.717 = private unnamed_addr constant [11 x i8] c"VioletRed2\00", align 1
@.str.718 = private unnamed_addr constant [11 x i8] c"VioletRed3\00", align 1
@.str.719 = private unnamed_addr constant [11 x i8] c"VioletRed4\00", align 1
@.str.720 = private unnamed_addr constant [6 x i8] c"wheat\00", align 1
@.str.721 = private unnamed_addr constant [7 x i8] c"wheat1\00", align 1
@.str.722 = private unnamed_addr constant [7 x i8] c"wheat2\00", align 1
@.str.723 = private unnamed_addr constant [7 x i8] c"wheat3\00", align 1
@.str.724 = private unnamed_addr constant [7 x i8] c"wheat4\00", align 1
@.str.725 = private unnamed_addr constant [11 x i8] c"WhiteSmoke\00", align 1
@.str.726 = private unnamed_addr constant [8 x i8] c"yellow1\00", align 1
@.str.727 = private unnamed_addr constant [8 x i8] c"yellow2\00", align 1
@.str.728 = private unnamed_addr constant [8 x i8] c"yellow3\00", align 1
@.str.729 = private unnamed_addr constant [8 x i8] c"yellow4\00", align 1
@.str.730 = private unnamed_addr constant [12 x i8] c"YellowGreen\00", align 1
@.str.731 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ColorComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #16
  store ptr %4, ptr @color_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ColorComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @color_semaphore) #16
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %5) #16
  %6 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %6, ptr noundef nonnull @DestroyColorElement) #16
  store ptr %9, ptr @color_cache, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %11) #16
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @color_semaphore) #16
  ret void
}

declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @DestroyColorElement(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._ColorInfo, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @DestroyString(ptr noundef nonnull %6) #16
  store ptr %9, ptr %0, align 8, !tbaa !45
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct._ColorInfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #16
  store ptr %15, ptr %11, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %10, %14, %1
  %17 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #16
  ret ptr null
}

declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorCompliance(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #16
  %6 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %97

8:                                                ; preds = %3
  %9 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @color_semaphore) #16
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %13) #16
  %14 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %95

16:                                               ; preds = %12
  %17 = tail call ptr @NewLinkedList(i64 noundef 0) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #16
  call void @GetExceptionInfo(ptr noundef nonnull %4) #16
  %20 = tail call ptr @__errno_location() #17
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = call ptr @GetExceptionMessage(i32 noundef %21) #16
  %23 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 846, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %22) #16
  %24 = call ptr @DestroyString(ptr noundef %22) #16
  call void @CatchException(ptr noundef nonnull %4) #16
  %25 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 1) #18
  unreachable

26:                                               ; preds = %16
  %27 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.38, ptr noundef %2) #16
  %28 = tail call ptr @GetNextValueInLinkedList(ptr noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %28, %26 ]
  %32 = phi i32 [ %36, %30 ], [ 1, %26 ]
  %33 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %31) #16
  %34 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %31) #16
  %35 = tail call fastcc i32 @LoadColorCache(ptr noundef nonnull %17, ptr noundef %33, ptr noundef %34, i64 noundef 0, ptr noundef %2)
  %36 = and i32 %35, %32
  %37 = tail call ptr @GetNextValueInLinkedList(ptr noundef %27) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !48

39:                                               ; preds = %30, %26
  %40 = phi i32 [ 1, %26 ], [ %36, %30 ]
  %41 = tail call ptr @DestroyConfigureOptions(ptr noundef %27) #16
  br label %42

42:                                               ; preds = %39, %90
  %43 = phi i32 [ %40, %39 ], [ %91, %90 ]
  %44 = phi i64 [ 0, %39 ], [ %92, %90 ]
  %45 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %44
  %46 = tail call dereferenceable_or_null(112) ptr @AcquireMagickMemory(i64 noundef 112) #19
  %47 = icmp eq ptr %46, null
  br i1 %47, label %84, label %48

48:                                               ; preds = %42
  %49 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %46, i32 noundef 0, i64 noundef 112) #16
  store ptr @.str.40, ptr %46, align 8, !tbaa !45
  %50 = load ptr, ptr %45, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 3
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef nonnull %52) #16
  %53 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %44, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !53
  %55 = zext i8 %54 to i16
  %56 = mul nuw i16 %55, 257
  %57 = uitofp i16 %56 to float
  %58 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 3, i32 5
  store float %57, ptr %58, align 8, !tbaa !54
  %59 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %44, i32 2
  %60 = load i8, ptr %59, align 1, !tbaa !55
  %61 = zext i8 %60 to i16
  %62 = mul nuw i16 %61, 257
  %63 = uitofp i16 %62 to float
  %64 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 3, i32 6
  store float %63, ptr %64, align 4, !tbaa !56
  %65 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %44, i32 3
  %66 = load i8, ptr %65, align 2, !tbaa !57
  %67 = zext i8 %66 to i16
  %68 = mul nuw i16 %67, 257
  %69 = uitofp i16 %68 to float
  %70 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 3, i32 7
  store float %69, ptr %70, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %44, i32 4
  %72 = load float, ptr %71, align 4, !tbaa !59
  %73 = tail call float @llvm.fmuladd.f32(float %72, float -6.553500e+04, float 6.553500e+04)
  %74 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 3, i32 8
  store float %73, ptr %74, align 4, !tbaa !60
  %75 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %44, i32 5
  %76 = load i64, ptr %75, align 8, !tbaa !61
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 2
  store i32 %77, ptr %78, align 8, !tbaa !62
  %79 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 4
  store i32 1, ptr %79, align 8, !tbaa !38
  %80 = getelementptr inbounds %struct._ColorInfo, ptr %46, i64 0, i32 8
  store i64 2880220587, ptr %80, align 8, !tbaa !63
  %81 = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %17, ptr noundef nonnull %46) #16
  %82 = and i32 %81, %43
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %48, %42
  %85 = phi ptr [ %45, %42 ], [ %51, %48 ]
  %86 = phi i64 [ 872, %42 ], [ 893, %48 ]
  %87 = phi i32 [ %43, %42 ], [ %82, %48 ]
  %88 = load ptr, ptr %85, align 8, !tbaa !34
  %89 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %86, i32 noundef 400, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %88) #16
  br label %90

90:                                               ; preds = %84, %48
  %91 = phi i32 [ %82, %48 ], [ %87, %84 ]
  %92 = add nuw nsw i64 %44, 1
  %93 = icmp eq i64 %92, 678
  br i1 %93, label %94, label %42, !llvm.loop !64

94:                                               ; preds = %90
  store ptr %17, ptr @color_cache, align 8, !tbaa !34
  br label %95

95:                                               ; preds = %94, %12
  %96 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %96) #16
  br label %97

97:                                               ; preds = %3, %95
  %98 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %99 = icmp eq ptr %98, null
  br i1 %99, label %162, label %100

100:                                              ; preds = %97
  store i8 0, ptr %5, align 16, !tbaa !65
  %101 = icmp eq ptr %0, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  %103 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %0, i64 noundef 4096) #16
  br label %104

104:                                              ; preds = %102, %100
  %105 = load i8, ptr %5, align 16, !tbaa !65
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %127, label %107

107:                                              ; preds = %104
  %108 = tail call ptr @__ctype_b_loc() #17
  br label %109

109:                                              ; preds = %107, %122
  %110 = phi i8 [ %105, %107 ], [ %125, %122 ]
  %111 = phi ptr [ %5, %107 ], [ %124, %122 ]
  %112 = load ptr, ptr %108, align 8, !tbaa !34
  %113 = zext i8 %110 to i64
  %114 = getelementptr inbounds i16, ptr %112, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !66
  %116 = and i16 %115, 8192
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %109
  %119 = getelementptr inbounds i8, ptr %111, i64 1
  %120 = call i64 @CopyMagickString(ptr noundef nonnull %111, ptr noundef nonnull %119, i64 noundef 4096) #16
  %121 = getelementptr inbounds i8, ptr %111, i64 -1
  br label %122

122:                                              ; preds = %109, %118
  %123 = phi ptr [ %111, %109 ], [ %121, %118 ]
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  %125 = load i8, ptr %124, align 1, !tbaa !65
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %109, !llvm.loop !68

127:                                              ; preds = %122, %104
  %128 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  call void @LockSemaphoreInfo(ptr noundef %128) #16
  %129 = load ptr, ptr @color_cache, align 8, !tbaa !34
  call void @ResetLinkedListIterator(ptr noundef %129) #16
  %130 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %131 = call ptr @GetNextValueInLinkedList(ptr noundef %130) #16
  br i1 %101, label %159, label %132

132:                                              ; preds = %127
  %133 = call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %159, label %135

135:                                              ; preds = %132
  %136 = icmp eq ptr %131, null
  br i1 %136, label %152, label %137

137:                                              ; preds = %135, %148
  %138 = phi ptr [ %150, %148 ], [ %131, %135 ]
  %139 = getelementptr inbounds %struct._ColorInfo, ptr %138, i64 0, i32 2
  %140 = load i32, ptr %139, align 8, !tbaa !62
  %141 = and i32 %140, %1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct._ColorInfo, ptr %138, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !46
  %146 = call i32 @LocaleCompare(ptr noundef nonnull %5, ptr noundef %145) #16
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %143, %137
  %149 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %150 = call ptr @GetNextValueInLinkedList(ptr noundef %149) #16
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %137, !llvm.loop !69

152:                                              ; preds = %148, %135
  %153 = phi ptr [ %131, %135 ], [ %150, %148 ]
  %154 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1046, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #16
  br label %159

155:                                              ; preds = %143
  %156 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %157 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %156, ptr noundef nonnull %138) #16
  %158 = call i32 @InsertValueInLinkedList(ptr noundef %156, i64 noundef 0, ptr noundef %157) #16
  br label %159

159:                                              ; preds = %152, %155, %127, %132
  %160 = phi ptr [ %131, %132 ], [ %131, %127 ], [ %138, %155 ], [ %153, %152 ]
  %161 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %161) #16
  br label %162

162:                                              ; preds = %159, %97
  %163 = phi ptr [ null, %97 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  ret ptr %163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @GetColorCompliance(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @ConcatenateColorComponent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #16
  switch i32 %1, label %27 [
    i32 1, label %6
    i32 2, label %10
    i32 4, label %14
    i32 8, label %18
    i32 32, label %23
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !70
  %9 = fpext float %8 to double
  br label %27

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %12 = load float, ptr %11, align 4, !tbaa !71
  %13 = fpext float %12 to double
  br label %27

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !72
  %17 = fpext float %16 to double
  br label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = fsub float 6.553500e+04, %20
  %22 = fpext float %21 to double
  br label %27

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %25 = load float, ptr %24, align 8, !tbaa !74
  %26 = fpext float %25 to double
  br label %27

27:                                               ; preds = %4, %23, %18, %14, %10, %6
  %28 = phi double [ 0.000000e+00, %4 ], [ %26, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %10 ], [ %9, %6 ]
  switch i32 %2, label %32 [
    i32 0, label %29
    i32 1, label %79
  ]

29:                                               ; preds = %27
  %30 = tail call i32 @GetMagickPrecision() #16
  %31 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %30, double noundef %28) #16
  br label %118

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !75
  %35 = icmp ugt i64 %34, 16
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = fptrunc double %28 to float
  %38 = fcmp ugt float %37, 0.000000e+00
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = fcmp ult float %37, 6.553500e+04
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = fadd float %37, 5.000000e-01
  %43 = fptoui float %42 to i16
  %44 = zext i16 %43 to i64
  %45 = mul nuw nsw i64 %44, 65537
  br label %46

46:                                               ; preds = %36, %39, %41
  %47 = phi i64 [ %45, %41 ], [ 0, %36 ], [ 4294967295, %39 ]
  %48 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.6, i64 noundef %47) #16
  br label %118

49:                                               ; preds = %32
  %50 = icmp ugt i64 %34, 8
  %51 = fptrunc double %28 to float
  %52 = fcmp ugt float %51, 0.000000e+00
  br i1 %50, label %53, label %63

53:                                               ; preds = %49
  br i1 %52, label %54, label %60

54:                                               ; preds = %53
  %55 = fcmp ult float %51, 6.553500e+04
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = fadd float %51, 5.000000e-01
  %58 = fptoui float %57 to i16
  %59 = zext i16 %58 to i32
  br label %60

60:                                               ; preds = %53, %54, %56
  %61 = phi i32 [ %59, %56 ], [ 0, %53 ], [ 65535, %54 ]
  %62 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %61) #16
  br label %118

63:                                               ; preds = %49
  br i1 %52, label %64, label %71

64:                                               ; preds = %63
  %65 = fcmp ult float %51, 6.553500e+04
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = fadd float %51, 5.000000e-01
  %68 = fptoui float %67 to i16
  %69 = zext i16 %68 to i64
  %70 = add nuw nsw i64 %69, 128
  br label %71

71:                                               ; preds = %63, %64, %66
  %72 = phi i64 [ %70, %66 ], [ 128, %63 ], [ 65663, %64 ]
  %73 = lshr i64 %72, 8
  %74 = sub nsw i64 %72, %73
  %75 = trunc i64 %74 to i32
  %76 = lshr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %77) #16
  br label %118

79:                                               ; preds = %27
  %80 = icmp eq i32 %1, 8
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = tail call i32 @GetMagickPrecision() #16
  %83 = fmul double %28, 0x3EF0001000100010
  %84 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %82, double noundef %83) #16
  br label %118

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !76
  switch i32 %87, label %92 [
    i32 24, label %88
    i32 32, label %88
    i32 14, label %88
    i32 30, label %88
    i32 15, label %88
    i32 31, label %88
    i32 16, label %88
  ]

88:                                               ; preds = %85, %85, %85, %85, %85, %85, %85
  %89 = tail call i32 @GetMagickPrecision() #16
  %90 = fmul double %28, 0x3F59001900190019
  %91 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %89, double noundef %90) #16
  br label %118

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 4
  %94 = load i64, ptr %93, align 8, !tbaa !75
  %95 = icmp ugt i64 %94, 8
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = tail call i32 @GetMagickPrecision() #16
  %98 = fmul double %28, 0x3F59001900190019
  %99 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %97, double noundef %98) #16
  br label %118

100:                                              ; preds = %92
  %101 = fptrunc double %28 to float
  %102 = fcmp ugt float %101, 0.000000e+00
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = fcmp ult float %101, 6.553500e+04
  br i1 %104, label %105, label %110

105:                                              ; preds = %103
  %106 = fadd float %101, 5.000000e-01
  %107 = fptoui float %106 to i16
  %108 = zext i16 %107 to i64
  %109 = add nuw nsw i64 %108, 128
  br label %110

110:                                              ; preds = %100, %103, %105
  %111 = phi i64 [ %109, %105 ], [ 128, %100 ], [ 65663, %103 ]
  %112 = lshr i64 %111, 8
  %113 = sub nsw i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = lshr i32 %114, 8
  %116 = and i32 %115, 255
  %117 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %116) #16
  br label %118

118:                                              ; preds = %110, %96, %88, %81, %71, %60, %46, %29
  %119 = call i64 @ConcatenateMagickString(ptr noundef %3, ptr noundef nonnull %5, i64 noundef 4096) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  ret void
}

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @GetMagickPrecision() local_unnamed_addr #1

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1284, ptr noundef nonnull @.str.11, ptr noundef %0) #16
  store i64 0, ptr %1, align 8, !tbaa !77
  %5 = tail call ptr @GetColorCompliance(ptr noundef nonnull @.str, i32 noundef 2147483647, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #16
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #16
  %15 = load ptr, ptr @color_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #16
  %16 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !78
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nsw i64 %20, 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %21, ptr %32, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %30, %25, %19
  %34 = phi i64 [ %31, %30 ], [ %20, %25 ], [ %20, %19 ]
  %35 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !79

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #16
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @ColorInfoCompare) #16
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !77
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #1

declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @ColorInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  br i1 %8, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct._ColorInfo, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %1, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct._ColorInfo, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %10 ]
  %18 = phi ptr [ %9, %14 ], [ %11, %10 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = load ptr, ptr %17, align 8, !tbaa !34
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #16
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1377, ptr noundef nonnull @.str.11, ptr noundef %0) #16
  store i64 0, ptr %1, align 8, !tbaa !77
  %5 = tail call ptr @GetColorCompliance(ptr noundef nonnull @.str, i32 noundef 2147483647, ptr noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #16
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #16
  %15 = load ptr, ptr @color_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #16
  %16 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !78
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !46
  %32 = tail call ptr @ConstantString(ptr noundef %31) #16
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !80

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #16
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @ColorCompare) #16
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !77
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ColorCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local void @GetColorTuple(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  %6 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1512, ptr noundef nonnull @.str.11, ptr noundef %2) #16
  store i8 0, ptr %2, align 1, !tbaa !65
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, i64 noundef 4096) #16
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2)
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2)
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2)
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = icmp eq i32 %11, 12
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 32, ptr noundef nonnull %2)
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !81
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %173, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = fcmp une float %20, 0.000000e+00
  br i1 %21, label %22, label %173

22:                                               ; preds = %18
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %2)
  br label %173

23:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !82
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !75
  %26 = icmp ugt i64 %25, 8
  br i1 %26, label %27, label %140

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %29 = load float, ptr %28, align 8, !tbaa !70
  %30 = fcmp ugt float %29, 0.000000e+00
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = fcmp ult float %29, 6.553500e+04
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = fadd float %29, 5.000000e-01
  %35 = fptoui float %34 to i16
  %36 = zext i16 %35 to i64
  %37 = add nuw nsw i64 %36, 128
  br label %38

38:                                               ; preds = %27, %31, %33
  %39 = phi i64 [ %37, %33 ], [ 128, %27 ], [ 65663, %31 ]
  %40 = lshr i64 %39, 8
  %41 = sub nsw i64 %39, %40
  %42 = trunc i64 %41 to i16
  %43 = lshr i16 %42, 8
  %44 = mul nuw i16 %43, 257
  %45 = uitofp i16 %44 to float
  %46 = fcmp oeq float %29, %45
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %48 = load float, ptr %47, align 4, !tbaa !71
  %49 = fcmp ugt float %48, 0.000000e+00
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = fcmp ult float %48, 6.553500e+04
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = fadd float %48, 5.000000e-01
  %54 = fptoui float %53 to i16
  %55 = zext i16 %54 to i64
  %56 = add nuw nsw i64 %55, 128
  br label %57

57:                                               ; preds = %38, %50, %52
  %58 = phi i64 [ %56, %52 ], [ 128, %38 ], [ 65663, %50 ]
  %59 = lshr i64 %58, 8
  %60 = sub nsw i64 %58, %59
  %61 = trunc i64 %60 to i16
  %62 = lshr i16 %61, 8
  %63 = mul nuw i16 %62, 257
  %64 = uitofp i16 %63 to float
  %65 = fcmp oeq float %48, %64
  %66 = and i1 %46, %65
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %68 = load float, ptr %67, align 8, !tbaa !72
  %69 = fcmp ugt float %68, 0.000000e+00
  br i1 %69, label %70, label %77

70:                                               ; preds = %57
  %71 = fcmp ult float %68, 6.553500e+04
  br i1 %71, label %72, label %77

72:                                               ; preds = %70
  %73 = fadd float %68, 5.000000e-01
  %74 = fptoui float %73 to i16
  %75 = zext i16 %74 to i64
  %76 = add nuw nsw i64 %75, 128
  br label %77

77:                                               ; preds = %57, %70, %72
  %78 = phi i64 [ %76, %72 ], [ 128, %57 ], [ 65663, %70 ]
  %79 = lshr i64 %78, 8
  %80 = sub nsw i64 %78, %79
  %81 = trunc i64 %80 to i16
  %82 = lshr i16 %81, 8
  %83 = mul nuw i16 %82, 257
  %84 = uitofp i16 %83 to float
  %85 = fcmp oeq float %68, %84
  %86 = and i1 %66, %85
  %87 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !76
  %89 = icmp eq i32 %88, 12
  br i1 %89, label %111, label %90

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !74
  %93 = fcmp ugt float %92, 0.000000e+00
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = fcmp ult float %92, 6.553500e+04
  br i1 %95, label %96, label %101

96:                                               ; preds = %94
  %97 = fadd float %92, 5.000000e-01
  %98 = fptoui float %97 to i16
  %99 = zext i16 %98 to i64
  %100 = add nuw nsw i64 %99, 128
  br label %101

101:                                              ; preds = %90, %94, %96
  %102 = phi i64 [ %100, %96 ], [ 128, %90 ], [ 65663, %94 ]
  %103 = lshr i64 %102, 8
  %104 = sub nsw i64 %102, %103
  %105 = trunc i64 %104 to i16
  %106 = lshr i16 %105, 8
  %107 = mul nuw i16 %106, 257
  %108 = uitofp i16 %107 to float
  %109 = fcmp oeq float %92, %108
  %110 = and i1 %86, %109
  br label %111

111:                                              ; preds = %101, %77
  %112 = phi i1 [ %110, %101 ], [ %86, %77 ]
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !81
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %118 = load float, ptr %117, align 4, !tbaa !73
  %119 = fcmp ugt float %118, 0.000000e+00
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = fcmp ult float %118, 6.553500e+04
  br i1 %121, label %122, label %127

122:                                              ; preds = %120
  %123 = fadd float %118, 5.000000e-01
  %124 = fptoui float %123 to i16
  %125 = zext i16 %124 to i64
  %126 = add nuw nsw i64 %125, 128
  br label %127

127:                                              ; preds = %116, %120, %122
  %128 = phi i64 [ %126, %122 ], [ 128, %116 ], [ 65663, %120 ]
  %129 = lshr i64 %128, 8
  %130 = sub nsw i64 %128, %129
  %131 = trunc i64 %130 to i16
  %132 = lshr i16 %131, 8
  %133 = mul nuw i16 %132, 257
  %134 = uitofp i16 %133 to float
  %135 = fcmp oeq float %118, %134
  %136 = and i1 %112, %135
  br label %137

137:                                              ; preds = %127, %111
  %138 = phi i1 [ %136, %127 ], [ %112, %111 ]
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  store i64 8, ptr %24, align 8, !tbaa !75
  br label %140

140:                                              ; preds = %137, %139, %23
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !76
  %143 = zext i32 %142 to i64
  %144 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %143) #16
  %145 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef %144, i64 noundef 4096) #16
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 2
  %147 = load i32, ptr %146, align 8, !tbaa !81
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %140
  %150 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, i64 noundef 4096) #16
  br label %151

151:                                              ; preds = %149, %140
  %152 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.14, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %2)
  %153 = icmp eq i32 %142, 2
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %5, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %2)
  %156 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %5, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %2)
  %157 = icmp eq i32 %142, 12
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %5, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %2)
  br label %160

160:                                              ; preds = %151, %158, %154
  br i1 %148, label %171, label %161

161:                                              ; preds = %160
  %162 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #16
  %163 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %164 = load float, ptr %163, align 4, !tbaa !73
  %165 = fsub float 6.553500e+04, %164
  %166 = fpext float %165 to double
  %167 = tail call i32 @GetMagickPrecision() #16
  %168 = fmul double %166, 0x3EF0001000100010
  %169 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %167, double noundef %168) #16
  %170 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef 4096) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #16
  br label %171

171:                                              ; preds = %161, %160
  %172 = call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, i64 noundef 4096) #16
  call void @LocaleLower(ptr noundef nonnull %2) #16
  br label %173

173:                                              ; preds = %14, %18, %22, %171
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ConcatentateHexColorComponent(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #16
  switch i32 %1, label %21 [
    i32 1, label %5
    i32 2, label %8
    i32 4, label %11
    i32 8, label %14
    i32 32, label %18
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !70
  br label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !71
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %13 = load float, ptr %12, align 8, !tbaa !72
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %16 = load float, ptr %15, align 4, !tbaa !73
  %17 = fsub float 6.553500e+04, %16
  br label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %20 = load float, ptr %19, align 8, !tbaa !74
  br label %21

21:                                               ; preds = %3, %18, %14, %11, %8, %5
  %22 = phi float [ 0.000000e+00, %3 ], [ %20, %18 ], [ %17, %14 ], [ %13, %11 ], [ %10, %8 ], [ %7, %5 ]
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !75
  %25 = icmp ugt i64 %24, 32
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = fcmp ugt float %22, 0.000000e+00
  br i1 %27, label %28, label %35

28:                                               ; preds = %26
  %29 = fcmp ult float %22, 6.553500e+04
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = fadd float %22, 5.000000e-01
  %32 = fptoui float %31 to i16
  %33 = zext i16 %32 to i64
  %34 = mul nuw nsw i64 %33, 65537
  br label %35

35:                                               ; preds = %26, %28, %30
  %36 = phi i64 [ %34, %30 ], [ 0, %26 ], [ 4294967295, %28 ]
  br i1 %27, label %37, label %44

37:                                               ; preds = %35
  %38 = fcmp ult float %22, 6.553500e+04
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = fadd float %22, 5.000000e-01
  %41 = fptoui float %40 to i16
  %42 = zext i16 %41 to i64
  %43 = mul nuw nsw i64 %42, 65537
  br label %44

44:                                               ; preds = %35, %37, %39
  %45 = phi i64 [ %43, %39 ], [ 0, %35 ], [ 4294967295, %37 ]
  %46 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.34, i64 noundef %36, i64 noundef %45) #16
  br label %90

47:                                               ; preds = %21
  %48 = icmp ugt i64 %24, 16
  br i1 %48, label %49, label %61

49:                                               ; preds = %47
  %50 = fcmp ugt float %22, 0.000000e+00
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = fcmp ult float %22, 6.553500e+04
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = fadd float %22, 5.000000e-01
  %55 = fptoui float %54 to i16
  %56 = zext i16 %55 to i32
  %57 = mul nuw i32 %56, 65537
  br label %58

58:                                               ; preds = %49, %51, %53
  %59 = phi i32 [ %57, %53 ], [ 0, %49 ], [ -1, %51 ]
  %60 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %59) #16
  br label %90

61:                                               ; preds = %47
  %62 = icmp ugt i64 %24, 8
  %63 = fcmp ugt float %22, 0.000000e+00
  br i1 %62, label %64, label %74

64:                                               ; preds = %61
  br i1 %63, label %65, label %71

65:                                               ; preds = %64
  %66 = fcmp ult float %22, 6.553500e+04
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = fadd float %22, 5.000000e-01
  %69 = fptoui float %68 to i16
  %70 = zext i16 %69 to i32
  br label %71

71:                                               ; preds = %64, %65, %67
  %72 = phi i32 [ %70, %67 ], [ 0, %64 ], [ 65535, %65 ]
  %73 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.36, i32 noundef %72) #16
  br label %90

74:                                               ; preds = %61
  br i1 %63, label %75, label %82

75:                                               ; preds = %74
  %76 = fcmp ult float %22, 6.553500e+04
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = fadd float %22, 5.000000e-01
  %79 = fptoui float %78 to i16
  %80 = zext i16 %79 to i64
  %81 = add nuw nsw i64 %80, 128
  br label %82

82:                                               ; preds = %74, %75, %77
  %83 = phi i64 [ %81, %77 ], [ 128, %74 ], [ 65663, %75 ]
  %84 = lshr i64 %83, 8
  %85 = sub nsw i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = lshr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %88) #16
  br label %90

90:                                               ; preds = %82, %71, %58, %44
  %91 = call i64 @ConcatenateMagickString(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 4096) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @LocaleLower(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @IsColorSimilar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %5 = load double, ptr %4, align 8, !tbaa !85
  %6 = fcmp oeq double %5, 0.000000e+00
  br i1 %6, label %7, label %43

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !97
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !98
  %14 = uitofp i16 %13 to float
  %15 = load i16, ptr %1, align 2, !tbaa !99
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  %18 = load i16, ptr %17, align 2, !tbaa !98
  %19 = uitofp i16 %18 to float
  %20 = fsub float %14, %19
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fpext float %21 to double
  %23 = fcmp olt double %22, 1.000000e-15
  br i1 %23, label %24, label %42

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !100
  %27 = uitofp i16 %26 to float
  %28 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !100
  %30 = uitofp i16 %29 to float
  %31 = fsub float %27, %30
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fpext float %32 to double
  %34 = fcmp olt double %33, 1.000000e-15
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load i16, ptr %2, align 2, !tbaa !99
  %37 = uitofp i16 %36 to float
  %38 = fsub float %16, %37
  %39 = tail call float @llvm.fabs.f32(float %38)
  %40 = fpext float %39 to double
  %41 = fcmp olt double %40, 1.000000e-15
  br i1 %41, label %121, label %42

42:                                               ; preds = %35, %24, %11
  br label %121

43:                                               ; preds = %7, %3
  %44 = fcmp ogt double %5, 0x3FE6A09E667F3BCD
  %45 = select i1 %44, double %5, double 0x3FE6A09E667F3BCD
  %46 = fmul double %45, %45
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !97
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %53 = load i16, ptr %52, align 2, !tbaa !101
  %54 = zext i16 %53 to i32
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  %56 = load i16, ptr %55, align 2, !tbaa !101
  %57 = zext i16 %56 to i32
  %58 = sub nsw i32 %54, %57
  %59 = sitofp i32 %58 to float
  %60 = fmul float %59, %59
  %61 = fcmp ogt float %60, %47
  br i1 %61, label %121, label %62

62:                                               ; preds = %51
  %63 = xor i16 %53, -1
  %64 = uitofp i16 %63 to double
  %65 = fmul double %64, 0x3EF0001000100010
  %66 = fptrunc double %65 to float
  %67 = xor i16 %56, -1
  %68 = uitofp i16 %67 to double
  %69 = fmul double %68, 0x3EF0001000100010
  %70 = fpext float %66 to double
  %71 = fmul double %69, %70
  %72 = fptrunc double %71 to float
  %73 = fpext float %72 to double
  %74 = fcmp ugt double %73, 1.000000e-15
  br i1 %74, label %75, label %121

75:                                               ; preds = %62, %43
  %76 = phi float [ %60, %62 ], [ 0.000000e+00, %43 ]
  %77 = phi float [ %72, %62 ], [ 1.000000e+00, %43 ]
  %78 = fmul float %76, 3.000000e+00
  %79 = fmul float %47, 3.000000e+00
  %80 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %81 = load i16, ptr %80, align 2, !tbaa !98
  %82 = uitofp i16 %81 to float
  %83 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  %84 = load i16, ptr %83, align 2, !tbaa !98
  %85 = uitofp i16 %84 to float
  %86 = fsub float %82, %85
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !102
  switch i32 %88, label %95 [
    i32 24, label %89
    i32 14, label %89
    i32 15, label %89
    i32 16, label %89
  ]

89:                                               ; preds = %75, %75, %75, %75
  %90 = tail call float @llvm.fabs.f32(float %86)
  %91 = fcmp ogt float %90, 3.276700e+04
  %92 = fadd float %86, -6.553500e+04
  %93 = select i1 %91, float %92, float %86
  %94 = fmul float %93, 2.000000e+00
  br label %95

95:                                               ; preds = %75, %89
  %96 = phi float [ %94, %89 ], [ %86, %75 ]
  %97 = fmul float %77, %96
  %98 = tail call float @llvm.fmuladd.f32(float %97, float %96, float %78)
  %99 = fcmp ogt float %98, %79
  br i1 %99, label %121, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %102 = load i16, ptr %101, align 2, !tbaa !100
  %103 = uitofp i16 %102 to float
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  %105 = load i16, ptr %104, align 2, !tbaa !100
  %106 = uitofp i16 %105 to float
  %107 = fsub float %103, %106
  %108 = fmul float %77, %107
  %109 = tail call float @llvm.fmuladd.f32(float %108, float %107, float %98)
  %110 = fcmp ogt float %109, %79
  br i1 %110, label %121, label %111

111:                                              ; preds = %100
  %112 = load i16, ptr %1, align 2, !tbaa !99
  %113 = uitofp i16 %112 to float
  %114 = load i16, ptr %2, align 2, !tbaa !99
  %115 = uitofp i16 %114 to float
  %116 = fsub float %113, %115
  %117 = fmul float %77, %116
  %118 = tail call float @llvm.fmuladd.f32(float %117, float %116, float %109)
  %119 = fcmp ule float %118, %79
  %120 = zext i1 %119 to i32
  br label %121

121:                                              ; preds = %42, %35, %111, %100, %95, %62, %51
  %122 = phi i32 [ 0, %51 ], [ 1, %62 ], [ 0, %95 ], [ 0, %100 ], [ %120, %111 ], [ 0, %42 ], [ 1, %35 ]
  ret i32 %122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nounwind uwtable
define dso_local i32 @IsImageSimilar(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #16
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %10 = load i32, ptr %9, align 8, !tbaa !103
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %14 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1799, ptr noundef nonnull @.str.11, ptr noundef nonnull %13) #16
  br label %15

15:                                               ; preds = %12, %5
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %8) #16
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #16
  %16 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #16
  %17 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #16
  %18 = load i64, ptr %3, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !104
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %154

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %25 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 5
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 6
  %28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 7
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 8
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %8, i64 0, i32 9
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %34 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %37 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %38 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %42 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %43

43:                                               ; preds = %22, %145
  %44 = phi i64 [ %18, %22 ], [ %147, %145 ]
  %45 = phi i32 [ 1, %22 ], [ %146, %145 ]
  %46 = icmp eq i64 %44, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, ptr %2, align 8, !tbaa !77
  br label %49

49:                                               ; preds = %43, %47
  %50 = phi i64 [ %48, %47 ], [ 0, %43 ]
  %51 = load i64, ptr %23, align 8, !tbaa !105
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %130

53:                                               ; preds = %49, %126
  %54 = phi i64 [ %127, %126 ], [ %50, %49 ]
  %55 = load i64, ptr %24, align 8, !tbaa !104
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %122

57:                                               ; preds = %53, %118
  %58 = phi i64 [ %119, %118 ], [ 0, %53 ]
  %59 = load i64, ptr %25, align 8, !tbaa !105
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %114

61:                                               ; preds = %57
  %62 = add nsw i64 %58, %44
  br label %63

63:                                               ; preds = %61, %110
  %64 = phi i64 [ 0, %61 ], [ %111, %110 ]
  %65 = add nsw i64 %64, %54
  %66 = call ptr @GetCacheViewVirtualPixels(ptr noundef %16, i64 noundef %65, i64 noundef %62, i64 noundef 1, i64 noundef 1, ptr noundef %4) #21
  %67 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %16) #16
  %68 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 2
  %69 = load i16, ptr %68, align 2, !tbaa !98
  %70 = uitofp i16 %69 to float
  store float %70, ptr %26, align 8, !tbaa !70
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !100
  %73 = uitofp i16 %72 to float
  store float %73, ptr %27, align 4, !tbaa !71
  %74 = load i16, ptr %66, align 2, !tbaa !99
  %75 = uitofp i16 %74 to float
  store float %75, ptr %28, align 8, !tbaa !72
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %66, i64 0, i32 3
  %77 = load i16, ptr %76, align 2, !tbaa !101
  %78 = uitofp i16 %77 to float
  store float %78, ptr %29, align 4, !tbaa !73
  %79 = load i32, ptr %30, align 4, !tbaa !102
  %80 = icmp eq i32 %79, 12
  %81 = icmp ne ptr %67, null
  %82 = and i1 %81, %80
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i16, ptr %67, align 2, !tbaa !66
  %85 = uitofp i16 %84 to float
  store float %85, ptr %31, align 8, !tbaa !74
  br label %86

86:                                               ; preds = %63, %83
  %87 = call ptr @GetCacheViewVirtualPixels(ptr noundef %17, i64 noundef %64, i64 noundef %58, i64 noundef 1, i64 noundef 1, ptr noundef %4) #21
  %88 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %17) #16
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 2
  %90 = load i16, ptr %89, align 2, !tbaa !98
  %91 = uitofp i16 %90 to float
  store float %91, ptr %32, align 8, !tbaa !70
  %92 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !100
  %94 = uitofp i16 %93 to float
  store float %94, ptr %33, align 4, !tbaa !71
  %95 = load i16, ptr %87, align 2, !tbaa !99
  %96 = uitofp i16 %95 to float
  store float %96, ptr %34, align 8, !tbaa !72
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %87, i64 0, i32 3
  %98 = load i16, ptr %97, align 2, !tbaa !101
  %99 = uitofp i16 %98 to float
  store float %99, ptr %35, align 4, !tbaa !73
  %100 = load i32, ptr %30, align 4, !tbaa !102
  %101 = icmp eq i32 %100, 12
  %102 = icmp ne ptr %88, null
  %103 = and i1 %102, %101
  br i1 %103, label %104, label %107

104:                                              ; preds = %86
  %105 = load i16, ptr %88, align 2, !tbaa !66
  %106 = uitofp i16 %105 to float
  store float %106, ptr %36, align 8, !tbaa !74
  br label %107

107:                                              ; preds = %86, %104
  %108 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %8, ptr noundef nonnull %7), !range !106
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = add nuw nsw i64 %64, 1
  %112 = load i64, ptr %25, align 8, !tbaa !105
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %63, label %114, !llvm.loop !107

114:                                              ; preds = %110, %107, %57
  %115 = phi i64 [ 0, %57 ], [ %111, %110 ], [ %64, %107 ]
  %116 = load i64, ptr %37, align 8, !tbaa !105
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = add nuw nsw i64 %58, 1
  %120 = load i64, ptr %24, align 8, !tbaa !104
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %57, label %122, !llvm.loop !108

122:                                              ; preds = %118, %114, %53
  %123 = phi i64 [ 0, %53 ], [ %119, %118 ], [ %58, %114 ]
  %124 = load i64, ptr %38, align 8, !tbaa !104
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = add nsw i64 %54, 1
  %128 = load i64, ptr %23, align 8, !tbaa !105
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %53, label %130, !llvm.loop !109

130:                                              ; preds = %126, %122, %49
  %131 = phi i64 [ %50, %49 ], [ %127, %126 ], [ %54, %122 ]
  %132 = load i64, ptr %39, align 8, !tbaa !105
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %150, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %40, align 8, !tbaa !110
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %134
  %138 = load i64, ptr %19, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #16
  %139 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.731, ptr noundef nonnull @.str.17, ptr noundef nonnull %41) #16
  %140 = load ptr, ptr %40, align 8, !tbaa !110
  %141 = load ptr, ptr %42, align 8, !tbaa !111
  %142 = call i32 %140(ptr noundef nonnull %6, i64 noundef %44, i64 noundef %138, ptr noundef %141) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #16
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 0, i32 %45
  br label %145

145:                                              ; preds = %134, %137
  %146 = phi i32 [ %144, %137 ], [ %45, %134 ]
  %147 = add nsw i64 %44, 1
  %148 = load i64, ptr %19, align 8, !tbaa !104
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %43, label %150, !llvm.loop !112

150:                                              ; preds = %130, %145
  %151 = phi i32 [ %146, %145 ], [ %45, %130 ]
  %152 = phi i64 [ %147, %145 ], [ %44, %130 ]
  %153 = icmp eq i32 %151, 0
  br label %154

154:                                              ; preds = %150, %15
  %155 = phi i1 [ false, %15 ], [ %153, %150 ]
  %156 = phi i64 [ %18, %15 ], [ %152, %150 ]
  %157 = phi i64 [ 0, %15 ], [ %131, %150 ]
  %158 = call ptr @DestroyCacheView(ptr noundef %17) #16
  %159 = call ptr @DestroyCacheView(ptr noundef %16) #16
  store i64 %157, ptr %2, align 8, !tbaa !77
  store i64 %156, ptr %3, align 8, !tbaa !77
  br i1 %155, label %164, label %160

160:                                              ; preds = %154
  %161 = load i64, ptr %19, align 8, !tbaa !104
  %162 = icmp slt i64 %156, %161
  %163 = zext i1 %162 to i32
  br label %164

164:                                              ; preds = %154, %160
  %165 = phi i32 [ %163, %160 ], [ 0, %154 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  ret i32 %165
}

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @IsMagickColorSimilar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 3
  %4 = load double, ptr %3, align 8, !tbaa !113
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %5, label %6, label %100

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  %8 = load double, ptr %7, align 8, !tbaa !113
  %9 = fcmp oeq double %8, 0.000000e+00
  br i1 %9, label %10, label %93

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !81
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !81
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !73
  %21 = tail call float @llvm.fabs.f32(float %20)
  %22 = fpext float %21 to double
  %23 = fcmp ult double %22, 1.000000e-15
  br i1 %23, label %24, label %228

24:                                               ; preds = %18, %14, %10
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !81
  %27 = icmp eq i32 %26, 0
  %28 = xor i1 %13, true
  %29 = or i1 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %32 = load float, ptr %31, align 4, !tbaa !73
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = fpext float %33 to double
  %35 = fcmp ult double %34, 1.000000e-15
  br i1 %35, label %36, label %228

36:                                               ; preds = %24, %30
  %37 = or i1 %13, %27
  br i1 %37, label %52, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %40 = load float, ptr %39, align 4, !tbaa !73
  %41 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %42 = load float, ptr %41, align 4, !tbaa !73
  %43 = fsub float %40, %42
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = fpext float %44 to double
  %46 = fcmp ult double %45, 1.000000e-15
  br i1 %46, label %47, label %228

47:                                               ; preds = %38
  %48 = fadd float %40, -6.553500e+04
  %49 = tail call float @llvm.fabs.f32(float %48)
  %50 = fpext float %49 to double
  %51 = fcmp olt double %50, 1.000000e-15
  br i1 %51, label %228, label %52

52:                                               ; preds = %36, %47
  %53 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %54 = load float, ptr %53, align 8, !tbaa !70
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %56 = load float, ptr %55, align 8, !tbaa !70
  %57 = fsub float %54, %56
  %58 = tail call float @llvm.fabs.f32(float %57)
  %59 = fpext float %58 to double
  %60 = fcmp ult double %59, 1.000000e-15
  br i1 %60, label %61, label %228

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %63 = load float, ptr %62, align 4, !tbaa !71
  %64 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %65 = load float, ptr %64, align 4, !tbaa !71
  %66 = fsub float %63, %65
  %67 = tail call float @llvm.fabs.f32(float %66)
  %68 = fpext float %67 to double
  %69 = fcmp ult double %68, 1.000000e-15
  br i1 %69, label %70, label %228

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %72 = load float, ptr %71, align 8, !tbaa !72
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %74 = load float, ptr %73, align 8, !tbaa !72
  %75 = fsub float %72, %74
  %76 = tail call float @llvm.fabs.f32(float %75)
  %77 = fpext float %76 to double
  %78 = fcmp ult double %77, 1.000000e-15
  br i1 %78, label %79, label %228

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !76
  %82 = icmp eq i32 %81, 12
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %85 = load float, ptr %84, align 8, !tbaa !74
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %87 = load float, ptr %86, align 8, !tbaa !74
  %88 = fsub float %85, %87
  %89 = tail call float @llvm.fabs.f32(float %88)
  %90 = fpext float %89 to double
  %91 = fcmp ult double %90, 1.000000e-15
  br i1 %91, label %92, label %228

92:                                               ; preds = %83, %79
  br label %228

93:                                               ; preds = %6
  br i1 %5, label %94, label %100

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  %96 = load double, ptr %95, align 8, !tbaa !113
  %97 = fcmp ogt double %96, 0x3FE6A09E667F3BCD
  %98 = select i1 %97, double %96, double 0x3FE6A09E667F3BCD
  %99 = fmul double %98, %98
  br label %112

100:                                              ; preds = %2, %93
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  %102 = load double, ptr %101, align 8, !tbaa !113
  %103 = fcmp oeq double %102, 0.000000e+00
  %104 = fcmp ogt double %4, 0x3FE6A09E667F3BCD
  %105 = select i1 %104, double %4, double 0x3FE6A09E667F3BCD
  br i1 %103, label %106, label %108

106:                                              ; preds = %100
  %107 = fmul double %105, %105
  br label %112

108:                                              ; preds = %100
  %109 = fcmp ogt double %102, 0x3FE6A09E667F3BCD
  %110 = select i1 %109, double %102, double 0x3FE6A09E667F3BCD
  %111 = fmul double %105, %110
  br label %112

112:                                              ; preds = %106, %108, %94
  %113 = phi double [ %99, %94 ], [ %107, %106 ], [ %111, %108 ]
  %114 = fptrunc double %113 to float
  %115 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !81
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %120 = load i32, ptr %119, align 8, !tbaa !81
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %162, label %122

122:                                              ; preds = %118
  br i1 %117, label %126, label %123

123:                                              ; preds = %112, %122
  %124 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %125 = load float, ptr %124, align 4, !tbaa !73
  br label %126

126:                                              ; preds = %122, %123
  %127 = phi float [ %125, %123 ], [ 0.000000e+00, %122 ]
  %128 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !81
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %133 = load float, ptr %132, align 4, !tbaa !73
  br label %134

134:                                              ; preds = %126, %131
  %135 = phi float [ %133, %131 ], [ 0.000000e+00, %126 ]
  %136 = fsub float %127, %135
  %137 = fmul float %136, %136
  %138 = fcmp ogt float %137, %114
  br i1 %138, label %228, label %139

139:                                              ; preds = %134
  br i1 %117, label %147, label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %142 = load float, ptr %141, align 4, !tbaa !73
  %143 = fsub float 6.553500e+04, %142
  %144 = fpext float %143 to double
  %145 = fmul double %144, 0x3EF0001000100010
  %146 = fptrunc double %145 to float
  br label %147

147:                                              ; preds = %140, %139
  %148 = phi float [ %146, %140 ], [ 1.000000e+00, %139 ]
  br i1 %130, label %158, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %151 = load float, ptr %150, align 4, !tbaa !73
  %152 = fsub float 6.553500e+04, %151
  %153 = fpext float %152 to double
  %154 = fmul double %153, 0x3EF0001000100010
  %155 = fpext float %148 to double
  %156 = fmul double %154, %155
  %157 = fptrunc double %156 to float
  br label %158

158:                                              ; preds = %149, %147
  %159 = phi float [ %157, %149 ], [ %148, %147 ]
  %160 = fpext float %159 to double
  %161 = fcmp ugt double %160, 1.000000e-15
  br i1 %161, label %162, label %228

162:                                              ; preds = %158, %118
  %163 = phi float [ %159, %158 ], [ 1.000000e+00, %118 ]
  %164 = phi float [ %137, %158 ], [ 0.000000e+00, %118 ]
  %165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !76
  %167 = icmp eq i32 %166, 12
  br i1 %167, label %168, label %188

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %170 = load float, ptr %169, align 8, !tbaa !74
  %171 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %172 = load float, ptr %171, align 8, !tbaa !74
  %173 = fsub float %170, %172
  %174 = fmul float %173, %173
  %175 = tail call float @llvm.fmuladd.f32(float %174, float %163, float %164)
  %176 = fcmp ogt float %175, %114
  br i1 %176, label %228, label %177

177:                                              ; preds = %168
  %178 = fsub float 6.553500e+04, %170
  %179 = fpext float %178 to double
  %180 = fmul double %179, 0x3EF0001000100010
  %181 = fptrunc double %180 to float
  %182 = fmul float %163, %181
  %183 = fsub float 6.553500e+04, %172
  %184 = fpext float %183 to double
  %185 = fmul double %184, 0x3EF0001000100010
  %186 = fptrunc double %185 to float
  %187 = fmul float %182, %186
  br label %188

188:                                              ; preds = %177, %162
  %189 = phi float [ %187, %177 ], [ %163, %162 ]
  %190 = phi float [ %175, %177 ], [ %164, %162 ]
  %191 = fmul float %190, 3.000000e+00
  %192 = fmul float %114, 3.000000e+00
  %193 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %194 = load float, ptr %193, align 8, !tbaa !70
  %195 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %196 = load float, ptr %195, align 8, !tbaa !70
  %197 = fsub float %194, %196
  switch i32 %166, label %204 [
    i32 24, label %198
    i32 14, label %198
    i32 15, label %198
    i32 16, label %198
  ]

198:                                              ; preds = %188, %188, %188, %188
  %199 = tail call float @llvm.fabs.f32(float %197)
  %200 = fcmp ogt float %199, 3.276700e+04
  %201 = fadd float %197, -6.553500e+04
  %202 = select i1 %200, float %201, float %197
  %203 = fmul float %202, 2.000000e+00
  br label %204

204:                                              ; preds = %188, %198
  %205 = phi float [ %203, %198 ], [ %197, %188 ]
  %206 = fmul float %205, %205
  %207 = tail call float @llvm.fmuladd.f32(float %206, float %189, float %191)
  %208 = fcmp ogt float %207, %192
  br i1 %208, label %228, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %211 = load float, ptr %210, align 4, !tbaa !71
  %212 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %213 = load float, ptr %212, align 4, !tbaa !71
  %214 = fsub float %211, %213
  %215 = fmul float %214, %214
  %216 = tail call float @llvm.fmuladd.f32(float %215, float %189, float %207)
  %217 = fcmp ogt float %216, %192
  br i1 %217, label %228, label %218

218:                                              ; preds = %209
  %219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %220 = load float, ptr %219, align 8, !tbaa !72
  %221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %222 = load float, ptr %221, align 8, !tbaa !72
  %223 = fsub float %220, %222
  %224 = fmul float %223, %223
  %225 = tail call float @llvm.fmuladd.f32(float %224, float %189, float %216)
  %226 = fcmp ule float %225, %192
  %227 = zext i1 %226 to i32
  br label %228

228:                                              ; preds = %92, %83, %70, %61, %52, %47, %38, %30, %18, %218, %209, %204, %168, %158, %134
  %229 = phi i32 [ 0, %134 ], [ 1, %158 ], [ 0, %168 ], [ 0, %204 ], [ 0, %209 ], [ %227, %218 ], [ 1, %92 ], [ 0, %18 ], [ 0, %30 ], [ 0, %38 ], [ 1, %47 ], [ 0, %52 ], [ 0, %61 ], [ 0, %70 ], [ 0, %83 ]
  ret i32 %229
}

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @IsOpacitySimilar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !97
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !101
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !101
  %12 = icmp eq i16 %9, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %15 = load double, ptr %14, align 8, !tbaa !85
  %16 = fcmp ogt double %15, 0x3FE6A09E667F3BCD
  %17 = select i1 %16, double %15, double 0x3FE6A09E667F3BCD
  %18 = fmul double %17, %17
  %19 = fptrunc double %18 to float
  %20 = uitofp i16 %9 to float
  %21 = uitofp i16 %11 to float
  %22 = fsub float %20, %21
  %23 = fmul float %22, %22
  %24 = fcmp ule float %23, %19
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %13, %7, %3
  %27 = phi i32 [ 1, %3 ], [ 1, %7 ], [ %25, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ListColorInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = icmp eq ptr %0, null
  %6 = load ptr, ptr @stdout, align 8
  %7 = select i1 %5, ptr %6, ptr %0
  %8 = call ptr @GetColorInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %4, ptr noundef %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %78, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8, !tbaa !77
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %10, %70
  %14 = phi i64 [ %72, %70 ], [ 0, %10 ]
  %15 = phi ptr [ %71, %70 ], [ null, %10 ]
  %16 = getelementptr inbounds ptr, ptr %8, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct._ColorInfo, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !78
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %13
  %22 = icmp eq ptr %15, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %17, align 8, !tbaa !45
  %25 = call i32 @LocaleCompare(ptr noundef nonnull %15, ptr noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23, %21
  %28 = load ptr, ptr %16, align 8, !tbaa !34
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull %29) #16
  br label %33

33:                                               ; preds = %31, %27
  %34 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.19) #16
  %35 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.20) #16
  br label %36

36:                                               ; preds = %33, %23
  %37 = load ptr, ptr %16, align 8, !tbaa !34
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct._ColorInfo, ptr %37, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef %40) #16
  %42 = load ptr, ptr %16, align 8, !tbaa !34
  %43 = getelementptr inbounds %struct._ColorInfo, ptr %42, i64 0, i32 3
  call void @GetColorTuple(ptr noundef nonnull %43, i32 noundef 0, ptr noundef nonnull %3)
  %44 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef nonnull %3) #16
  %45 = load ptr, ptr %16, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct._ColorInfo, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !62
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %36
  %51 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.23) #16
  br label %52

52:                                               ; preds = %50, %36
  %53 = load ptr, ptr %16, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct._ColorInfo, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !62
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.24) #16
  br label %60

60:                                               ; preds = %58, %52
  %61 = load ptr, ptr %16, align 8, !tbaa !34
  %62 = getelementptr inbounds %struct._ColorInfo, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !62
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.25) #16
  br label %68

68:                                               ; preds = %66, %60
  %69 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.26) #16
  br label %70

70:                                               ; preds = %13, %68
  %71 = phi ptr [ %15, %13 ], [ %38, %68 ]
  %72 = add nuw nsw i64 %14, 1
  %73 = load i64, ptr %4, align 8, !tbaa !77
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %13, label %75, !llvm.loop !114

75:                                               ; preds = %70, %10
  %76 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #16
  %77 = call i32 @fflush(ptr noundef %7)
  br label %78

78:                                               ; preds = %2, %75
  %79 = phi i32 [ 1, %75 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #16
  ret i32 %79
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @QueryColorCompliance(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  %6 = call i32 @QueryMagickColorCompliance(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %3), !range !106
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %8 = load float, ptr %7, align 4, !tbaa !73
  %9 = fcmp ugt float %8, 0.000000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = fcmp ult float %8, 6.553500e+04
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = fadd float %8, 5.000000e-01
  %14 = fptoui float %13 to i16
  br label %15

15:                                               ; preds = %4, %10, %12
  %16 = phi i16 [ %14, %12 ], [ 0, %4 ], [ -1, %10 ]
  %17 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %16, ptr %17, align 2, !tbaa !101
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !76
  %20 = icmp eq i32 %19, 12
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %22 = load float, ptr %21, align 8, !tbaa !70
  br i1 %20, label %23, label %84

23:                                               ; preds = %15
  %24 = fpext float %22 to double
  %25 = fmul double %24, 0x3EF0001000100010
  %26 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %27 = load float, ptr %26, align 8, !tbaa !74
  %28 = fsub float 6.553500e+04, %27
  %29 = fpext float %28 to double
  %30 = fpext float %27 to double
  %31 = call double @llvm.fmuladd.f64(double %25, double %29, double %30)
  %32 = fptrunc double %31 to float
  %33 = fpext float %32 to double
  %34 = fcmp ogt double %33, 6.553500e+04
  %35 = select i1 %34, double 6.553500e+04, double %33
  %36 = fsub double 6.553500e+04, %35
  %37 = fptrunc double %36 to float
  %38 = fcmp ugt float %37, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = fcmp ult float %37, 6.553500e+04
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = fadd float %37, 5.000000e-01
  %43 = fptoui float %42 to i16
  br label %44

44:                                               ; preds = %23, %39, %41
  %45 = phi i16 [ %43, %41 ], [ 0, %23 ], [ -1, %39 ]
  %46 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %45, ptr %46, align 2, !tbaa !98
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %48 = load float, ptr %47, align 4, !tbaa !71
  %49 = fpext float %48 to double
  %50 = fmul double %49, 0x3EF0001000100010
  %51 = call double @llvm.fmuladd.f64(double %50, double %29, double %30)
  %52 = fptrunc double %51 to float
  %53 = fpext float %52 to double
  %54 = fcmp ogt double %53, 6.553500e+04
  %55 = select i1 %54, double 6.553500e+04, double %53
  %56 = fsub double 6.553500e+04, %55
  %57 = fptrunc double %56 to float
  %58 = fcmp ugt float %57, 0.000000e+00
  br i1 %58, label %59, label %64

59:                                               ; preds = %44
  %60 = fcmp ult float %57, 6.553500e+04
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = fadd float %57, 5.000000e-01
  %63 = fptoui float %62 to i16
  br label %64

64:                                               ; preds = %44, %59, %61
  %65 = phi i16 [ %63, %61 ], [ 0, %44 ], [ -1, %59 ]
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %65, ptr %66, align 2, !tbaa !100
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %68 = load float, ptr %67, align 8, !tbaa !72
  %69 = fpext float %68 to double
  %70 = fmul double %69, 0x3EF0001000100010
  %71 = call double @llvm.fmuladd.f64(double %70, double %29, double %30)
  %72 = fptrunc double %71 to float
  %73 = fpext float %72 to double
  %74 = fcmp ogt double %73, 6.553500e+04
  %75 = select i1 %74, double 6.553500e+04, double %73
  %76 = fsub double 6.553500e+04, %75
  %77 = fptrunc double %76 to float
  %78 = fcmp ugt float %77, 0.000000e+00
  br i1 %78, label %79, label %113

79:                                               ; preds = %64
  %80 = fcmp ult float %77, 6.553500e+04
  br i1 %80, label %81, label %113

81:                                               ; preds = %79
  %82 = fadd float %77, 5.000000e-01
  %83 = fptoui float %82 to i16
  br label %113

84:                                               ; preds = %15
  %85 = fcmp ugt float %22, 0.000000e+00
  br i1 %85, label %86, label %91

86:                                               ; preds = %84
  %87 = fcmp ult float %22, 6.553500e+04
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = fadd float %22, 5.000000e-01
  %90 = fptoui float %89 to i16
  br label %91

91:                                               ; preds = %84, %86, %88
  %92 = phi i16 [ %90, %88 ], [ 0, %84 ], [ -1, %86 ]
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %92, ptr %93, align 2, !tbaa !98
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %95 = load float, ptr %94, align 4, !tbaa !71
  %96 = fcmp ugt float %95, 0.000000e+00
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = fcmp ult float %95, 6.553500e+04
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = fadd float %95, 5.000000e-01
  %101 = fptoui float %100 to i16
  br label %102

102:                                              ; preds = %91, %97, %99
  %103 = phi i16 [ %101, %99 ], [ 0, %91 ], [ -1, %97 ]
  %104 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %103, ptr %104, align 2, !tbaa !100
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %106 = load float, ptr %105, align 8, !tbaa !72
  %107 = fcmp ugt float %106, 0.000000e+00
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = fcmp ult float %106, 6.553500e+04
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = fadd float %106, 5.000000e-01
  %112 = fptoui float %111 to i16
  br label %113

113:                                              ; preds = %110, %108, %102, %81, %79, %64
  %114 = phi i16 [ %83, %81 ], [ 0, %64 ], [ -1, %79 ], [ %112, %110 ], [ 0, %102 ], [ -1, %108 ]
  store i16 %114, ptr %2, align 2, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @QueryMagickColorCompliance(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = alloca %struct._LongPixelPacket, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2547, ptr noundef nonnull @.str.11, ptr noundef %0) #16
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef %2) #16
  %11 = icmp eq ptr %0, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i8, ptr %0, align 1, !tbaa !65
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi ptr [ @BackgroundColor, %15 ], [ %0, %12 ]
  %18 = tail call ptr @__ctype_b_loc() #17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %17, %16 ], [ %28, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !65
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i16, ptr %19, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !66
  %26 = and i16 %25, 8192
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %27, label %29, label %20, !llvm.loop !115

29:                                               ; preds = %20
  %30 = icmp eq i8 %22, 35
  br i1 %30, label %31, label %196

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  %32 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 20) #16
  %33 = getelementptr inbounds i8, ptr %21, i64 1
  %34 = load ptr, ptr %18, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi i64 [ 0, %31 ], [ %44, %35 ]
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !65
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %34, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !66
  %42 = and i16 %41, 4096
  %43 = icmp eq i16 %42, 0
  %44 = add i64 %36, 1
  br i1 %43, label %45, label %35, !llvm.loop !116

45:                                               ; preds = %35
  %46 = urem i64 %36, 3
  %47 = udiv i64 %36, 3
  %48 = icmp eq i64 %46, 0
  br i1 %48, label %49, label %92

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 1
  %51 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 2
  %52 = icmp ult i64 %36, 3
  %53 = load i32, ptr %50, align 4, !tbaa !117
  %54 = load i32, ptr %51, align 4, !tbaa !119
  br label %55

55:                                               ; preds = %49, %81
  %56 = phi i32 [ %82, %81 ], [ %54, %49 ]
  %57 = phi i32 [ %56, %81 ], [ %53, %49 ]
  %58 = phi ptr [ %83, %81 ], [ %33, %49 ]
  store i32 %57, ptr %6, align 4, !tbaa !120
  store i32 %56, ptr %50, align 4, !tbaa !117
  store i32 0, ptr %51, align 4, !tbaa !119
  br i1 %52, label %81, label %59

59:                                               ; preds = %55, %76
  %60 = phi i64 [ %63, %76 ], [ %47, %55 ]
  %61 = phi ptr [ %64, %76 ], [ %58, %55 ]
  %62 = phi i32 [ %79, %76 ], [ 0, %55 ]
  %63 = add nsw i64 %60, -1
  %64 = getelementptr inbounds i8, ptr %61, i64 1
  %65 = load i8, ptr %61, align 1, !tbaa !65
  %66 = shl i32 %62, 4
  store i32 %66, ptr %51, align 4, !tbaa !119
  %67 = sext i8 %65 to i32
  %68 = add i8 %65, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %76, label %70

70:                                               ; preds = %59
  %71 = add i8 %65, -65
  %72 = icmp ult i8 %71, 6
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = add i8 %65, -97
  %75 = icmp ult i8 %74, 6
  br i1 %75, label %76, label %194

76:                                               ; preds = %73, %70, %59
  %77 = phi i32 [ -48, %59 ], [ -55, %70 ], [ -87, %73 ]
  %78 = add nsw i32 %77, %67
  %79 = or i32 %66, %78
  store i32 %79, ptr %51, align 4, !tbaa !119
  %80 = icmp sgt i64 %60, 1
  br i1 %80, label %59, label %81, !llvm.loop !121

81:                                               ; preds = %76, %55
  %82 = phi i32 [ 0, %55 ], [ %79, %76 ]
  %83 = phi ptr [ %58, %55 ], [ %64, %76 ]
  %84 = load i8, ptr %83, align 1, !tbaa !65
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i16, ptr %34, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !66
  %88 = and i16 %87, 4096
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %55, !llvm.loop !122

90:                                               ; preds = %81
  %91 = shl i64 %47, 2
  br label %142

92:                                               ; preds = %45
  %93 = and i64 %36, 3
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 1
  %97 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 2
  %98 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 3
  %99 = lshr exact i64 %36, 2
  %100 = icmp eq i64 %36, 0
  %101 = load i32, ptr %96, align 4, !tbaa !117
  %102 = load i32, ptr %97, align 4, !tbaa !119
  %103 = load i32, ptr %98, align 4, !tbaa !123
  br label %106

104:                                              ; preds = %92
  %105 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2604, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %33) #16
  br label %194

106:                                              ; preds = %95, %133
  %107 = phi i32 [ %134, %133 ], [ %103, %95 ]
  %108 = phi i32 [ %107, %133 ], [ %102, %95 ]
  %109 = phi i32 [ %108, %133 ], [ %101, %95 ]
  %110 = phi ptr [ %135, %133 ], [ %33, %95 ]
  store i32 %109, ptr %6, align 4, !tbaa !120
  store i32 %108, ptr %96, align 4, !tbaa !117
  store i32 %107, ptr %97, align 4, !tbaa !119
  store i32 0, ptr %98, align 4, !tbaa !123
  br i1 %100, label %133, label %111

111:                                              ; preds = %106, %128
  %112 = phi i64 [ %115, %128 ], [ %99, %106 ]
  %113 = phi ptr [ %116, %128 ], [ %110, %106 ]
  %114 = phi i32 [ %131, %128 ], [ 0, %106 ]
  %115 = add nsw i64 %112, -1
  %116 = getelementptr inbounds i8, ptr %113, i64 1
  %117 = load i8, ptr %113, align 1, !tbaa !65
  %118 = shl i32 %114, 4
  store i32 %118, ptr %98, align 4, !tbaa !123
  %119 = sext i8 %117 to i32
  %120 = add i8 %117, -48
  %121 = icmp ult i8 %120, 10
  br i1 %121, label %128, label %122

122:                                              ; preds = %111
  %123 = add i8 %117, -65
  %124 = icmp ult i8 %123, 6
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = add i8 %117, -97
  %127 = icmp ult i8 %126, 6
  br i1 %127, label %128, label %194

128:                                              ; preds = %125, %122, %111
  %129 = phi i32 [ -48, %111 ], [ -55, %122 ], [ -87, %125 ]
  %130 = add nsw i32 %129, %119
  %131 = or i32 %118, %130
  store i32 %131, ptr %98, align 4, !tbaa !123
  %132 = icmp sgt i64 %112, 1
  br i1 %132, label %111, label %133, !llvm.loop !124

133:                                              ; preds = %128, %106
  %134 = phi i32 [ 0, %106 ], [ %131, %128 ]
  %135 = phi ptr [ %110, %106 ], [ %116, %128 ]
  %136 = load i8, ptr %135, align 1, !tbaa !65
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds i16, ptr %34, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !66
  %140 = and i16 %139, 4096
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %106, !llvm.loop !125

142:                                              ; preds = %133, %90
  %143 = phi i64 [ %91, %90 ], [ %36, %133 ]
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  store i32 13, ptr %144, align 4, !tbaa !76
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 4
  store i64 %143, ptr %145, align 8, !tbaa !75
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 2
  store i32 0, ptr %146, align 8, !tbaa !81
  %147 = add i64 %143, -1
  %148 = shl i64 2, %147
  %149 = add nsw i64 %148, -1
  %150 = load i32, ptr %6, align 4, !tbaa !120
  %151 = uitofp i32 %150 to float
  %152 = fmul float %151, 6.553500e+04
  %153 = uitofp i64 %149 to float
  %154 = fdiv float %152, %153
  %155 = fpext float %154 to double
  %156 = fadd double %155, 5.000000e-01
  %157 = fptoui double %156 to i16
  %158 = uitofp i16 %157 to float
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %158, ptr %159, align 8, !tbaa !70
  %160 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !117
  %162 = uitofp i32 %161 to float
  %163 = fmul float %162, 6.553500e+04
  %164 = fdiv float %163, %153
  %165 = fpext float %164 to double
  %166 = fadd double %165, 5.000000e-01
  %167 = fptoui double %166 to i16
  %168 = uitofp i16 %167 to float
  %169 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %168, ptr %169, align 4, !tbaa !71
  %170 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !119
  %172 = uitofp i32 %171 to float
  %173 = fmul float %172, 6.553500e+04
  %174 = fdiv float %173, %153
  %175 = fpext float %174 to double
  %176 = fadd double %175, 5.000000e-01
  %177 = fptoui double %176 to i16
  %178 = uitofp i16 %177 to float
  %179 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %178, ptr %179, align 8, !tbaa !72
  %180 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float 0.000000e+00, ptr %180, align 4, !tbaa !73
  br i1 %48, label %192, label %181

181:                                              ; preds = %142
  store i32 1, ptr %146, align 8, !tbaa !81
  %182 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 3
  %183 = load i32, ptr %182, align 4, !tbaa !123
  %184 = uitofp i32 %183 to float
  %185 = fmul float %184, 6.553500e+04
  %186 = fdiv float %185, %153
  %187 = fpext float %186 to double
  %188 = fadd double %187, 5.000000e-01
  %189 = fptoui double %188 to i16
  %190 = xor i16 %189, -1
  %191 = uitofp i16 %190 to float
  store float %191, ptr %180, align 4, !tbaa !73
  br label %192

192:                                              ; preds = %181, %142
  %193 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float 0.000000e+00, ptr %193, align 8, !tbaa !74
  br label %194

194:                                              ; preds = %125, %73, %192, %104
  %195 = phi i32 [ 1, %192 ], [ 0, %104 ], [ 0, %73 ], [ 0, %125 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  br label %509

196:                                              ; preds = %29
  %197 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %21, i32 noundef 40) #22
  %198 = icmp eq ptr %197, null
  br i1 %198, label %487, label %199

199:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #16
  %200 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %21, i64 noundef 4096) #16
  br label %201

201:                                              ; preds = %205, %199
  %202 = phi i64 [ 0, %199 ], [ %206, %205 ]
  %203 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !65
  switch i8 %204, label %205 [
    i8 0, label %207
    i8 40, label %207
  ]

205:                                              ; preds = %201
  %206 = add nuw nsw i64 %202, 1
  br label %201, !llvm.loop !126

207:                                              ; preds = %201, %201
  %208 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %202
  %209 = add nsw i64 %202, -1
  store i8 0, ptr %208, align 1, !tbaa !65
  %210 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.27, i64 noundef 7) #16
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = getelementptr inbounds i8, ptr %7, i64 7
  %214 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %213, i64 noundef 4096) #16
  br label %215

215:                                              ; preds = %212, %207
  %216 = phi double [ 6.553500e+04, %212 ], [ 2.570000e+02, %207 ]
  %217 = phi i32 [ 1, %212 ], [ 0, %207 ]
  %218 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.28) #16
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, ptr %21, i64 %209
  %222 = getelementptr inbounds i8, ptr %221, i64 2
  %223 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %222, i64 noundef 4096) #16
  br label %224

224:                                              ; preds = %228, %220
  %225 = phi i64 [ 0, %220 ], [ %229, %228 ]
  %226 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !65
  switch i8 %227, label %228 [
    i8 0, label %230
    i8 44, label %230
  ]

228:                                              ; preds = %224
  %229 = add nuw nsw i64 %225, 1
  br label %224, !llvm.loop !127

230:                                              ; preds = %224, %224
  %231 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %225
  store i8 0, ptr %231, align 1, !tbaa !65
  %232 = add nuw i64 %202, 1
  %233 = add i64 %232, %225
  br label %234

234:                                              ; preds = %230, %215
  %235 = phi i64 [ %233, %230 ], [ %209, %215 ]
  %236 = phi double [ 6.553500e+04, %230 ], [ %216, %215 ]
  %237 = phi i32 [ 1, %230 ], [ %217, %215 ]
  call void @LocaleLower(ptr noundef nonnull %7) #16
  %238 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 2
  store i32 0, ptr %238, align 8, !tbaa !81
  %239 = icmp sgt i64 %235, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %234
  %241 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %235
  %242 = load i8, ptr %241, align 1, !tbaa !65
  %243 = icmp eq i8 %242, 97
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i8 0, ptr %241, align 1, !tbaa !65
  store i32 1, ptr %238, align 8, !tbaa !81
  br label %245

245:                                              ; preds = %244, %240, %234
  %246 = call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef nonnull %7) #16
  %247 = icmp slt i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2697, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #16
  br label %485

250:                                              ; preds = %245
  %251 = trunc i64 %246 to i32
  %252 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  store i32 %251, ptr %252, align 4, !tbaa !76
  %253 = icmp eq i32 %237, 0
  %254 = icmp eq i32 %251, 1
  %255 = and i1 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %250
  store i32 13, ptr %252, align 4, !tbaa !76
  %257 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 4
  store i64 8, ptr %257, align 8, !tbaa !75
  br label %258

258:                                              ; preds = %256, %250
  call void @SetGeometryInfo(ptr noundef nonnull %5) #16
  %259 = getelementptr inbounds i8, ptr %21, i64 %235
  %260 = getelementptr inbounds i8, ptr %259, i64 1
  %261 = call i32 @ParseGeometry(ptr noundef nonnull %260, ptr noundef nonnull %5) #16
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %264 = load i32, ptr %252, align 4, !tbaa !76
  %265 = call ptr @AcquireString(ptr noundef nonnull %260) #16
  store ptr %265, ptr %8, align 8, !tbaa !34
  %266 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #16
  %267 = load ptr, ptr %8, align 8, !tbaa !34
  %268 = call i32 @QueryMagickColorCompliance(ptr noundef %267, i32 noundef 2147483647, ptr noundef %2, ptr noundef %3), !range !106
  %269 = load ptr, ptr %8, align 8, !tbaa !34
  %270 = call ptr @DestroyString(ptr noundef %269) #16
  store ptr %270, ptr %8, align 8, !tbaa !34
  store i32 %264, ptr %252, align 4, !tbaa !76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %485

271:                                              ; preds = %258
  %272 = and i32 %261, 4096
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, double %236, double 0x40847ACCC0000000
  %275 = and i32 %261, 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %291, label %277

277:                                              ; preds = %271
  %278 = load double, ptr %5, align 8, !tbaa !128
  %279 = fmul double %274, %278
  %280 = fptrunc double %279 to float
  %281 = fcmp ugt float %280, 0.000000e+00
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = fcmp ult float %280, 6.553500e+04
  br i1 %283, label %284, label %287

284:                                              ; preds = %282
  %285 = fadd float %280, 5.000000e-01
  %286 = fptoui float %285 to i16
  br label %287

287:                                              ; preds = %277, %282, %284
  %288 = phi i16 [ %286, %284 ], [ 0, %277 ], [ -1, %282 ]
  %289 = uitofp i16 %288 to float
  %290 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %289, ptr %290, align 8, !tbaa !70
  br label %291

291:                                              ; preds = %287, %271
  %292 = and i32 %261, 8
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %309, label %294

294:                                              ; preds = %291
  %295 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %296 = load double, ptr %295, align 8, !tbaa !130
  %297 = fmul double %274, %296
  %298 = fptrunc double %297 to float
  %299 = fcmp ugt float %298, 0.000000e+00
  br i1 %299, label %300, label %305

300:                                              ; preds = %294
  %301 = fcmp ult float %298, 6.553500e+04
  br i1 %301, label %302, label %305

302:                                              ; preds = %300
  %303 = fadd float %298, 5.000000e-01
  %304 = fptoui float %303 to i16
  br label %305

305:                                              ; preds = %294, %300, %302
  %306 = phi i16 [ %304, %302 ], [ 0, %294 ], [ -1, %300 ]
  %307 = uitofp i16 %306 to float
  %308 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %307, ptr %308, align 4, !tbaa !71
  br label %309

309:                                              ; preds = %305, %291
  %310 = and i32 %261, 1
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %327, label %312

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 2
  %314 = load double, ptr %313, align 8, !tbaa !131
  %315 = fmul double %274, %314
  %316 = fptrunc double %315 to float
  %317 = fcmp ugt float %316, 0.000000e+00
  br i1 %317, label %318, label %323

318:                                              ; preds = %312
  %319 = fcmp ult float %316, 6.553500e+04
  br i1 %319, label %320, label %323

320:                                              ; preds = %318
  %321 = fadd float %316, 5.000000e-01
  %322 = fptoui float %321 to i16
  br label %323

323:                                              ; preds = %312, %318, %320
  %324 = phi i16 [ %322, %320 ], [ 0, %312 ], [ -1, %318 ]
  %325 = uitofp i16 %324 to float
  %326 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %325, ptr %326, align 8, !tbaa !72
  br label %327

327:                                              ; preds = %323, %309
  %328 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float 0.000000e+00, ptr %328, align 4, !tbaa !73
  %329 = and i32 %261, 2
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %366, label %331

331:                                              ; preds = %327
  %332 = load i32, ptr %252, align 4, !tbaa !76
  %333 = icmp eq i32 %332, 12
  br i1 %333, label %334, label %349

334:                                              ; preds = %331
  %335 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 3
  %336 = load double, ptr %335, align 8, !tbaa !132
  %337 = fmul double %274, %336
  %338 = fptrunc double %337 to float
  %339 = fcmp ugt float %338, 0.000000e+00
  br i1 %339, label %340, label %346

340:                                              ; preds = %334
  %341 = fcmp ult float %338, 6.553500e+04
  br i1 %341, label %342, label %346

342:                                              ; preds = %340
  %343 = fadd float %338, 5.000000e-01
  %344 = fptoui float %343 to i16
  %345 = uitofp i16 %344 to float
  br label %346

346:                                              ; preds = %334, %340, %342
  %347 = phi float [ %345, %342 ], [ 0.000000e+00, %334 ], [ 6.553500e+04, %340 ]
  %348 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %347, ptr %348, align 8, !tbaa !74
  br label %366

349:                                              ; preds = %331
  %350 = load i32, ptr %238, align 8, !tbaa !81
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %366, label %352

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 3
  %354 = load double, ptr %353, align 8, !tbaa !132
  %355 = call double @llvm.fmuladd.f64(double %354, double -6.553500e+04, double 6.553500e+04)
  %356 = fptrunc double %355 to float
  %357 = fcmp ugt float %356, 0.000000e+00
  br i1 %357, label %358, label %364

358:                                              ; preds = %352
  %359 = fcmp ult float %356, 6.553500e+04
  br i1 %359, label %360, label %364

360:                                              ; preds = %358
  %361 = fadd float %356, 5.000000e-01
  %362 = fptoui float %361 to i16
  %363 = uitofp i16 %362 to float
  br label %364

364:                                              ; preds = %352, %358, %360
  %365 = phi float [ %363, %360 ], [ 0.000000e+00, %352 ], [ 6.553500e+04, %358 ]
  store float %365, ptr %328, align 4, !tbaa !73
  br label %366

366:                                              ; preds = %346, %364, %349, %327
  %367 = and i32 %261, 16
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %386, label %369

369:                                              ; preds = %366
  %370 = load i32, ptr %238, align 8, !tbaa !81
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %386, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 4
  %374 = load double, ptr %373, align 8, !tbaa !133
  %375 = call double @llvm.fmuladd.f64(double %374, double -6.553500e+04, double 6.553500e+04)
  %376 = fptrunc double %375 to float
  %377 = fcmp ugt float %376, 0.000000e+00
  br i1 %377, label %378, label %384

378:                                              ; preds = %372
  %379 = fcmp ult float %376, 6.553500e+04
  br i1 %379, label %380, label %384

380:                                              ; preds = %378
  %381 = fadd float %376, 5.000000e-01
  %382 = fptoui float %381 to i16
  %383 = uitofp i16 %382 to float
  br label %384

384:                                              ; preds = %372, %378, %380
  %385 = phi float [ %383, %380 ], [ 0.000000e+00, %372 ], [ 6.553500e+04, %378 ]
  store float %385, ptr %328, align 4, !tbaa !73
  br label %386

386:                                              ; preds = %384, %369, %366
  %387 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.29) #16
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %411

389:                                              ; preds = %386
  store i32 2, ptr %252, align 4, !tbaa !76
  %390 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %391 = load float, ptr %390, align 8, !tbaa !70
  %392 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %391, ptr %392, align 4, !tbaa !71
  %393 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %391, ptr %393, align 8, !tbaa !72
  br i1 %293, label %411, label %394

394:                                              ; preds = %389
  %395 = load i32, ptr %238, align 8, !tbaa !81
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %411, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %399 = load double, ptr %398, align 8, !tbaa !130
  %400 = call double @llvm.fmuladd.f64(double %399, double -6.553500e+04, double 6.553500e+04)
  %401 = fptrunc double %400 to float
  %402 = fcmp ugt float %401, 0.000000e+00
  br i1 %402, label %403, label %409

403:                                              ; preds = %397
  %404 = fcmp ult float %401, 6.553500e+04
  br i1 %404, label %405, label %409

405:                                              ; preds = %403
  %406 = fadd float %401, 5.000000e-01
  %407 = fptoui float %406 to i16
  %408 = uitofp i16 %407 to float
  br label %409

409:                                              ; preds = %397, %403, %405
  %410 = phi float [ %408, %405 ], [ 0.000000e+00, %397 ], [ 6.553500e+04, %403 ]
  store float %410, ptr %328, align 4, !tbaa !73
  br label %411

411:                                              ; preds = %389, %394, %409, %386
  %412 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.30) #16
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %411
  %415 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #16
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %423, label %417

417:                                              ; preds = %414
  %418 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.32) #16
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %423, label %420

420:                                              ; preds = %417
  %421 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.33) #16
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %485

423:                                              ; preds = %420, %417, %414, %411
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %424 = select i1 %273, double 1.000000e+00, double 3.600000e+00
  %425 = load double, ptr %5, align 8, !tbaa !128
  %426 = fmul double %424, %425
  store double %426, ptr %5, align 8, !tbaa !128
  %427 = select i1 %273, double 0x3F70101010101010, double 1.000000e-02
  %428 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %429 = load double, ptr %428, align 8, !tbaa !130
  %430 = fmul double %427, %429
  store double %430, ptr %428, align 8, !tbaa !130
  %431 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 2
  %432 = load double, ptr %431, align 8, !tbaa !131
  %433 = fmul double %427, %432
  store double %433, ptr %431, align 8, !tbaa !131
  %434 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.30) #16
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %446

436:                                              ; preds = %423
  %437 = load double, ptr %5, align 8, !tbaa !128
  %438 = call double @fmod(double noundef %437, double noundef 3.600000e+02) #16
  %439 = fadd double %438, 3.600000e+02
  %440 = call double @fmod(double noundef %439, double noundef 3.600000e+02) #16
  %441 = fdiv double %440, 3.600000e+02
  %442 = load double, ptr %428, align 8, !tbaa !130
  %443 = load double, ptr %431, align 8, !tbaa !131
  %444 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %445 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  call void @ConvertHCLToRGB(double noundef %441, double noundef %442, double noundef %443, ptr noundef nonnull %444, ptr noundef nonnull %445, ptr noundef nonnull %9) #16
  br label %473

446:                                              ; preds = %423
  %447 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #16
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %459

449:                                              ; preds = %446
  %450 = load double, ptr %5, align 8, !tbaa !128
  %451 = call double @fmod(double noundef %450, double noundef 3.600000e+02) #16
  %452 = fadd double %451, 3.600000e+02
  %453 = call double @fmod(double noundef %452, double noundef 3.600000e+02) #16
  %454 = fdiv double %453, 3.600000e+02
  %455 = load double, ptr %428, align 8, !tbaa !130
  %456 = load double, ptr %431, align 8, !tbaa !131
  %457 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %458 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  call void @ConvertHSBToRGB(double noundef %454, double noundef %455, double noundef %456, ptr noundef nonnull %457, ptr noundef nonnull %458, ptr noundef nonnull %9) #16
  br label %473

459:                                              ; preds = %446
  %460 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.32) #16
  %461 = icmp eq i32 %460, 0
  %462 = load double, ptr %5, align 8, !tbaa !128
  %463 = call double @fmod(double noundef %462, double noundef 3.600000e+02) #16
  %464 = fadd double %463, 3.600000e+02
  %465 = call double @fmod(double noundef %464, double noundef 3.600000e+02) #16
  %466 = fdiv double %465, 3.600000e+02
  %467 = load double, ptr %428, align 8, !tbaa !130
  %468 = load double, ptr %431, align 8, !tbaa !131
  %469 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %470 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  br i1 %461, label %471, label %472

471:                                              ; preds = %459
  call void @ConvertHSLToRGB(double noundef %466, double noundef %467, double noundef %468, ptr noundef nonnull %469, ptr noundef nonnull %470, ptr noundef nonnull %9) #16
  br label %473

472:                                              ; preds = %459
  call void @ConvertHWBToRGB(double noundef %466, double noundef %467, double noundef %468, ptr noundef nonnull %469, ptr noundef nonnull %470, ptr noundef nonnull %9) #16
  br label %473

473:                                              ; preds = %449, %472, %471, %436
  store i32 13, ptr %252, align 4, !tbaa !76
  %474 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %475 = load i16, ptr %474, align 2, !tbaa !98
  %476 = uitofp i16 %475 to float
  %477 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %476, ptr %477, align 8, !tbaa !70
  %478 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  %479 = load i16, ptr %478, align 2, !tbaa !100
  %480 = uitofp i16 %479 to float
  %481 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %480, ptr %481, align 4, !tbaa !71
  %482 = load i16, ptr %9, align 2, !tbaa !99
  %483 = uitofp i16 %482 to float
  %484 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %483, ptr %484, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %485

485:                                              ; preds = %263, %473, %420, %248
  %486 = phi i32 [ 0, %248 ], [ 1, %420 ], [ 1, %473 ], [ 1, %263 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #16
  br label %509

487:                                              ; preds = %196
  %488 = tail call ptr @GetColorCompliance(ptr noundef nonnull %21, i32 noundef %1, ptr noundef %3)
  %489 = icmp eq ptr %488, null
  br i1 %489, label %509, label %490

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  store i32 13, ptr %491, align 4, !tbaa !76
  %492 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 4
  store i64 8, ptr %492, align 8, !tbaa !75
  %493 = getelementptr inbounds %struct._ColorInfo, ptr %488, i64 0, i32 3, i32 8
  %494 = load float, ptr %493, align 4, !tbaa !60
  %495 = fcmp une float %494, 0.000000e+00
  %496 = zext i1 %495 to i32
  %497 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 2
  store i32 %496, ptr %497, align 8, !tbaa !81
  %498 = getelementptr inbounds %struct._ColorInfo, ptr %488, i64 0, i32 3, i32 5
  %499 = load float, ptr %498, align 8, !tbaa !54
  %500 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %499, ptr %500, align 8, !tbaa !70
  %501 = getelementptr inbounds %struct._ColorInfo, ptr %488, i64 0, i32 3, i32 6
  %502 = load float, ptr %501, align 4, !tbaa !56
  %503 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %502, ptr %503, align 4, !tbaa !71
  %504 = getelementptr inbounds %struct._ColorInfo, ptr %488, i64 0, i32 3, i32 7
  %505 = load float, ptr %504, align 8, !tbaa !58
  %506 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %505, ptr %506, align 8, !tbaa !72
  %507 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float %494, ptr %507, align 4, !tbaa !73
  %508 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float 0.000000e+00, ptr %508, align 8, !tbaa !74
  br label %509

509:                                              ; preds = %487, %490, %485, %194
  %510 = phi i32 [ %195, %194 ], [ %486, %485 ], [ 1, %490 ], [ 0, %487 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  ret i32 %510
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @QueryColorDatabase(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @QueryColorCompliance(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, ptr noundef %2), !range !106
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @QueryColorname(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !98
  %9 = uitofp i16 %8 to float
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  store float %9, ptr %10, align 8, !tbaa !70
  %11 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !100
  %13 = uitofp i16 %12 to float
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  store float %13, ptr %14, align 4, !tbaa !71
  %15 = load i16, ptr %1, align 2, !tbaa !99
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  store float %16, ptr %17, align 8, !tbaa !72
  %18 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !101
  %20 = uitofp i16 %19 to float
  %21 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  store float %20, ptr %21, align 4, !tbaa !73
  %22 = call i32 @QueryMagickColorname(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2, ptr noundef %3, ptr noundef %4), !range !106
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @QueryMagickColorname(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  store i8 0, ptr %3, align 1, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !82
  %7 = icmp eq i32 %2, 4
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !81
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !134
  %12 = uitofp i64 %11 to double
  %13 = fcmp olt double %12, 1.600000e+01
  %14 = select i1 %13, double %12, double 1.600000e+01
  %15 = fptoui double %14 to i64
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 4
  store i64 %15, ptr %16, align 8, !tbaa !75
  br label %17

17:                                               ; preds = %8, %5
  %18 = icmp ne i32 %2, 1
  %19 = zext i1 %18 to i32
  call void @GetColorTuple(ptr noundef nonnull %6, i32 noundef %19, ptr noundef nonnull %3)
  %20 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !76
  switch i32 %21, label %73 [
    i32 13, label %22
    i32 3, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = tail call ptr @GetColorCompliance(ptr noundef nonnull @.str, i32 noundef 2147483647, ptr noundef %4)
  %24 = load ptr, ptr @color_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !97
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %30 = load float, ptr %29, align 4, !tbaa !73
  br label %31

31:                                               ; preds = %22, %28
  %32 = phi float [ %30, %28 ], [ 0.000000e+00, %22 ]
  %33 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %34 = tail call ptr @GetNextValueInLinkedList(ptr noundef %33) #16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %73, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  br label %40

40:                                               ; preds = %36, %69
  %41 = phi ptr [ %34, %36 ], [ %71, %69 ]
  %42 = getelementptr inbounds %struct._ColorInfo, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !62
  %44 = and i32 %43, %2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct._ColorInfo, ptr %41, i64 0, i32 3, i32 5
  %48 = load float, ptr %47, align 8, !tbaa !54
  %49 = load float, ptr %37, align 8, !tbaa !70
  %50 = fcmp oeq float %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct._ColorInfo, ptr %41, i64 0, i32 3, i32 6
  %53 = load float, ptr %52, align 4, !tbaa !56
  %54 = load float, ptr %38, align 4, !tbaa !71
  %55 = fcmp oeq float %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct._ColorInfo, ptr %41, i64 0, i32 3, i32 7
  %58 = load float, ptr %57, align 8, !tbaa !58
  %59 = load float, ptr %39, align 8, !tbaa !72
  %60 = fcmp oeq float %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct._ColorInfo, ptr %41, i64 0, i32 3, i32 8
  %63 = load float, ptr %62, align 4, !tbaa !60
  %64 = fcmp oeq float %63, %32
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct._ColorInfo, ptr %41, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = tail call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %67, i64 noundef 4096) #16
  br label %73

69:                                               ; preds = %61, %56, %51, %46, %40
  %70 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %71 = tail call ptr @GetNextValueInLinkedList(ptr noundef %70) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %40, !llvm.loop !135

73:                                               ; preds = %69, %31, %17, %65
  %74 = phi i32 [ 0, %17 ], [ 1, %65 ], [ 1, %31 ], [ 1, %69 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  ret i32 %74
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #1

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @QueryMagickColor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @QueryMagickColorCompliance(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, ptr noundef %2), !range !106
  ret i32 %4
}

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare void @ConvertHCLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #12

declare void @ConvertHSBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ConvertHWBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare void @CatchException(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadColorCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2176, ptr noundef nonnull @.str.41, ptr noundef %2) #16
  %11 = icmp eq ptr %1, null
  br i1 %11, label %192, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @AcquireString(ptr noundef nonnull %1) #16
  store ptr %1, ptr %7, align 8, !tbaa !34
  %14 = load i8, ptr %1, align 1, !tbaa !65
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %189, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = icmp ugt i64 %3, 200
  %19 = add nuw nsw i64 %3, 1
  br label %20

20:                                               ; preds = %16, %42
  %21 = phi ptr [ %1, %16 ], [ %45, %42 ]
  %22 = phi i32 [ 1, %16 ], [ %44, %42 ]
  %23 = phi ptr [ null, %16 ], [ %43, %42 ]
  call void @GetMagickToken(ptr noundef nonnull %21, ptr noundef nonnull %7, ptr noundef %13) #16
  %24 = load i8, ptr %13, align 1, !tbaa !65
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %189, label %26

26:                                               ; preds = %20
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef %13, i64 noundef 4096) #16
  %28 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.42, i64 noundef 9) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8, !tbaa !34
  %32 = call i32 @LocaleNCompare(ptr noundef %31, ptr noundef nonnull @.str.43, i64 noundef 2) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %38
  %35 = load ptr, ptr %7, align 8, !tbaa !34
  %36 = load i8, ptr %35, align 1, !tbaa !65
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  call void @GetMagickToken(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef %13) #16
  %39 = load ptr, ptr %7, align 8, !tbaa !34
  %40 = call i32 @LocaleNCompare(ptr noundef %39, ptr noundef nonnull @.str.43, i64 noundef 2) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !136

42:                                               ; preds = %59, %55, %38, %34, %75, %69, %72, %154, %160, %180, %186, %157, %177, %183, %147, %136, %139, %51, %30, %126, %131, %143
  %43 = phi ptr [ %117, %126 ], [ null, %131 ], [ %23, %143 ], [ %23, %30 ], [ %23, %51 ], [ null, %139 ], [ null, %136 ], [ %23, %147 ], [ %23, %183 ], [ %23, %177 ], [ %23, %157 ], [ %23, %186 ], [ %23, %180 ], [ %23, %160 ], [ %23, %154 ], [ %23, %72 ], [ %23, %69 ], [ %23, %75 ], [ %23, %34 ], [ %23, %38 ], [ %23, %55 ], [ %23, %59 ]
  %44 = phi i32 [ %22, %126 ], [ %22, %131 ], [ %22, %143 ], [ %22, %30 ], [ %22, %51 ], [ %137, %139 ], [ %137, %136 ], [ %22, %147 ], [ %22, %183 ], [ %22, %177 ], [ %22, %157 ], [ %22, %186 ], [ %22, %180 ], [ %22, %160 ], [ %22, %154 ], [ %67, %72 ], [ %67, %69 ], [ %67, %75 ], [ %22, %34 ], [ %22, %38 ], [ %22, %55 ], [ %22, %59 ]
  %45 = load ptr, ptr %7, align 8, !tbaa !34
  %46 = load i8, ptr %45, align 1, !tbaa !65
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %189, label %20, !llvm.loop !137

48:                                               ; preds = %26
  %49 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.44, i64 noundef 4) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 8, !tbaa !34
  %53 = call i32 @LocaleNCompare(ptr noundef %52, ptr noundef nonnull @.str.45, i64 noundef 2) #16
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %42, label %55

55:                                               ; preds = %51, %59
  %56 = load ptr, ptr %7, align 8, !tbaa !34
  %57 = load i8, ptr %56, align 1, !tbaa !65
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  call void @GetMagickToken(ptr noundef nonnull %56, ptr noundef nonnull %7, ptr noundef %13) #16
  %60 = load ptr, ptr %7, align 8, !tbaa !34
  %61 = call i32 @LocaleNCompare(ptr noundef %60, ptr noundef nonnull @.str.45, i64 noundef 2) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %42, label %55, !llvm.loop !138

63:                                               ; preds = %48
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.46) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %113

66:                                               ; preds = %63, %111
  %67 = phi i32 [ %112, %111 ], [ %22, %63 ]
  br label %68

68:                                               ; preds = %91, %66
  br label %69

69:                                               ; preds = %68, %79
  %70 = load i8, ptr %13, align 1, !tbaa !65
  %71 = icmp eq i8 %70, 47
  br i1 %71, label %42, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %17, align 1, !tbaa !65
  %74 = icmp eq i8 %73, 62
  br i1 %74, label %42, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %7, align 8, !tbaa !34
  %77 = load i8, ptr %76, align 1, !tbaa !65
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %42, label %79

79:                                               ; preds = %75
  %80 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #16
  %81 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %81, ptr noundef nonnull %7, ptr noundef nonnull %13) #16
  %82 = load i8, ptr %13, align 1, !tbaa !65
  %83 = icmp eq i8 %82, 61
  br i1 %83, label %84, label %69, !llvm.loop !139

84:                                               ; preds = %79
  %85 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %85, ptr noundef nonnull %7, ptr noundef nonnull %13) #16
  %86 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.47) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  br i1 %18, label %89, label %92

89:                                               ; preds = %88
  %90 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2225, i32 noundef 495, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #16
  br label %91

91:                                               ; preds = %89, %84
  br label %68, !llvm.loop !139

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #16
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #16
  %93 = load i8, ptr %8, align 16, !tbaa !65
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.49, i64 noundef 4096) #16
  br label %97

97:                                               ; preds = %95, %92
  %98 = load i8, ptr %13, align 1, !tbaa !65
  %99 = icmp eq i8 %98, 47
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #16
  br label %104

102:                                              ; preds = %97
  %103 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #16
  br label %104

104:                                              ; preds = %102, %100
  %105 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = call fastcc i32 @LoadColorCache(ptr noundef %0, ptr noundef nonnull %105, ptr noundef nonnull %8, i64 noundef %19, ptr noundef %4)
  %109 = and i32 %108, %67
  %110 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %105) #16
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i32 [ %109, %107 ], [ %67, %104 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #16
  br label %66, !llvm.loop !139

113:                                              ; preds = %63
  %114 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.50) #16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = call dereferenceable_or_null(112) ptr @AcquireMagickMemory(i64 noundef 112) #19
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #16
  call void @GetExceptionInfo(ptr noundef nonnull %9) #16
  %120 = tail call ptr @__errno_location() #17
  %121 = load i32, ptr %120, align 4, !tbaa !47
  %122 = call ptr @GetExceptionMessage(i32 noundef %121) #16
  %123 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2260, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %122) #16
  %124 = call ptr @DestroyString(ptr noundef %122) #16
  call void @CatchException(ptr noundef nonnull %9) #16
  %125 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 1) #18
  unreachable

126:                                              ; preds = %116
  %127 = call ptr @ResetMagickMemory(ptr noundef nonnull %117, i32 noundef 0, i64 noundef 112) #16
  %128 = call ptr @ConstantString(ptr noundef %2) #16
  store ptr %128, ptr %117, align 8, !tbaa !45
  %129 = getelementptr inbounds %struct._ColorInfo, ptr %117, i64 0, i32 4
  store i32 0, ptr %129, align 8, !tbaa !38
  %130 = getelementptr inbounds %struct._ColorInfo, ptr %117, i64 0, i32 8
  store i64 2880220587, ptr %130, align 8, !tbaa !63
  br label %42

131:                                              ; preds = %113
  %132 = icmp eq ptr %23, null
  br i1 %132, label %42, label %133

133:                                              ; preds = %131
  %134 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.51) #16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %23) #16
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %42

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2273, i32 noundef 400, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %141) #16
  br label %42

143:                                              ; preds = %133
  %144 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %144, ptr noundef null, ptr noundef %13) #16
  %145 = load i8, ptr %13, align 1, !tbaa !65
  %146 = icmp eq i8 %145, 61
  br i1 %146, label %147, label %42

147:                                              ; preds = %143
  %148 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %148, ptr noundef nonnull %7, ptr noundef nonnull %13) #16
  %149 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %149, ptr noundef nonnull %7, ptr noundef nonnull %13) #16
  %150 = load i8, ptr %6, align 16, !tbaa !65
  switch i8 %150, label %42 [
    i8 67, label %151
    i8 99, label %151
    i8 78, label %177
    i8 110, label %177
    i8 83, label %183
    i8 115, label %183
  ]

151:                                              ; preds = %147, %147
  %152 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.52) #16
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 3
  %156 = call i32 @QueryMagickColorCompliance(ptr noundef nonnull %13, i32 noundef 2147483647, ptr noundef nonnull %155, ptr noundef %4), !range !106
  br label %42

157:                                              ; preds = %151
  %158 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.53) #16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %42

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !62
  %163 = call i32 @GlobExpression(ptr noundef nonnull %13, ptr noundef nonnull @.str.54, i32 noundef 1) #16
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = or i32 %162, %165
  %167 = zext i32 %166 to i64
  %168 = call i32 @GlobExpression(ptr noundef nonnull %13, ptr noundef nonnull @.str.55, i32 noundef 1) #16
  %169 = icmp eq i32 %168, 0
  %170 = or i64 %167, 2
  %171 = select i1 %169, i64 %167, i64 %170
  %172 = call i32 @GlobExpression(ptr noundef nonnull %13, ptr noundef nonnull @.str.56, i32 noundef 1) #16
  %173 = icmp eq i32 %172, 0
  %174 = or i64 %171, 4
  %175 = select i1 %173, i64 %171, i64 %174
  %176 = trunc i64 %175 to i32
  store i32 %176, ptr %161, align 8, !tbaa !62
  br label %42

177:                                              ; preds = %147, %147
  %178 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.57) #16
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %42

180:                                              ; preds = %177
  %181 = call ptr @ConstantString(ptr noundef nonnull %13) #16
  %182 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 1
  store ptr %181, ptr %182, align 8, !tbaa !46
  br label %42

183:                                              ; preds = %147, %147
  %184 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.58) #16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %42

186:                                              ; preds = %183
  %187 = call i32 @IsMagickTrue(ptr noundef nonnull %13) #16
  %188 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 5
  store i32 %187, ptr %188, align 4, !tbaa !78
  br label %42

189:                                              ; preds = %42, %20, %12
  %190 = phi i32 [ 1, %12 ], [ %44, %42 ], [ %22, %20 ]
  %191 = call ptr @RelinquishMagickMemory(ptr noundef %13) #16
  br label %192

192:                                              ; preds = %5, %189
  %193 = phi i32 [ %190, %189 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #16
  ret i32 %193
}

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #14

declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { hot nounwind }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 13301818}
!8 = !{!"MaxCount", i64 3247920}
!9 = !{!"MaxInternalCount", i64 3247920}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 3247920, i32 1}
!18 = !{i32 100000, i64 3247920, i32 1}
!19 = !{i32 200000, i64 3247920, i32 1}
!20 = !{i32 300000, i64 1623960, i32 7}
!21 = !{i32 400000, i64 1623960, i32 7}
!22 = !{i32 500000, i64 1623960, i32 7}
!23 = !{i32 600000, i64 1623960, i32 7}
!24 = !{i32 700000, i64 1623960, i32 7}
!25 = !{i32 800000, i64 1623960, i32 7}
!26 = !{i32 900000, i64 1623960, i32 7}
!27 = !{i32 950000, i64 1623960, i32 7}
!28 = !{i32 990000, i64 204360, i32 8}
!29 = !{i32 999000, i64 25545, i32 12}
!30 = !{i32 999900, i64 3120, i32 13}
!31 = !{i32 999990, i64 195, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 80}
!39 = !{!"_ColorInfo", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 24, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !43, i64 104}
!40 = !{!"int", !36, i64 0}
!41 = !{!"_MagickPixelPacket", !40, i64 0, !40, i64 4, !40, i64 8, !42, i64 16, !43, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48}
!42 = !{!"double", !36, i64 0}
!43 = !{!"long", !36, i64 0}
!44 = !{!"float", !36, i64 0}
!45 = !{!39, !35, i64 0}
!46 = !{!39, !35, i64 8}
!47 = !{!40, !40, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !35, i64 0}
!52 = !{!"_ColorMapInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !44, i64 12, !43, i64 16}
!53 = !{!52, !36, i64 8}
!54 = !{!39, !44, i64 56}
!55 = !{!52, !36, i64 9}
!56 = !{!39, !44, i64 60}
!57 = !{!52, !36, i64 10}
!58 = !{!39, !44, i64 64}
!59 = !{!52, !44, i64 12}
!60 = !{!39, !44, i64 68}
!61 = !{!52, !43, i64 16}
!62 = !{!39, !40, i64 16}
!63 = !{!39, !43, i64 104}
!64 = distinct !{!64, !49, !50}
!65 = !{!36, !36, i64 0}
!66 = !{!67, !67, i64 0}
!67 = !{!"short", !36, i64 0}
!68 = distinct !{!68, !49, !50}
!69 = distinct !{!69, !49, !50}
!70 = !{!41, !44, i64 32}
!71 = !{!41, !44, i64 36}
!72 = !{!41, !44, i64 40}
!73 = !{!41, !44, i64 44}
!74 = !{!41, !44, i64 48}
!75 = !{!41, !43, i64 24}
!76 = !{!41, !40, i64 4}
!77 = !{!43, !43, i64 0}
!78 = !{!39, !40, i64 84}
!79 = distinct !{!79, !49, !50}
!80 = distinct !{!80, !49, !50}
!81 = !{!41, !40, i64 8}
!82 = !{i64 0, i64 4, !47, i64 4, i64 4, !47, i64 8, i64 4, !47, i64 16, i64 8, !83, i64 24, i64 8, !77, i64 32, i64 4, !84, i64 36, i64 4, !84, i64 40, i64 4, !84, i64 44, i64 4, !84, i64 48, i64 4, !84}
!83 = !{!42, !42, i64 0}
!84 = !{!44, !44, i64 0}
!85 = !{!86, !42, i64 392}
!86 = !{!"_Image", !40, i64 0, !40, i64 4, !40, i64 8, !43, i64 16, !40, i64 24, !40, i64 28, !40, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !35, i64 72, !87, i64 80, !87, i64 88, !87, i64 96, !42, i64 104, !88, i64 112, !40, i64 208, !35, i64 216, !40, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !43, i64 256, !42, i64 264, !42, i64 272, !90, i64 280, !90, i64 312, !90, i64 344, !42, i64 376, !42, i64 384, !42, i64 392, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !35, i64 424, !43, i64 432, !43, i64 440, !43, i64 448, !43, i64 456, !43, i64 464, !43, i64 472, !91, i64 480, !92, i64 504, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !43, i64 12904, !43, i64 12912, !94, i64 12920, !40, i64 12976, !43, i64 12984, !35, i64 12992, !95, i64 13000, !95, i64 13032, !35, i64 13064, !43, i64 13072, !43, i64 13080, !35, i64 13088, !35, i64 13096, !35, i64 13104, !40, i64 13112, !40, i64 13116, !87, i64 13120, !35, i64 13128, !90, i64 13136, !35, i64 13168, !35, i64 13176, !40, i64 13184, !40, i64 13188, !96, i64 13192, !40, i64 13200, !43, i64 13208, !43, i64 13216, !40, i64 13224, !43, i64 13232}
!87 = !{!"_PixelPacket", !67, i64 0, !67, i64 2, !67, i64 4, !67, i64 6}
!88 = !{!"_ChromaticityInfo", !89, i64 0, !89, i64 24, !89, i64 48, !89, i64 72}
!89 = !{!"_PrimaryInfo", !42, i64 0, !42, i64 8, !42, i64 16}
!90 = !{!"_RectangleInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!91 = !{!"_ErrorInfo", !42, i64 0, !42, i64 8, !42, i64 16}
!92 = !{!"_TimerInfo", !93, i64 0, !93, i64 24, !40, i64 48, !43, i64 56}
!93 = !{!"_Timer", !42, i64 0, !42, i64 8, !42, i64 16}
!94 = !{!"_ExceptionInfo", !40, i64 0, !40, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !43, i64 48}
!95 = !{!"_ProfileInfo", !35, i64 0, !43, i64 8, !35, i64 16, !43, i64 24}
!96 = !{!"long long", !36, i64 0}
!97 = !{!86, !40, i64 32}
!98 = !{!87, !67, i64 4}
!99 = !{!87, !67, i64 0}
!100 = !{!87, !67, i64 2}
!101 = !{!87, !67, i64 6}
!102 = !{!86, !40, i64 4}
!103 = !{!86, !40, i64 12976}
!104 = !{!86, !43, i64 48}
!105 = !{!86, !43, i64 40}
!106 = !{i32 0, i32 2}
!107 = distinct !{!107, !49, !50}
!108 = distinct !{!108, !49, !50}
!109 = distinct !{!109, !49, !50}
!110 = !{!86, !35, i64 568}
!111 = !{!86, !35, i64 576}
!112 = distinct !{!112, !49, !50}
!113 = !{!41, !42, i64 16}
!114 = distinct !{!114, !49, !50}
!115 = distinct !{!115, !49, !50}
!116 = distinct !{!116, !49, !50}
!117 = !{!118, !40, i64 4}
!118 = !{!"_LongPixelPacket", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16}
!119 = !{!118, !40, i64 8}
!120 = !{!118, !40, i64 0}
!121 = distinct !{!121, !49, !50}
!122 = distinct !{!122, !49, !50}
!123 = !{!118, !40, i64 12}
!124 = distinct !{!124, !49, !50}
!125 = distinct !{!125, !49, !50}
!126 = distinct !{!126, !49, !50}
!127 = distinct !{!127, !49, !50}
!128 = !{!129, !42, i64 0}
!129 = !{!"_GeometryInfo", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32}
!130 = !{!129, !42, i64 8}
!131 = !{!129, !42, i64 16}
!132 = !{!129, !42, i64 24}
!133 = !{!129, !42, i64 32}
!134 = !{!86, !43, i64 56}
!135 = distinct !{!135, !49, !50}
!136 = distinct !{!136, !49, !50}
!137 = distinct !{!137, !49, !50}
!138 = distinct !{!138, !49, !50}
!139 = distinct !{!139, !49, !50}
