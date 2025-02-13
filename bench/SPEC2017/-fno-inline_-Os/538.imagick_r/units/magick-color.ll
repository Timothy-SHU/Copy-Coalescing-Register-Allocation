; ModuleID = 'magick/color.c'
source_filename = "magick/color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ColorMapInfo = type { ptr, i8, i8, i8, float, i64 }
%struct._ColorInfo = type { ptr, ptr, i32, %struct._MagickPixelPacket, i32, i32, ptr, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ColorComponentGenesis() local_unnamed_addr #0 {
  %1 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @AllocateSemaphoreInfo() #18
  store ptr %4, ptr @color_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  ret i32 1
}

; Function Attrs: optsize
declare ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ColorComponentTerminus() local_unnamed_addr #0 {
  %1 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @color_semaphore) #18
  %4 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @LockSemaphoreInfo(ptr noundef %6) #18
  %7 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @DestroyLinkedList(ptr noundef nonnull %7, ptr noundef nonnull @DestroyColorElement) #18
  store ptr %10, ptr @color_cache, align 8, !tbaa !34
  br label %11

11:                                               ; preds = %9, %5
  %12 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %12) #18
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @color_semaphore) #18
  ret void
}

; Function Attrs: optsize
declare void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @DestroyColorElement(ptr noundef %0) #0 !PGOFuncName !38 {
  %2 = getelementptr inbounds %struct._ColorInfo, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @DestroyString(ptr noundef nonnull %6) #18
  store ptr %9, ptr %0, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct._ColorInfo, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @DestroyString(ptr noundef nonnull %12) #18
  store ptr %15, ptr %11, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %10, %14, %1
  %17 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %0) #18
  ret ptr null
}

; Function Attrs: optsize
declare void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetColorCompliance(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #19
  %5 = tail call fastcc i32 @IsColorCacheInstantiated(ptr noundef %2) #20, !range !48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %3
  store i8 0, ptr %4, align 16, !tbaa !49
  %8 = icmp eq ptr %0, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %7
  %10 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef 4096) #18
  %11 = load i8, ptr %4, align 16, !tbaa !49
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @__ctype_b_loc() #21
  br label %15

15:                                               ; preds = %13, %28
  %16 = phi i8 [ %11, %13 ], [ %31, %28 ]
  %17 = phi ptr [ %4, %13 ], [ %30, %28 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !34
  %19 = zext i8 %16 to i64
  %20 = getelementptr inbounds i16, ptr %18, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = and i16 %21, 8192
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  %26 = call i64 @CopyMagickString(ptr noundef nonnull %17, ptr noundef nonnull %25, i64 noundef 4096) #18
  %27 = getelementptr inbounds i8, ptr %17, i64 -1
  br label %28

28:                                               ; preds = %15, %24
  %29 = phi ptr [ %17, %15 ], [ %27, %24 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !49
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %15, !llvm.loop !52

33:                                               ; preds = %28, %7, %9
  %34 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  call void @LockSemaphoreInfo(ptr noundef %34) #18
  %35 = load ptr, ptr @color_cache, align 8, !tbaa !34
  call void @ResetLinkedListIterator(ptr noundef %35) #18
  %36 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %37 = call ptr @GetNextValueInLinkedList(ptr noundef %36) #18
  br i1 %8, label %64, label %38

38:                                               ; preds = %33
  %39 = call i32 @LocaleCompare(ptr noundef nonnull %0, ptr noundef nonnull @.str) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %38
  %42 = icmp eq ptr %37, null
  br i1 %42, label %58, label %43

43:                                               ; preds = %41, %54
  %44 = phi ptr [ %56, %54 ], [ %37, %41 ]
  %45 = getelementptr inbounds %struct._ColorInfo, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !54
  %47 = and i32 %46, %1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct._ColorInfo, ptr %44, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = call i32 @LocaleCompare(ptr noundef nonnull %4, ptr noundef %51) #18
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49, %43
  %55 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %56 = call ptr @GetNextValueInLinkedList(ptr noundef %55) #18
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %43, !llvm.loop !55

58:                                               ; preds = %54, %41
  %59 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1046, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #18
  br label %64

60:                                               ; preds = %49
  %61 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %62 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %61, ptr noundef nonnull %44) #18
  %63 = call i32 @InsertValueInLinkedList(ptr noundef %61, i64 noundef 0, ptr noundef %62) #18
  br label %64

64:                                               ; preds = %58, %60, %33, %38
  %65 = phi ptr [ %37, %38 ], [ %37, %33 ], [ %44, %60 ], [ null, %58 ]
  %66 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  call void @UnlockSemaphoreInfo(ptr noundef %66) #18
  br label %67

67:                                               ; preds = %64, %3
  %68 = phi ptr [ null, %3 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #19
  ret ptr %68
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @IsColorCacheInstantiated(ptr noundef %0) unnamed_addr #0 !PGOFuncName !56 {
  %2 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @color_semaphore) #18
  %8 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  tail call void @LockSemaphoreInfo(ptr noundef %10) #18
  %11 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @AcquireColorCache(ptr noundef %0) #20
  store ptr %14, ptr @color_cache, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %13, %9
  %16 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %16) #18
  %17 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %18 = icmp ne ptr %17, null
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ 1, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: optsize
declare void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetColorInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @GetColorCompliance(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ConcatenateColorComponent(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #19
  switch i32 %1, label %27 [
    i32 1, label %6
    i32 2, label %10
    i32 4, label %14
    i32 8, label %18
    i32 32, label %23
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %8 = load float, ptr %7, align 8, !tbaa !57
  %9 = fpext float %8 to double
  br label %27

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %12 = load float, ptr %11, align 4, !tbaa !58
  %13 = fpext float %12 to double
  br label %27

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %16 = load float, ptr %15, align 8, !tbaa !59
  %17 = fpext float %16 to double
  br label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %20 = load float, ptr %19, align 4, !tbaa !60
  %21 = fsub float 6.553500e+04, %20
  %22 = fpext float %21 to double
  br label %27

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %25 = load float, ptr %24, align 8, !tbaa !61
  %26 = fpext float %25 to double
  br label %27

27:                                               ; preds = %4, %23, %18, %14, %10, %6
  %28 = phi double [ 0.000000e+00, %4 ], [ %26, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %10 ], [ %9, %6 ]
  switch i32 %2, label %32 [
    i32 0, label %29
    i32 1, label %53
  ]

29:                                               ; preds = %27
  %30 = tail call i32 @GetMagickPrecision() #18
  %31 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %30, double noundef %28) #18
  br label %80

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !62
  %35 = icmp ugt i64 %34, 16
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = fptrunc double %28 to float
  %38 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %37) #20
  %39 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %38) #20
  %40 = zext i32 %39 to i64
  %41 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.6, i64 noundef %40) #18
  br label %80

42:                                               ; preds = %32
  %43 = icmp ugt i64 %34, 8
  %44 = fptrunc double %28 to float
  %45 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %44) #20
  br i1 %43, label %46, label %49

46:                                               ; preds = %42
  %47 = zext i16 %45 to i32
  %48 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %47) #18
  br label %80

49:                                               ; preds = %42
  %50 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %45) #20
  %51 = zext i8 %50 to i32
  %52 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %51) #18
  br label %80

53:                                               ; preds = %27
  %54 = icmp eq i32 %1, 8
  br i1 %54, label %55, label %59

55:                                               ; preds = %53
  %56 = tail call i32 @GetMagickPrecision() #18
  %57 = fmul double %28, 0x3EF0001000100010
  %58 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %56, double noundef %57) #18
  br label %80

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !63
  switch i32 %61, label %66 [
    i32 24, label %62
    i32 32, label %62
    i32 14, label %62
    i32 30, label %62
    i32 15, label %62
    i32 31, label %62
    i32 16, label %62
  ]

62:                                               ; preds = %59, %59, %59, %59, %59, %59, %59
  %63 = tail call i32 @GetMagickPrecision() #18
  %64 = fmul double %28, 0x3F59001900190019
  %65 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %63, double noundef %64) #18
  br label %80

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 4
  %68 = load i64, ptr %67, align 8, !tbaa !62
  %69 = icmp ugt i64 %68, 8
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = tail call i32 @GetMagickPrecision() #18
  %72 = fmul double %28, 0x3F59001900190019
  %73 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %71, double noundef %72) #18
  br label %80

74:                                               ; preds = %66
  %75 = fptrunc double %28 to float
  %76 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %75) #20
  %77 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %76) #20
  %78 = zext i8 %77 to i32
  %79 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %78) #18
  br label %80

80:                                               ; preds = %74, %70, %62, %55, %49, %46, %36, %29
  %81 = call i64 @ConcatenateMagickString(ptr noundef %3, ptr noundef nonnull %5, i64 noundef 4096) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #19
  ret void
}

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %0) unnamed_addr #4 !PGOFuncName !64 {
  %2 = zext i16 %0 to i32
  %3 = mul nuw i32 %2, 65537
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #4 !PGOFuncName !65 {
  %2 = fcmp ugt float %0, 0.000000e+00
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 6.553500e+04
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = fadd float %0, 5.000000e-01
  %7 = fptoui float %6 to i16
  br label %8

8:                                                ; preds = %3, %1, %5
  %9 = phi i16 [ %7, %5 ], [ 0, %1 ], [ -1, %3 ]
  ret i16 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %0) unnamed_addr #4 !PGOFuncName !66 {
  %2 = zext i16 %0 to i64
  %3 = add nuw nsw i64 %2, 128
  %4 = lshr i64 %3, 8
  %5 = sub nsw i64 %3, %4
  %6 = lshr i64 %5, 8
  %7 = trunc i64 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetColorInfoList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1284, ptr noundef nonnull @.str.11, ptr noundef %0) #18
  store i64 0, ptr %1, align 8, !tbaa !67
  %5 = tail call ptr @GetColorInfo(ptr noundef nonnull @.str, ptr noundef %2) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #18
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #18
  %15 = load ptr, ptr @color_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #18
  %16 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %33
  %20 = phi i64 [ %34, %33 ], [ 0, %13 ]
  %21 = phi ptr [ %36, %33 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !68
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #18
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
  %36 = tail call ptr @GetNextValueInLinkedList(ptr noundef %35) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %19, !llvm.loop !69

38:                                               ; preds = %33, %13
  %39 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %40 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %40) #18
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %39, i64 noundef 8, ptr noundef nonnull @ColorInfoCompare) #18
  %41 = getelementptr inbounds ptr, ptr %11, i64 %39
  store ptr null, ptr %41, align 8, !tbaa !34
  store i64 %39, ptr %1, align 8, !tbaa !67
  br label %42

42:                                               ; preds = %7, %3, %38
  %43 = phi ptr [ %11, %38 ], [ null, %3 ], [ null, %7 ]
  ret ptr %43
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ColorInfoCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !70 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = tail call i32 @LocaleCompare(ptr noundef %4, ptr noundef %6) #18
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
  %21 = tail call i32 @LocaleCompare(ptr noundef %19, ptr noundef %20) #18
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @GetColorList(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1377, ptr noundef nonnull @.str.11, ptr noundef %0) #18
  store i64 0, ptr %1, align 8, !tbaa !67
  %5 = tail call ptr @GetColorInfo(ptr noundef nonnull @.str, ptr noundef %2) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %9 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %8) #18
  %10 = add i64 %9, 1
  %11 = tail call ptr @AcquireQuantumMemory(i64 noundef %10, i64 noundef 8) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @LockSemaphoreInfo(ptr noundef %14) #18
  %15 = load ptr, ptr @color_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %15) #18
  %16 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %17 = tail call ptr @GetNextValueInLinkedList(ptr noundef %16) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %13, %35
  %20 = phi i64 [ %36, %35 ], [ 0, %13 ]
  %21 = phi ptr [ %38, %35 ], [ %17, %13 ]
  %22 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !68
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct._ColorInfo, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = tail call i32 @GlobExpression(ptr noundef %27, ptr noundef %0, i32 noundef 0) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %26, align 8, !tbaa !47
  %32 = tail call ptr @ConstantString(ptr noundef %31) #18
  %33 = add nsw i64 %20, 1
  %34 = getelementptr inbounds ptr, ptr %11, i64 %20
  store ptr %32, ptr %34, align 8, !tbaa !34
  br label %35

35:                                               ; preds = %30, %25, %19
  %36 = phi i64 [ %33, %30 ], [ %20, %25 ], [ %20, %19 ]
  %37 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %38 = tail call ptr @GetNextValueInLinkedList(ptr noundef %37) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %19, !llvm.loop !71

40:                                               ; preds = %35, %13
  %41 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %42 = load ptr, ptr @color_semaphore, align 8, !tbaa !34
  tail call void @UnlockSemaphoreInfo(ptr noundef %42) #18
  tail call void @qsort(ptr noundef nonnull %11, i64 noundef %41, i64 noundef 8, ptr noundef nonnull @ColorCompare) #18
  %43 = getelementptr inbounds ptr, ptr %11, i64 %41
  store ptr null, ptr %43, align 8, !tbaa !34
  store i64 %41, ptr %1, align 8, !tbaa !67
  br label %44

44:                                               ; preds = %7, %3, %40
  %45 = phi ptr [ %11, %40 ], [ null, %3 ], [ null, %7 ]
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ColorCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !72 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @LocaleCompare(ptr noundef %3, ptr noundef %4) #18
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @GetColorTuple(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #19
  %5 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1512, ptr noundef nonnull @.str.11, ptr noundef %2) #18
  store i8 0, ptr %2, align 1, !tbaa !49
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, i64 noundef 4096) #18
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #20
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #20
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #20
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !63
  %11 = icmp eq i32 %10, 12
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull %2) #20
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !73
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %106, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !60
  %20 = fcmp une float %19, 0.000000e+00
  br i1 %20, label %21, label %106

21:                                               ; preds = %17
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull %2) #20
  br label %106

22:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !74
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !62
  %25 = icmp ugt i64 %24, 8
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !63
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !73
  br label %83

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 5
  %33 = load float, ptr %32, align 8, !tbaa !57
  %34 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %33) #20
  %35 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %34) #20
  %36 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %35) #20
  %37 = uitofp i16 %36 to float
  %38 = fcmp oeq float %33, %37
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 6
  %40 = load float, ptr %39, align 4, !tbaa !58
  %41 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %40) #20
  %42 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %41) #20
  %43 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %42) #20
  %44 = uitofp i16 %43 to float
  %45 = fcmp oeq float %40, %44
  %46 = and i1 %38, %45
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 7
  %48 = load float, ptr %47, align 8, !tbaa !59
  %49 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %48) #20
  %50 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %49) #20
  %51 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %50) #20
  %52 = uitofp i16 %51 to float
  %53 = fcmp oeq float %48, %52
  %54 = and i1 %46, %53
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !63
  %57 = icmp eq i32 %56, 12
  br i1 %57, label %67, label %58

58:                                               ; preds = %31
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 9
  %60 = load float, ptr %59, align 8, !tbaa !61
  %61 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %60) #20
  %62 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %61) #20
  %63 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %62) #20
  %64 = uitofp i16 %63 to float
  %65 = fcmp oeq float %60, %64
  %66 = and i1 %54, %65
  br label %67

67:                                               ; preds = %58, %31
  %68 = phi i1 [ %66, %58 ], [ %54, %31 ]
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !73
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct._MagickPixelPacket, ptr %4, i64 0, i32 8
  %74 = load float, ptr %73, align 4, !tbaa !60
  %75 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %74) #20
  %76 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %75) #20
  %77 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %76) #20
  %78 = uitofp i16 %77 to float
  %79 = fcmp oeq float %74, %78
  %80 = and i1 %68, %79
  br i1 %80, label %82, label %83

81:                                               ; preds = %67
  br i1 %68, label %82, label %83

82:                                               ; preds = %72, %81
  store i64 8, ptr %23, align 8, !tbaa !62
  br label %83

83:                                               ; preds = %26, %72, %81, %82
  %84 = phi i32 [ %30, %26 ], [ 1, %72 ], [ 0, %81 ], [ %70, %82 ]
  %85 = phi i32 [ %28, %26 ], [ %56, %72 ], [ %56, %81 ], [ %56, %82 ]
  %86 = zext i32 %85 to i64
  %87 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %86) #18
  %88 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef %87, i64 noundef 4096) #18
  %89 = icmp eq i32 %84, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %83
  %91 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, i64 noundef 4096) #18
  br label %92

92:                                               ; preds = %90, %83
  %93 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.14, i64 noundef 4096) #18
  %94 = icmp eq i32 %85, 2
  call void @ConcatenateColorComponent(ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %2) #20
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #18
  call void @ConcatenateColorComponent(ptr noundef nonnull %4, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %2) #20
  %97 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #18
  call void @ConcatenateColorComponent(ptr noundef nonnull %4, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %2) #20
  %98 = icmp eq i32 %85, 12
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #18
  call void @ConcatenateColorComponent(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %2) #20
  br label %101

101:                                              ; preds = %92, %99, %95
  br i1 %89, label %104, label %102

102:                                              ; preds = %101
  %103 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i64 noundef 4096) #18
  call void @ConcatenateColorComponent(ptr noundef nonnull %4, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %2) #20
  br label %104

104:                                              ; preds = %102, %101
  %105 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, i64 noundef 4096) #18
  tail call void @LocaleLower(ptr noundef nonnull %2) #18
  br label %106

106:                                              ; preds = %13, %17, %21, %104
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ConcatentateHexColorComponent(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !78 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #19
  switch i32 %1, label %21 [
    i32 1, label %5
    i32 2, label %8
    i32 4, label %11
    i32 8, label %14
    i32 32, label %18
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %7 = load float, ptr %6, align 8, !tbaa !57
  br label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !58
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %13 = load float, ptr %12, align 8, !tbaa !59
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %16 = load float, ptr %15, align 4, !tbaa !60
  %17 = fsub float 6.553500e+04, %16
  br label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %20 = load float, ptr %19, align 8, !tbaa !61
  br label %21

21:                                               ; preds = %3, %18, %14, %11, %8, %5
  %22 = phi float [ 0.000000e+00, %3 ], [ %20, %18 ], [ %17, %14 ], [ %13, %11 ], [ %10, %8 ], [ %7, %5 ]
  %23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !62
  %25 = icmp ugt i64 %24, 32
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %22) #20
  %28 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %27) #20
  %29 = zext i32 %28 to i64
  %30 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.34, i64 noundef %29, i64 noundef %29) #18
  br label %47

31:                                               ; preds = %21
  %32 = icmp ugt i64 %24, 16
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %22) #20
  %35 = tail call fastcc i32 @ScaleQuantumToLong(i16 noundef zeroext %34) #20
  %36 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %35) #18
  br label %47

37:                                               ; preds = %31
  %38 = icmp ugt i64 %24, 8
  %39 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %22) #20
  br i1 %38, label %40, label %43

40:                                               ; preds = %37
  %41 = zext i16 %39 to i32
  %42 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.36, i32 noundef %41) #18
  br label %47

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @ScaleQuantumToChar(i16 noundef zeroext %39) #20
  %45 = zext i8 %44 to i32
  %46 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %45) #18
  br label %47

47:                                               ; preds = %43, %40, %33, %26
  %48 = call i64 @ConcatenateMagickString(ptr noundef %2, ptr noundef nonnull %4, i64 noundef 4096) #18
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %0) unnamed_addr #4 !PGOFuncName !79 {
  %2 = zext i8 %0 to i16
  %3 = mul nuw i16 %2, 257
  ret i16 %3
}

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @LocaleLower(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @IsColorSimilar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %5 = load double, ptr %4, align 8, !tbaa !80
  %6 = fcmp oeq double %5, 0.000000e+00
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !92
  %9 = icmp eq i32 %8, 0
  br i1 %6, label %10, label %17

10:                                               ; preds = %3
  br i1 %9, label %15, label %11

11:                                               ; preds = %10
  %12 = tail call fastcc double @MagickMax(double noundef %5) #20
  %13 = fmul double %12, %12
  %14 = fptrunc double %13 to float
  br label %21

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @IsColorEqual(ptr noundef %1, ptr noundef %2) #20, !range !48
  br label %93

17:                                               ; preds = %3
  %18 = tail call fastcc double @MagickMax(double noundef %5) #20
  %19 = fmul double %18, %18
  %20 = fptrunc double %19 to float
  br i1 %9, label %46, label %21

21:                                               ; preds = %11, %17
  %22 = phi float [ %14, %11 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %24 = load i16, ptr %23, align 2, !tbaa !93
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !93
  %28 = zext i16 %27 to i32
  %29 = sub nsw i32 %25, %28
  %30 = sitofp i32 %29 to float
  %31 = fmul float %30, %30
  %32 = fcmp ogt float %31, %22
  br i1 %32, label %93, label %33

33:                                               ; preds = %21
  %34 = xor i16 %24, -1
  %35 = uitofp i16 %34 to double
  %36 = fmul double %35, 0x3EF0001000100010
  %37 = fptrunc double %36 to float
  %38 = xor i16 %27, -1
  %39 = uitofp i16 %38 to double
  %40 = fmul double %39, 0x3EF0001000100010
  %41 = fpext float %37 to double
  %42 = fmul double %40, %41
  %43 = fptrunc double %42 to float
  %44 = fpext float %43 to double
  %45 = fcmp ugt double %44, 1.000000e-15
  br i1 %45, label %46, label %93

46:                                               ; preds = %33, %17
  %47 = phi float [ %22, %33 ], [ %20, %17 ]
  %48 = phi float [ %31, %33 ], [ 0.000000e+00, %17 ]
  %49 = phi float [ %43, %33 ], [ 1.000000e+00, %17 ]
  %50 = fmul float %48, 3.000000e+00
  %51 = fmul float %47, 3.000000e+00
  %52 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %53 = load i16, ptr %52, align 2, !tbaa !94
  %54 = uitofp i16 %53 to float
  %55 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  %56 = load i16, ptr %55, align 2, !tbaa !94
  %57 = uitofp i16 %56 to float
  %58 = fsub float %54, %57
  %59 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !95
  switch i32 %60, label %67 [
    i32 24, label %61
    i32 14, label %61
    i32 15, label %61
    i32 16, label %61
  ]

61:                                               ; preds = %46, %46, %46, %46
  %62 = tail call float @llvm.fabs.f32(float %58)
  %63 = fcmp ogt float %62, 3.276700e+04
  %64 = fadd float %58, -6.553500e+04
  %65 = select i1 %63, float %64, float %58
  %66 = fmul float %65, 2.000000e+00
  br label %67

67:                                               ; preds = %46, %61
  %68 = phi float [ %66, %61 ], [ %58, %46 ]
  %69 = fmul float %49, %68
  %70 = tail call float @llvm.fmuladd.f32(float %69, float %68, float %50)
  %71 = fcmp ogt float %70, %51
  br i1 %71, label %93, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %74 = load i16, ptr %73, align 2, !tbaa !96
  %75 = uitofp i16 %74 to float
  %76 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !96
  %78 = uitofp i16 %77 to float
  %79 = fsub float %75, %78
  %80 = fmul float %49, %79
  %81 = tail call float @llvm.fmuladd.f32(float %80, float %79, float %70)
  %82 = fcmp ogt float %81, %51
  br i1 %82, label %93, label %83

83:                                               ; preds = %72
  %84 = load i16, ptr %1, align 2, !tbaa !97
  %85 = uitofp i16 %84 to float
  %86 = load i16, ptr %2, align 2, !tbaa !97
  %87 = uitofp i16 %86 to float
  %88 = fsub float %85, %87
  %89 = fmul float %49, %88
  %90 = tail call float @llvm.fmuladd.f32(float %89, float %88, float %81)
  %91 = fcmp ule float %90, %51
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %83, %72, %67, %33, %21, %15
  %94 = phi i32 [ %16, %15 ], [ 0, %21 ], [ 1, %33 ], [ 0, %67 ], [ 0, %72 ], [ %92, %83 ]
  ret i32 %94
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsColorEqual(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !94
  %5 = uitofp i16 %4 to float
  %6 = load i16, ptr %0, align 2, !tbaa !97
  %7 = uitofp i16 %6 to float
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !94
  %10 = uitofp i16 %9 to float
  %11 = fsub float %5, %10
  %12 = tail call float @llvm.fabs.f32(float %11)
  %13 = fpext float %12 to double
  %14 = fcmp olt double %13, 1.000000e-15
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct._PixelPacket, ptr %0, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !96
  %18 = uitofp i16 %17 to float
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !96
  %21 = uitofp i16 %20 to float
  %22 = fsub float %18, %21
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fpext float %23 to double
  %25 = fcmp olt double %24, 1.000000e-15
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load i16, ptr %1, align 2, !tbaa !97
  %28 = uitofp i16 %27 to float
  %29 = fsub float %7, %28
  %30 = tail call float @llvm.fabs.f32(float %29)
  %31 = fpext float %30 to double
  %32 = fcmp olt double %31, 1.000000e-15
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %15, %2
  br label %34

34:                                               ; preds = %26, %33
  %35 = phi i32 [ 0, %33 ], [ 1, %26 ]
  ret i32 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0) unnamed_addr #4 !PGOFuncName !99 {
  %2 = fcmp ogt double %0, 0x3FE6A09E667F3BCD
  %3 = select i1 %2, double %0, double 0x3FE6A09E667F3BCD
  ret double %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @IsImageSimilar(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #19
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !100
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1799, ptr noundef nonnull @.str.11, ptr noundef nonnull %12) #18
  br label %14

14:                                               ; preds = %11, %5
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %7) #18
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %6) #18
  %15 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #18
  %16 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %4) #18
  %17 = load i64, ptr %3, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !101
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %21, label %111

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  br label %26

26:                                               ; preds = %21, %102
  %27 = phi i64 [ %17, %21 ], [ %105, %102 ]
  %28 = phi i32 [ 1, %21 ], [ %104, %102 ]
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, ptr %2, align 8, !tbaa !67
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi i64 [ %31, %30 ], [ 0, %26 ]
  %34 = load i64, ptr %22, align 8, !tbaa !102
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %89

36:                                               ; preds = %32
  %37 = load i64, ptr %23, align 8, !tbaa !101
  br label %38

38:                                               ; preds = %36, %86
  %39 = phi i64 [ %81, %86 ], [ %34, %36 ]
  %40 = phi i64 [ %82, %86 ], [ %37, %36 ]
  %41 = phi i64 [ %83, %86 ], [ %37, %36 ]
  %42 = phi i64 [ %87, %86 ], [ %33, %36 ]
  %43 = icmp sgt i64 %41, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %38
  %45 = load i64, ptr %24, align 8, !tbaa !102
  br label %46

46:                                               ; preds = %44, %74
  %47 = phi i64 [ %70, %74 ], [ %40, %44 ]
  %48 = phi i64 [ %71, %74 ], [ %45, %44 ]
  %49 = phi i64 [ %75, %74 ], [ 0, %44 ]
  %50 = icmp sgt i64 %48, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = add nsw i64 %49, %27
  br label %53

53:                                               ; preds = %51, %63
  %54 = phi i64 [ 0, %51 ], [ %64, %63 ]
  %55 = add nsw i64 %54, %42
  %56 = call ptr @GetCacheViewVirtualPixels(ptr noundef %15, i64 noundef %55, i64 noundef %52, i64 noundef 1, i64 noundef 1, ptr noundef %4) #23
  %57 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %15) #18
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %56, ptr noundef %57, ptr noundef nonnull %7) #20
  %58 = call ptr @GetCacheViewVirtualPixels(ptr noundef %16, i64 noundef %54, i64 noundef %49, i64 noundef 1, i64 noundef 1, ptr noundef %4) #23
  %59 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %16) #18
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %58, ptr noundef %59, ptr noundef nonnull %6) #20
  %60 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %7, ptr noundef nonnull %6) #20, !range !48
  %61 = icmp eq i32 %60, 0
  %62 = load i64, ptr %24, align 8, !tbaa !102
  br i1 %61, label %66, label %63

63:                                               ; preds = %53
  %64 = add nuw nsw i64 %54, 1
  %65 = icmp slt i64 %64, %62
  br i1 %65, label %53, label %66, !llvm.loop !103

66:                                               ; preds = %53, %63
  %67 = phi i64 [ %64, %63 ], [ %54, %53 ]
  %68 = load i64, ptr %23, align 8, !tbaa !101
  br label %69

69:                                               ; preds = %66, %46
  %70 = phi i64 [ %47, %46 ], [ %68, %66 ]
  %71 = phi i64 [ %48, %46 ], [ %62, %66 ]
  %72 = phi i64 [ 0, %46 ], [ %67, %66 ]
  %73 = icmp slt i64 %72, %71
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = add nuw nsw i64 %49, 1
  %76 = icmp slt i64 %75, %70
  br i1 %76, label %46, label %77, !llvm.loop !104

77:                                               ; preds = %69, %74
  %78 = phi i64 [ %75, %74 ], [ %49, %69 ]
  %79 = load i64, ptr %22, align 8, !tbaa !102
  br label %80

80:                                               ; preds = %77, %38
  %81 = phi i64 [ %39, %38 ], [ %79, %77 ]
  %82 = phi i64 [ %40, %38 ], [ %70, %77 ]
  %83 = phi i64 [ %41, %38 ], [ %70, %77 ]
  %84 = phi i64 [ 0, %38 ], [ %78, %77 ]
  %85 = icmp eq i64 %84, %83
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = add nsw i64 %42, 1
  %88 = icmp slt i64 %87, %81
  br i1 %88, label %38, label %89, !llvm.loop !105

89:                                               ; preds = %86, %80, %32
  %90 = phi i64 [ %34, %32 ], [ %81, %80 ], [ %81, %86 ]
  %91 = phi i64 [ %33, %32 ], [ %87, %86 ], [ %42, %80 ]
  %92 = icmp slt i64 %91, %90
  br i1 %92, label %107, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %25, align 8, !tbaa !106
  %95 = icmp eq ptr %94, null
  %96 = load i64, ptr %18, align 8, !tbaa !101
  br i1 %95, label %102, label %97

97:                                               ; preds = %93
  %98 = call fastcc i32 @SetImageProgress(ptr noundef nonnull %0, i64 noundef %27, i64 noundef %96) #20
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 0, i32 %28
  %101 = load i64, ptr %18, align 8, !tbaa !101
  br label %102

102:                                              ; preds = %93, %97
  %103 = phi i64 [ %101, %97 ], [ %96, %93 ]
  %104 = phi i32 [ %100, %97 ], [ %28, %93 ]
  %105 = add nsw i64 %27, 1
  %106 = icmp slt i64 %105, %103
  br i1 %106, label %26, label %107, !llvm.loop !107

107:                                              ; preds = %89, %102
  %108 = phi i32 [ %104, %102 ], [ %28, %89 ]
  %109 = phi i64 [ %105, %102 ], [ %27, %89 ]
  %110 = icmp eq i32 %108, 0
  br label %111

111:                                              ; preds = %107, %14
  %112 = phi i1 [ false, %14 ], [ %110, %107 ]
  %113 = phi i64 [ %17, %14 ], [ %109, %107 ]
  %114 = phi i64 [ 0, %14 ], [ %91, %107 ]
  %115 = call ptr @DestroyCacheView(ptr noundef %16) #18
  %116 = call ptr @DestroyCacheView(ptr noundef %15) #18
  store i64 %114, ptr %2, align 8, !tbaa !67
  store i64 %113, ptr %3, align 8, !tbaa !67
  br i1 %112, label %121, label %117

117:                                              ; preds = %111
  %118 = load i64, ptr %18, align 8, !tbaa !101
  %119 = icmp slt i64 %113, %118
  %120 = zext i1 %119 to i32
  br label %121

121:                                              ; preds = %111, %117
  %122 = phi i32 [ %120, %117 ], [ 0, %111 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #19
  ret i32 %122
}

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !PGOFuncName !108 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !50
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !95
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !50
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !61
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @IsMagickColorSimilar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 3
  %4 = load double, ptr %3, align 8, !tbaa !109
  %5 = fcmp oeq double %4, 0.000000e+00
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 3
  %7 = load double, ptr %6, align 8, !tbaa !109
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %5, label %9, label %15

9:                                                ; preds = %2
  br i1 %8, label %10, label %12

10:                                               ; preds = %9
  %11 = tail call fastcc i32 @IsMagickColorEqual(ptr noundef nonnull %0, ptr noundef nonnull %1) #20, !range !48
  br label %153

12:                                               ; preds = %9
  %13 = tail call fastcc double @MagickMax(double noundef %7) #20
  %14 = fmul double %13, %13
  br label %22

15:                                               ; preds = %2
  %16 = tail call fastcc double @MagickMax(double noundef %4) #20
  br i1 %8, label %17, label %19

17:                                               ; preds = %15
  %18 = fmul double %16, %16
  br label %22

19:                                               ; preds = %15
  %20 = tail call fastcc double @MagickMax(double noundef %7) #20
  %21 = fmul double %16, %20
  br label %22

22:                                               ; preds = %17, %19, %12
  %23 = phi double [ %14, %12 ], [ %18, %17 ], [ %21, %19 ]
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !73
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !73
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %82, label %38

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %34 = load float, ptr %33, align 4, !tbaa !60
  %35 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !73
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %44

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %40 = load float, ptr %39, align 4, !tbaa !60
  %41 = fsub float 0.000000e+00, %40
  %42 = fmul float %41, %41
  %43 = fcmp ogt float %42, %24
  br i1 %43, label %153, label %66

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %46 = load float, ptr %45, align 4, !tbaa !60
  %47 = fsub float %34, %46
  %48 = fmul float %47, %47
  %49 = fcmp ogt float %48, %24
  br i1 %49, label %153, label %58

50:                                               ; preds = %32
  %51 = fmul float %34, %34
  %52 = fcmp ogt float %51, %24
  br i1 %52, label %153, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %55 = load float, ptr %54, align 4, !tbaa !60
  %56 = fsub float 6.553500e+04, %55
  %57 = fpext float %56 to double
  br label %74

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %60 = load float, ptr %59, align 4, !tbaa !60
  %61 = fsub float 6.553500e+04, %60
  %62 = fpext float %61 to double
  %63 = fmul double %62, 0x3EF0001000100010
  %64 = fptrunc double %63 to float
  %65 = fpext float %64 to double
  br label %66

66:                                               ; preds = %38, %58
  %67 = phi double [ %65, %58 ], [ 1.000000e+00, %38 ]
  %68 = phi float [ %48, %58 ], [ %42, %38 ]
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %70 = load float, ptr %69, align 4, !tbaa !60
  %71 = fsub float 6.553500e+04, %70
  %72 = fpext float %71 to double
  %73 = fmul double %72, 0x3EF0001000100010
  br label %74

74:                                               ; preds = %53, %66
  %75 = phi double [ 0x3EF0001000100010, %53 ], [ %67, %66 ]
  %76 = phi double [ %57, %53 ], [ %73, %66 ]
  %77 = phi float [ %51, %53 ], [ %68, %66 ]
  %78 = fmul double %76, %75
  %79 = fptrunc double %78 to float
  %80 = fpext float %79 to double
  %81 = fcmp ugt double %80, 1.000000e-15
  br i1 %81, label %82, label %153

82:                                               ; preds = %74, %28
  %83 = phi float [ %79, %74 ], [ 1.000000e+00, %28 ]
  %84 = phi float [ %77, %74 ], [ 0.000000e+00, %28 ]
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !63
  %87 = icmp eq i32 %86, 12
  br i1 %87, label %88, label %113

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %90 = load float, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %92 = load float, ptr %91, align 8, !tbaa !61
  %93 = fsub float %90, %92
  %94 = fmul float %93, %93
  %95 = tail call float @llvm.fmuladd.f32(float %94, float %83, float %84)
  %96 = fcmp ogt float %95, %24
  br i1 %96, label %153, label %97

97:                                               ; preds = %88
  %98 = fsub float 6.553500e+04, %90
  %99 = fpext float %98 to double
  %100 = fmul double %99, 0x3EF0001000100010
  %101 = fptrunc double %100 to float
  %102 = fmul float %83, %101
  %103 = fsub float 6.553500e+04, %92
  %104 = fpext float %103 to double
  %105 = fmul double %104, 0x3EF0001000100010
  %106 = fptrunc double %105 to float
  %107 = fmul float %102, %106
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %109 = load float, ptr %108, align 8, !tbaa !57
  %110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %111 = load float, ptr %110, align 8, !tbaa !57
  %112 = fsub float %109, %111
  br label %125

113:                                              ; preds = %82
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %115 = load float, ptr %114, align 8, !tbaa !57
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %117 = load float, ptr %116, align 8, !tbaa !57
  %118 = fsub float %115, %117
  switch i32 %86, label %125 [
    i32 24, label %119
    i32 14, label %119
    i32 15, label %119
    i32 16, label %119
  ]

119:                                              ; preds = %113, %113, %113, %113
  %120 = tail call float @llvm.fabs.f32(float %118)
  %121 = fcmp ogt float %120, 3.276700e+04
  %122 = fadd float %118, -6.553500e+04
  %123 = select i1 %121, float %122, float %118
  %124 = fmul float %123, 2.000000e+00
  br label %125

125:                                              ; preds = %97, %113, %119
  %126 = phi float [ %84, %119 ], [ %84, %113 ], [ %95, %97 ]
  %127 = phi float [ %83, %119 ], [ %83, %113 ], [ %107, %97 ]
  %128 = phi float [ %124, %119 ], [ %118, %113 ], [ %112, %97 ]
  %129 = fmul float %126, 3.000000e+00
  %130 = fmul float %24, 3.000000e+00
  %131 = fmul float %128, %128
  %132 = tail call float @llvm.fmuladd.f32(float %131, float %127, float %129)
  %133 = fcmp ogt float %132, %130
  br i1 %133, label %153, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %136 = load float, ptr %135, align 4, !tbaa !58
  %137 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %138 = load float, ptr %137, align 4, !tbaa !58
  %139 = fsub float %136, %138
  %140 = fmul float %139, %139
  %141 = tail call float @llvm.fmuladd.f32(float %140, float %127, float %132)
  %142 = fcmp ogt float %141, %130
  br i1 %142, label %153, label %143

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %145 = load float, ptr %144, align 8, !tbaa !59
  %146 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %147 = load float, ptr %146, align 8, !tbaa !59
  %148 = fsub float %145, %147
  %149 = fmul float %148, %148
  %150 = tail call float @llvm.fmuladd.f32(float %149, float %127, float %141)
  %151 = fcmp ule float %150, %130
  %152 = zext i1 %151 to i32
  br label %153

153:                                              ; preds = %44, %50, %143, %134, %125, %88, %74, %38, %10
  %154 = phi i32 [ %11, %10 ], [ 0, %38 ], [ 1, %74 ], [ 0, %88 ], [ 0, %125 ], [ 0, %134 ], [ %152, %143 ], [ 0, %50 ], [ 0, %44 ]
  ret i32 %154
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 !PGOFuncName !110 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %4, i64 noundef 4096, ptr noundef nonnull @.str.731, ptr noundef nonnull @.str.17, ptr noundef nonnull %9) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !106
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = call i32 %11(ptr noundef nonnull %4, i64 noundef %1, i64 noundef %2, ptr noundef %13) #18
  br label %15

15:                                               ; preds = %3, %8
  %16 = phi i32 [ %14, %8 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #19
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @IsMagickColorEqual(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !112 {
  %3 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = icmp eq i32 %7, 0
  br i1 %5, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 8
  %11 = load float, ptr %10, align 4, !tbaa !60
  br i1 %8, label %12, label %23

12:                                               ; preds = %9
  %13 = tail call float @llvm.fabs.f32(float %11)
  %14 = fpext float %13 to double
  %15 = fcmp ult double %14, 1.000000e-15
  br i1 %15, label %35, label %76

16:                                               ; preds = %2
  br i1 %8, label %35, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %19 = load float, ptr %18, align 4, !tbaa !60
  %20 = tail call float @llvm.fabs.f32(float %19)
  %21 = fpext float %20 to double
  %22 = fcmp ult double %21, 1.000000e-15
  br i1 %22, label %35, label %76

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !60
  %26 = fsub float %11, %25
  %27 = tail call float @llvm.fabs.f32(float %26)
  %28 = fpext float %27 to double
  %29 = fcmp ult double %28, 1.000000e-15
  br i1 %29, label %30, label %76

30:                                               ; preds = %23
  %31 = fadd float %11, -6.553500e+04
  %32 = tail call float @llvm.fabs.f32(float %31)
  %33 = fpext float %32 to double
  %34 = fcmp olt double %33, 1.000000e-15
  br i1 %34, label %76, label %35

35:                                               ; preds = %12, %17, %16, %30
  %36 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 5
  %37 = load float, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !57
  %40 = fsub float %37, %39
  %41 = tail call float @llvm.fabs.f32(float %40)
  %42 = fpext float %41 to double
  %43 = fcmp ult double %42, 1.000000e-15
  br i1 %43, label %44, label %76

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 6
  %46 = load float, ptr %45, align 4, !tbaa !58
  %47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %48 = load float, ptr %47, align 4, !tbaa !58
  %49 = fsub float %46, %48
  %50 = tail call float @llvm.fabs.f32(float %49)
  %51 = fpext float %50 to double
  %52 = fcmp ult double %51, 1.000000e-15
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 7
  %55 = load float, ptr %54, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %57 = load float, ptr %56, align 8, !tbaa !59
  %58 = fsub float %55, %57
  %59 = tail call float @llvm.fabs.f32(float %58)
  %60 = fpext float %59 to double
  %61 = fcmp ult double %60, 1.000000e-15
  br i1 %61, label %62, label %76

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !63
  %65 = icmp eq i32 %64, 12
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._MagickPixelPacket, ptr %0, i64 0, i32 9
  %68 = load float, ptr %67, align 8, !tbaa !61
  %69 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %70 = load float, ptr %69, align 8, !tbaa !61
  %71 = fsub float %68, %70
  %72 = tail call float @llvm.fabs.f32(float %71)
  %73 = fpext float %72 to double
  %74 = fcmp ult double %73, 1.000000e-15
  br i1 %74, label %75, label %76

75:                                               ; preds = %66, %62
  br label %76

76:                                               ; preds = %66, %53, %44, %35, %30, %23, %17, %12, %75
  %77 = phi i32 [ 1, %75 ], [ 0, %12 ], [ 0, %17 ], [ 0, %23 ], [ 1, %30 ], [ 0, %35 ], [ 0, %44 ], [ 0, %53 ], [ 0, %66 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @IsOpacitySimilar(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !93
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  %11 = load i16, ptr %10, align 2, !tbaa !93
  %12 = icmp eq i16 %9, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 31
  %15 = load double, ptr %14, align 8, !tbaa !80
  %16 = tail call fastcc double @MagickMax(double noundef %15) #20
  %17 = fmul double %16, %16
  %18 = fptrunc double %17 to float
  %19 = uitofp i16 %9 to float
  %20 = uitofp i16 %11 to float
  %21 = fsub float %19, %20
  %22 = fmul float %21, %21
  %23 = fcmp ule float %22, %18
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %13, %7, %3
  %26 = phi i32 [ 1, %3 ], [ 1, %7 ], [ %24, %13 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ListColorInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = icmp eq ptr %0, null
  %6 = load ptr, ptr @stdout, align 8
  %7 = select i1 %5, ptr %6, ptr %0
  %8 = call ptr @GetColorInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %4, ptr noundef %1) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8, !tbaa !67
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %10, %76
  %14 = phi i64 [ %77, %76 ], [ %11, %10 ]
  %15 = phi i64 [ %79, %76 ], [ 0, %10 ]
  %16 = phi ptr [ %78, %76 ], [ null, %10 ]
  %17 = getelementptr inbounds ptr, ptr %8, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct._ColorInfo, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %13
  %23 = icmp eq ptr %16, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %18, align 8, !tbaa !46
  %26 = call i32 @LocaleCompare(ptr noundef nonnull %16, ptr noundef %25) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %17, align 8, !tbaa !34
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %29, %28 ], [ %18, %22 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull %32) #18
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.19) #18
  %38 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.20) #18
  br label %39

39:                                               ; preds = %36, %24
  %40 = load ptr, ptr %17, align 8, !tbaa !34
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct._ColorInfo, ptr %40, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef %43) #18
  %45 = load ptr, ptr %17, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct._ColorInfo, ptr %45, i64 0, i32 3
  call void @GetColorTuple(ptr noundef nonnull %46, i32 noundef 0, ptr noundef nonnull %3) #20
  %47 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.22, ptr noundef nonnull %3) #18
  %48 = load ptr, ptr %17, align 8, !tbaa !34
  %49 = getelementptr inbounds %struct._ColorInfo, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !54
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %39
  %54 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.23) #18
  %55 = load ptr, ptr %17, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct._ColorInfo, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !54
  br label %58

58:                                               ; preds = %53, %39
  %59 = phi i32 [ %57, %53 ], [ %50, %39 ]
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.24) #18
  %64 = load ptr, ptr %17, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct._ColorInfo, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !54
  br label %67

67:                                               ; preds = %62, %58
  %68 = phi i32 [ %66, %62 ], [ %59, %58 ]
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.25) #18
  br label %73

73:                                               ; preds = %71, %67
  %74 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %7, ptr noundef nonnull @.str.26) #18
  %75 = load i64, ptr %4, align 8, !tbaa !67
  br label %76

76:                                               ; preds = %13, %73
  %77 = phi i64 [ %14, %13 ], [ %75, %73 ]
  %78 = phi ptr [ %16, %13 ], [ %41, %73 ]
  %79 = add nuw nsw i64 %15, 1
  %80 = icmp slt i64 %79, %77
  br i1 %80, label %13, label %81, !llvm.loop !113

81:                                               ; preds = %76, %10
  %82 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %8) #18
  %83 = call i32 @fflush(ptr noundef %7) #20
  br label %84

84:                                               ; preds = %2, %81
  %85 = phi i32 [ 1, %81 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #19
  ret i32 %85
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QueryColorCompliance(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #19
  %6 = call i32 @QueryMagickColorCompliance(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %3) #20, !range !48
  %7 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %8 = load float, ptr %7, align 4, !tbaa !60
  %9 = call fastcc zeroext i16 @ClampToQuantum(float noundef %8) #20
  %10 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %9, ptr %10, align 2, !tbaa !93
  %11 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !63
  %13 = icmp eq i32 %12, 12
  %14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %15 = load float, ptr %14, align 8, !tbaa !57
  br i1 %13, label %16, label %52

16:                                               ; preds = %4
  %17 = fpext float %15 to double
  %18 = fmul double %17, 0x3EF0001000100010
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %20 = load float, ptr %19, align 8, !tbaa !61
  %21 = fsub float 6.553500e+04, %20
  %22 = fpext float %21 to double
  %23 = fpext float %20 to double
  %24 = call double @llvm.fmuladd.f64(double %18, double %22, double %23)
  %25 = fptrunc double %24 to float
  %26 = fpext float %25 to double
  %27 = call fastcc double @MagickMin(double noundef 6.553500e+04, double noundef %26) #20
  %28 = fsub double 6.553500e+04, %27
  %29 = fptrunc double %28 to float
  %30 = call fastcc zeroext i16 @ClampToQuantum(float noundef %29) #20
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %32 = load float, ptr %31, align 4, !tbaa !58
  %33 = fpext float %32 to double
  %34 = fmul double %33, 0x3EF0001000100010
  %35 = call double @llvm.fmuladd.f64(double %34, double %22, double %23)
  %36 = fptrunc double %35 to float
  %37 = fpext float %36 to double
  %38 = call fastcc double @MagickMin(double noundef 6.553500e+04, double noundef %37) #20
  %39 = fsub double 6.553500e+04, %38
  %40 = fptrunc double %39 to float
  %41 = call fastcc zeroext i16 @ClampToQuantum(float noundef %40) #20
  %42 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %43 = load float, ptr %42, align 8, !tbaa !59
  %44 = fpext float %43 to double
  %45 = fmul double %44, 0x3EF0001000100010
  %46 = call double @llvm.fmuladd.f64(double %45, double %22, double %23)
  %47 = fptrunc double %46 to float
  %48 = fpext float %47 to double
  %49 = call fastcc double @MagickMin(double noundef 6.553500e+04, double noundef %48) #20
  %50 = fsub double 6.553500e+04, %49
  %51 = fptrunc double %50 to float
  br label %59

52:                                               ; preds = %4
  %53 = call fastcc zeroext i16 @ClampToQuantum(float noundef %15) #20
  %54 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 6
  %55 = load float, ptr %54, align 4, !tbaa !58
  %56 = call fastcc zeroext i16 @ClampToQuantum(float noundef %55) #20
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %58 = load float, ptr %57, align 8, !tbaa !59
  br label %59

59:                                               ; preds = %52, %16
  %60 = phi float [ %58, %52 ], [ %51, %16 ]
  %61 = phi i16 [ %53, %52 ], [ %30, %16 ]
  %62 = phi i16 [ %56, %52 ], [ %41, %16 ]
  %63 = call fastcc zeroext i16 @ClampToQuantum(float noundef %60) #20
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %61, ptr %64, align 2
  %65 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %62, ptr %65, align 2
  store i16 %63, ptr %2, align 2, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #19
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QueryMagickColorCompliance(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 16
  %6 = alloca %struct._LongPixelPacket, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca %struct._PixelPacket, align 2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2547, ptr noundef nonnull @.str.11, ptr noundef %0) #18
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef %2) #18
  %11 = icmp eq ptr %0, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i8, ptr %0, align 1, !tbaa !49
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi ptr [ @BackgroundColor, %15 ], [ %0, %12 ]
  %18 = tail call ptr @__ctype_b_loc() #21
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %17, %16 ], [ %28, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !49
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds i16, ptr %19, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !50
  %26 = and i16 %25, 8192
  %27 = icmp eq i16 %26, 0
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %27, label %29, label %20, !llvm.loop !114

29:                                               ; preds = %20
  %30 = icmp eq i8 %22, 35
  br i1 %30, label %31, label %171

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #19
  %32 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 20) #18
  %33 = load ptr, ptr %18, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i64 [ 0, %31 ], [ %43, %34 ]
  %36 = getelementptr inbounds i8, ptr %28, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !49
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i16, ptr %33, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = and i16 %40, 4096
  %42 = icmp eq i16 %41, 0
  %43 = add i64 %35, 1
  br i1 %42, label %44, label %34, !llvm.loop !115

44:                                               ; preds = %34
  %45 = urem i64 %35, 3
  %46 = udiv i64 %35, 3
  %47 = icmp eq i64 %45, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 1
  %50 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 2
  %51 = icmp ult i64 %35, 3
  %52 = load i32, ptr %49, align 4, !tbaa !116
  %53 = load i32, ptr %50, align 4, !tbaa !118
  br label %54

54:                                               ; preds = %48, %80
  %55 = phi i32 [ %81, %80 ], [ %53, %48 ]
  %56 = phi i32 [ %55, %80 ], [ %52, %48 ]
  %57 = phi ptr [ %82, %80 ], [ %28, %48 ]
  store i32 %56, ptr %6, align 4, !tbaa !119
  store i32 %55, ptr %49, align 4, !tbaa !116
  store i32 0, ptr %50, align 4, !tbaa !118
  br i1 %51, label %80, label %58

58:                                               ; preds = %54, %75
  %59 = phi i64 [ %62, %75 ], [ %46, %54 ]
  %60 = phi ptr [ %63, %75 ], [ %57, %54 ]
  %61 = phi i32 [ %78, %75 ], [ 0, %54 ]
  %62 = add nsw i64 %59, -1
  %63 = getelementptr inbounds i8, ptr %60, i64 1
  %64 = load i8, ptr %60, align 1, !tbaa !49
  %65 = shl i32 %61, 4
  %66 = sext i8 %64 to i32
  %67 = add i8 %64, -48
  %68 = icmp ult i8 %67, 10
  br i1 %68, label %75, label %69

69:                                               ; preds = %58
  %70 = add i8 %64, -65
  %71 = icmp ult i8 %70, 6
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = add i8 %64, -97
  %74 = icmp ult i8 %73, 6
  br i1 %74, label %75, label %169

75:                                               ; preds = %72, %69, %58
  %76 = phi i32 [ -48, %58 ], [ -55, %69 ], [ -87, %72 ]
  %77 = add nsw i32 %76, %66
  %78 = or i32 %65, %77
  store i32 %78, ptr %50, align 4, !tbaa !118
  %79 = icmp sgt i64 %59, 1
  br i1 %79, label %58, label %80, !llvm.loop !120

80:                                               ; preds = %75, %54
  %81 = phi i32 [ 0, %54 ], [ %78, %75 ]
  %82 = phi ptr [ %57, %54 ], [ %63, %75 ]
  %83 = load i8, ptr %82, align 1, !tbaa !49
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i16, ptr %33, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !50
  %87 = and i16 %86, 4096
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %54, !llvm.loop !121

89:                                               ; preds = %80
  %90 = shl i64 %46, 2
  br label %138

91:                                               ; preds = %44
  %92 = and i64 %35, 3
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 1
  %96 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 2
  %97 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 3
  %98 = lshr exact i64 %35, 2
  %99 = load i32, ptr %95, align 4, !tbaa !116
  %100 = load i32, ptr %96, align 4, !tbaa !118
  %101 = load i32, ptr %97, align 4, !tbaa !122
  br label %104

102:                                              ; preds = %91
  %103 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2604, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %28) #18
  br label %169

104:                                              ; preds = %94, %131
  %105 = phi i32 [ %129, %131 ], [ %101, %94 ]
  %106 = phi i32 [ %105, %131 ], [ %100, %94 ]
  %107 = phi i32 [ %106, %131 ], [ %99, %94 ]
  %108 = phi ptr [ %114, %131 ], [ %28, %94 ]
  store i32 %107, ptr %6, align 4, !tbaa !119
  store i32 %106, ptr %95, align 4, !tbaa !116
  store i32 %105, ptr %96, align 4, !tbaa !118
  store i32 0, ptr %97, align 4, !tbaa !122
  br label %109

109:                                              ; preds = %104, %126
  %110 = phi i64 [ %113, %126 ], [ %98, %104 ]
  %111 = phi ptr [ %114, %126 ], [ %108, %104 ]
  %112 = phi i32 [ %129, %126 ], [ 0, %104 ]
  %113 = add nsw i64 %110, -1
  %114 = getelementptr inbounds i8, ptr %111, i64 1
  %115 = load i8, ptr %111, align 1, !tbaa !49
  %116 = shl i32 %112, 4
  %117 = sext i8 %115 to i32
  %118 = add i8 %115, -48
  %119 = icmp ult i8 %118, 10
  br i1 %119, label %126, label %120

120:                                              ; preds = %109
  %121 = add i8 %115, -65
  %122 = icmp ult i8 %121, 6
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = add i8 %115, -97
  %125 = icmp ult i8 %124, 6
  br i1 %125, label %126, label %169

126:                                              ; preds = %123, %120, %109
  %127 = phi i32 [ -48, %109 ], [ -55, %120 ], [ -87, %123 ]
  %128 = add nsw i32 %127, %117
  %129 = or i32 %116, %128
  store i32 %129, ptr %97, align 4, !tbaa !122
  %130 = icmp sgt i64 %110, 1
  br i1 %130, label %109, label %131, !llvm.loop !123

131:                                              ; preds = %126
  %132 = load i8, ptr %114, align 1, !tbaa !49
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i16, ptr %33, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !50
  %136 = and i16 %135, 4096
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %104, !llvm.loop !124

138:                                              ; preds = %131, %89
  %139 = phi i32 [ %81, %89 ], [ %105, %131 ]
  %140 = phi i32 [ %55, %89 ], [ %106, %131 ]
  %141 = phi i32 [ %56, %89 ], [ %107, %131 ]
  %142 = phi i64 [ %90, %89 ], [ %35, %131 ]
  %143 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  store i32 13, ptr %143, align 4, !tbaa !63
  %144 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 4
  store i64 %142, ptr %144, align 8, !tbaa !62
  %145 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 2
  store i32 0, ptr %145, align 8, !tbaa !73
  %146 = call fastcc i64 @GetQuantumRange(i64 noundef %142) #20
  %147 = zext i32 %141 to i64
  %148 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %147, i64 noundef %146) #20
  %149 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %150 = zext i32 %140 to i64
  %151 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %150, i64 noundef %146) #20
  %152 = insertelement <2 x i16> poison, i16 %148, i64 0
  %153 = insertelement <2 x i16> %152, i16 %151, i64 1
  %154 = uitofp <2 x i16> %153 to <2 x float>
  store <2 x float> %154, ptr %149, align 8, !tbaa !77
  %155 = zext i32 %139 to i64
  %156 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %155, i64 noundef %146) #20
  %157 = uitofp i16 %156 to float
  %158 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %157, ptr %158, align 8, !tbaa !59
  %159 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float 0.000000e+00, ptr %159, align 4, !tbaa !60
  br i1 %47, label %167, label %160

160:                                              ; preds = %138
  store i32 1, ptr %145, align 8, !tbaa !73
  %161 = getelementptr inbounds %struct._LongPixelPacket, ptr %6, i64 0, i32 3
  %162 = load i32, ptr %161, align 4, !tbaa !122
  %163 = zext i32 %162 to i64
  %164 = call fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %163, i64 noundef %146) #20
  %165 = xor i16 %164, -1
  %166 = uitofp i16 %165 to float
  store float %166, ptr %159, align 4, !tbaa !60
  br label %167

167:                                              ; preds = %160, %138
  %168 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float 0.000000e+00, ptr %168, align 8, !tbaa !61
  br label %169

169:                                              ; preds = %123, %72, %167, %102
  %170 = phi i32 [ 1, %167 ], [ 0, %102 ], [ 0, %72 ], [ 0, %123 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #19
  br label %426

171:                                              ; preds = %29
  %172 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %21, i32 noundef 40) #24
  %173 = icmp eq ptr %172, null
  br i1 %173, label %412, label %174

174:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #19
  %175 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %21, i64 noundef 4096) #18
  br label %176

176:                                              ; preds = %180, %174
  %177 = phi i64 [ 0, %174 ], [ %181, %180 ]
  %178 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !49
  switch i8 %179, label %180 [
    i8 0, label %182
    i8 40, label %182
  ]

180:                                              ; preds = %176
  %181 = add nuw nsw i64 %177, 1
  br label %176, !llvm.loop !125

182:                                              ; preds = %176, %176
  %183 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %177
  %184 = add nsw i64 %177, -1
  store i8 0, ptr %183, align 1, !tbaa !49
  %185 = call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext 1) #20
  %186 = uitofp i16 %185 to double
  %187 = call i32 @LocaleNCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.27, i64 noundef 7) #18
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = getelementptr inbounds i8, ptr %7, i64 7
  %191 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %190, i64 noundef 4096) #18
  br label %192

192:                                              ; preds = %189, %182
  %193 = phi double [ 6.553500e+04, %189 ], [ %186, %182 ]
  %194 = phi i32 [ 1, %189 ], [ 0, %182 ]
  %195 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.28) #18
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %192
  %198 = getelementptr inbounds i8, ptr %21, i64 %184
  %199 = getelementptr inbounds i8, ptr %198, i64 2
  %200 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %199, i64 noundef 4096) #18
  br label %201

201:                                              ; preds = %205, %197
  %202 = phi i64 [ 0, %197 ], [ %206, %205 ]
  %203 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !49
  switch i8 %204, label %205 [
    i8 0, label %207
    i8 44, label %207
  ]

205:                                              ; preds = %201
  %206 = add nuw nsw i64 %202, 1
  br label %201, !llvm.loop !126

207:                                              ; preds = %201, %201
  %208 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %202
  store i8 0, ptr %208, align 1, !tbaa !49
  %209 = add nuw i64 %177, 1
  %210 = add i64 %209, %202
  br label %211

211:                                              ; preds = %207, %192
  %212 = phi i64 [ %210, %207 ], [ %184, %192 ]
  %213 = phi double [ 6.553500e+04, %207 ], [ %193, %192 ]
  %214 = phi i32 [ 1, %207 ], [ %194, %192 ]
  call void @LocaleLower(ptr noundef nonnull %7) #18
  %215 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 2
  store i32 0, ptr %215, align 8, !tbaa !73
  %216 = icmp sgt i64 %212, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 %212
  %219 = load i8, ptr %218, align 1, !tbaa !49
  %220 = icmp eq i8 %219, 97
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i8 0, ptr %218, align 1, !tbaa !49
  store i32 1, ptr %215, align 8, !tbaa !73
  br label %222

222:                                              ; preds = %221, %217, %211
  %223 = call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef nonnull %7) #18
  %224 = icmp slt i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2697, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %21) #18
  br label %410

227:                                              ; preds = %222
  %228 = trunc i64 %223 to i32
  %229 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  store i32 %228, ptr %229, align 4, !tbaa !63
  %230 = icmp eq i32 %214, 0
  %231 = icmp eq i32 %228, 1
  %232 = and i1 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %227
  store i32 13, ptr %229, align 4, !tbaa !63
  %234 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 4
  store i64 8, ptr %234, align 8, !tbaa !62
  br label %235

235:                                              ; preds = %233, %227
  call void @SetGeometryInfo(ptr noundef nonnull %5) #18
  %236 = getelementptr inbounds i8, ptr %21, i64 %212
  %237 = getelementptr inbounds i8, ptr %236, i64 1
  %238 = call i32 @ParseGeometry(ptr noundef nonnull %237, ptr noundef nonnull %5) #18
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %241 = load i32, ptr %229, align 4, !tbaa !63
  %242 = call ptr @AcquireString(ptr noundef nonnull %237) #18
  store ptr %242, ptr %8, align 8, !tbaa !34
  %243 = call i32 @SubstituteString(ptr noundef nonnull %8, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #18
  %244 = load ptr, ptr %8, align 8, !tbaa !34
  %245 = call i32 @QueryMagickColor(ptr noundef %244, ptr noundef nonnull %2, ptr noundef %3) #20, !range !48
  %246 = load ptr, ptr %8, align 8, !tbaa !34
  %247 = call ptr @DestroyString(ptr noundef %246) #18
  store i32 %241, ptr %229, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %410

248:                                              ; preds = %235
  %249 = and i32 %238, 4096
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, double %213, double 0x40847ACCC0000000
  %252 = and i32 %238, 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %248
  %255 = load double, ptr %5, align 16, !tbaa !127
  %256 = fmul double %251, %255
  %257 = fptrunc double %256 to float
  %258 = call fastcc zeroext i16 @ClampToQuantum(float noundef %257) #20
  %259 = uitofp i16 %258 to float
  %260 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  store float %259, ptr %260, align 8, !tbaa !57
  br label %261

261:                                              ; preds = %254, %248
  %262 = and i32 %238, 8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %266 = load double, ptr %265, align 8, !tbaa !129
  %267 = fmul double %251, %266
  %268 = fptrunc double %267 to float
  %269 = call fastcc zeroext i16 @ClampToQuantum(float noundef %268) #20
  %270 = uitofp i16 %269 to float
  %271 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %270, ptr %271, align 4, !tbaa !58
  br label %272

272:                                              ; preds = %264, %261
  %273 = and i32 %238, 1
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %272
  %276 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 2
  %277 = load double, ptr %276, align 16, !tbaa !130
  %278 = fmul double %251, %277
  %279 = fptrunc double %278 to float
  %280 = call fastcc zeroext i16 @ClampToQuantum(float noundef %279) #20
  %281 = uitofp i16 %280 to float
  %282 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %281, ptr %282, align 8, !tbaa !59
  br label %283

283:                                              ; preds = %275, %272
  %284 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 8
  store float 0.000000e+00, ptr %284, align 4, !tbaa !60
  %285 = and i32 %238, 2
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %308, label %287

287:                                              ; preds = %283
  %288 = load i32, ptr %229, align 4, !tbaa !63
  %289 = icmp eq i32 %288, 12
  br i1 %289, label %290, label %298

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 3
  %292 = load double, ptr %291, align 8, !tbaa !131
  %293 = fmul double %251, %292
  %294 = fptrunc double %293 to float
  %295 = call fastcc zeroext i16 @ClampToQuantum(float noundef %294) #20
  %296 = uitofp i16 %295 to float
  %297 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float %296, ptr %297, align 8, !tbaa !61
  br label %308

298:                                              ; preds = %287
  %299 = load i32, ptr %215, align 8, !tbaa !73
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %308, label %301

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 3
  %303 = load double, ptr %302, align 8, !tbaa !131
  %304 = call double @llvm.fmuladd.f64(double %303, double -6.553500e+04, double 6.553500e+04)
  %305 = fptrunc double %304 to float
  %306 = call fastcc zeroext i16 @ClampToQuantum(float noundef %305) #20
  %307 = uitofp i16 %306 to float
  store float %307, ptr %284, align 4, !tbaa !60
  br label %308

308:                                              ; preds = %290, %301, %298, %283
  %309 = and i32 %238, 16
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %321, label %311

311:                                              ; preds = %308
  %312 = load i32, ptr %215, align 8, !tbaa !73
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %321, label %314

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 4
  %316 = load double, ptr %315, align 16, !tbaa !132
  %317 = call double @llvm.fmuladd.f64(double %316, double -6.553500e+04, double 6.553500e+04)
  %318 = fptrunc double %317 to float
  %319 = call fastcc zeroext i16 @ClampToQuantum(float noundef %318) #20
  %320 = uitofp i16 %319 to float
  store float %320, ptr %284, align 4, !tbaa !60
  br label %321

321:                                              ; preds = %314, %311, %308
  %322 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.29) #18
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %339

324:                                              ; preds = %321
  store i32 2, ptr %229, align 4, !tbaa !63
  %325 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %326 = load float, ptr %325, align 8, !tbaa !57
  %327 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 6
  store float %326, ptr %327, align 4, !tbaa !58
  %328 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %326, ptr %328, align 8, !tbaa !59
  br i1 %263, label %339, label %329

329:                                              ; preds = %324
  %330 = load i32, ptr %215, align 8, !tbaa !73
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %334 = load double, ptr %333, align 8, !tbaa !129
  %335 = call double @llvm.fmuladd.f64(double %334, double -6.553500e+04, double 6.553500e+04)
  %336 = fptrunc double %335 to float
  %337 = call fastcc zeroext i16 @ClampToQuantum(float noundef %336) #20
  %338 = uitofp i16 %337 to float
  store float %338, ptr %284, align 4, !tbaa !60
  br label %339

339:                                              ; preds = %324, %329, %332, %321
  %340 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.30) #18
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %351, label %342

342:                                              ; preds = %339
  %343 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #18
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %342
  %346 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.32) #18
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %351, label %348

348:                                              ; preds = %345
  %349 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.33) #18
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %410

351:                                              ; preds = %348, %345, %342, %339
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %352 = insertelement <2 x i1> poison, i1 %250, i64 0
  %353 = shufflevector <2 x i1> %352, <2 x i1> poison, <2 x i32> zeroinitializer
  %354 = select <2 x i1> %353, <2 x double> <double 1.000000e+00, double 0x3F70101010101010>, <2 x double> <double 3.600000e+00, double 1.000000e-02>
  %355 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %356 = load <2 x double>, ptr %5, align 16, !tbaa !76
  %357 = fmul <2 x double> %354, %356
  store <2 x double> %357, ptr %5, align 16, !tbaa !76
  %358 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 2
  %359 = load double, ptr %358, align 16, !tbaa !130
  %360 = extractelement <2 x double> %354, i64 1
  %361 = fmul double %360, %359
  store double %361, ptr %358, align 16, !tbaa !130
  %362 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.30) #18
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %374

364:                                              ; preds = %351
  %365 = load double, ptr %5, align 16, !tbaa !127
  %366 = call double @fmod(double noundef %365, double noundef 3.600000e+02) #18
  %367 = fadd double %366, 3.600000e+02
  %368 = call double @fmod(double noundef %367, double noundef 3.600000e+02) #18
  %369 = fdiv double %368, 3.600000e+02
  %370 = load double, ptr %355, align 8, !tbaa !129
  %371 = load double, ptr %358, align 16, !tbaa !130
  %372 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  call void @ConvertHCLToRGB(double noundef %369, double noundef %370, double noundef %371, ptr noundef nonnull %372, ptr noundef nonnull %373, ptr noundef nonnull %9) #18
  br label %401

374:                                              ; preds = %351
  %375 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.31) #18
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %387

377:                                              ; preds = %374
  %378 = load double, ptr %5, align 16, !tbaa !127
  %379 = call double @fmod(double noundef %378, double noundef 3.600000e+02) #18
  %380 = fadd double %379, 3.600000e+02
  %381 = call double @fmod(double noundef %380, double noundef 3.600000e+02) #18
  %382 = fdiv double %381, 3.600000e+02
  %383 = load double, ptr %355, align 8, !tbaa !129
  %384 = load double, ptr %358, align 16, !tbaa !130
  %385 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %386 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  call void @ConvertHSBToRGB(double noundef %382, double noundef %383, double noundef %384, ptr noundef nonnull %385, ptr noundef nonnull %386, ptr noundef nonnull %9) #18
  br label %401

387:                                              ; preds = %374
  %388 = call i32 @LocaleCompare(ptr noundef nonnull %7, ptr noundef nonnull @.str.32) #18
  %389 = icmp eq i32 %388, 0
  %390 = load double, ptr %5, align 16, !tbaa !127
  %391 = call double @fmod(double noundef %390, double noundef 3.600000e+02) #18
  %392 = fadd double %391, 3.600000e+02
  %393 = call double @fmod(double noundef %392, double noundef 3.600000e+02) #18
  %394 = fdiv double %393, 3.600000e+02
  %395 = load double, ptr %355, align 8, !tbaa !129
  %396 = load double, ptr %358, align 16, !tbaa !130
  %397 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 2
  %398 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  br i1 %389, label %399, label %400

399:                                              ; preds = %387
  call void @ConvertHSLToRGB(double noundef %394, double noundef %395, double noundef %396, ptr noundef nonnull %397, ptr noundef nonnull %398, ptr noundef nonnull %9) #18
  br label %401

400:                                              ; preds = %387
  call void @ConvertHWBToRGB(double noundef %394, double noundef %395, double noundef %396, ptr noundef nonnull %397, ptr noundef nonnull %398, ptr noundef nonnull %9) #18
  br label %401

401:                                              ; preds = %377, %400, %399, %364
  store i32 13, ptr %229, align 4, !tbaa !63
  %402 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %403 = getelementptr inbounds %struct._PixelPacket, ptr %9, i64 0, i32 1
  %404 = load <2 x i16>, ptr %403, align 2, !tbaa !50
  %405 = uitofp <2 x i16> %404 to <2 x float>
  %406 = shufflevector <2 x float> %405, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %406, ptr %402, align 8, !tbaa !77
  %407 = load i16, ptr %9, align 2, !tbaa !97
  %408 = uitofp i16 %407 to float
  %409 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 7
  store float %408, ptr %409, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %410

410:                                              ; preds = %240, %401, %348, %225
  %411 = phi i32 [ 0, %225 ], [ 1, %348 ], [ 1, %401 ], [ 1, %240 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #19
  br label %426

412:                                              ; preds = %171
  %413 = tail call ptr @GetColorCompliance(ptr noundef nonnull %21, i32 noundef %1, ptr noundef %3) #20
  %414 = icmp eq ptr %413, null
  br i1 %414, label %426, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 1
  store i32 13, ptr %416, align 4, !tbaa !63
  %417 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 4
  store i64 8, ptr %417, align 8, !tbaa !62
  %418 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 2
  %419 = getelementptr inbounds %struct._ColorInfo, ptr %413, i64 0, i32 3, i32 5
  %420 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 5
  %421 = load <4 x float>, ptr %419, align 8, !tbaa !77
  %422 = extractelement <4 x float> %421, i64 3
  %423 = fcmp une float %422, 0.000000e+00
  %424 = zext i1 %423 to i32
  store i32 %424, ptr %418, align 8, !tbaa !73
  store <4 x float> %421, ptr %420, align 8, !tbaa !77
  %425 = getelementptr inbounds %struct._MagickPixelPacket, ptr %2, i64 0, i32 9
  store float 0.000000e+00, ptr %425, align 8, !tbaa !61
  br label %426

426:                                              ; preds = %412, %415, %410, %169
  %427 = phi i32 [ %170, %169 ], [ %411, %410 ], [ 1, %415 ], [ 0, %412 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  ret i32 %427
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #4 !PGOFuncName !133 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QueryColorDatabase(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @QueryColorCompliance(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, ptr noundef %2) #20, !range !48
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QueryColorname(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #19
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #18
  call fastcc void @SetMagickPixelPacket(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %6) #20
  %7 = call i32 @QueryMagickColorname(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %2, ptr noundef %3, ptr noundef %4) #20, !range !48
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #19
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QueryMagickColorname(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #19
  store i8 0, ptr %3, align 1, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !74
  %7 = icmp eq i32 %2, 4
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %11 = load i64, ptr %10, align 8, !tbaa !134
  %12 = uitofp i64 %11 to double
  %13 = tail call fastcc double @MagickMin(double noundef %12, double noundef 1.600000e+01) #20
  %14 = fptoui double %13 to i64
  %15 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 4
  store i64 %14, ptr %15, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %8, %5
  %17 = icmp ne i32 %2, 1
  %18 = zext i1 %17 to i32
  call void @GetColorTuple(ptr noundef nonnull %6, i32 noundef %18, ptr noundef nonnull %3) #20
  %19 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !63
  %21 = tail call fastcc i32 @IssRGBColorspace(i32 noundef %20) #20, !range !48
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @GetColorInfo(ptr noundef nonnull @.str, ptr noundef %4) #20
  %25 = load ptr, ptr @color_cache, align 8, !tbaa !34
  tail call void @ResetLinkedListIterator(ptr noundef %25) #18
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !92
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %31 = load float, ptr %30, align 4, !tbaa !60
  br label %32

32:                                               ; preds = %23, %29
  %33 = phi float [ %31, %29 ], [ 0.000000e+00, %23 ]
  %34 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %35 = tail call ptr @GetNextValueInLinkedList(ptr noundef %34) #18
  %36 = icmp eq ptr %35, null
  br i1 %36, label %74, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %39 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %40 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  br label %41

41:                                               ; preds = %37, %70
  %42 = phi ptr [ %35, %37 ], [ %72, %70 ]
  %43 = getelementptr inbounds %struct._ColorInfo, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !54
  %45 = and i32 %44, %2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct._ColorInfo, ptr %42, i64 0, i32 3, i32 5
  %49 = load float, ptr %48, align 8, !tbaa !135
  %50 = load float, ptr %38, align 8, !tbaa !57
  %51 = fcmp oeq float %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct._ColorInfo, ptr %42, i64 0, i32 3, i32 6
  %54 = load float, ptr %53, align 4, !tbaa !136
  %55 = load float, ptr %39, align 4, !tbaa !58
  %56 = fcmp oeq float %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct._ColorInfo, ptr %42, i64 0, i32 3, i32 7
  %59 = load float, ptr %58, align 8, !tbaa !137
  %60 = load float, ptr %40, align 8, !tbaa !59
  %61 = fcmp oeq float %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct._ColorInfo, ptr %42, i64 0, i32 3, i32 8
  %64 = load float, ptr %63, align 4, !tbaa !138
  %65 = fcmp oeq float %64, %33
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._ColorInfo, ptr %42, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = tail call i64 @CopyMagickString(ptr noundef nonnull %3, ptr noundef %68, i64 noundef 4096) #18
  br label %74

70:                                               ; preds = %62, %57, %52, %47, %41
  %71 = load ptr, ptr @color_cache, align 8, !tbaa !34
  %72 = tail call ptr @GetNextValueInLinkedList(ptr noundef %71) #18
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %41, !llvm.loop !139

74:                                               ; preds = %70, %32, %66, %16
  %75 = phi i32 [ 0, %16 ], [ 1, %66 ], [ 1, %32 ], [ 1, %70 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #19
  ret i32 %75
}

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @GetQuantumRange(i64 noundef %0) unnamed_addr #4 !PGOFuncName !140 {
  %2 = add i64 %0, -1
  %3 = shl i64 2, %2
  %4 = add i64 %3, -1
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ScaleAnyToQuantum(i64 noundef %0, i64 noundef %1) unnamed_addr #4 !PGOFuncName !141 {
  %3 = uitofp i64 %0 to float
  %4 = fmul float %3, 6.553500e+04
  %5 = uitofp i64 %1 to float
  %6 = fdiv float %4, %5
  %7 = fpext float %6 to double
  %8 = fadd double %7, 5.000000e-01
  %9 = fptoui double %8 to i16
  ret i16 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @SetGeometryInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @AcquireString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @QueryMagickColor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @QueryMagickColorCompliance(ptr noundef %0, i32 noundef 2147483647, ptr noundef %1, ptr noundef %2) #20, !range !48
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ConvertHCLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @ConvertHSBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ConvertHWBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @IssRGBColorspace(i32 noundef %0) unnamed_addr #4 !PGOFuncName !142 {
  %2 = icmp eq i32 %0, 13
  %3 = icmp eq i32 %0, 3
  %4 = or i1 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireColorCache(ptr noundef %0) unnamed_addr #0 !PGOFuncName !143 {
  %2 = alloca %struct._ExceptionInfo, align 8
  %3 = tail call ptr @NewLinkedList(i64 noundef 0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #19
  call void @GetExceptionInfo(ptr noundef nonnull %2) #18
  %6 = tail call ptr @__errno_location() #21
  %7 = load i32, ptr %6, align 4, !tbaa !75
  %8 = call ptr @GetExceptionMessage(i32 noundef %7) #18
  %9 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 846, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %8) #18
  %10 = call ptr @DestroyString(ptr noundef %8) #18
  call void @CatchException(ptr noundef nonnull %2) #18
  %11 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %2) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #25
  unreachable

12:                                               ; preds = %1
  %13 = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.38, ptr noundef %0) #18
  %14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %23, %16 ], [ %14, %12 ]
  %18 = phi i32 [ %22, %16 ], [ 1, %12 ]
  %19 = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %17) #18
  %20 = tail call ptr @GetStringInfoPath(ptr noundef nonnull %17) #18
  %21 = tail call fastcc i32 @LoadColorCache(ptr noundef nonnull %3, ptr noundef %19, ptr noundef %20, i64 noundef 0, ptr noundef %0) #20
  %22 = and i32 %21, %18
  %23 = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %16, !llvm.loop !144

25:                                               ; preds = %16, %12
  %26 = phi i32 [ 1, %12 ], [ %22, %16 ]
  %27 = tail call ptr @DestroyConfigureOptions(ptr noundef %13) #18
  br label %28

28:                                               ; preds = %25, %73
  %29 = phi i32 [ %26, %25 ], [ %74, %73 ]
  %30 = phi i64 [ 0, %25 ], [ %75, %73 ]
  %31 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %30
  %32 = tail call dereferenceable_or_null(112) ptr @AcquireMagickMemory(i64 noundef 112) #26
  %33 = icmp eq ptr %32, null
  br i1 %33, label %67, label %34

34:                                               ; preds = %28
  %35 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %32, i32 noundef 0, i64 noundef 112) #18
  store ptr @.str.40, ptr %32, align 8, !tbaa !46
  %36 = load ptr, ptr %31, align 8, !tbaa !145
  %37 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 3
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef nonnull %38) #18
  %39 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %30, i32 1
  %40 = load i8, ptr %39, align 8, !tbaa !147
  %41 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %40) #20
  %42 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 3, i32 5
  %43 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %30, i32 2
  %44 = load i8, ptr %43, align 1, !tbaa !148
  %45 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %44) #20
  %46 = insertelement <2 x i16> poison, i16 %41, i64 0
  %47 = insertelement <2 x i16> %46, i16 %45, i64 1
  %48 = uitofp <2 x i16> %47 to <2 x float>
  store <2 x float> %48, ptr %42, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %30, i32 3
  %50 = load i8, ptr %49, align 2, !tbaa !149
  %51 = tail call fastcc zeroext i16 @ScaleCharToQuantum(i8 noundef zeroext %50) #20
  %52 = uitofp i16 %51 to float
  %53 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 3, i32 7
  store float %52, ptr %53, align 8, !tbaa !137
  %54 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %30, i32 4
  %55 = load float, ptr %54, align 4, !tbaa !150
  %56 = tail call float @llvm.fmuladd.f32(float %55, float -6.553500e+04, float 6.553500e+04)
  %57 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 3, i32 8
  store float %56, ptr %57, align 4, !tbaa !138
  %58 = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %30, i32 5
  %59 = load i64, ptr %58, align 8, !tbaa !151
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 2
  store i32 %60, ptr %61, align 8, !tbaa !54
  %62 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 4
  store i32 1, ptr %62, align 8, !tbaa !39
  %63 = getelementptr inbounds %struct._ColorInfo, ptr %32, i64 0, i32 8
  store i64 2880220587, ptr %63, align 8, !tbaa !152
  %64 = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %3, ptr noundef nonnull %32) #18
  %65 = and i32 %64, %29
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %34, %28
  %68 = phi ptr [ %31, %28 ], [ %37, %34 ]
  %69 = phi i64 [ 872, %28 ], [ 893, %34 ]
  %70 = phi i32 [ %29, %28 ], [ 0, %34 ]
  %71 = load ptr, ptr %68, align 8, !tbaa !34
  %72 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %69, i32 noundef 400, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %71) #18
  br label %73

73:                                               ; preds = %67, %34
  %74 = phi i32 [ %65, %34 ], [ %70, %67 ]
  %75 = add nuw nsw i64 %30, 1
  %76 = icmp eq i64 %75, 678
  br i1 %76, label %77, label %28, !llvm.loop !153

77:                                               ; preds = %73
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @LoadColorCache(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !154 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2176, ptr noundef nonnull @.str.41, ptr noundef %2) #18
  %11 = icmp eq ptr %1, null
  br i1 %11, label %191, label %12

12:                                               ; preds = %5
  %13 = tail call ptr @AcquireString(ptr noundef nonnull %1) #18
  store ptr %1, ptr %7, align 8, !tbaa !34
  %14 = load i8, ptr %1, align 1, !tbaa !49
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %188, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = icmp ugt i64 %3, 200
  %19 = add nuw nsw i64 %3, 1
  br label %20

20:                                               ; preds = %16, %42
  %21 = phi ptr [ %1, %16 ], [ %45, %42 ]
  %22 = phi i32 [ 1, %16 ], [ %44, %42 ]
  %23 = phi ptr [ null, %16 ], [ %43, %42 ]
  call void @GetMagickToken(ptr noundef nonnull %21, ptr noundef nonnull %7, ptr noundef %13) #18
  %24 = load i8, ptr %13, align 1, !tbaa !49
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %188, label %26

26:                                               ; preds = %20
  %27 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #18
  %28 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.42, i64 noundef 9) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 8, !tbaa !34
  %32 = call i32 @LocaleNCompare(ptr noundef %31, ptr noundef nonnull @.str.43, i64 noundef 2) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %38
  %35 = load ptr, ptr %7, align 8, !tbaa !34
  %36 = load i8, ptr %35, align 1, !tbaa !49
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  call void @GetMagickToken(ptr noundef nonnull %35, ptr noundef nonnull %7, ptr noundef %13) #18
  %39 = load ptr, ptr %7, align 8, !tbaa !34
  %40 = call i32 @LocaleNCompare(ptr noundef %39, ptr noundef nonnull @.str.43, i64 noundef 2) #18
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !155

42:                                               ; preds = %59, %55, %38, %34, %76, %70, %73, %155, %161, %179, %185, %158, %176, %182, %148, %137, %140, %51, %30, %127, %132, %144
  %43 = phi ptr [ %118, %127 ], [ null, %132 ], [ %23, %144 ], [ %23, %30 ], [ %23, %51 ], [ null, %140 ], [ null, %137 ], [ %23, %148 ], [ %23, %182 ], [ %23, %176 ], [ %23, %158 ], [ %23, %185 ], [ %23, %179 ], [ %23, %161 ], [ %23, %155 ], [ %23, %73 ], [ %23, %70 ], [ %23, %76 ], [ %23, %34 ], [ %23, %38 ], [ %23, %55 ], [ %23, %59 ]
  %44 = phi i32 [ %22, %127 ], [ %22, %132 ], [ %22, %144 ], [ %22, %30 ], [ %22, %51 ], [ 0, %140 ], [ %138, %137 ], [ %22, %148 ], [ %22, %182 ], [ %22, %176 ], [ %22, %158 ], [ %22, %185 ], [ %22, %179 ], [ %22, %161 ], [ %22, %155 ], [ %67, %73 ], [ %67, %70 ], [ %67, %76 ], [ %22, %34 ], [ %22, %38 ], [ %22, %55 ], [ %22, %59 ]
  %45 = load ptr, ptr %7, align 8, !tbaa !34
  %46 = load i8, ptr %45, align 1, !tbaa !49
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %188, label %20, !llvm.loop !156

48:                                               ; preds = %26
  %49 = call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.44, i64 noundef 4) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 8, !tbaa !34
  %53 = call i32 @LocaleNCompare(ptr noundef %52, ptr noundef nonnull @.str.45, i64 noundef 2) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %42, label %55

55:                                               ; preds = %51, %59
  %56 = load ptr, ptr %7, align 8, !tbaa !34
  %57 = load i8, ptr %56, align 1, !tbaa !49
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  call void @GetMagickToken(ptr noundef nonnull %56, ptr noundef nonnull %7, ptr noundef %13) #18
  %60 = load ptr, ptr %7, align 8, !tbaa !34
  %61 = call i32 @LocaleNCompare(ptr noundef %60, ptr noundef nonnull @.str.45, i64 noundef 2) #18
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %42, label %55, !llvm.loop !157

63:                                               ; preds = %48
  %64 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.46) #18
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %63, %112
  %67 = phi i32 [ %113, %112 ], [ %22, %63 ]
  br label %68

68:                                               ; preds = %92, %66
  %69 = load i8, ptr %13, align 1, !tbaa !49
  br label %70

70:                                               ; preds = %68, %80
  %71 = phi i8 [ %69, %68 ], [ %83, %80 ]
  %72 = icmp eq i8 %71, 47
  br i1 %72, label %42, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr %17, align 1, !tbaa !49
  %75 = icmp eq i8 %74, 62
  br i1 %75, label %42, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 8, !tbaa !34
  %78 = load i8, ptr %77, align 1, !tbaa !49
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %42, label %80

80:                                               ; preds = %76
  %81 = call i64 @CopyMagickString(ptr noundef nonnull %6, ptr noundef nonnull %13, i64 noundef 4096) #18
  %82 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %82, ptr noundef nonnull %7, ptr noundef nonnull %13) #18
  %83 = load i8, ptr %13, align 1, !tbaa !49
  %84 = icmp eq i8 %83, 61
  br i1 %84, label %85, label %70, !llvm.loop !158

85:                                               ; preds = %80
  %86 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %86, ptr noundef nonnull %7, ptr noundef nonnull %13) #18
  %87 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.47) #18
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  br i1 %18, label %90, label %93

90:                                               ; preds = %89
  %91 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2225, i32 noundef 495, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.4, ptr noundef nonnull %13) #18
  br label %92

92:                                               ; preds = %90, %85
  br label %68, !llvm.loop !158

93:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #19
  call void @GetPathComponent(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %8) #18
  %94 = load i8, ptr %8, align 16, !tbaa !49
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull @.str.49, i64 noundef 4096) #18
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i8, ptr %13, align 1, !tbaa !49
  %100 = icmp eq i8 %99, 47
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i64 @CopyMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #18
  br label %105

103:                                              ; preds = %98
  %104 = call i64 @ConcatenateMagickString(ptr noundef nonnull %8, ptr noundef nonnull %13, i64 noundef 4096) #18
  br label %105

105:                                              ; preds = %103, %101
  %106 = call ptr @FileToXML(ptr noundef nonnull %8, i64 noundef -1) #18
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = call fastcc i32 @LoadColorCache(ptr noundef %0, ptr noundef nonnull %106, ptr noundef nonnull %8, i64 noundef %19, ptr noundef %4) #20
  %110 = and i32 %109, %67
  %111 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %106) #18
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i32 [ %110, %108 ], [ %67, %105 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #19
  br label %66, !llvm.loop !158

114:                                              ; preds = %63
  %115 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.50) #18
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = call dereferenceable_or_null(112) ptr @AcquireMagickMemory(i64 noundef 112) #26
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #19
  call void @GetExceptionInfo(ptr noundef nonnull %9) #18
  %121 = tail call ptr @__errno_location() #21
  %122 = load i32, ptr %121, align 4, !tbaa !75
  %123 = call ptr @GetExceptionMessage(i32 noundef %122) #18
  %124 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2260, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %123) #18
  %125 = call ptr @DestroyString(ptr noundef %123) #18
  call void @CatchException(ptr noundef nonnull %9) #18
  %126 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %9) #18
  call void @MagickCoreTerminus() #18
  call void @_exit(i32 noundef 1) #25
  unreachable

127:                                              ; preds = %117
  %128 = call ptr @ResetMagickMemory(ptr noundef nonnull %118, i32 noundef 0, i64 noundef 112) #18
  %129 = call ptr @ConstantString(ptr noundef %2) #18
  store ptr %129, ptr %118, align 8, !tbaa !46
  %130 = getelementptr inbounds %struct._ColorInfo, ptr %118, i64 0, i32 4
  store i32 0, ptr %130, align 8, !tbaa !39
  %131 = getelementptr inbounds %struct._ColorInfo, ptr %118, i64 0, i32 8
  store i64 2880220587, ptr %131, align 8, !tbaa !152
  br label %42

132:                                              ; preds = %114
  %133 = icmp eq ptr %23, null
  br i1 %133, label %42, label %134

134:                                              ; preds = %132
  %135 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.51) #18
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = call i32 @AppendValueToLinkedList(ptr noundef %0, ptr noundef nonnull %23) #18
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %42

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !47
  %143 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2273, i32 noundef 400, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %142) #18
  br label %42

144:                                              ; preds = %134
  %145 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %145, ptr noundef null, ptr noundef nonnull %13) #18
  %146 = load i8, ptr %13, align 1, !tbaa !49
  %147 = icmp eq i8 %146, 61
  br i1 %147, label %148, label %42

148:                                              ; preds = %144
  %149 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %149, ptr noundef nonnull %7, ptr noundef nonnull %13) #18
  %150 = load ptr, ptr %7, align 8, !tbaa !34
  call void @GetMagickToken(ptr noundef %150, ptr noundef nonnull %7, ptr noundef nonnull %13) #18
  %151 = load i8, ptr %6, align 16, !tbaa !49
  switch i8 %151, label %42 [
    i8 67, label %152
    i8 99, label %152
    i8 78, label %176
    i8 110, label %176
    i8 83, label %182
    i8 115, label %182
  ]

152:                                              ; preds = %148, %148
  %153 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.52) #18
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 3
  %157 = call i32 @QueryMagickColor(ptr noundef nonnull %13, ptr noundef nonnull %156, ptr noundef %4) #20, !range !48
  br label %42

158:                                              ; preds = %152
  %159 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.53) #18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %42

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 2
  %163 = load i32, ptr %162, align 8, !tbaa !54
  %164 = call i32 @GlobExpression(ptr noundef nonnull %13, ptr noundef nonnull @.str.54, i32 noundef 1) #18
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i32
  %167 = or i32 %163, %166
  %168 = call i32 @GlobExpression(ptr noundef nonnull %13, ptr noundef nonnull @.str.55, i32 noundef 1) #18
  %169 = icmp eq i32 %168, 0
  %170 = or i32 %167, 2
  %171 = select i1 %169, i32 %167, i32 %170
  %172 = call i32 @GlobExpression(ptr noundef nonnull %13, ptr noundef nonnull @.str.56, i32 noundef 1) #18
  %173 = icmp eq i32 %172, 0
  %174 = or i32 %171, 4
  %175 = select i1 %173, i32 %171, i32 %174
  store i32 %175, ptr %162, align 8, !tbaa !54
  br label %42

176:                                              ; preds = %148, %148
  %177 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.57) #18
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %42

179:                                              ; preds = %176
  %180 = call ptr @ConstantString(ptr noundef nonnull %13) #18
  %181 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 1
  store ptr %180, ptr %181, align 8, !tbaa !47
  br label %42

182:                                              ; preds = %148, %148
  %183 = call i32 @LocaleCompare(ptr noundef nonnull %6, ptr noundef nonnull @.str.58) #18
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %42

185:                                              ; preds = %182
  %186 = call i32 @IsMagickTrue(ptr noundef nonnull %13) #18
  %187 = getelementptr inbounds %struct._ColorInfo, ptr %23, i64 0, i32 5
  store i32 %186, ptr %187, align 4, !tbaa !68
  br label %42

188:                                              ; preds = %42, %20, %12
  %189 = phi i32 [ 1, %12 ], [ %22, %20 ], [ %44, %42 ]
  %190 = call ptr @RelinquishMagickMemory(ptr noundef %13) #18
  br label %191

191:                                              ; preds = %5, %188
  %192 = phi i32 [ %189, %188 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #19
  ret i32 %192
}

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize willreturn memory(none) }
attributes #22 = { nounwind optsize allocsize(0,1) }
attributes #23 = { hot nounwind optsize }
attributes #24 = { nounwind optsize willreturn memory(read) }
attributes #25 = { noreturn nounwind optsize }
attributes #26 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 11498625}
!4 = !{!"MaxCount", i64 3247920}
!5 = !{!"MaxInternalCount", i64 3247920}
!6 = !{!"MaxFunctionCount", i64 51090}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3247920, i32 3}
!14 = !{i32 100000, i64 3247920, i32 3}
!15 = !{i32 200000, i64 3247920, i32 3}
!16 = !{i32 300000, i64 3247920, i32 3}
!17 = !{i32 400000, i64 3247920, i32 3}
!18 = !{i32 500000, i64 3247920, i32 3}
!19 = !{i32 600000, i64 3247920, i32 3}
!20 = !{i32 700000, i64 3247920, i32 3}
!21 = !{i32 800000, i64 3247920, i32 3}
!22 = !{i32 900000, i64 1623960, i32 4}
!23 = !{i32 950000, i64 1623960, i32 4}
!24 = !{i32 990000, i64 51090, i32 6}
!25 = !{i32 999000, i64 25545, i32 7}
!26 = !{i32 999900, i64 3120, i32 8}
!27 = !{i32 999990, i64 3120, i32 8}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"color.c:DestroyColorElement"}
!39 = !{!40, !41, i64 80}
!40 = !{!"_ColorInfo", !35, i64 0, !35, i64 8, !41, i64 16, !42, i64 24, !41, i64 80, !41, i64 84, !35, i64 88, !35, i64 96, !44, i64 104}
!41 = !{!"int", !36, i64 0}
!42 = !{!"_MagickPixelPacket", !41, i64 0, !41, i64 4, !41, i64 8, !43, i64 16, !44, i64 24, !45, i64 32, !45, i64 36, !45, i64 40, !45, i64 44, !45, i64 48}
!43 = !{!"double", !36, i64 0}
!44 = !{!"long", !36, i64 0}
!45 = !{!"float", !36, i64 0}
!46 = !{!40, !35, i64 0}
!47 = !{!40, !35, i64 8}
!48 = !{i32 0, i32 2}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !36, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!40, !41, i64 16}
!55 = distinct !{!55, !53}
!56 = !{!"color.c:IsColorCacheInstantiated"}
!57 = !{!42, !45, i64 32}
!58 = !{!42, !45, i64 36}
!59 = !{!42, !45, i64 40}
!60 = !{!42, !45, i64 44}
!61 = !{!42, !45, i64 48}
!62 = !{!42, !44, i64 24}
!63 = !{!42, !41, i64 4}
!64 = !{!"color.c:ScaleQuantumToLong"}
!65 = !{!"color.c:ClampToQuantum"}
!66 = !{!"color.c:ScaleQuantumToChar"}
!67 = !{!44, !44, i64 0}
!68 = !{!40, !41, i64 84}
!69 = distinct !{!69, !53}
!70 = !{!"color.c:ColorInfoCompare"}
!71 = distinct !{!71, !53}
!72 = !{!"color.c:ColorCompare"}
!73 = !{!42, !41, i64 8}
!74 = !{i64 0, i64 4, !75, i64 4, i64 4, !75, i64 8, i64 4, !75, i64 16, i64 8, !76, i64 24, i64 8, !67, i64 32, i64 4, !77, i64 36, i64 4, !77, i64 40, i64 4, !77, i64 44, i64 4, !77, i64 48, i64 4, !77}
!75 = !{!41, !41, i64 0}
!76 = !{!43, !43, i64 0}
!77 = !{!45, !45, i64 0}
!78 = !{!"color.c:ConcatentateHexColorComponent"}
!79 = !{!"color.c:ScaleCharToQuantum"}
!80 = !{!81, !43, i64 392}
!81 = !{!"_Image", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !35, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !43, i64 104, !83, i64 112, !41, i64 208, !35, i64 216, !41, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !44, i64 256, !43, i64 264, !43, i64 272, !85, i64 280, !85, i64 312, !85, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !35, i64 424, !44, i64 432, !44, i64 440, !44, i64 448, !44, i64 456, !44, i64 464, !44, i64 472, !86, i64 480, !87, i64 504, !35, i64 568, !35, i64 576, !35, i64 584, !35, i64 592, !35, i64 600, !35, i64 608, !36, i64 616, !36, i64 4712, !36, i64 8808, !44, i64 12904, !44, i64 12912, !89, i64 12920, !41, i64 12976, !44, i64 12984, !35, i64 12992, !90, i64 13000, !90, i64 13032, !35, i64 13064, !44, i64 13072, !44, i64 13080, !35, i64 13088, !35, i64 13096, !35, i64 13104, !41, i64 13112, !41, i64 13116, !82, i64 13120, !35, i64 13128, !85, i64 13136, !35, i64 13168, !35, i64 13176, !41, i64 13184, !41, i64 13188, !91, i64 13192, !41, i64 13200, !44, i64 13208, !44, i64 13216, !41, i64 13224, !44, i64 13232}
!82 = !{!"_PixelPacket", !51, i64 0, !51, i64 2, !51, i64 4, !51, i64 6}
!83 = !{!"_ChromaticityInfo", !84, i64 0, !84, i64 24, !84, i64 48, !84, i64 72}
!84 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!85 = !{!"_RectangleInfo", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!86 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!87 = !{!"_TimerInfo", !88, i64 0, !88, i64 24, !41, i64 48, !44, i64 56}
!88 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!89 = !{!"_ExceptionInfo", !41, i64 0, !41, i64 4, !35, i64 8, !35, i64 16, !35, i64 24, !41, i64 32, !35, i64 40, !44, i64 48}
!90 = !{!"_ProfileInfo", !35, i64 0, !44, i64 8, !35, i64 16, !44, i64 24}
!91 = !{!"long long", !36, i64 0}
!92 = !{!81, !41, i64 32}
!93 = !{!82, !51, i64 6}
!94 = !{!82, !51, i64 4}
!95 = !{!81, !41, i64 4}
!96 = !{!82, !51, i64 2}
!97 = !{!82, !51, i64 0}
!98 = !{!"color.c:IsColorEqual"}
!99 = !{!"color.c:MagickMax"}
!100 = !{!81, !41, i64 12976}
!101 = !{!81, !44, i64 48}
!102 = !{!81, !44, i64 40}
!103 = distinct !{!103, !53}
!104 = distinct !{!104, !53}
!105 = distinct !{!105, !53}
!106 = !{!81, !35, i64 568}
!107 = distinct !{!107, !53}
!108 = !{!"color.c:SetMagickPixelPacket"}
!109 = !{!42, !43, i64 16}
!110 = !{!"color.c:SetImageProgress"}
!111 = !{!81, !35, i64 576}
!112 = !{!"color.c:IsMagickColorEqual"}
!113 = distinct !{!113, !53}
!114 = distinct !{!114, !53}
!115 = distinct !{!115, !53}
!116 = !{!117, !41, i64 4}
!117 = !{!"_LongPixelPacket", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16}
!118 = !{!117, !41, i64 8}
!119 = !{!117, !41, i64 0}
!120 = distinct !{!120, !53}
!121 = distinct !{!121, !53}
!122 = !{!117, !41, i64 12}
!123 = distinct !{!123, !53}
!124 = distinct !{!124, !53}
!125 = distinct !{!125, !53}
!126 = distinct !{!126, !53}
!127 = !{!128, !43, i64 0}
!128 = !{!"_GeometryInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!129 = !{!128, !43, i64 8}
!130 = !{!128, !43, i64 16}
!131 = !{!128, !43, i64 24}
!132 = !{!128, !43, i64 32}
!133 = !{!"color.c:MagickMin"}
!134 = !{!81, !44, i64 56}
!135 = !{!40, !45, i64 56}
!136 = !{!40, !45, i64 60}
!137 = !{!40, !45, i64 64}
!138 = !{!40, !45, i64 68}
!139 = distinct !{!139, !53}
!140 = !{!"color.c:GetQuantumRange"}
!141 = !{!"color.c:ScaleAnyToQuantum"}
!142 = !{!"color.c:IssRGBColorspace"}
!143 = !{!"color.c:AcquireColorCache"}
!144 = distinct !{!144, !53}
!145 = !{!146, !35, i64 0}
!146 = !{!"_ColorMapInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !45, i64 12, !44, i64 16}
!147 = !{!146, !36, i64 8}
!148 = !{!146, !36, i64 9}
!149 = !{!146, !36, i64 10}
!150 = !{!146, !45, i64 12}
!151 = !{!146, !44, i64 16}
!152 = !{!40, !44, i64 104}
!153 = distinct !{!153, !53}
!154 = !{!"color.c:LoadColorCache"}
!155 = distinct !{!155, !53}
!156 = distinct !{!156, !53}
!157 = distinct !{!157, !53}
!158 = distinct !{!158, !53}
