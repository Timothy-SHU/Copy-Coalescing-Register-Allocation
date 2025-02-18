; ModuleID = 'magick/identify.c'
source_filename = "magick/identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._ChannelMoments = type { [32 x double], %struct._PointInfo, %struct._PointInfo, double, double, double }
%struct._PointInfo = type { double, double }
%struct._ChannelFeatures = type { [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double] }

@.str = private unnamed_addr constant [18 x i8] c"magick/identify.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"identify:locate\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"identify:limit\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"  Channel %s locations:\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s=>\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"%s[%.20g] \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%.20gx%.20g=>\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"%.20gx%.20g \00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%.20gx%.20g%+.20g%+.20g \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%.20g-bit \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%.20gc \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"%.20g=>%.20gc \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"%.20g/%f/%fdb \00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"%0.3fu %lu:%02lu.%03lu\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Image: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"  Base filename: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"  Format: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"  Format: %s (%s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"  Mime type: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"  Class: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"  Geometry: %.20gx%.20g%+.20g%+.20g\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"  Base geometry: %.20gx%.20g\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"  Resolution: %gx%g\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"  Print size: %gx%g\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"  Units: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"  Type: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"  Base type: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"  Endianess: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"  Colorspace: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"identify:moments\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"identify:features\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"  Depth: %.20g-bit\0A\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"  Depth: %.20g/%.20g-bit\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"  Channel depth:\0A\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"    red: %.20g-bit\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"    green: %.20g-bit\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"    blue: %.20g-bit\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"    cyan: %.20g-bit\0A\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"    magenta: %.20g-bit\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"    yellow: %.20g-bit\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"    black: %.20g-bit\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"    gray: %.20g-bit\0A\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"    alpha: %.20g-bit\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"  Channel statistics:\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"  Image statistics:\0A\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Overall\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"  Channel moments:\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"  Image moments:\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"  Channel perceptual hash:\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"Red, Hue\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"Green, Chroma\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"Blue, Luma\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"Alpha, Alpha\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"  Channel features (horizontal, vertical, left and right diagonals, average):\0A\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"  Total ink density: %.*g%%\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"  Alpha: %s \00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"identify:unique-colors\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"  Colors: %.20g\0A\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"  Histogram:\0A\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"  Colormap entries: %.20g\0A\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"  Colormap:\0A\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"  %8ld: %s %s %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"  Mean error per pixel: %g\0A\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"  Normalized mean error: %g\0A\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"  Normalized maximum error: %g\0A\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"  Rendering intent: %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"  Gamma: %g\0A\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"  Chromaticity:\0A\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"    red primary: (%g,%g)\0A\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"    green primary: (%g,%g)\0A\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"    blue primary: (%g,%g)\0A\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"    white point: (%g,%g)\0A\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"  Tile geometry: %.20gx%.20g%+.20g%+.20g\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"  Background color: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"  Border color: %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"  Matte color: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"  Transparent color: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"  Interlace: %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"  Intensity: %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"  Compose: %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"  Page geometry: %.20gx%.20g%+.20g%+.20g\0A\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"  Origin geometry: %+.20g%+.20g\0A\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"  Dispose: %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"  Delay: %.20gx%.20g\0A\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"  Iterations: %.20g\0A\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"  Duration: %.20g\0A\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"  Scene: %.20g of %.20g\0A\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"  Scene: %.20g\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"  Compression: %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"  Quality: %.20g\0A\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"  Orientation: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"  Montage: %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"64x64\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"  Directory:\0A\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c" %.20gx%.20g %s\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"  %s:\0A\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"exif:*\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"icc:*\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"iptc:*\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"xmp:*\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"  Properties:\0A\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"    %s: \00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"8BIM:1999,2998:#1\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"  Clipping path: \00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"  Profiles:\0A\00", align 1
@.str.124 = private unnamed_addr constant [29 x i8] c"    Profile-%s: %.20g bytes\0A\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"iptc\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"Image Name\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Edit Status\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"Category\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"Supplemental Category\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"Fixture Identifier\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"Keyword\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"Release Date\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"Release Time\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"Special Instructions\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"Reference Service\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"Reference Date\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"Reference Number\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"Created Date\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"Created Time\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"Originating Program\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"Program Version\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"Object Cycle\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"Byline\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"Byline Title\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"City\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"Province State\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Country Code\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.150 = private unnamed_addr constant [32 x i8] c"Original Transmission Reference\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"Headline\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"Credit\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"Src\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"Copyright String\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"Caption\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"Local Caption\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"Caption Writer\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"Custom Field 1\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"Custom Field 2\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"Custom Field 3\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"Custom Field 4\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"Custom Field 5\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"Custom Field 6\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"Custom Field 7\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"Custom Field 8\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"Custom Field 9\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"Custom Field 10\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"Custom Field 11\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"Custom Field 12\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"Custom Field 13\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"Custom Field 14\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"Custom Field 15\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"Custom Field 16\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"Custom Field 17\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"Custom Field 18\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"Custom Field 19\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"Custom Field 20\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"      %s[%.20g,%.20g]: \00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"  Artifacts:\0A\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"  Registry:\0A\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"  Tainted: %s\0A\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"  Filesize: %s\0A\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"  Number pixels: %s\0A\00", align 1
@.str.185 = private unnamed_addr constant [25 x i8] c"  Pixels per second: %s\0A\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"  User time: %0.3fu\0A\00", align 1
@.str.187 = private unnamed_addr constant [33 x i8] c"  Elapsed time: %lu:%02lu.%03lu\0A\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"  Version: %s\0A\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"  %s: %.*g (%.*g)\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c" %.20g,%.20g\00", align 1
@.str.193 = private unnamed_addr constant [139 x i8] c"    %s:\0A      min: %u (%g)\0A      max: %u (%g)\0A      mean: %g (%g)\0A      standard deviation: %g (%g)\0A      kurtosis: %g\0A      skewness: %g\0A\00", align 1
@__const.PrintChannelMoments.powers = private unnamed_addr constant [8 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 3.000000e+00, double 6.000000e+00, double 4.000000e+00, double 6.000000e+00, double 4.000000e+00], align 16
@.str.194 = private unnamed_addr constant [9 x i8] c"    %s:\0A\00", align 1
@.str.195 = private unnamed_addr constant [27 x i8] c"      Centroid: %.*g,%.*g\0A\00", align 1
@.str.196 = private unnamed_addr constant [48 x i8] c"      Ellipse Semi-Major/Minor axis: %.*g,%.*g\0A\00", align 1
@.str.197 = private unnamed_addr constant [27 x i8] c"      Ellipse angle: %.*g\0A\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"      Ellipse eccentricity: %.*g\0A\00", align 1
@.str.199 = private unnamed_addr constant [38 x i8] c"      Ellipse intensity: %.*g (%.*g)\0A\00", align 1
@.str.200 = private unnamed_addr constant [27 x i8] c"      I%.20g: %.*g (%.*g)\0A\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"      PH%.20g: %.*g, %.*g\0A\00", align 1
@.str.202 = private unnamed_addr constant [908 x i8] c"    %s:\0A      Angular Second Moment:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Contrast:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Correlation:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum of Squares Variance:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Inverse Difference Moment:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum Average:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum Variance:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum Entropy:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Entropy:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Difference Variance:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Difference Entropy:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Information Measure of Correlation 1:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Information Measure of Correlation 2:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Maximum Correlation Coefficient:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IdentifyImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca %struct._MagickPixelPacket, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca [4096 x i8], align 16
  %13 = alloca [4096 x i8], align 16
  %14 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #12
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %16 = load i32, ptr %15, align 8, !tbaa !34
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 546, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #12
  br label %21

21:                                               ; preds = %18, %3
  %22 = icmp eq ptr %1, null
  %23 = load ptr, ptr @stdout, align 8
  %24 = select i1 %22, ptr %23, ptr %1
  %25 = tail call ptr @AcquireExceptionInfo() #12
  %26 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %219, label %28

28:                                               ; preds = %21
  %29 = tail call i64 @ParseCommandOption(i32 noundef 61, i32 noundef 0, ptr noundef nonnull %26) #12
  %30 = trunc i64 %29 to i32
  %31 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.4) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = tail call i64 @strtoul(ptr nocapture noundef nonnull %31, ptr noundef null, i32 noundef 10) #12
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi i64 [ %34, %33 ], [ 0, %28 ]
  %37 = load i32, ptr %15, align 8, !tbaa !34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %41 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 147, ptr noundef nonnull @.str.2, ptr noundef nonnull %40) #12
  br label %42

42:                                               ; preds = %39, %35
  %43 = tail call dereferenceable_or_null(4608) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 96) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @GetExceptionInfo(ptr noundef nonnull %4) #12
  %46 = tail call ptr @__errno_location() #14
  %47 = load i32, ptr %46, align 4, !tbaa !53
  %48 = call ptr @GetExceptionMessage(i32 noundef %47) #12
  %49 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, i32 noundef 700, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef %48) #12
  %50 = call ptr @DestroyString(ptr noundef %48) #12
  call void @CatchException(ptr noundef nonnull %4) #12
  %51 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #12
  call void @MagickCoreTerminus() #12
  call void @_exit(i32 noundef 1) #15
  unreachable

52:                                               ; preds = %42
  %53 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %43, i32 noundef 0, i64 noundef 4608) #12
  %54 = icmp eq i32 %30, 5
  br label %76

55:                                               ; preds = %82
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %57 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %58 = load i64, ptr %57, align 8, !tbaa !54
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %202

60:                                               ; preds = %55
  %61 = icmp eq i32 %30, 5
  %62 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 1, i32 2
  %63 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 2, i32 2
  %64 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 4, i32 2
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %66 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 8, i32 2
  %67 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %68 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 32, i32 2
  %69 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 1, i32 1
  %70 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 2, i32 1
  %71 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 4, i32 1
  %72 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %73 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 8, i32 1
  %74 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %75 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 32, i32 1
  br label %85

76:                                               ; preds = %52, %82
  %77 = phi i64 [ 0, %52 ], [ %83, %82 ]
  br i1 %54, label %80, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 %77, i32 2
  store double 0xFFEFFFFFFFFFFFFF, ptr %79, align 8, !tbaa !55
  br label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct._ChannelStatistics, ptr %43, i64 %77, i32 1
  store double 0x7FEFFFFFFFFFFFFF, ptr %81, align 8, !tbaa !57
  br label %82

82:                                               ; preds = %80, %78
  %83 = add nuw nsw i64 %77, 1
  %84 = icmp eq i64 %83, 48
  br i1 %84, label %55, label %76, !llvm.loop !58

85:                                               ; preds = %60, %198
  %86 = phi i64 [ 0, %60 ], [ %199, %198 ]
  %87 = load i64, ptr %56, align 8, !tbaa !61
  %88 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef %86, i64 noundef %87, i64 noundef 1, ptr noundef %25) #12
  %89 = icmp eq ptr %88, null
  br i1 %89, label %202, label %90

90:                                               ; preds = %85
  %91 = tail call ptr @GetVirtualIndexQueue(ptr noundef %0) #12
  %92 = load i64, ptr %56, align 8, !tbaa !61
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %198

94:                                               ; preds = %90
  %95 = icmp eq ptr %91, null
  %96 = icmp eq ptr %91, null
  br label %97

97:                                               ; preds = %94, %194
  %98 = phi i64 [ 0, %94 ], [ %196, %194 ]
  %99 = phi ptr [ %88, %94 ], [ %195, %194 ]
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 2
  %101 = load i16, ptr %100, align 2, !tbaa !62
  %102 = uitofp i16 %101 to double
  br i1 %61, label %144, label %103

103:                                              ; preds = %97
  %104 = load double, ptr %62, align 8, !tbaa !55
  %105 = fcmp olt double %104, %102
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store double %102, ptr %62, align 8, !tbaa !55
  br label %107

107:                                              ; preds = %106, %103
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !63
  %110 = uitofp i16 %109 to double
  %111 = load double, ptr %63, align 8, !tbaa !55
  %112 = fcmp olt double %111, %110
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store double %110, ptr %63, align 8, !tbaa !55
  br label %114

114:                                              ; preds = %113, %107
  %115 = load i16, ptr %99, align 2, !tbaa !64
  %116 = uitofp i16 %115 to double
  %117 = load double, ptr %64, align 8, !tbaa !55
  %118 = fcmp olt double %117, %116
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store double %116, ptr %64, align 8, !tbaa !55
  br label %120

120:                                              ; preds = %119, %114
  %121 = load i32, ptr %65, align 8, !tbaa !65
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %125 = load i16, ptr %124, align 2, !tbaa !66
  %126 = uitofp i16 %125 to double
  %127 = load double, ptr %66, align 8, !tbaa !55
  %128 = fcmp olt double %127, %126
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store double %126, ptr %66, align 8, !tbaa !55
  br label %130

130:                                              ; preds = %129, %123, %120
  %131 = load i32, ptr %67, align 4, !tbaa !67
  %132 = icmp eq i32 %131, 12
  br i1 %132, label %133, label %194

133:                                              ; preds = %130
  %134 = getelementptr inbounds i16, ptr %91, i64 %98
  br i1 %95, label %138, label %135

135:                                              ; preds = %133
  %136 = load i16, ptr %134, align 2, !tbaa !68
  %137 = zext i16 %136 to i32
  br label %138

138:                                              ; preds = %135, %133
  %139 = phi i32 [ %137, %135 ], [ 0, %133 ]
  %140 = sitofp i32 %139 to double
  %141 = load double, ptr %68, align 8, !tbaa !55
  %142 = fcmp olt double %141, %140
  br i1 %142, label %143, label %194

143:                                              ; preds = %138
  br i1 %95, label %190, label %185

144:                                              ; preds = %97
  %145 = load double, ptr %69, align 8, !tbaa !57
  %146 = fcmp ogt double %145, %102
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store double %102, ptr %69, align 8, !tbaa !57
  br label %148

148:                                              ; preds = %147, %144
  %149 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 1
  %150 = load i16, ptr %149, align 2, !tbaa !63
  %151 = uitofp i16 %150 to double
  %152 = load double, ptr %70, align 8, !tbaa !57
  %153 = fcmp ogt double %152, %151
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store double %151, ptr %70, align 8, !tbaa !57
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i16, ptr %99, align 2, !tbaa !64
  %157 = uitofp i16 %156 to double
  %158 = load double, ptr %71, align 8, !tbaa !57
  %159 = fcmp ogt double %158, %157
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store double %157, ptr %71, align 8, !tbaa !57
  br label %161

161:                                              ; preds = %160, %155
  %162 = load i32, ptr %72, align 8, !tbaa !65
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 0, i32 3
  %166 = load i16, ptr %165, align 2, !tbaa !66
  %167 = uitofp i16 %166 to double
  %168 = load double, ptr %73, align 8, !tbaa !57
  %169 = fcmp ogt double %168, %167
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store double %167, ptr %73, align 8, !tbaa !57
  br label %171

171:                                              ; preds = %170, %164, %161
  %172 = load i32, ptr %74, align 4, !tbaa !67
  %173 = icmp eq i32 %172, 12
  br i1 %173, label %174, label %194

174:                                              ; preds = %171
  %175 = getelementptr inbounds i16, ptr %91, i64 %98
  br i1 %96, label %179, label %176

176:                                              ; preds = %174
  %177 = load i16, ptr %175, align 2, !tbaa !68
  %178 = zext i16 %177 to i32
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %178, %176 ], [ 0, %174 ]
  %181 = sitofp i32 %180 to double
  %182 = load double, ptr %75, align 8, !tbaa !57
  %183 = fcmp ogt double %182, %181
  br i1 %183, label %184, label %194

184:                                              ; preds = %179
  br i1 %96, label %190, label %185

185:                                              ; preds = %184, %143
  %186 = phi ptr [ %134, %143 ], [ %175, %184 ]
  %187 = phi ptr [ %68, %143 ], [ %75, %184 ]
  %188 = load i16, ptr %186, align 2, !tbaa !68
  %189 = zext i16 %188 to i32
  br label %190

190:                                              ; preds = %185, %184, %143
  %191 = phi i32 [ 0, %143 ], [ 0, %184 ], [ %189, %185 ]
  %192 = phi ptr [ %68, %143 ], [ %75, %184 ], [ %187, %185 ]
  %193 = sitofp i32 %191 to double
  store double %193, ptr %192, align 8, !tbaa !69
  br label %194

194:                                              ; preds = %190, %179, %171, %138, %130
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %99, i64 1
  %196 = add nuw nsw i64 %98, 1
  %197 = icmp eq i64 %196, %92
  br i1 %197, label %198, label %97, !llvm.loop !70

198:                                              ; preds = %194, %90
  %199 = add nuw nsw i64 %86, 1
  %200 = load i64, ptr %57, align 8, !tbaa !54
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %85, label %202, !llvm.loop !71

202:                                              ; preds = %198, %85, %55
  %203 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !67
  %205 = tail call i32 @IsGrayImage(ptr noundef %0, ptr noundef %25) #12
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %206, i32 %204, i32 2
  %208 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.5, ptr noundef nonnull %26) #12
  switch i32 %207, label %209 [
    i32 2, label %211
    i32 12, label %210
  ]

209:                                              ; preds = %202
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  br label %212

210:                                              ; preds = %202
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  br label %212

211:                                              ; preds = %202
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  br label %212

212:                                              ; preds = %211, %210, %209
  %213 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %214 = load i32, ptr %213, align 8, !tbaa !65
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  tail call fastcc void @PrintChannelLocations(ptr noundef %24, ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.14, i32 noundef %30, i64 noundef %36, ptr noundef %43)
  br label %217

217:                                              ; preds = %216, %212
  %218 = tail call ptr @RelinquishMagickMemory(ptr noundef %43) #12
  br label %1849

219:                                              ; preds = %21
  store i8 0, ptr %6, align 16, !tbaa !72
  %220 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 46
  %221 = tail call double @GetElapsedTime(ptr noundef nonnull %220) #12
  %222 = tail call double @GetUserTime(ptr noundef nonnull %220) #12
  tail call void @GetTimerInfo(ptr noundef nonnull %220) #12
  %223 = icmp eq i32 %2, 0
  br i1 %223, label %224, label %386

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %226 = load i8, ptr %225, align 8, !tbaa !72
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %230 = tail call i32 @LocaleCompare(ptr noundef nonnull %225, ptr noundef nonnull %229) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %228
  %233 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.15, ptr noundef nonnull %225) #12
  br label %234

234:                                              ; preds = %228, %232, %224
  %235 = tail call ptr @GetPreviousImageInList(ptr noundef %0) #12
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %247

237:                                              ; preds = %234
  %238 = tail call ptr @GetNextImageInList(ptr noundef %0) #12
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %242 = load i64, ptr %241, align 8, !tbaa !73
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %246 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef nonnull %245) #12
  br label %253

247:                                              ; preds = %240, %237, %234
  %248 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %249 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %250 = load i64, ptr %249, align 8, !tbaa !73
  %251 = uitofp i64 %250 to double
  %252 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.17, ptr noundef nonnull %248, double noundef %251) #12
  br label %253

253:                                              ; preds = %247, %244
  %254 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %255 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef nonnull %254) #12
  %256 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %257 = load i64, ptr %256, align 8, !tbaa !74
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %261 = load i64, ptr %260, align 8, !tbaa !75
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %279, label %263

263:                                              ; preds = %259, %253
  %264 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %265 = load i64, ptr %264, align 8, !tbaa !61
  %266 = icmp eq i64 %257, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %269 = load i64, ptr %268, align 8, !tbaa !75
  %270 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %271 = load i64, ptr %270, align 8, !tbaa !54
  %272 = icmp eq i64 %269, %271
  br i1 %272, label %279, label %273

273:                                              ; preds = %267, %263
  %274 = uitofp i64 %257 to double
  %275 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %276 = load i64, ptr %275, align 8, !tbaa !75
  %277 = uitofp i64 %276 to double
  %278 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.18, double noundef %274, double noundef %277) #12
  br label %279

279:                                              ; preds = %267, %273, %259
  %280 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %281 = load i64, ptr %280, align 8, !tbaa !61
  %282 = uitofp i64 %281 to double
  %283 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %284 = load i64, ptr %283, align 8, !tbaa !54
  %285 = uitofp i64 %284 to double
  %286 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.19, double noundef %282, double noundef %285) #12
  %287 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %288 = load i64, ptr %287, align 8, !tbaa !76
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %279
  %291 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %292 = load i64, ptr %291, align 8, !tbaa !77
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %296 = load i64, ptr %295, align 8, !tbaa !78
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %300 = load i64, ptr %299, align 8, !tbaa !79
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %314, label %302

302:                                              ; preds = %298, %294, %290, %279
  %303 = uitofp i64 %288 to double
  %304 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %305 = load i64, ptr %304, align 8, !tbaa !77
  %306 = uitofp i64 %305 to double
  %307 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %308 = load i64, ptr %307, align 8, !tbaa !78
  %309 = sitofp i64 %308 to double
  %310 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %311 = load i64, ptr %310, align 8, !tbaa !79
  %312 = sitofp i64 %311 to double
  %313 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.20, double noundef %303, double noundef %306, double noundef %309, double noundef %312) #12
  br label %314

314:                                              ; preds = %302, %298
  %315 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %316 = load i64, ptr %315, align 8, !tbaa !80
  %317 = uitofp i64 %316 to double
  %318 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.21, double noundef %317) #12
  %319 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %320 = load i32, ptr %319, align 8, !tbaa !81
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %314
  %323 = zext i32 %320 to i64
  %324 = tail call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %323) #12
  %325 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef %324) #12
  br label %326

326:                                              ; preds = %322, %314
  %327 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %328 = load i32, ptr %327, align 4, !tbaa !67
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %334, label %330

330:                                              ; preds = %326
  %331 = zext i32 %328 to i64
  %332 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %331) #12
  %333 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef %332) #12
  br label %334

334:                                              ; preds = %330, %326
  %335 = load i32, ptr %0, align 8, !tbaa !82
  %336 = icmp eq i32 %335, 1
  %337 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 43
  %338 = load i64, ptr %337, align 8, !tbaa !83
  br i1 %336, label %339, label %344

339:                                              ; preds = %334
  %340 = icmp eq i64 %338, 0
  br i1 %340, label %355, label %341

341:                                              ; preds = %339
  %342 = call i64 @FormatMagickSize(i64 noundef %338, i32 noundef 0, ptr noundef nonnull %6) #12
  %343 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #12
  br label %355

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %346 = load i64, ptr %345, align 8, !tbaa !84
  %347 = icmp ugt i64 %338, %346
  br i1 %347, label %351, label %348

348:                                              ; preds = %344
  %349 = uitofp i64 %346 to double
  %350 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.22, double noundef %349) #12
  br label %355

351:                                              ; preds = %344
  %352 = uitofp i64 %338 to double
  %353 = uitofp i64 %346 to double
  %354 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.23, double noundef %352, double noundef %353) #12
  br label %355

355:                                              ; preds = %348, %351, %339, %341
  %356 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %357 = load double, ptr %356, align 8, !tbaa !85
  %358 = fcmp une double %357, 0.000000e+00
  br i1 %358, label %359, label %366

359:                                              ; preds = %355
  %360 = fadd double %357, 5.000000e-01
  %361 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  %362 = load double, ptr %361, align 8, !tbaa !86
  %363 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  %364 = load double, ptr %363, align 8, !tbaa !87
  %365 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.24, double noundef %360, double noundef %362, double noundef %364) #12
  br label %366

366:                                              ; preds = %359, %355
  %367 = call i64 @GetBlobSize(ptr noundef %0) #12
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %366
  %370 = call i64 @GetBlobSize(ptr noundef %0) #12
  %371 = call i64 @FormatMagickSize(i64 noundef %370, i32 noundef 0, ptr noundef nonnull %6) #12
  %372 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #12
  br label %373

373:                                              ; preds = %369, %366
  %374 = fdiv double %221, 6.000000e+01
  %375 = fptoui double %374 to i64
  %376 = call double @fmod(double noundef %221, double noundef 6.000000e+01) #12
  %377 = call double @llvm.floor.f64(double %376)
  %378 = fptoui double %377 to i64
  %379 = call double @llvm.floor.f64(double %221)
  %380 = fsub double %221, %379
  %381 = fmul double %380, 1.000000e+03
  %382 = fptoui double %381 to i64
  %383 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.25, double noundef %222, i64 noundef %375, i64 noundef %378, i64 noundef %382) #12
  %384 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.26) #12
  %385 = call i32 @fflush(ptr noundef %24)
  br label %1849

386:                                              ; preds = %219
  %387 = tail call ptr @GetVirtualPixels(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %25) #12
  %388 = tail call ptr @DestroyExceptionInfo(ptr noundef %25) #12
  %389 = icmp eq ptr %387, null
  %390 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %391 = tail call i32 @GetImageType(ptr noundef %0, ptr noundef nonnull %390) #12
  %392 = tail call i32 @SignatureImage(ptr noundef %0) #12
  %393 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %394 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.27, ptr noundef nonnull %393) #12
  %395 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %396 = load i8, ptr %395, align 8, !tbaa !72
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %403, label %398

398:                                              ; preds = %386
  %399 = tail call i32 @LocaleCompare(ptr noundef nonnull %395, ptr noundef nonnull %393) #12
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #12
  call void @GetPathComponent(ptr noundef nonnull %395, i32 noundef 4, ptr noundef nonnull %8) #12
  %402 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.28, ptr noundef nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #12
  br label %403

403:                                              ; preds = %398, %401, %386
  %404 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %405 = call ptr @GetMagickInfo(ptr noundef nonnull %404, ptr noundef nonnull %390) #12
  %406 = icmp eq ptr %405, null
  br i1 %406, label %410, label %407

407:                                              ; preds = %403
  %408 = call ptr @GetMagickDescription(ptr noundef nonnull %405) #12
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %407, %403
  %411 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef nonnull %404) #12
  br label %415

412:                                              ; preds = %407
  %413 = call ptr @GetMagickDescription(ptr noundef nonnull %405) #12
  %414 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.30, ptr noundef nonnull %404, ptr noundef %413) #12
  br label %415

415:                                              ; preds = %412, %410
  br i1 %406, label %419, label %416

416:                                              ; preds = %415
  %417 = call ptr @GetMagickMimeType(ptr noundef nonnull %405) #12
  %418 = icmp eq ptr %417, null
  br i1 %418, label %422, label %419

419:                                              ; preds = %416, %415
  %420 = call ptr @GetMagickMimeType(ptr noundef %405) #12
  %421 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.31, ptr noundef %420) #12
  br label %422

422:                                              ; preds = %419, %416
  %423 = load i32, ptr %0, align 8, !tbaa !82
  %424 = zext i32 %423 to i64
  %425 = call ptr @CommandOptionToMnemonic(i32 noundef 5, i64 noundef %424) #12
  %426 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef %425) #12
  %427 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %428 = load i64, ptr %427, align 8, !tbaa !61
  %429 = uitofp i64 %428 to double
  %430 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %431 = load i64, ptr %430, align 8, !tbaa !54
  %432 = uitofp i64 %431 to double
  %433 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 2
  %434 = load i64, ptr %433, align 8, !tbaa !88
  %435 = sitofp i64 %434 to double
  %436 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 3
  %437 = load i64, ptr %436, align 8, !tbaa !89
  %438 = sitofp i64 %437 to double
  %439 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.33, double noundef %429, double noundef %432, double noundef %435, double noundef %438) #12
  %440 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %441 = load i64, ptr %440, align 8, !tbaa !74
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %422
  %444 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %445 = load i64, ptr %444, align 8, !tbaa !75
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %461, label %447

447:                                              ; preds = %443, %422
  %448 = load i64, ptr %427, align 8, !tbaa !61
  %449 = icmp eq i64 %441, %448
  br i1 %449, label %450, label %455

450:                                              ; preds = %447
  %451 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %452 = load i64, ptr %451, align 8, !tbaa !75
  %453 = load i64, ptr %430, align 8, !tbaa !54
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %461, label %455

455:                                              ; preds = %450, %447
  %456 = uitofp i64 %441 to double
  %457 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %458 = load i64, ptr %457, align 8, !tbaa !75
  %459 = uitofp i64 %458 to double
  %460 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.34, double noundef %456, double noundef %459) #12
  br label %461

461:                                              ; preds = %450, %455, %443
  %462 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %463 = load double, ptr %462, align 8, !tbaa !90
  %464 = fcmp une double %463, 0.000000e+00
  br i1 %464, label %465, label %480

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %467 = load double, ptr %466, align 8, !tbaa !91
  %468 = fcmp une double %467, 0.000000e+00
  br i1 %468, label %469, label %480

469:                                              ; preds = %465
  %470 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.35, double noundef %463, double noundef %467) #12
  %471 = load i64, ptr %427, align 8, !tbaa !61
  %472 = uitofp i64 %471 to double
  %473 = load double, ptr %462, align 8, !tbaa !90
  %474 = fdiv double %472, %473
  %475 = load i64, ptr %430, align 8, !tbaa !54
  %476 = uitofp i64 %475 to double
  %477 = load double, ptr %466, align 8, !tbaa !91
  %478 = fdiv double %476, %477
  %479 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.36, double noundef %474, double noundef %478) #12
  br label %480

480:                                              ; preds = %469, %465, %461
  %481 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %482 = load i32, ptr %481, align 8, !tbaa !92
  %483 = zext i32 %482 to i64
  %484 = call ptr @CommandOptionToMnemonic(i32 noundef 58, i64 noundef %483) #12
  %485 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.37, ptr noundef %484) #12
  %486 = zext i32 %391 to i64
  %487 = call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %486) #12
  %488 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.38, ptr noundef %487) #12
  %489 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %490 = load i32, ptr %489, align 8, !tbaa !81
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %496, label %492

492:                                              ; preds = %480
  %493 = zext i32 %490 to i64
  %494 = call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %493) #12
  %495 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.39, ptr noundef %494) #12
  br label %496

496:                                              ; preds = %492, %480
  %497 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %498 = load i32, ptr %497, align 8, !tbaa !93
  %499 = zext i32 %498 to i64
  %500 = call ptr @CommandOptionToMnemonic(i32 noundef 22, i64 noundef %499) #12
  %501 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.40, ptr noundef %500) #12
  %502 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %503 = load i32, ptr %502, align 4, !tbaa !67
  %504 = zext i32 %503 to i64
  %505 = call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %504) #12
  %506 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.41, ptr noundef %505) #12
  %507 = load i32, ptr %502, align 4, !tbaa !67
  br i1 %389, label %594, label %508

508:                                              ; preds = %496
  %509 = call ptr @GetImageChannelStatistics(ptr noundef nonnull %0, ptr noundef nonnull %390) #12
  %510 = icmp eq ptr %509, null
  br i1 %510, label %588, label %511

511:                                              ; preds = %508
  %512 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #12
  %513 = icmp eq ptr %512, null
  br i1 %513, label %517, label %514

514:                                              ; preds = %511
  %515 = call ptr @GetImageChannelMoments(ptr noundef nonnull %0, ptr noundef nonnull %390) #12
  %516 = call ptr @GetImageChannelPerceptualHash(ptr noundef nonnull %0, ptr noundef nonnull %390) #12
  br label %517

517:                                              ; preds = %514, %511
  %518 = phi ptr [ %516, %514 ], [ null, %511 ]
  %519 = phi ptr [ %515, %514 ], [ null, %511 ]
  %520 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #12
  %521 = icmp eq ptr %520, null
  br i1 %521, label %525, label %522

522:                                              ; preds = %517
  %523 = call i64 @strtoul(ptr nocapture noundef nonnull %520, ptr noundef null, i32 noundef 10) #12
  %524 = call ptr @GetImageChannelFeatures(ptr noundef nonnull %0, i64 noundef %523, ptr noundef nonnull %390) #12
  br label %525

525:                                              ; preds = %522, %517
  %526 = phi ptr [ %524, %522 ], [ null, %517 ]
  %527 = call i64 @GetImageDepth(ptr noundef nonnull %0, ptr noundef nonnull %390) #12
  %528 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %529 = load i64, ptr %528, align 8, !tbaa !80
  %530 = icmp eq i64 %529, %527
  %531 = uitofp i64 %529 to double
  br i1 %530, label %532, label %534

532:                                              ; preds = %525
  %533 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.44, double noundef %531) #12
  br label %537

534:                                              ; preds = %525
  %535 = uitofp i64 %527 to double
  %536 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.45, double noundef %531, double noundef %535) #12
  br label %537

537:                                              ; preds = %534, %532
  %538 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.46) #12
  %539 = call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %390) #12
  %540 = icmp eq i32 %539, 0
  %541 = select i1 %540, i32 %507, i32 2
  %542 = getelementptr inbounds %struct._ChannelStatistics, ptr %509, i64 1
  %543 = load i64, ptr %542, align 8, !tbaa !94
  %544 = uitofp i64 %543 to double
  switch i32 %541, label %545 [
    i32 2, label %569
    i32 12, label %555
  ]

545:                                              ; preds = %537
  %546 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.47, double noundef %544) #12
  %547 = getelementptr inbounds %struct._ChannelStatistics, ptr %509, i64 2
  %548 = load i64, ptr %547, align 8, !tbaa !94
  %549 = uitofp i64 %548 to double
  %550 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.48, double noundef %549) #12
  %551 = getelementptr inbounds %struct._ChannelStatistics, ptr %509, i64 4
  %552 = load i64, ptr %551, align 8, !tbaa !94
  %553 = uitofp i64 %552 to double
  %554 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.49, double noundef %553) #12
  br label %571

555:                                              ; preds = %537
  %556 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.50, double noundef %544) #12
  %557 = getelementptr inbounds %struct._ChannelStatistics, ptr %509, i64 2
  %558 = load i64, ptr %557, align 8, !tbaa !94
  %559 = uitofp i64 %558 to double
  %560 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.51, double noundef %559) #12
  %561 = getelementptr inbounds %struct._ChannelStatistics, ptr %509, i64 4
  %562 = load i64, ptr %561, align 8, !tbaa !94
  %563 = uitofp i64 %562 to double
  %564 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.52, double noundef %563) #12
  %565 = getelementptr inbounds %struct._ChannelStatistics, ptr %509, i64 32
  %566 = load i64, ptr %565, align 8, !tbaa !94
  %567 = uitofp i64 %566 to double
  %568 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.53, double noundef %567) #12
  br label %571

569:                                              ; preds = %537
  %570 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.54, double noundef %544) #12
  br label %571

571:                                              ; preds = %569, %555, %545
  %572 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %573 = load i32, ptr %572, align 8, !tbaa !65
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %580, label %575

575:                                              ; preds = %571
  %576 = getelementptr inbounds %struct._ChannelStatistics, ptr %509, i64 8
  %577 = load i64, ptr %576, align 8, !tbaa !94
  %578 = uitofp i64 %577 to double
  %579 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.55, double noundef %578) #12
  br label %580

580:                                              ; preds = %575, %571
  %581 = load i64, ptr %528, align 8, !tbaa !80
  %582 = icmp ult i64 %581, 17
  br i1 %582, label %583, label %588

583:                                              ; preds = %580
  %584 = sub nuw nsw i64 16, %581
  %585 = lshr i64 65535, %584
  %586 = udiv i64 65535, %585
  %587 = uitofp i64 %586 to double
  br label %588

588:                                              ; preds = %580, %583, %508
  %589 = phi double [ 1.000000e+00, %508 ], [ %587, %583 ], [ 1.000000e+00, %580 ]
  %590 = phi i32 [ %507, %508 ], [ %541, %583 ], [ %541, %580 ]
  %591 = phi ptr [ null, %508 ], [ %518, %583 ], [ %518, %580 ]
  %592 = phi ptr [ null, %508 ], [ %519, %583 ], [ %519, %580 ]
  %593 = phi ptr [ null, %508 ], [ %526, %583 ], [ %526, %580 ]
  br i1 %510, label %1853, label %594

594:                                              ; preds = %588, %496
  %595 = phi double [ %589, %588 ], [ 1.000000e+00, %496 ]
  %596 = phi i32 [ %590, %588 ], [ %507, %496 ]
  %597 = phi ptr [ %509, %588 ], [ null, %496 ]
  %598 = phi ptr [ %591, %588 ], [ null, %496 ]
  %599 = phi ptr [ %592, %588 ], [ null, %496 ]
  %600 = phi ptr [ %593, %588 ], [ null, %496 ]
  %601 = icmp eq ptr %597, null
  br i1 %601, label %1024, label %602

602:                                              ; preds = %594
  %603 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.56) #12
  %604 = fdiv double 1.000000e+00, %595
  %605 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 1
  %606 = load double, ptr %605, align 8, !tbaa !57
  %607 = fmul double %604, %606
  %608 = fptrunc double %607 to float
  %609 = fcmp ugt float %608, 0.000000e+00
  switch i32 %596, label %610 [
    i32 2, label %889
    i32 12, label %729
  ]

610:                                              ; preds = %602
  br i1 %609, label %611, label %617

611:                                              ; preds = %610
  %612 = fcmp ult float %608, 6.553500e+04
  br i1 %612, label %613, label %617

613:                                              ; preds = %611
  %614 = fadd float %608, 5.000000e-01
  %615 = fptoui float %614 to i16
  %616 = zext i16 %615 to i32
  br label %617

617:                                              ; preds = %613, %611, %610
  %618 = phi i32 [ %616, %613 ], [ 0, %610 ], [ 65535, %611 ]
  %619 = fdiv double %606, 6.553500e+04
  %620 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 2
  %621 = load double, ptr %620, align 8, !tbaa !55
  %622 = fmul double %604, %621
  %623 = fptrunc double %622 to float
  %624 = fcmp ugt float %623, 0.000000e+00
  br i1 %624, label %625, label %631

625:                                              ; preds = %617
  %626 = fcmp ult float %623, 6.553500e+04
  br i1 %626, label %627, label %631

627:                                              ; preds = %625
  %628 = fadd float %623, 5.000000e-01
  %629 = fptoui float %628 to i16
  %630 = zext i16 %629 to i32
  br label %631

631:                                              ; preds = %617, %625, %627
  %632 = phi i32 [ %630, %627 ], [ 0, %617 ], [ 65535, %625 ]
  %633 = fdiv double %621, 6.553500e+04
  %634 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 7
  %635 = load double, ptr %634, align 8, !tbaa !95
  %636 = fmul double %604, %635
  %637 = fdiv double %635, 6.553500e+04
  %638 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 9
  %639 = load double, ptr %638, align 8, !tbaa !96
  %640 = fmul double %604, %639
  %641 = fdiv double %639, 6.553500e+04
  %642 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 10
  %643 = load double, ptr %642, align 8, !tbaa !97
  %644 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 11
  %645 = load double, ptr %644, align 8, !tbaa !98
  %646 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.6, i32 noundef %618, double noundef %619, i32 noundef %632, double noundef %633, double noundef %636, double noundef %637, double noundef %640, double noundef %641, double noundef %643, double noundef %645) #12
  %647 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 1
  %648 = load double, ptr %647, align 8, !tbaa !57
  %649 = fmul double %604, %648
  %650 = fptrunc double %649 to float
  %651 = fcmp ugt float %650, 0.000000e+00
  br i1 %651, label %652, label %658

652:                                              ; preds = %631
  %653 = fcmp ult float %650, 6.553500e+04
  br i1 %653, label %654, label %658

654:                                              ; preds = %652
  %655 = fadd float %650, 5.000000e-01
  %656 = fptoui float %655 to i16
  %657 = zext i16 %656 to i32
  br label %658

658:                                              ; preds = %654, %652, %631
  %659 = phi i32 [ %657, %654 ], [ 0, %631 ], [ 65535, %652 ]
  %660 = fdiv double %648, 6.553500e+04
  %661 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 2
  %662 = load double, ptr %661, align 8, !tbaa !55
  %663 = fmul double %604, %662
  %664 = fptrunc double %663 to float
  %665 = fcmp ugt float %664, 0.000000e+00
  br i1 %665, label %666, label %672

666:                                              ; preds = %658
  %667 = fcmp ult float %664, 6.553500e+04
  br i1 %667, label %668, label %672

668:                                              ; preds = %666
  %669 = fadd float %664, 5.000000e-01
  %670 = fptoui float %669 to i16
  %671 = zext i16 %670 to i32
  br label %672

672:                                              ; preds = %658, %666, %668
  %673 = phi i32 [ %671, %668 ], [ 0, %658 ], [ 65535, %666 ]
  %674 = fdiv double %662, 6.553500e+04
  %675 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 7
  %676 = load double, ptr %675, align 8, !tbaa !95
  %677 = fmul double %604, %676
  %678 = fdiv double %676, 6.553500e+04
  %679 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 9
  %680 = load double, ptr %679, align 8, !tbaa !96
  %681 = fmul double %604, %680
  %682 = fdiv double %680, 6.553500e+04
  %683 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 10
  %684 = load double, ptr %683, align 8, !tbaa !97
  %685 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 11
  %686 = load double, ptr %685, align 8, !tbaa !98
  %687 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.7, i32 noundef %659, double noundef %660, i32 noundef %673, double noundef %674, double noundef %677, double noundef %678, double noundef %681, double noundef %682, double noundef %684, double noundef %686) #12
  %688 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 1
  %689 = load double, ptr %688, align 8, !tbaa !57
  %690 = fmul double %604, %689
  %691 = fptrunc double %690 to float
  %692 = fcmp ugt float %691, 0.000000e+00
  br i1 %692, label %693, label %699

693:                                              ; preds = %672
  %694 = fcmp ult float %691, 6.553500e+04
  br i1 %694, label %695, label %699

695:                                              ; preds = %693
  %696 = fadd float %691, 5.000000e-01
  %697 = fptoui float %696 to i16
  %698 = zext i16 %697 to i32
  br label %699

699:                                              ; preds = %695, %693, %672
  %700 = phi i32 [ %698, %695 ], [ 0, %672 ], [ 65535, %693 ]
  %701 = fdiv double %689, 6.553500e+04
  %702 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 2
  %703 = load double, ptr %702, align 8, !tbaa !55
  %704 = fmul double %604, %703
  %705 = fptrunc double %704 to float
  %706 = fcmp ugt float %705, 0.000000e+00
  br i1 %706, label %707, label %713

707:                                              ; preds = %699
  %708 = fcmp ult float %705, 6.553500e+04
  br i1 %708, label %709, label %713

709:                                              ; preds = %707
  %710 = fadd float %705, 5.000000e-01
  %711 = fptoui float %710 to i16
  %712 = zext i16 %711 to i32
  br label %713

713:                                              ; preds = %699, %707, %709
  %714 = phi i32 [ %712, %709 ], [ 0, %699 ], [ 65535, %707 ]
  %715 = fdiv double %703, 6.553500e+04
  %716 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 7
  %717 = load double, ptr %716, align 8, !tbaa !95
  %718 = fmul double %604, %717
  %719 = fdiv double %717, 6.553500e+04
  %720 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 9
  %721 = load double, ptr %720, align 8, !tbaa !96
  %722 = fmul double %604, %721
  %723 = fdiv double %721, 6.553500e+04
  %724 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 10
  %725 = load double, ptr %724, align 8, !tbaa !97
  %726 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 11
  %727 = load double, ptr %726, align 8, !tbaa !98
  %728 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.8, i32 noundef %700, double noundef %701, i32 noundef %714, double noundef %715, double noundef %718, double noundef %719, double noundef %722, double noundef %723, double noundef %725, double noundef %727) #12
  br label %926

729:                                              ; preds = %602
  br i1 %609, label %730, label %736

730:                                              ; preds = %729
  %731 = fcmp ult float %608, 6.553500e+04
  br i1 %731, label %732, label %736

732:                                              ; preds = %730
  %733 = fadd float %608, 5.000000e-01
  %734 = fptoui float %733 to i16
  %735 = zext i16 %734 to i32
  br label %736

736:                                              ; preds = %732, %730, %729
  %737 = phi i32 [ %735, %732 ], [ 0, %729 ], [ 65535, %730 ]
  %738 = fdiv double %606, 6.553500e+04
  %739 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 2
  %740 = load double, ptr %739, align 8, !tbaa !55
  %741 = fmul double %604, %740
  %742 = fptrunc double %741 to float
  %743 = fcmp ugt float %742, 0.000000e+00
  br i1 %743, label %744, label %750

744:                                              ; preds = %736
  %745 = fcmp ult float %742, 6.553500e+04
  br i1 %745, label %746, label %750

746:                                              ; preds = %744
  %747 = fadd float %742, 5.000000e-01
  %748 = fptoui float %747 to i16
  %749 = zext i16 %748 to i32
  br label %750

750:                                              ; preds = %736, %744, %746
  %751 = phi i32 [ %749, %746 ], [ 0, %736 ], [ 65535, %744 ]
  %752 = fdiv double %740, 6.553500e+04
  %753 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 7
  %754 = load double, ptr %753, align 8, !tbaa !95
  %755 = fmul double %604, %754
  %756 = fdiv double %754, 6.553500e+04
  %757 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 9
  %758 = load double, ptr %757, align 8, !tbaa !96
  %759 = fmul double %604, %758
  %760 = fdiv double %758, 6.553500e+04
  %761 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 10
  %762 = load double, ptr %761, align 8, !tbaa !97
  %763 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 11
  %764 = load double, ptr %763, align 8, !tbaa !98
  %765 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.9, i32 noundef %737, double noundef %738, i32 noundef %751, double noundef %752, double noundef %755, double noundef %756, double noundef %759, double noundef %760, double noundef %762, double noundef %764) #12
  %766 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 1
  %767 = load double, ptr %766, align 8, !tbaa !57
  %768 = fmul double %604, %767
  %769 = fptrunc double %768 to float
  %770 = fcmp ugt float %769, 0.000000e+00
  br i1 %770, label %771, label %777

771:                                              ; preds = %750
  %772 = fcmp ult float %769, 6.553500e+04
  br i1 %772, label %773, label %777

773:                                              ; preds = %771
  %774 = fadd float %769, 5.000000e-01
  %775 = fptoui float %774 to i16
  %776 = zext i16 %775 to i32
  br label %777

777:                                              ; preds = %773, %771, %750
  %778 = phi i32 [ %776, %773 ], [ 0, %750 ], [ 65535, %771 ]
  %779 = fdiv double %767, 6.553500e+04
  %780 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 2
  %781 = load double, ptr %780, align 8, !tbaa !55
  %782 = fmul double %604, %781
  %783 = fptrunc double %782 to float
  %784 = fcmp ugt float %783, 0.000000e+00
  br i1 %784, label %785, label %791

785:                                              ; preds = %777
  %786 = fcmp ult float %783, 6.553500e+04
  br i1 %786, label %787, label %791

787:                                              ; preds = %785
  %788 = fadd float %783, 5.000000e-01
  %789 = fptoui float %788 to i16
  %790 = zext i16 %789 to i32
  br label %791

791:                                              ; preds = %777, %785, %787
  %792 = phi i32 [ %790, %787 ], [ 0, %777 ], [ 65535, %785 ]
  %793 = fdiv double %781, 6.553500e+04
  %794 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 7
  %795 = load double, ptr %794, align 8, !tbaa !95
  %796 = fmul double %604, %795
  %797 = fdiv double %795, 6.553500e+04
  %798 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 9
  %799 = load double, ptr %798, align 8, !tbaa !96
  %800 = fmul double %604, %799
  %801 = fdiv double %799, 6.553500e+04
  %802 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 10
  %803 = load double, ptr %802, align 8, !tbaa !97
  %804 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 2, i32 11
  %805 = load double, ptr %804, align 8, !tbaa !98
  %806 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.10, i32 noundef %778, double noundef %779, i32 noundef %792, double noundef %793, double noundef %796, double noundef %797, double noundef %800, double noundef %801, double noundef %803, double noundef %805) #12
  %807 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 1
  %808 = load double, ptr %807, align 8, !tbaa !57
  %809 = fmul double %604, %808
  %810 = fptrunc double %809 to float
  %811 = fcmp ugt float %810, 0.000000e+00
  br i1 %811, label %812, label %818

812:                                              ; preds = %791
  %813 = fcmp ult float %810, 6.553500e+04
  br i1 %813, label %814, label %818

814:                                              ; preds = %812
  %815 = fadd float %810, 5.000000e-01
  %816 = fptoui float %815 to i16
  %817 = zext i16 %816 to i32
  br label %818

818:                                              ; preds = %814, %812, %791
  %819 = phi i32 [ %817, %814 ], [ 0, %791 ], [ 65535, %812 ]
  %820 = fdiv double %808, 6.553500e+04
  %821 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 2
  %822 = load double, ptr %821, align 8, !tbaa !55
  %823 = fmul double %604, %822
  %824 = fptrunc double %823 to float
  %825 = fcmp ugt float %824, 0.000000e+00
  br i1 %825, label %826, label %832

826:                                              ; preds = %818
  %827 = fcmp ult float %824, 6.553500e+04
  br i1 %827, label %828, label %832

828:                                              ; preds = %826
  %829 = fadd float %824, 5.000000e-01
  %830 = fptoui float %829 to i16
  %831 = zext i16 %830 to i32
  br label %832

832:                                              ; preds = %818, %826, %828
  %833 = phi i32 [ %831, %828 ], [ 0, %818 ], [ 65535, %826 ]
  %834 = fdiv double %822, 6.553500e+04
  %835 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 7
  %836 = load double, ptr %835, align 8, !tbaa !95
  %837 = fmul double %604, %836
  %838 = fdiv double %836, 6.553500e+04
  %839 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 9
  %840 = load double, ptr %839, align 8, !tbaa !96
  %841 = fmul double %604, %840
  %842 = fdiv double %840, 6.553500e+04
  %843 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 10
  %844 = load double, ptr %843, align 8, !tbaa !97
  %845 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 4, i32 11
  %846 = load double, ptr %845, align 8, !tbaa !98
  %847 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.11, i32 noundef %819, double noundef %820, i32 noundef %833, double noundef %834, double noundef %837, double noundef %838, double noundef %841, double noundef %842, double noundef %844, double noundef %846) #12
  %848 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 32, i32 1
  %849 = load double, ptr %848, align 8, !tbaa !57
  %850 = fmul double %604, %849
  %851 = fptrunc double %850 to float
  %852 = fcmp ugt float %851, 0.000000e+00
  br i1 %852, label %853, label %859

853:                                              ; preds = %832
  %854 = fcmp ult float %851, 6.553500e+04
  br i1 %854, label %855, label %859

855:                                              ; preds = %853
  %856 = fadd float %851, 5.000000e-01
  %857 = fptoui float %856 to i16
  %858 = zext i16 %857 to i32
  br label %859

859:                                              ; preds = %855, %853, %832
  %860 = phi i32 [ %858, %855 ], [ 0, %832 ], [ 65535, %853 ]
  %861 = fdiv double %849, 6.553500e+04
  %862 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 32, i32 2
  %863 = load double, ptr %862, align 8, !tbaa !55
  %864 = fmul double %604, %863
  %865 = fptrunc double %864 to float
  %866 = fcmp ugt float %865, 0.000000e+00
  br i1 %866, label %867, label %873

867:                                              ; preds = %859
  %868 = fcmp ult float %865, 6.553500e+04
  br i1 %868, label %869, label %873

869:                                              ; preds = %867
  %870 = fadd float %865, 5.000000e-01
  %871 = fptoui float %870 to i16
  %872 = zext i16 %871 to i32
  br label %873

873:                                              ; preds = %859, %867, %869
  %874 = phi i32 [ %872, %869 ], [ 0, %859 ], [ 65535, %867 ]
  %875 = fdiv double %863, 6.553500e+04
  %876 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 32, i32 7
  %877 = load double, ptr %876, align 8, !tbaa !95
  %878 = fmul double %604, %877
  %879 = fdiv double %877, 6.553500e+04
  %880 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 32, i32 9
  %881 = load double, ptr %880, align 8, !tbaa !96
  %882 = fmul double %604, %881
  %883 = fdiv double %881, 6.553500e+04
  %884 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 32, i32 10
  %885 = load double, ptr %884, align 8, !tbaa !97
  %886 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 32, i32 11
  %887 = load double, ptr %886, align 8, !tbaa !98
  %888 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.12, i32 noundef %860, double noundef %861, i32 noundef %874, double noundef %875, double noundef %878, double noundef %879, double noundef %882, double noundef %883, double noundef %885, double noundef %887) #12
  br label %926

889:                                              ; preds = %602
  br i1 %609, label %890, label %896

890:                                              ; preds = %889
  %891 = fcmp ult float %608, 6.553500e+04
  br i1 %891, label %892, label %896

892:                                              ; preds = %890
  %893 = fadd float %608, 5.000000e-01
  %894 = fptoui float %893 to i16
  %895 = zext i16 %894 to i32
  br label %896

896:                                              ; preds = %892, %890, %889
  %897 = phi i32 [ %895, %892 ], [ 0, %889 ], [ 65535, %890 ]
  %898 = fdiv double %606, 6.553500e+04
  %899 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 2
  %900 = load double, ptr %899, align 8, !tbaa !55
  %901 = fmul double %604, %900
  %902 = fptrunc double %901 to float
  %903 = fcmp ugt float %902, 0.000000e+00
  br i1 %903, label %904, label %910

904:                                              ; preds = %896
  %905 = fcmp ult float %902, 6.553500e+04
  br i1 %905, label %906, label %910

906:                                              ; preds = %904
  %907 = fadd float %902, 5.000000e-01
  %908 = fptoui float %907 to i16
  %909 = zext i16 %908 to i32
  br label %910

910:                                              ; preds = %896, %904, %906
  %911 = phi i32 [ %909, %906 ], [ 0, %896 ], [ 65535, %904 ]
  %912 = fdiv double %900, 6.553500e+04
  %913 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 7
  %914 = load double, ptr %913, align 8, !tbaa !95
  %915 = fmul double %604, %914
  %916 = fdiv double %914, 6.553500e+04
  %917 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 9
  %918 = load double, ptr %917, align 8, !tbaa !96
  %919 = fmul double %604, %918
  %920 = fdiv double %918, 6.553500e+04
  %921 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 10
  %922 = load double, ptr %921, align 8, !tbaa !97
  %923 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 1, i32 11
  %924 = load double, ptr %923, align 8, !tbaa !98
  %925 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.13, i32 noundef %897, double noundef %898, i32 noundef %911, double noundef %912, double noundef %915, double noundef %916, double noundef %919, double noundef %920, double noundef %922, double noundef %924) #12
  br label %926

926:                                              ; preds = %910, %873, %713
  %927 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %928 = load i32, ptr %927, align 8, !tbaa !65
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %976, label %930

930:                                              ; preds = %926
  %931 = fdiv double 1.000000e+00, %595
  %932 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 8, i32 2
  %933 = load double, ptr %932, align 8, !tbaa !55
  %934 = fsub double 6.553500e+04, %933
  %935 = fmul double %931, %934
  %936 = fptrunc double %935 to float
  %937 = fcmp ugt float %936, 0.000000e+00
  br i1 %937, label %938, label %944

938:                                              ; preds = %930
  %939 = fcmp ult float %936, 6.553500e+04
  br i1 %939, label %940, label %944

940:                                              ; preds = %938
  %941 = fadd float %936, 5.000000e-01
  %942 = fptoui float %941 to i16
  %943 = zext i16 %942 to i32
  br label %944

944:                                              ; preds = %940, %938, %930
  %945 = phi i32 [ %943, %940 ], [ 0, %930 ], [ 65535, %938 ]
  %946 = fdiv double %934, 6.553500e+04
  %947 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 8, i32 1
  %948 = load double, ptr %947, align 8, !tbaa !57
  %949 = fsub double 6.553500e+04, %948
  %950 = fmul double %931, %949
  %951 = fptrunc double %950 to float
  %952 = fcmp ugt float %951, 0.000000e+00
  br i1 %952, label %953, label %959

953:                                              ; preds = %944
  %954 = fcmp ult float %951, 6.553500e+04
  br i1 %954, label %955, label %959

955:                                              ; preds = %953
  %956 = fadd float %951, 5.000000e-01
  %957 = fptoui float %956 to i16
  %958 = zext i16 %957 to i32
  br label %959

959:                                              ; preds = %944, %953, %955
  %960 = phi i32 [ %958, %955 ], [ 0, %944 ], [ 65535, %953 ]
  %961 = fdiv double %949, 6.553500e+04
  %962 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 8, i32 7
  %963 = load double, ptr %962, align 8, !tbaa !95
  %964 = fsub double 6.553500e+04, %963
  %965 = fmul double %931, %964
  %966 = fdiv double %964, 6.553500e+04
  %967 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 8, i32 9
  %968 = load double, ptr %967, align 8, !tbaa !96
  %969 = fmul double %931, %968
  %970 = fdiv double %968, 6.553500e+04
  %971 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 8, i32 10
  %972 = load double, ptr %971, align 8, !tbaa !97
  %973 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 8, i32 11
  %974 = load double, ptr %973, align 8, !tbaa !98
  %975 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.14, i32 noundef %945, double noundef %946, i32 noundef %960, double noundef %961, double noundef %965, double noundef %966, double noundef %969, double noundef %970, double noundef %972, double noundef %974) #12
  br label %976

976:                                              ; preds = %959, %926
  %977 = icmp eq i32 %596, 2
  br i1 %977, label %1022, label %978

978:                                              ; preds = %976
  %979 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.57) #12
  %980 = fdiv double 1.000000e+00, %595
  %981 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 47, i32 1
  %982 = load double, ptr %981, align 8, !tbaa !57
  %983 = fmul double %980, %982
  %984 = fptrunc double %983 to float
  %985 = fcmp ugt float %984, 0.000000e+00
  br i1 %985, label %986, label %992

986:                                              ; preds = %978
  %987 = fcmp ult float %984, 6.553500e+04
  br i1 %987, label %988, label %992

988:                                              ; preds = %986
  %989 = fadd float %984, 5.000000e-01
  %990 = fptoui float %989 to i16
  %991 = zext i16 %990 to i32
  br label %992

992:                                              ; preds = %988, %986, %978
  %993 = phi i32 [ %991, %988 ], [ 0, %978 ], [ 65535, %986 ]
  %994 = fdiv double %982, 6.553500e+04
  %995 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 47, i32 2
  %996 = load double, ptr %995, align 8, !tbaa !55
  %997 = fmul double %980, %996
  %998 = fptrunc double %997 to float
  %999 = fcmp ugt float %998, 0.000000e+00
  br i1 %999, label %1000, label %1006

1000:                                             ; preds = %992
  %1001 = fcmp ult float %998, 6.553500e+04
  br i1 %1001, label %1002, label %1006

1002:                                             ; preds = %1000
  %1003 = fadd float %998, 5.000000e-01
  %1004 = fptoui float %1003 to i16
  %1005 = zext i16 %1004 to i32
  br label %1006

1006:                                             ; preds = %992, %1000, %1002
  %1007 = phi i32 [ %1005, %1002 ], [ 0, %992 ], [ 65535, %1000 ]
  %1008 = fdiv double %996, 6.553500e+04
  %1009 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 47, i32 7
  %1010 = load double, ptr %1009, align 8, !tbaa !95
  %1011 = fmul double %980, %1010
  %1012 = fdiv double %1010, 6.553500e+04
  %1013 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 47, i32 9
  %1014 = load double, ptr %1013, align 8, !tbaa !96
  %1015 = fmul double %980, %1014
  %1016 = fdiv double %1014, 6.553500e+04
  %1017 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 47, i32 10
  %1018 = load double, ptr %1017, align 8, !tbaa !97
  %1019 = getelementptr inbounds %struct._ChannelStatistics, ptr %597, i64 47, i32 11
  %1020 = load double, ptr %1019, align 8, !tbaa !98
  %1021 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.58, i32 noundef %993, double noundef %994, i32 noundef %1007, double noundef %1008, double noundef %1011, double noundef %1012, double noundef %1015, double noundef %1016, double noundef %1018, double noundef %1020) #12
  br label %1022

1022:                                             ; preds = %1006, %976
  %1023 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %597) #12
  br label %1024

1024:                                             ; preds = %1022, %594
  %1025 = icmp eq ptr %599, null
  br i1 %1025, label %1047, label %1026

1026:                                             ; preds = %1024
  %1027 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %1028 = load i64, ptr %1027, align 8, !tbaa !80
  %1029 = shl nsw i64 -1, %1028
  %1030 = xor i64 %1029, -1
  %1031 = uitofp i64 %1030 to double
  %1032 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.59) #12
  switch i32 %596, label %1033 [
    i32 2, label %1035
    i32 12, label %1034
  ]

1033:                                             ; preds = %1026
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.6, double noundef %1031, ptr noundef nonnull %599)
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 2, ptr noundef nonnull @.str.7, double noundef %1031, ptr noundef nonnull %599)
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 4, ptr noundef nonnull @.str.8, double noundef %1031, ptr noundef nonnull %599)
  br label %1036

1034:                                             ; preds = %1026
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.9, double noundef %1031, ptr noundef nonnull %599)
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 2, ptr noundef nonnull @.str.10, double noundef %1031, ptr noundef nonnull %599)
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 4, ptr noundef nonnull @.str.11, double noundef %1031, ptr noundef nonnull %599)
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.12, double noundef %1031, ptr noundef nonnull %599)
  br label %1036

1035:                                             ; preds = %1026
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.13, double noundef %1031, ptr noundef nonnull %599)
  br label %1036

1036:                                             ; preds = %1035, %1034, %1033
  %1037 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1038 = load i32, ptr %1037, align 8, !tbaa !65
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1041, label %1040

1040:                                             ; preds = %1036
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 8, ptr noundef nonnull @.str.14, double noundef %1031, ptr noundef nonnull %599)
  br label %1041

1041:                                             ; preds = %1040, %1036
  %1042 = icmp eq i32 %596, 2
  br i1 %1042, label %1045, label %1043

1043:                                             ; preds = %1041
  %1044 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.60) #12
  call fastcc void @PrintChannelMoments(ptr noundef %24, i32 noundef 47, ptr noundef nonnull @.str.58, double noundef %1031, ptr noundef nonnull %599)
  br label %1045

1045:                                             ; preds = %1043, %1041
  %1046 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %599) #12
  br label %1047

1047:                                             ; preds = %1045, %1024
  %1048 = icmp eq ptr %598, null
  br i1 %1048, label %1120, label %1049

1049:                                             ; preds = %1047
  %1050 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.61) #12
  %1051 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.62) #12
  %1052 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 1
  br label %1053

1053:                                             ; preds = %1053, %1049
  %1054 = phi i64 [ 0, %1049 ], [ %1064, %1053 ]
  %1055 = sitofp i64 %1054 to double
  %1056 = fadd double %1055, 1.000000e+00
  %1057 = call i32 @GetMagickPrecision() #12
  %1058 = getelementptr inbounds [32 x double], ptr %1052, i64 0, i64 %1054
  %1059 = load double, ptr %1058, align 8, !tbaa !69
  %1060 = call i32 @GetMagickPrecision() #12
  %1061 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 1, i32 1, i64 %1054
  %1062 = load double, ptr %1061, align 8, !tbaa !69
  %1063 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.201, double noundef %1056, i32 noundef %1057, double noundef %1059, i32 noundef %1060, double noundef %1062) #12
  %1064 = add nuw nsw i64 %1054, 1
  %1065 = icmp eq i64 %1064, 7
  br i1 %1065, label %1066, label %1053, !llvm.loop !99

1066:                                             ; preds = %1053
  %1067 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.63) #12
  %1068 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 2
  br label %1069

1069:                                             ; preds = %1069, %1066
  %1070 = phi i64 [ 0, %1066 ], [ %1080, %1069 ]
  %1071 = sitofp i64 %1070 to double
  %1072 = fadd double %1071, 1.000000e+00
  %1073 = call i32 @GetMagickPrecision() #12
  %1074 = getelementptr inbounds [32 x double], ptr %1068, i64 0, i64 %1070
  %1075 = load double, ptr %1074, align 8, !tbaa !69
  %1076 = call i32 @GetMagickPrecision() #12
  %1077 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 2, i32 1, i64 %1070
  %1078 = load double, ptr %1077, align 8, !tbaa !69
  %1079 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.201, double noundef %1072, i32 noundef %1073, double noundef %1075, i32 noundef %1076, double noundef %1078) #12
  %1080 = add nuw nsw i64 %1070, 1
  %1081 = icmp eq i64 %1080, 7
  br i1 %1081, label %1082, label %1069, !llvm.loop !99

1082:                                             ; preds = %1069
  %1083 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.64) #12
  %1084 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 4
  br label %1085

1085:                                             ; preds = %1085, %1082
  %1086 = phi i64 [ 0, %1082 ], [ %1096, %1085 ]
  %1087 = sitofp i64 %1086 to double
  %1088 = fadd double %1087, 1.000000e+00
  %1089 = call i32 @GetMagickPrecision() #12
  %1090 = getelementptr inbounds [32 x double], ptr %1084, i64 0, i64 %1086
  %1091 = load double, ptr %1090, align 8, !tbaa !69
  %1092 = call i32 @GetMagickPrecision() #12
  %1093 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 4, i32 1, i64 %1086
  %1094 = load double, ptr %1093, align 8, !tbaa !69
  %1095 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.201, double noundef %1088, i32 noundef %1089, double noundef %1091, i32 noundef %1092, double noundef %1094) #12
  %1096 = add nuw nsw i64 %1086, 1
  %1097 = icmp eq i64 %1096, 7
  br i1 %1097, label %1098, label %1085, !llvm.loop !99

1098:                                             ; preds = %1085
  %1099 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1100 = load i32, ptr %1099, align 8, !tbaa !65
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1118, label %1102

1102:                                             ; preds = %1098
  %1103 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.65) #12
  %1104 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 8
  br label %1105

1105:                                             ; preds = %1105, %1102
  %1106 = phi i64 [ 0, %1102 ], [ %1116, %1105 ]
  %1107 = sitofp i64 %1106 to double
  %1108 = fadd double %1107, 1.000000e+00
  %1109 = call i32 @GetMagickPrecision() #12
  %1110 = getelementptr inbounds [32 x double], ptr %1104, i64 0, i64 %1106
  %1111 = load double, ptr %1110, align 8, !tbaa !69
  %1112 = call i32 @GetMagickPrecision() #12
  %1113 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %598, i64 8, i32 1, i64 %1106
  %1114 = load double, ptr %1113, align 8, !tbaa !69
  %1115 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.201, double noundef %1108, i32 noundef %1109, double noundef %1111, i32 noundef %1112, double noundef %1114) #12
  %1116 = add nuw nsw i64 %1106, 1
  %1117 = icmp eq i64 %1116, 7
  br i1 %1117, label %1118, label %1105, !llvm.loop !99

1118:                                             ; preds = %1105, %1098
  %1119 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %598) #12
  br label %1120

1120:                                             ; preds = %1118, %1047
  %1121 = icmp eq ptr %600, null
  br i1 %1121, label %1134, label %1122

1122:                                             ; preds = %1120
  %1123 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.66) #12
  switch i32 %596, label %1124 [
    i32 2, label %1126
    i32 12, label %1125
  ]

1124:                                             ; preds = %1122
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull %600)
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull %600)
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull %600)
  br label %1127

1125:                                             ; preds = %1122
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull %600)
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %600)
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %600)
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull %600)
  br label %1127

1126:                                             ; preds = %1122
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull %600)
  br label %1127

1127:                                             ; preds = %1126, %1125, %1124
  %1128 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1129 = load i32, ptr %1128, align 8, !tbaa !65
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1132, label %1131

1131:                                             ; preds = %1127
  call fastcc void @PrintChannelFeatures(ptr noundef %24, i32 noundef 8, ptr noundef nonnull @.str.14, ptr noundef nonnull %600)
  br label %1132

1132:                                             ; preds = %1131, %1127
  %1133 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %600) #12
  br label %1134

1134:                                             ; preds = %1132, %1120
  br i1 %389, label %1251, label %1135

1135:                                             ; preds = %1134
  %1136 = load i32, ptr %502, align 4, !tbaa !67
  %1137 = icmp eq i32 %1136, 12
  br i1 %1137, label %1138, label %1144

1138:                                             ; preds = %1135
  %1139 = call i32 @GetMagickPrecision() #12
  %1140 = call double @GetImageTotalInkDensity(ptr noundef nonnull %0) #12
  %1141 = fmul double %1140, 1.000000e+02
  %1142 = fdiv double %1141, 6.553500e+04
  %1143 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.67, i32 noundef %1139, double noundef %1142) #12
  br label %1144

1144:                                             ; preds = %1138, %1135
  %1145 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %1146 = load i32, ptr %1145, align 8, !tbaa !65
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1232, label %1148

1148:                                             ; preds = %1144
  %1149 = load i64, ptr %430, align 8, !tbaa !54
  %1150 = icmp sgt i64 %1149, 0
  br i1 %1150, label %1151, label %1193

1151:                                             ; preds = %1148
  %1152 = load i64, ptr %427, align 8, !tbaa !61
  %1153 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %1152, i64 noundef 1, ptr noundef nonnull %390) #12
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1193, label %1159

1155:                                             ; preds = %1187
  %1156 = load i64, ptr %427, align 8, !tbaa !61
  %1157 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %1190, i64 noundef %1156, i64 noundef 1, ptr noundef nonnull %390) #12
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1193, label %1159, !llvm.loop !100

1159:                                             ; preds = %1151, %1155
  %1160 = phi ptr [ %1157, %1155 ], [ %1153, %1151 ]
  %1161 = phi i64 [ %1190, %1155 ], [ 0, %1151 ]
  %1162 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #12
  %1163 = load i64, ptr %427, align 8, !tbaa !61
  %1164 = icmp sgt i64 %1163, 0
  br i1 %1164, label %1165, label %1187

1165:                                             ; preds = %1159
  %1166 = shl i64 %1163, 3
  %1167 = getelementptr i8, ptr %1160, i64 %1166
  %1168 = getelementptr inbounds %struct._PixelPacket, ptr %1160, i64 0, i32 3
  %1169 = load i16, ptr %1168, align 2, !tbaa !66
  %1170 = icmp eq i16 %1169, -1
  br i1 %1170, label %1183, label %1176

1171:                                             ; preds = %1176
  %1172 = getelementptr inbounds %struct._PixelPacket, ptr %1178, i64 1
  %1173 = getelementptr inbounds %struct._PixelPacket, ptr %1178, i64 1, i32 3
  %1174 = load i16, ptr %1173, align 2, !tbaa !66
  %1175 = icmp eq i16 %1174, -1
  br i1 %1175, label %1181, label %1176, !llvm.loop !101

1176:                                             ; preds = %1165, %1171
  %1177 = phi i64 [ %1179, %1171 ], [ 0, %1165 ]
  %1178 = phi ptr [ %1172, %1171 ], [ %1160, %1165 ]
  %1179 = add nuw nsw i64 %1177, 1
  %1180 = icmp eq i64 %1179, %1163
  br i1 %1180, label %1187, label %1171, !llvm.loop !101

1181:                                             ; preds = %1171
  %1182 = icmp slt i64 %1179, %1163
  br label %1183

1183:                                             ; preds = %1181, %1165
  %1184 = phi i1 [ %1182, %1181 ], [ %1164, %1165 ]
  %1185 = phi ptr [ %1172, %1181 ], [ %1160, %1165 ]
  %1186 = phi i64 [ %1179, %1181 ], [ 0, %1165 ]
  br i1 %1184, label %1193, label %1187

1187:                                             ; preds = %1176, %1159, %1183
  %1188 = phi i64 [ %1186, %1183 ], [ 0, %1159 ], [ %1163, %1176 ]
  %1189 = phi ptr [ %1185, %1183 ], [ %1160, %1159 ], [ %1167, %1176 ]
  %1190 = add nuw nsw i64 %1161, 1
  %1191 = load i64, ptr %430, align 8, !tbaa !54
  %1192 = icmp slt i64 %1190, %1191
  br i1 %1192, label %1155, label %1193, !llvm.loop !100

1193:                                             ; preds = %1183, %1155, %1187, %1151, %1148
  %1194 = phi i64 [ 0, %1148 ], [ 0, %1151 ], [ %1190, %1187 ], [ %1190, %1155 ], [ %1161, %1183 ]
  %1195 = phi i64 [ 0, %1148 ], [ 0, %1151 ], [ %1188, %1187 ], [ %1188, %1155 ], [ %1186, %1183 ]
  %1196 = phi ptr [ null, %1148 ], [ null, %1151 ], [ %1162, %1187 ], [ %1162, %1155 ], [ %1162, %1183 ]
  %1197 = phi ptr [ null, %1148 ], [ null, %1151 ], [ %1189, %1187 ], [ null, %1155 ], [ %1185, %1183 ]
  %1198 = load i64, ptr %427, align 8, !tbaa !61
  %1199 = icmp slt i64 %1195, %1198
  br i1 %1199, label %1203, label %1200

1200:                                             ; preds = %1193
  %1201 = load i64, ptr %430, align 8, !tbaa !54
  %1202 = icmp slt i64 %1194, %1201
  br i1 %1202, label %1203, label %1232

1203:                                             ; preds = %1200, %1193
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #12
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %10) #12
  %1204 = getelementptr inbounds %struct._PixelPacket, ptr %1197, i64 0, i32 2
  %1205 = load i16, ptr %1204, align 2, !tbaa !62
  %1206 = uitofp i16 %1205 to float
  %1207 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 5
  store float %1206, ptr %1207, align 8, !tbaa !102
  %1208 = getelementptr inbounds %struct._PixelPacket, ptr %1197, i64 0, i32 1
  %1209 = load i16, ptr %1208, align 2, !tbaa !63
  %1210 = uitofp i16 %1209 to float
  %1211 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 6
  store float %1210, ptr %1211, align 4, !tbaa !105
  %1212 = load i16, ptr %1197, align 2, !tbaa !64
  %1213 = uitofp i16 %1212 to float
  %1214 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 7
  store float %1213, ptr %1214, align 8, !tbaa !106
  %1215 = getelementptr inbounds %struct._PixelPacket, ptr %1197, i64 0, i32 3
  %1216 = load i16, ptr %1215, align 2, !tbaa !66
  %1217 = uitofp i16 %1216 to float
  %1218 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 8
  store float %1217, ptr %1218, align 4, !tbaa !107
  %1219 = load i32, ptr %502, align 4, !tbaa !67
  %1220 = icmp eq i32 %1219, 12
  %1221 = icmp ne ptr %1196, null
  %1222 = and i1 %1221, %1220
  br i1 %1222, label %1223, label %1228

1223:                                             ; preds = %1203
  %1224 = getelementptr inbounds i16, ptr %1196, i64 %1195
  %1225 = load i16, ptr %1224, align 2, !tbaa !68
  %1226 = uitofp i16 %1225 to float
  %1227 = getelementptr inbounds %struct._MagickPixelPacket, ptr %10, i64 0, i32 9
  store float %1226, ptr %1227, align 8, !tbaa !108
  br label %1228

1228:                                             ; preds = %1203, %1223
  %1229 = call i32 @QueryMagickColorname(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %390) #12
  %1230 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.68, ptr noundef nonnull %9) #12
  call void @GetColorTuple(ptr noundef nonnull %10, i32 noundef 1, ptr noundef nonnull %9) #12
  %1231 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.69, ptr noundef nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %9) #12
  br label %1232

1232:                                             ; preds = %1200, %1228, %1144
  %1233 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #12
  %1234 = call i32 @IsHistogramImage(ptr noundef nonnull %0, ptr noundef nonnull %390) #12
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1242, label %1236

1236:                                             ; preds = %1232
  %1237 = call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %390) #12
  %1238 = uitofp i64 %1237 to double
  %1239 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.71, double noundef %1238) #12
  %1240 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.72) #12
  %1241 = call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef %24, ptr noundef nonnull %390) #12
  br label %1251

1242:                                             ; preds = %1232
  %1243 = icmp eq ptr %1233, null
  br i1 %1243, label %1251, label %1244

1244:                                             ; preds = %1242
  %1245 = call i32 @IsMagickTrue(ptr noundef nonnull %1233) #12
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1251, label %1247

1247:                                             ; preds = %1244
  %1248 = call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %390) #12
  %1249 = uitofp i64 %1248 to double
  %1250 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.71, double noundef %1249) #12
  br label %1251

1251:                                             ; preds = %1236, %1247, %1244, %1242, %1134
  %1252 = load i32, ptr %0, align 8, !tbaa !82
  %1253 = icmp eq i32 %1252, 2
  br i1 %1253, label %1254, label %1309

1254:                                             ; preds = %1251
  %1255 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %1256 = load i64, ptr %1255, align 8, !tbaa !84
  %1257 = uitofp i64 %1256 to double
  %1258 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.73, double noundef %1257) #12
  %1259 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.74) #12
  %1260 = load i64, ptr %1255, align 8, !tbaa !84
  %1261 = icmp ult i64 %1260, 1025
  br i1 %1261, label %1262, label %1309

1262:                                             ; preds = %1254
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %14) #12
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %14) #12
  %1263 = load i64, ptr %1255, align 8, !tbaa !84
  %1264 = icmp sgt i64 %1263, 0
  br i1 %1264, label %1265, label %1308

1265:                                             ; preds = %1262
  %1266 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %1267 = load ptr, ptr %1266, align 8, !tbaa !109
  %1268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 5
  %1269 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 6
  %1270 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 7
  %1271 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 8
  %1272 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 1
  %1273 = getelementptr inbounds %struct._MagickPixelPacket, ptr %14, i64 0, i32 2
  br label %1274

1274:                                             ; preds = %1265, %1300
  %1275 = phi ptr [ %1267, %1265 ], [ %1304, %1300 ]
  %1276 = phi i64 [ 0, %1265 ], [ %1305, %1300 ]
  %1277 = getelementptr inbounds %struct._PixelPacket, ptr %1275, i64 0, i32 2
  %1278 = load i16, ptr %1277, align 2, !tbaa !62
  %1279 = uitofp i16 %1278 to float
  store float %1279, ptr %1268, align 8, !tbaa !102
  %1280 = getelementptr inbounds %struct._PixelPacket, ptr %1275, i64 0, i32 1
  %1281 = load i16, ptr %1280, align 2, !tbaa !63
  %1282 = uitofp i16 %1281 to float
  store float %1282, ptr %1269, align 4, !tbaa !105
  %1283 = load i16, ptr %1275, align 2, !tbaa !64
  %1284 = uitofp i16 %1283 to float
  store float %1284, ptr %1270, align 8, !tbaa !106
  %1285 = getelementptr inbounds %struct._PixelPacket, ptr %1275, i64 0, i32 3
  %1286 = load i16, ptr %1285, align 2, !tbaa !66
  %1287 = uitofp i16 %1286 to float
  store float %1287, ptr %1271, align 4, !tbaa !107
  %1288 = call i64 @CopyMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.75, i64 noundef 4096) #12
  call void @ConcatenateColorComponent(ptr noundef nonnull %14, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %13) #12
  %1289 = call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.76, i64 noundef 4096) #12
  call void @ConcatenateColorComponent(ptr noundef nonnull %14, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %13) #12
  %1290 = call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.76, i64 noundef 4096) #12
  call void @ConcatenateColorComponent(ptr noundef nonnull %14, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %13) #12
  %1291 = load i32, ptr %1272, align 4, !tbaa !110
  %1292 = icmp eq i32 %1291, 12
  br i1 %1292, label %1293, label %1295

1293:                                             ; preds = %1274
  %1294 = call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.76, i64 noundef 4096) #12
  call void @ConcatenateColorComponent(ptr noundef nonnull %14, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %13) #12
  br label %1295

1295:                                             ; preds = %1293, %1274
  %1296 = load i32, ptr %1273, align 8, !tbaa !111
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1300, label %1298

1298:                                             ; preds = %1295
  %1299 = call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.76, i64 noundef 4096) #12
  call void @ConcatenateColorComponent(ptr noundef nonnull %14, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %13) #12
  br label %1300

1300:                                             ; preds = %1298, %1295
  %1301 = call i64 @ConcatenateMagickString(ptr noundef nonnull %13, ptr noundef nonnull @.str.77, i64 noundef 4096) #12
  %1302 = call i32 @QueryMagickColorname(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull %11, ptr noundef nonnull %390) #12
  call void @GetColorTuple(ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull %12) #12
  %1303 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.78, i64 noundef %1276, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %11) #12
  %1304 = getelementptr inbounds %struct._PixelPacket, ptr %1275, i64 1
  %1305 = add nuw nsw i64 %1276, 1
  %1306 = load i64, ptr %1255, align 8, !tbaa !84
  %1307 = icmp slt i64 %1305, %1306
  br i1 %1307, label %1274, label %1308, !llvm.loop !112

1308:                                             ; preds = %1300, %1262
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #12
  br label %1309

1309:                                             ; preds = %1254, %1308, %1251
  %1310 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %1311 = load double, ptr %1310, align 8, !tbaa !85
  %1312 = fcmp une double %1311, 0.000000e+00
  br i1 %1312, label %1313, label %1315

1313:                                             ; preds = %1309
  %1314 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.79, double noundef %1311) #12
  br label %1315

1315:                                             ; preds = %1313, %1309
  %1316 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  %1317 = load double, ptr %1316, align 8, !tbaa !86
  %1318 = fcmp une double %1317, 0.000000e+00
  br i1 %1318, label %1319, label %1321

1319:                                             ; preds = %1315
  %1320 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.80, double noundef %1317) #12
  br label %1321

1321:                                             ; preds = %1319, %1315
  %1322 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  %1323 = load double, ptr %1322, align 8, !tbaa !87
  %1324 = fcmp une double %1323, 0.000000e+00
  br i1 %1324, label %1325, label %1327

1325:                                             ; preds = %1321
  %1326 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.81, double noundef %1323) #12
  br label %1327

1327:                                             ; preds = %1325, %1321
  %1328 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 17
  %1329 = load i32, ptr %1328, align 8, !tbaa !113
  %1330 = zext i32 %1329 to i64
  %1331 = call ptr @CommandOptionToMnemonic(i32 noundef 31, i64 noundef %1330) #12
  %1332 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.82, ptr noundef %1331) #12
  %1333 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 15
  %1334 = load double, ptr %1333, align 8, !tbaa !114
  %1335 = fcmp une double %1334, 0.000000e+00
  br i1 %1335, label %1336, label %1338

1336:                                             ; preds = %1327
  %1337 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.83, double noundef %1334) #12
  br label %1338

1338:                                             ; preds = %1336, %1327
  %1339 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16
  %1340 = load double, ptr %1339, align 8, !tbaa !115
  %1341 = fcmp une double %1340, 0.000000e+00
  br i1 %1341, label %1354, label %1342

1342:                                             ; preds = %1338
  %1343 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 1
  %1344 = load double, ptr %1343, align 8, !tbaa !116
  %1345 = fcmp une double %1344, 0.000000e+00
  br i1 %1345, label %1354, label %1346

1346:                                             ; preds = %1342
  %1347 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 2
  %1348 = load double, ptr %1347, align 8, !tbaa !117
  %1349 = fcmp une double %1348, 0.000000e+00
  br i1 %1349, label %1354, label %1350

1350:                                             ; preds = %1346
  %1351 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 3
  %1352 = load double, ptr %1351, align 8, !tbaa !118
  %1353 = fcmp une double %1352, 0.000000e+00
  br i1 %1353, label %1354, label %1375

1354:                                             ; preds = %1350, %1346, %1342, %1338
  %1355 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.84) #12
  %1356 = load double, ptr %1339, align 8, !tbaa !115
  %1357 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 0, i32 1
  %1358 = load double, ptr %1357, align 8, !tbaa !119
  %1359 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.85, double noundef %1356, double noundef %1358) #12
  %1360 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 1
  %1361 = load double, ptr %1360, align 8, !tbaa !116
  %1362 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 1, i32 1
  %1363 = load double, ptr %1362, align 8, !tbaa !120
  %1364 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.86, double noundef %1361, double noundef %1363) #12
  %1365 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 2
  %1366 = load double, ptr %1365, align 8, !tbaa !117
  %1367 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 2, i32 1
  %1368 = load double, ptr %1367, align 8, !tbaa !121
  %1369 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.87, double noundef %1366, double noundef %1368) #12
  %1370 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 3
  %1371 = load double, ptr %1370, align 8, !tbaa !118
  %1372 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 3, i32 1
  %1373 = load double, ptr %1372, align 8, !tbaa !122
  %1374 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.88, double noundef %1371, double noundef %1373) #12
  br label %1375

1375:                                             ; preds = %1354, %1350
  %1376 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27
  %1377 = load i64, ptr %1376, align 8, !tbaa !123
  %1378 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27, i32 1
  %1379 = load i64, ptr %1378, align 8, !tbaa !124
  %1380 = mul i64 %1379, %1377
  %1381 = icmp eq i64 %1380, 0
  br i1 %1381, label %1392, label %1382

1382:                                             ; preds = %1375
  %1383 = uitofp i64 %1377 to double
  %1384 = uitofp i64 %1379 to double
  %1385 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27, i32 2
  %1386 = load i64, ptr %1385, align 8, !tbaa !125
  %1387 = sitofp i64 %1386 to double
  %1388 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27, i32 3
  %1389 = load i64, ptr %1388, align 8, !tbaa !126
  %1390 = sitofp i64 %1389 to double
  %1391 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.89, double noundef %1383, double noundef %1384, double noundef %1387, double noundef %1390) #12
  br label %1392

1392:                                             ; preds = %1382, %1375
  %1393 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %1394 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %1393, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %390) #12
  %1395 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.90, ptr noundef nonnull %5) #12
  %1396 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %1397 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %1396, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %390) #12
  %1398 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.91, ptr noundef nonnull %5) #12
  %1399 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14
  %1400 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %1399, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %390) #12
  %1401 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.92, ptr noundef nonnull %5) #12
  %1402 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 72
  %1403 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %1402, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %390) #12
  %1404 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.93, ptr noundef nonnull %5) #12
  %1405 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 33
  %1406 = load i32, ptr %1405, align 4, !tbaa !127
  %1407 = zext i32 %1406 to i64
  %1408 = call ptr @CommandOptionToMnemonic(i32 noundef 32, i64 noundef %1407) #12
  %1409 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.94, ptr noundef %1408) #12
  %1410 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  %1411 = load i32, ptr %1410, align 8, !tbaa !128
  %1412 = zext i32 %1411 to i64
  %1413 = call ptr @CommandOptionToMnemonic(i32 noundef 51, i64 noundef %1412) #12
  %1414 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.95, ptr noundef %1413) #12
  %1415 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %1416 = load i32, ptr %1415, align 8, !tbaa !129
  %1417 = zext i32 %1416 to i64
  %1418 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %1417) #12
  %1419 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.96, ptr noundef %1418) #12
  %1420 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %1421 = load i64, ptr %1420, align 8, !tbaa !76
  %1422 = icmp eq i64 %1421, 0
  br i1 %1422, label %1423, label %1435

1423:                                             ; preds = %1392
  %1424 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %1425 = load i64, ptr %1424, align 8, !tbaa !77
  %1426 = icmp eq i64 %1425, 0
  br i1 %1426, label %1427, label %1435

1427:                                             ; preds = %1423
  %1428 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1429 = load i64, ptr %1428, align 8, !tbaa !78
  %1430 = icmp eq i64 %1429, 0
  br i1 %1430, label %1431, label %1435

1431:                                             ; preds = %1427
  %1432 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1433 = load i64, ptr %1432, align 8, !tbaa !79
  %1434 = icmp eq i64 %1433, 0
  br i1 %1434, label %1447, label %1435

1435:                                             ; preds = %1431, %1427, %1423, %1392
  %1436 = uitofp i64 %1421 to double
  %1437 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %1438 = load i64, ptr %1437, align 8, !tbaa !77
  %1439 = uitofp i64 %1438 to double
  %1440 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1441 = load i64, ptr %1440, align 8, !tbaa !78
  %1442 = sitofp i64 %1441 to double
  %1443 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1444 = load i64, ptr %1443, align 8, !tbaa !79
  %1445 = sitofp i64 %1444 to double
  %1446 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.97, double noundef %1436, double noundef %1439, double noundef %1442, double noundef %1445) #12
  br label %1447

1447:                                             ; preds = %1435, %1431
  %1448 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1449 = load i64, ptr %1448, align 8, !tbaa !78
  %1450 = icmp eq i64 %1449, 0
  br i1 %1450, label %1451, label %1455

1451:                                             ; preds = %1447
  %1452 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1453 = load i64, ptr %1452, align 8, !tbaa !79
  %1454 = icmp eq i64 %1453, 0
  br i1 %1454, label %1461, label %1455

1455:                                             ; preds = %1451, %1447
  %1456 = sitofp i64 %1449 to double
  %1457 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1458 = load i64, ptr %1457, align 8, !tbaa !79
  %1459 = sitofp i64 %1458 to double
  %1460 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.98, double noundef %1456, double noundef %1459) #12
  br label %1461

1461:                                             ; preds = %1455, %1451
  %1462 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 37
  %1463 = load i32, ptr %1462, align 4, !tbaa !130
  %1464 = zext i32 %1463 to i64
  %1465 = call ptr @CommandOptionToMnemonic(i32 noundef 19, i64 noundef %1464) #12
  %1466 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.99, ptr noundef %1465) #12
  %1467 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  %1468 = load i64, ptr %1467, align 8, !tbaa !131
  %1469 = icmp eq i64 %1468, 0
  br i1 %1469, label %1476, label %1470

1470:                                             ; preds = %1461
  %1471 = uitofp i64 %1468 to double
  %1472 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 41
  %1473 = load i64, ptr %1472, align 8, !tbaa !132
  %1474 = sitofp i64 %1473 to double
  %1475 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.100, double noundef %1471, double noundef %1474) #12
  br label %1476

1476:                                             ; preds = %1470, %1461
  %1477 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 42
  %1478 = load i64, ptr %1477, align 8, !tbaa !133
  %1479 = icmp eq i64 %1478, 1
  br i1 %1479, label %1483, label %1480

1480:                                             ; preds = %1476
  %1481 = uitofp i64 %1478 to double
  %1482 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.101, double noundef %1481) #12
  br label %1483

1483:                                             ; preds = %1480, %1476
  %1484 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 84
  %1485 = load i64, ptr %1484, align 8, !tbaa !134
  %1486 = icmp eq i64 %1485, 0
  br i1 %1486, label %1490, label %1487

1487:                                             ; preds = %1483
  %1488 = uitofp i64 %1485 to double
  %1489 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.102, double noundef %1488) #12
  br label %1490

1490:                                             ; preds = %1487, %1483
  %1491 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %1492 = load ptr, ptr %1491, align 8, !tbaa !135
  %1493 = icmp eq ptr %1492, null
  br i1 %1493, label %1494, label %1498

1494:                                             ; preds = %1490
  %1495 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67
  %1496 = load ptr, ptr %1495, align 8, !tbaa !136
  %1497 = icmp eq ptr %1496, null
  br i1 %1497, label %1505, label %1498

1498:                                             ; preds = %1494, %1490
  %1499 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %1500 = load i64, ptr %1499, align 8, !tbaa !73
  %1501 = uitofp i64 %1500 to double
  %1502 = call i64 @GetImageListLength(ptr noundef %0) #12
  %1503 = uitofp i64 %1502 to double
  %1504 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.103, double noundef %1501, double noundef %1503) #12
  br label %1512

1505:                                             ; preds = %1494
  %1506 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %1507 = load i64, ptr %1506, align 8, !tbaa !73
  %1508 = icmp eq i64 %1507, 0
  br i1 %1508, label %1512, label %1509

1509:                                             ; preds = %1505
  %1510 = uitofp i64 %1507 to double
  %1511 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.104, double noundef %1510) #12
  br label %1512

1512:                                             ; preds = %1505, %1509, %1498
  %1513 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  %1514 = load i32, ptr %1513, align 8, !tbaa !137
  %1515 = zext i32 %1514 to i64
  %1516 = call ptr @CommandOptionToMnemonic(i32 noundef 12, i64 noundef %1515) #12
  %1517 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.105, ptr noundef %1516) #12
  %1518 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 3
  %1519 = load i64, ptr %1518, align 8, !tbaa !138
  %1520 = icmp eq i64 %1519, 0
  br i1 %1520, label %1524, label %1521

1521:                                             ; preds = %1512
  %1522 = uitofp i64 %1519 to double
  %1523 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.106, double noundef %1522) #12
  br label %1524

1524:                                             ; preds = %1521, %1512
  %1525 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 4
  %1526 = load i32, ptr %1525, align 8, !tbaa !139
  %1527 = zext i32 %1526 to i64
  %1528 = call ptr @CommandOptionToMnemonic(i32 noundef 50, i64 noundef %1527) #12
  %1529 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.107, ptr noundef %1528) #12
  %1530 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %1531 = load ptr, ptr %1530, align 8, !tbaa !140
  %1532 = icmp eq ptr %1531, null
  br i1 %1532, label %1535, label %1533

1533:                                             ; preds = %1524
  %1534 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.108, ptr noundef nonnull %1531) #12
  br label %1535

1535:                                             ; preds = %1533, %1524
  %1536 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %1537 = load ptr, ptr %1536, align 8, !tbaa !141
  %1538 = icmp eq ptr %1537, null
  br i1 %1538, label %1599, label %1539

1539:                                             ; preds = %1535
  %1540 = call ptr @AcquireImageInfo() #12
  %1541 = getelementptr inbounds %struct._ImageInfo, ptr %1540, i64 0, i32 6
  %1542 = call ptr @CloneString(ptr noundef nonnull %1541, ptr noundef nonnull @.str.109) #12
  %1543 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.110) #12
  %1544 = load ptr, ptr %1536, align 8, !tbaa !141
  %1545 = load i8, ptr %1544, align 1, !tbaa !72
  %1546 = icmp eq i8 %1545, 0
  br i1 %1546, label %1597, label %1547

1547:                                             ; preds = %1539
  %1548 = getelementptr inbounds %struct._ImageInfo, ptr %1540, i64 0, i32 51
  br label %1549

1549:                                             ; preds = %1547, %1593
  %1550 = phi ptr [ %1544, %1547 ], [ %1594, %1593 ]
  br label %1551

1551:                                             ; preds = %1549, %1554
  %1552 = phi ptr [ %1555, %1554 ], [ %1550, %1549 ]
  %1553 = load i8, ptr %1552, align 1, !tbaa !72
  switch i8 %1553, label %1554 [
    i8 10, label %1556
    i8 0, label %1556
  ]

1554:                                             ; preds = %1551
  %1555 = getelementptr inbounds i8, ptr %1552, i64 1
  br label %1551, !llvm.loop !142

1556:                                             ; preds = %1551, %1551
  %1557 = ptrtoint ptr %1552 to i64
  %1558 = ptrtoint ptr %1550 to i64
  %1559 = sub i64 %1557, %1558
  %1560 = add i64 %1559, 1
  %1561 = call i64 @CopyMagickString(ptr noundef nonnull %1548, ptr noundef nonnull %1550, i64 noundef %1560) #12
  %1562 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.111, ptr noundef nonnull %1548) #12
  %1563 = call ptr @SetWarningHandler(ptr noundef null) #12
  %1564 = call ptr @ReadImage(ptr noundef %1540, ptr noundef nonnull %390) #12
  %1565 = call ptr @SetWarningHandler(ptr noundef %1563) #12
  %1566 = icmp eq ptr %1564, null
  br i1 %1566, label %1567, label %1569

1567:                                             ; preds = %1556
  %1568 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.26) #12
  br label %1593

1569:                                             ; preds = %1556
  %1570 = getelementptr inbounds %struct._Image, ptr %1564, i64 0, i32 56
  %1571 = load i64, ptr %1570, align 8, !tbaa !74
  %1572 = uitofp i64 %1571 to double
  %1573 = getelementptr inbounds %struct._Image, ptr %1564, i64 0, i32 57
  %1574 = load i64, ptr %1573, align 8, !tbaa !75
  %1575 = uitofp i64 %1574 to double
  %1576 = getelementptr inbounds %struct._Image, ptr %1564, i64 0, i32 55
  %1577 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.112, double noundef %1572, double noundef %1575, ptr noundef nonnull %1576) #12
  %1578 = call i32 @SignatureImage(ptr noundef nonnull %1564) #12
  call void @ResetImagePropertyIterator(ptr noundef nonnull %1564) #12
  %1579 = call ptr @GetNextImageProperty(ptr noundef nonnull %1564) #12
  %1580 = icmp eq ptr %1579, null
  br i1 %1580, label %1591, label %1581

1581:                                             ; preds = %1569, %1588
  %1582 = phi ptr [ %1589, %1588 ], [ %1579, %1569 ]
  %1583 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.113, ptr noundef nonnull %1582) #12
  %1584 = call ptr @GetImageProperty(ptr noundef nonnull %1564, ptr noundef nonnull %1582) #12
  %1585 = icmp eq ptr %1584, null
  br i1 %1585, label %1588, label %1586

1586:                                             ; preds = %1581
  %1587 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.114, ptr noundef nonnull %1584) #12
  br label %1588

1588:                                             ; preds = %1586, %1581
  %1589 = call ptr @GetNextImageProperty(ptr noundef nonnull %1564) #12
  %1590 = icmp eq ptr %1589, null
  br i1 %1590, label %1591, label %1581, !llvm.loop !143

1591:                                             ; preds = %1588, %1569
  %1592 = call ptr @DestroyImage(ptr noundef nonnull %1564) #12
  br label %1593

1593:                                             ; preds = %1591, %1567
  %1594 = getelementptr inbounds i8, ptr %1552, i64 1
  %1595 = load i8, ptr %1594, align 1, !tbaa !72
  %1596 = icmp eq i8 %1595, 0
  br i1 %1596, label %1597, label %1549, !llvm.loop !144

1597:                                             ; preds = %1593, %1539
  %1598 = call ptr @DestroyImageInfo(ptr noundef %1540) #12
  br label %1599

1599:                                             ; preds = %1597, %1535
  %1600 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.115) #12
  %1601 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.116) #12
  %1602 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.117) #12
  %1603 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.118) #12
  call void @ResetImagePropertyIterator(ptr noundef %0) #12
  %1604 = call ptr @GetNextImageProperty(ptr noundef %0) #12
  %1605 = icmp eq ptr %1604, null
  br i1 %1605, label %1618, label %1606

1606:                                             ; preds = %1599
  %1607 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.119) #12
  br label %1608

1608:                                             ; preds = %1606, %1615
  %1609 = phi ptr [ %1604, %1606 ], [ %1616, %1615 ]
  %1610 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.120, ptr noundef nonnull %1609) #12
  %1611 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull %1609) #12
  %1612 = icmp eq ptr %1611, null
  br i1 %1612, label %1615, label %1613

1613:                                             ; preds = %1608
  %1614 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.114, ptr noundef nonnull %1611) #12
  br label %1615

1615:                                             ; preds = %1613, %1608
  %1616 = call ptr @GetNextImageProperty(ptr noundef %0) #12
  %1617 = icmp eq ptr %1616, null
  br i1 %1617, label %1618, label %1608, !llvm.loop !145

1618:                                             ; preds = %1615, %1599
  %1619 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.121) #12
  %1620 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull %7) #12
  %1621 = icmp eq ptr %1620, null
  br i1 %1621, label %1630, label %1622

1622:                                             ; preds = %1618
  %1623 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.122) #12
  %1624 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1620) #16
  %1625 = icmp ugt i64 %1624, 80
  br i1 %1625, label %1626, label %1628

1626:                                             ; preds = %1622
  %1627 = call i32 @fputc(i32 noundef 10, ptr noundef %24)
  br label %1628

1628:                                             ; preds = %1626, %1622
  %1629 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.114, ptr noundef nonnull %1620) #12
  br label %1630

1630:                                             ; preds = %1628, %1618
  call void @ResetImageProfileIterator(ptr noundef %0) #12
  %1631 = call ptr @GetNextImageProfile(ptr noundef %0) #12
  %1632 = icmp eq ptr %1631, null
  br i1 %1632, label %1775, label %1633

1633:                                             ; preds = %1630
  %1634 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.123) #12
  br label %1635

1635:                                             ; preds = %1633, %1772
  %1636 = phi ptr [ %1631, %1633 ], [ %1773, %1772 ]
  br label %1637

1637:                                             ; preds = %1635, %1637
  %1638 = call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull %1636) #12
  %1639 = icmp eq ptr %1638, null
  br i1 %1639, label %1637, label %1640, !llvm.loop !146

1640:                                             ; preds = %1637
  %1641 = call i64 @GetStringInfoLength(ptr noundef nonnull %1638) #12
  %1642 = uitofp i64 %1641 to double
  %1643 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.124, ptr noundef nonnull %1636, double noundef %1642) #12
  %1644 = call i32 @LocaleCompare(ptr noundef nonnull %1636, ptr noundef nonnull @.str.125) #12
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1646, label %1768

1646:                                             ; preds = %1640
  %1647 = call i64 @GetStringInfoLength(ptr noundef nonnull %1638) #12
  %1648 = icmp sgt i64 %1647, 0
  br i1 %1648, label %1649, label %1768

1649:                                             ; preds = %1646, %1763
  %1650 = phi i64 [ %1766, %1763 ], [ 0, %1646 ]
  %1651 = call ptr @GetStringInfoDatum(ptr noundef nonnull %1638) #12
  %1652 = add nsw i64 %1650, 1
  %1653 = getelementptr inbounds i8, ptr %1651, i64 %1650
  %1654 = load i8, ptr %1653, align 1, !tbaa !72
  %1655 = icmp eq i8 %1654, 28
  br i1 %1655, label %1656, label %1763

1656:                                             ; preds = %1649
  %1657 = call ptr @GetStringInfoDatum(ptr noundef nonnull %1638) #12
  %1658 = getelementptr inbounds i8, ptr %1657, i64 %1652
  %1659 = load i8, ptr %1658, align 1, !tbaa !72
  %1660 = call ptr @GetStringInfoDatum(ptr noundef nonnull %1638) #12
  %1661 = getelementptr i8, ptr %1660, i64 %1650
  %1662 = getelementptr i8, ptr %1661, i64 2
  %1663 = load i8, ptr %1662, align 1, !tbaa !72
  switch i8 %1663, label %1715 [
    i8 5, label %1716
    i8 7, label %1664
    i8 10, label %1665
    i8 15, label %1666
    i8 20, label %1667
    i8 22, label %1668
    i8 25, label %1669
    i8 30, label %1670
    i8 35, label %1671
    i8 40, label %1672
    i8 45, label %1673
    i8 47, label %1674
    i8 50, label %1675
    i8 55, label %1676
    i8 60, label %1677
    i8 65, label %1678
    i8 70, label %1679
    i8 75, label %1680
    i8 80, label %1681
    i8 85, label %1682
    i8 90, label %1683
    i8 95, label %1684
    i8 100, label %1685
    i8 101, label %1686
    i8 103, label %1687
    i8 105, label %1688
    i8 110, label %1689
    i8 115, label %1690
    i8 116, label %1691
    i8 120, label %1692
    i8 121, label %1693
    i8 122, label %1694
    i8 -56, label %1695
    i8 -55, label %1696
    i8 -54, label %1697
    i8 -53, label %1698
    i8 -52, label %1699
    i8 -51, label %1700
    i8 -50, label %1701
    i8 -49, label %1702
    i8 -48, label %1703
    i8 -47, label %1704
    i8 -46, label %1705
    i8 -45, label %1706
    i8 -44, label %1707
    i8 -43, label %1708
    i8 -42, label %1709
    i8 -41, label %1710
    i8 -40, label %1711
    i8 -39, label %1712
    i8 -38, label %1713
    i8 -37, label %1714
  ]

1664:                                             ; preds = %1656
  br label %1716

1665:                                             ; preds = %1656
  br label %1716

1666:                                             ; preds = %1656
  br label %1716

1667:                                             ; preds = %1656
  br label %1716

1668:                                             ; preds = %1656
  br label %1716

1669:                                             ; preds = %1656
  br label %1716

1670:                                             ; preds = %1656
  br label %1716

1671:                                             ; preds = %1656
  br label %1716

1672:                                             ; preds = %1656
  br label %1716

1673:                                             ; preds = %1656
  br label %1716

1674:                                             ; preds = %1656
  br label %1716

1675:                                             ; preds = %1656
  br label %1716

1676:                                             ; preds = %1656
  br label %1716

1677:                                             ; preds = %1656
  br label %1716

1678:                                             ; preds = %1656
  br label %1716

1679:                                             ; preds = %1656
  br label %1716

1680:                                             ; preds = %1656
  br label %1716

1681:                                             ; preds = %1656
  br label %1716

1682:                                             ; preds = %1656
  br label %1716

1683:                                             ; preds = %1656
  br label %1716

1684:                                             ; preds = %1656
  br label %1716

1685:                                             ; preds = %1656
  br label %1716

1686:                                             ; preds = %1656
  br label %1716

1687:                                             ; preds = %1656
  br label %1716

1688:                                             ; preds = %1656
  br label %1716

1689:                                             ; preds = %1656
  br label %1716

1690:                                             ; preds = %1656
  br label %1716

1691:                                             ; preds = %1656
  br label %1716

1692:                                             ; preds = %1656
  br label %1716

1693:                                             ; preds = %1656
  br label %1716

1694:                                             ; preds = %1656
  br label %1716

1695:                                             ; preds = %1656
  br label %1716

1696:                                             ; preds = %1656
  br label %1716

1697:                                             ; preds = %1656
  br label %1716

1698:                                             ; preds = %1656
  br label %1716

1699:                                             ; preds = %1656
  br label %1716

1700:                                             ; preds = %1656
  br label %1716

1701:                                             ; preds = %1656
  br label %1716

1702:                                             ; preds = %1656
  br label %1716

1703:                                             ; preds = %1656
  br label %1716

1704:                                             ; preds = %1656
  br label %1716

1705:                                             ; preds = %1656
  br label %1716

1706:                                             ; preds = %1656
  br label %1716

1707:                                             ; preds = %1656
  br label %1716

1708:                                             ; preds = %1656
  br label %1716

1709:                                             ; preds = %1656
  br label %1716

1710:                                             ; preds = %1656
  br label %1716

1711:                                             ; preds = %1656
  br label %1716

1712:                                             ; preds = %1656
  br label %1716

1713:                                             ; preds = %1656
  br label %1716

1714:                                             ; preds = %1656
  br label %1716

1715:                                             ; preds = %1656
  br label %1716

1716:                                             ; preds = %1656, %1715, %1714, %1713, %1712, %1711, %1710, %1709, %1708, %1707, %1706, %1705, %1704, %1703, %1702, %1701, %1700, %1699, %1698, %1697, %1696, %1695, %1694, %1693, %1692, %1691, %1690, %1689, %1688, %1687, %1686, %1685, %1684, %1683, %1682, %1681, %1680, %1679, %1678, %1677, %1676, %1675, %1674, %1673, %1672, %1671, %1670, %1669, %1668, %1667, %1666, %1665, %1664
  %1717 = phi ptr [ @.str.178, %1715 ], [ @.str.177, %1714 ], [ @.str.176, %1713 ], [ @.str.175, %1712 ], [ @.str.174, %1711 ], [ @.str.173, %1710 ], [ @.str.172, %1709 ], [ @.str.171, %1708 ], [ @.str.170, %1707 ], [ @.str.169, %1706 ], [ @.str.168, %1705 ], [ @.str.167, %1704 ], [ @.str.166, %1703 ], [ @.str.165, %1702 ], [ @.str.164, %1701 ], [ @.str.163, %1700 ], [ @.str.162, %1699 ], [ @.str.161, %1698 ], [ @.str.160, %1697 ], [ @.str.159, %1696 ], [ @.str.158, %1695 ], [ @.str.157, %1694 ], [ @.str.156, %1693 ], [ @.str.155, %1692 ], [ @.str.154, %1691 ], [ @.str.153, %1690 ], [ @.str.152, %1689 ], [ @.str.151, %1688 ], [ @.str.150, %1687 ], [ @.str.149, %1686 ], [ @.str.148, %1685 ], [ @.str.147, %1684 ], [ @.str.146, %1683 ], [ @.str.145, %1682 ], [ @.str.144, %1681 ], [ @.str.143, %1680 ], [ @.str.142, %1679 ], [ @.str.141, %1678 ], [ @.str.140, %1677 ], [ @.str.139, %1676 ], [ @.str.138, %1675 ], [ @.str.137, %1674 ], [ @.str.136, %1673 ], [ @.str.135, %1672 ], [ @.str.134, %1671 ], [ @.str.133, %1670 ], [ @.str.132, %1669 ], [ @.str.131, %1668 ], [ @.str.130, %1667 ], [ @.str.129, %1666 ], [ @.str.128, %1665 ], [ @.str.127, %1664 ], [ @.str.126, %1656 ]
  %1718 = uitofp i8 %1659 to double
  %1719 = uitofp i8 %1663 to double
  %1720 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.179, ptr noundef nonnull %1717, double noundef %1718, double noundef %1719) #12
  %1721 = call ptr @GetStringInfoDatum(ptr noundef nonnull %1638) #12
  %1722 = getelementptr i8, ptr %1721, i64 %1650
  %1723 = getelementptr i8, ptr %1722, i64 3
  %1724 = load i8, ptr %1723, align 1, !tbaa !72
  %1725 = zext i8 %1724 to i64
  %1726 = shl nuw nsw i64 %1725, 8
  %1727 = call ptr @GetStringInfoDatum(ptr noundef nonnull %1638) #12
  %1728 = add nsw i64 %1650, 5
  %1729 = getelementptr i8, ptr %1727, i64 %1650
  %1730 = getelementptr i8, ptr %1729, i64 4
  %1731 = load i8, ptr %1730, align 1, !tbaa !72
  %1732 = zext i8 %1731 to i64
  %1733 = or disjoint i64 %1726, %1732
  %1734 = add nuw nsw i64 %1733, 4096
  %1735 = call ptr @AcquireQuantumMemory(i64 noundef %1734, i64 noundef 1) #13
  %1736 = icmp eq ptr %1735, null
  br i1 %1736, label %1763, label %1737

1737:                                             ; preds = %1716
  %1738 = call ptr @GetStringInfoDatum(ptr noundef nonnull %1638) #12
  %1739 = getelementptr inbounds i8, ptr %1738, i64 %1728
  %1740 = add nuw nsw i64 %1733, 1
  %1741 = call i64 @CopyMagickString(ptr noundef nonnull %1735, ptr noundef %1739, i64 noundef %1740) #12
  %1742 = call ptr @StringToList(ptr noundef nonnull %1735) #12
  %1743 = icmp eq ptr %1742, null
  br i1 %1743, label %1761, label %1744

1744:                                             ; preds = %1737
  %1745 = load ptr, ptr %1742, align 8, !tbaa !147
  %1746 = icmp eq ptr %1745, null
  br i1 %1746, label %1759, label %1747

1747:                                             ; preds = %1744, %1747
  %1748 = phi ptr [ %1757, %1747 ], [ %1745, %1744 ]
  %1749 = phi ptr [ %1756, %1747 ], [ %1742, %1744 ]
  %1750 = phi i64 [ %1755, %1747 ], [ 0, %1744 ]
  %1751 = call i32 @fputs(ptr noundef nonnull %1748, ptr noundef %24)
  %1752 = call i32 @fputc(i32 10, ptr %24)
  %1753 = load ptr, ptr %1749, align 8, !tbaa !147
  %1754 = call ptr @RelinquishMagickMemory(ptr noundef %1753) #12
  store ptr %1754, ptr %1749, align 8, !tbaa !147
  %1755 = add nuw nsw i64 %1750, 1
  %1756 = getelementptr inbounds ptr, ptr %1742, i64 %1755
  %1757 = load ptr, ptr %1756, align 8, !tbaa !147
  %1758 = icmp eq ptr %1757, null
  br i1 %1758, label %1759, label %1747, !llvm.loop !148

1759:                                             ; preds = %1747, %1744
  %1760 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %1742) #12
  br label %1761

1761:                                             ; preds = %1759, %1737
  %1762 = call ptr @DestroyString(ptr noundef nonnull %1735) #12
  br label %1763

1763:                                             ; preds = %1716, %1761, %1649
  %1764 = phi i64 [ %1652, %1649 ], [ %1728, %1761 ], [ %1728, %1716 ]
  %1765 = phi i64 [ 1, %1649 ], [ %1733, %1761 ], [ %1733, %1716 ]
  %1766 = add nsw i64 %1765, %1764
  %1767 = icmp slt i64 %1766, %1647
  br i1 %1767, label %1649, label %1768, !llvm.loop !149

1768:                                             ; preds = %1763, %1646, %1640
  %1769 = load i32, ptr %15, align 8, !tbaa !34
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %1772, label %1771

1771:                                             ; preds = %1768
  call void @PrintStringInfo(ptr noundef %24, ptr noundef nonnull %1636, ptr noundef nonnull %1638) #12
  br label %1772

1772:                                             ; preds = %1771, %1768
  %1773 = call ptr @GetNextImageProfile(ptr noundef %0) #12
  %1774 = icmp eq ptr %1773, null
  br i1 %1774, label %1775, label %1635, !llvm.loop !146

1775:                                             ; preds = %1772, %1630
  call void @ResetImageArtifactIterator(ptr noundef %0) #12
  %1776 = call ptr @GetNextImageArtifact(ptr noundef %0) #12
  %1777 = icmp eq ptr %1776, null
  br i1 %1777, label %1790, label %1778

1778:                                             ; preds = %1775
  %1779 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.180) #12
  br label %1780

1780:                                             ; preds = %1778, %1787
  %1781 = phi ptr [ %1776, %1778 ], [ %1788, %1787 ]
  %1782 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.120, ptr noundef nonnull %1781) #12
  %1783 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %1781) #12
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %1787, label %1785

1785:                                             ; preds = %1780
  %1786 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.114, ptr noundef nonnull %1783) #12
  br label %1787

1787:                                             ; preds = %1785, %1780
  %1788 = call ptr @GetNextImageArtifact(ptr noundef %0) #12
  %1789 = icmp eq ptr %1788, null
  br i1 %1789, label %1790, label %1780, !llvm.loop !150

1790:                                             ; preds = %1787, %1775
  call void @ResetImageRegistryIterator() #12
  %1791 = call ptr @GetNextImageRegistry() #12
  %1792 = icmp eq ptr %1791, null
  br i1 %1792, label %1805, label %1793

1793:                                             ; preds = %1790
  %1794 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.181) #12
  br label %1795

1795:                                             ; preds = %1793, %1802
  %1796 = phi ptr [ %1791, %1793 ], [ %1803, %1802 ]
  %1797 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.120, ptr noundef nonnull %1796) #12
  %1798 = call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull %1796, ptr noundef nonnull %390) #12
  %1799 = icmp eq ptr %1798, null
  br i1 %1799, label %1802, label %1800

1800:                                             ; preds = %1795
  %1801 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.114, ptr noundef nonnull %1798) #12
  br label %1802

1802:                                             ; preds = %1800, %1795
  %1803 = call ptr @GetNextImageRegistry() #12
  %1804 = icmp eq ptr %1803, null
  br i1 %1804, label %1805, label %1795, !llvm.loop !151

1805:                                             ; preds = %1802, %1790
  %1806 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 5
  %1807 = load i32, ptr %1806, align 4, !tbaa !152
  %1808 = zext i32 %1807 to i64
  %1809 = call ptr @CommandOptionToMnemonic(i32 noundef 2, i64 noundef %1808) #12
  %1810 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.182, ptr noundef %1809) #12
  %1811 = call i64 @GetBlobSize(ptr noundef %0) #12
  %1812 = call i64 @FormatMagickSize(i64 noundef %1811, i32 noundef 0, ptr noundef nonnull %6) #12
  %1813 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.183, ptr noundef nonnull %6) #12
  %1814 = load i64, ptr %427, align 8, !tbaa !61
  %1815 = load i64, ptr %430, align 8, !tbaa !54
  %1816 = mul i64 %1815, %1814
  %1817 = call i64 @FormatMagickSize(i64 noundef %1816, i32 noundef 0, ptr noundef nonnull %6) #12
  %1818 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #16
  %1819 = icmp ugt i64 %1818, 1
  br i1 %1819, label %1820, label %1823

1820:                                             ; preds = %1805
  %1821 = add i64 %1818, -1
  %1822 = getelementptr inbounds [4096 x i8], ptr %6, i64 0, i64 %1821
  store i8 0, ptr %1822, align 1, !tbaa !72
  br label %1823

1823:                                             ; preds = %1820, %1805
  %1824 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.184, ptr noundef nonnull %6) #12
  %1825 = load i64, ptr %427, align 8, !tbaa !61
  %1826 = uitofp i64 %1825 to double
  %1827 = load i64, ptr %430, align 8, !tbaa !54
  %1828 = uitofp i64 %1827 to double
  %1829 = fmul double %1826, %1828
  %1830 = fdiv double %1829, %221
  %1831 = fadd double %1830, 5.000000e-01
  %1832 = fptoui double %1831 to i64
  %1833 = call i64 @FormatMagickSize(i64 noundef %1832, i32 noundef 0, ptr noundef nonnull %6) #12
  %1834 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.185, ptr noundef nonnull %6) #12
  %1835 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.186, double noundef %222) #12
  %1836 = fdiv double %221, 6.000000e+01
  %1837 = fptoui double %1836 to i64
  %1838 = call double @fmod(double noundef %221, double noundef 6.000000e+01) #12
  %1839 = call double @llvm.ceil.f64(double %1838)
  %1840 = fptoui double %1839 to i64
  %1841 = call double @llvm.floor.f64(double %221)
  %1842 = fsub double %221, %1841
  %1843 = fmul double %1842, 1.000000e+03
  %1844 = fptoui double %1843 to i64
  %1845 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.187, i64 noundef %1837, i64 noundef %1840, i64 noundef %1844) #12
  %1846 = call ptr @GetMagickVersion(ptr noundef null) #12
  %1847 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %24, ptr noundef nonnull @.str.188, ptr noundef %1846) #12
  %1848 = call i32 @fflush(ptr noundef %24)
  br label %1849

1849:                                             ; preds = %217, %373, %1823
  %1850 = call i32 @ferror(ptr noundef %24) #12
  %1851 = icmp eq i32 %1850, 0
  %1852 = zext i1 %1851 to i32
  br label %1853

1853:                                             ; preds = %1849, %588
  %1854 = phi i32 [ 0, %588 ], [ %1852, %1849 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #12
  ret i32 %1854
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintChannelLocations(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = zext nneg i32 %2 to i64
  switch i32 %4, label %9 [
    i32 5, label %13
    i32 3, label %11
  ]

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 %8, i32 2
  br label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 %8, i32 7
  br label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._ChannelStatistics, ptr %6, i64 %8, i32 1
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = phi ptr [ %10, %9 ], [ %12, %11 ], [ %14, %13 ]
  %17 = load double, ptr %16, align 8, !tbaa !69
  %18 = tail call i32 @GetMagickPrecision() #12
  %19 = tail call i32 @GetMagickPrecision() #12
  %20 = fmul double %17, 0x3EF0001000100010
  %21 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.191, ptr noundef %3, i32 noundef %18, double noundef %17, i32 noundef %19, double noundef %20) #12
  %22 = tail call ptr @AcquireExceptionInfo() #12
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %28 = icmp eq i64 %5, 0
  br label %33

29:                                               ; preds = %85
  %30 = add nuw nsw i64 %34, 1
  %31 = load i64, ptr %23, align 8, !tbaa !54
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %89, !llvm.loop !153

33:                                               ; preds = %26, %29
  %34 = phi i64 [ 0, %26 ], [ %30, %29 ]
  %35 = phi i64 [ 0, %26 ], [ %86, %29 ]
  %36 = load i64, ptr %27, align 8, !tbaa !61
  %37 = tail call ptr @GetVirtualPixels(ptr noundef %1, i64 noundef 0, i64 noundef %34, i64 noundef %36, i64 noundef 1, ptr noundef %22) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %85, label %39

39:                                               ; preds = %33
  %40 = load i64, ptr %27, align 8, !tbaa !61
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = sitofp i64 %34 to double
  br label %44

44:                                               ; preds = %42, %75
  %45 = phi i64 [ 0, %42 ], [ %76, %75 ]
  %46 = phi ptr [ %37, %42 ], [ %73, %75 ]
  %47 = phi i64 [ %35, %42 ], [ %72, %75 ]
  switch i32 %2, label %68 [
    i32 1, label %48
    i32 2, label %50
    i32 4, label %54
    i32 8, label %52
  ]

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 2
  br label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 1
  br label %54

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 0, i32 3
  br label %54

54:                                               ; preds = %44, %52, %50, %48
  %55 = phi ptr [ %53, %52 ], [ %51, %50 ], [ %49, %48 ], [ %46, %44 ]
  %56 = load i16, ptr %55, align 2, !tbaa !68
  %57 = uitofp i16 %56 to double
  %58 = fsub double %57, %17
  %59 = tail call double @llvm.fabs.f64(double %58)
  %60 = fcmp olt double %59, 5.000000e-01
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = icmp slt i64 %47, %5
  %63 = select i1 %28, i1 true, i1 %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = sitofp i64 %45 to double
  %66 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.192, double noundef %65, double noundef %43) #12
  %67 = add nsw i64 %47, 1
  br label %68

68:                                               ; preds = %44, %64, %54
  %69 = phi i64 [ %67, %64 ], [ %47, %54 ], [ %47, %44 ]
  %70 = getelementptr inbounds %struct._PixelPacket, ptr %46, i64 1
  br label %71

71:                                               ; preds = %61, %68
  %72 = phi i64 [ %69, %68 ], [ %47, %61 ]
  %73 = phi ptr [ %70, %68 ], [ %46, %61 ]
  %74 = phi i1 [ true, %68 ], [ false, %61 ]
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = add nuw nsw i64 %45, 1
  %77 = load i64, ptr %27, align 8, !tbaa !61
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %44, label %79, !llvm.loop !154

79:                                               ; preds = %75, %71, %39
  %80 = phi i64 [ 0, %39 ], [ %76, %75 ], [ %45, %71 ]
  %81 = phi i64 [ %35, %39 ], [ %72, %71 ], [ %72, %75 ]
  %82 = load i64, ptr %27, align 8, !tbaa !61
  %83 = icmp slt i64 %80, %82
  %84 = select i1 %83, i32 3, i32 0
  br label %85

85:                                               ; preds = %79, %33
  %86 = phi i64 [ %35, %33 ], [ %81, %79 ]
  %87 = phi i32 [ 3, %33 ], [ %84, %79 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %29, label %89

89:                                               ; preds = %29, %85, %15
  %90 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.26) #12
  ret void
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare double @GetElapsedTime(ptr noundef) local_unnamed_addr #2

declare double @GetUserTime(ptr noundef) local_unnamed_addr #2

declare void @GetTimerInfo(ptr noundef) local_unnamed_addr #2

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare i32 @GetImageType(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SignatureImage(ptr noundef) local_unnamed_addr #2

declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetMagickDescription(ptr noundef) local_unnamed_addr #2

declare ptr @GetMagickMimeType(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetImageChannelMoments(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetImageChannelPerceptualHash(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @GetImageChannelFeatures(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetImageDepth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintChannelMoments(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef %2) #12
  %7 = tail call i32 @GetMagickPrecision() #12
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8
  %10 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !155
  %12 = tail call i32 @GetMagickPrecision() #12
  %13 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 1, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !158
  %15 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.195, i32 noundef %7, double noundef %11, i32 noundef %12, double noundef %14) #12
  %16 = tail call i32 @GetMagickPrecision() #12
  %17 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !159
  %19 = tail call i32 @GetMagickPrecision() #12
  %20 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 2, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !160
  %22 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.196, i32 noundef %16, double noundef %18, i32 noundef %19, double noundef %21) #12
  %23 = tail call i32 @GetMagickPrecision() #12
  %24 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !161
  %26 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.197, i32 noundef %23, double noundef %25) #12
  %27 = tail call i32 @GetMagickPrecision() #12
  %28 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 4
  %29 = load double, ptr %28, align 8, !tbaa !162
  %30 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.198, i32 noundef %27, double noundef %29) #12
  %31 = tail call i32 @GetMagickPrecision() #12
  %32 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 5
  %33 = load double, ptr %32, align 8, !tbaa !163
  %34 = fmul double %33, %3
  %35 = tail call i32 @GetMagickPrecision() #12
  %36 = load double, ptr %32, align 8, !tbaa !163
  %37 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.199, i32 noundef %31, double noundef %34, i32 noundef %35, double noundef %36) #12
  br label %38

38:                                               ; preds = %5, %38
  %39 = phi i64 [ 0, %5 ], [ %52, %38 ]
  %40 = sitofp i64 %39 to double
  %41 = fadd double %40, 1.000000e+00
  %42 = tail call i32 @GetMagickPrecision() #12
  %43 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %39
  %44 = load double, ptr %43, align 8, !tbaa !69
  %45 = getelementptr inbounds [8 x double], ptr @__const.PrintChannelMoments.powers, i64 0, i64 %39
  %46 = load double, ptr %45, align 8, !tbaa !69
  %47 = tail call double @pow(double noundef %3, double noundef %46) #12
  %48 = fdiv double %44, %47
  %49 = tail call i32 @GetMagickPrecision() #12
  %50 = load double, ptr %43, align 8, !tbaa !69
  %51 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.200, double noundef %41, i32 noundef %42, double noundef %48, i32 noundef %49, double noundef %50) #12
  %52 = add nuw nsw i64 %39, 1
  %53 = icmp eq i64 %52, 8
  br i1 %53, label %54, label %38, !llvm.loop !164

54:                                               ; preds = %38
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintChannelFeatures(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = tail call i32 @GetMagickPrecision() #12
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !69
  %9 = tail call i32 @GetMagickPrecision() #12
  %10 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = tail call i32 @GetMagickPrecision() #12
  %13 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !69
  %15 = tail call i32 @GetMagickPrecision() #12
  %16 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !69
  %18 = tail call i32 @GetMagickPrecision() #12
  %19 = load double, ptr %7, align 8, !tbaa !69
  %20 = load double, ptr %10, align 8, !tbaa !69
  %21 = fadd double %19, %20
  %22 = load double, ptr %13, align 8, !tbaa !69
  %23 = fadd double %21, %22
  %24 = load double, ptr %16, align 8, !tbaa !69
  %25 = fadd double %23, %24
  %26 = fmul double %25, 2.500000e-01
  %27 = tail call i32 @GetMagickPrecision() #12
  %28 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !69
  %30 = tail call i32 @GetMagickPrecision() #12
  %31 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !69
  %33 = tail call i32 @GetMagickPrecision() #12
  %34 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1, i64 2
  %35 = load double, ptr %34, align 8, !tbaa !69
  %36 = tail call i32 @GetMagickPrecision() #12
  %37 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !69
  %39 = tail call i32 @GetMagickPrecision() #12
  %40 = load double, ptr %28, align 8, !tbaa !69
  %41 = load double, ptr %31, align 8, !tbaa !69
  %42 = fadd double %40, %41
  %43 = load double, ptr %34, align 8, !tbaa !69
  %44 = fadd double %42, %43
  %45 = load double, ptr %37, align 8, !tbaa !69
  %46 = fadd double %44, %45
  %47 = fmul double %46, 2.500000e-01
  %48 = tail call i32 @GetMagickPrecision() #12
  %49 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2
  %50 = load double, ptr %49, align 8, !tbaa !69
  %51 = tail call i32 @GetMagickPrecision() #12
  %52 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2, i64 1
  %53 = load double, ptr %52, align 8, !tbaa !69
  %54 = tail call i32 @GetMagickPrecision() #12
  %55 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2, i64 2
  %56 = load double, ptr %55, align 8, !tbaa !69
  %57 = tail call i32 @GetMagickPrecision() #12
  %58 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2, i64 3
  %59 = load double, ptr %58, align 8, !tbaa !69
  %60 = tail call i32 @GetMagickPrecision() #12
  %61 = load double, ptr %49, align 8, !tbaa !69
  %62 = load double, ptr %52, align 8, !tbaa !69
  %63 = fadd double %61, %62
  %64 = load double, ptr %55, align 8, !tbaa !69
  %65 = fadd double %63, %64
  %66 = load double, ptr %58, align 8, !tbaa !69
  %67 = fadd double %65, %66
  %68 = fmul double %67, 2.500000e-01
  %69 = tail call i32 @GetMagickPrecision() #12
  %70 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3
  %71 = load double, ptr %70, align 8, !tbaa !69
  %72 = tail call i32 @GetMagickPrecision() #12
  %73 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3, i64 1
  %74 = load double, ptr %73, align 8, !tbaa !69
  %75 = tail call i32 @GetMagickPrecision() #12
  %76 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3, i64 2
  %77 = load double, ptr %76, align 8, !tbaa !69
  %78 = tail call i32 @GetMagickPrecision() #12
  %79 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3, i64 3
  %80 = load double, ptr %79, align 8, !tbaa !69
  %81 = tail call i32 @GetMagickPrecision() #12
  %82 = load double, ptr %70, align 8, !tbaa !69
  %83 = load double, ptr %73, align 8, !tbaa !69
  %84 = fadd double %82, %83
  %85 = load double, ptr %76, align 8, !tbaa !69
  %86 = fadd double %84, %85
  %87 = load double, ptr %79, align 8, !tbaa !69
  %88 = fadd double %86, %87
  %89 = fmul double %88, 2.500000e-01
  %90 = tail call i32 @GetMagickPrecision() #12
  %91 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4
  %92 = load double, ptr %91, align 8, !tbaa !69
  %93 = tail call i32 @GetMagickPrecision() #12
  %94 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4, i64 1
  %95 = load double, ptr %94, align 8, !tbaa !69
  %96 = tail call i32 @GetMagickPrecision() #12
  %97 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4, i64 2
  %98 = load double, ptr %97, align 8, !tbaa !69
  %99 = tail call i32 @GetMagickPrecision() #12
  %100 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4, i64 3
  %101 = load double, ptr %100, align 8, !tbaa !69
  %102 = tail call i32 @GetMagickPrecision() #12
  %103 = load double, ptr %91, align 8, !tbaa !69
  %104 = load double, ptr %94, align 8, !tbaa !69
  %105 = fadd double %103, %104
  %106 = load double, ptr %97, align 8, !tbaa !69
  %107 = fadd double %105, %106
  %108 = load double, ptr %100, align 8, !tbaa !69
  %109 = fadd double %107, %108
  %110 = fmul double %109, 2.500000e-01
  %111 = tail call i32 @GetMagickPrecision() #12
  %112 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5
  %113 = load double, ptr %112, align 8, !tbaa !69
  %114 = tail call i32 @GetMagickPrecision() #12
  %115 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5, i64 1
  %116 = load double, ptr %115, align 8, !tbaa !69
  %117 = tail call i32 @GetMagickPrecision() #12
  %118 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5, i64 2
  %119 = load double, ptr %118, align 8, !tbaa !69
  %120 = tail call i32 @GetMagickPrecision() #12
  %121 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5, i64 3
  %122 = load double, ptr %121, align 8, !tbaa !69
  %123 = tail call i32 @GetMagickPrecision() #12
  %124 = load double, ptr %112, align 8, !tbaa !69
  %125 = load double, ptr %115, align 8, !tbaa !69
  %126 = fadd double %124, %125
  %127 = load double, ptr %118, align 8, !tbaa !69
  %128 = fadd double %126, %127
  %129 = load double, ptr %121, align 8, !tbaa !69
  %130 = fadd double %128, %129
  %131 = fmul double %130, 2.500000e-01
  %132 = tail call i32 @GetMagickPrecision() #12
  %133 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6
  %134 = load double, ptr %133, align 8, !tbaa !69
  %135 = tail call i32 @GetMagickPrecision() #12
  %136 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6, i64 1
  %137 = load double, ptr %136, align 8, !tbaa !69
  %138 = tail call i32 @GetMagickPrecision() #12
  %139 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6, i64 2
  %140 = load double, ptr %139, align 8, !tbaa !69
  %141 = tail call i32 @GetMagickPrecision() #12
  %142 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6, i64 3
  %143 = load double, ptr %142, align 8, !tbaa !69
  %144 = tail call i32 @GetMagickPrecision() #12
  %145 = load double, ptr %133, align 8, !tbaa !69
  %146 = load double, ptr %136, align 8, !tbaa !69
  %147 = fadd double %145, %146
  %148 = load double, ptr %139, align 8, !tbaa !69
  %149 = fadd double %147, %148
  %150 = load double, ptr %142, align 8, !tbaa !69
  %151 = fadd double %149, %150
  %152 = fmul double %151, 2.500000e-01
  %153 = tail call i32 @GetMagickPrecision() #12
  %154 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7
  %155 = load double, ptr %154, align 8, !tbaa !69
  %156 = tail call i32 @GetMagickPrecision() #12
  %157 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7, i64 1
  %158 = load double, ptr %157, align 8, !tbaa !69
  %159 = tail call i32 @GetMagickPrecision() #12
  %160 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7, i64 2
  %161 = load double, ptr %160, align 8, !tbaa !69
  %162 = tail call i32 @GetMagickPrecision() #12
  %163 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7, i64 3
  %164 = load double, ptr %163, align 8, !tbaa !69
  %165 = tail call i32 @GetMagickPrecision() #12
  %166 = load double, ptr %154, align 8, !tbaa !69
  %167 = load double, ptr %157, align 8, !tbaa !69
  %168 = fadd double %166, %167
  %169 = load double, ptr %160, align 8, !tbaa !69
  %170 = fadd double %168, %169
  %171 = load double, ptr %163, align 8, !tbaa !69
  %172 = fadd double %170, %171
  %173 = fmul double %172, 2.500000e-01
  %174 = tail call i32 @GetMagickPrecision() #12
  %175 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8
  %176 = load double, ptr %175, align 8, !tbaa !69
  %177 = tail call i32 @GetMagickPrecision() #12
  %178 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8, i64 1
  %179 = load double, ptr %178, align 8, !tbaa !69
  %180 = tail call i32 @GetMagickPrecision() #12
  %181 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8, i64 2
  %182 = load double, ptr %181, align 8, !tbaa !69
  %183 = tail call i32 @GetMagickPrecision() #12
  %184 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8, i64 3
  %185 = load double, ptr %184, align 8, !tbaa !69
  %186 = tail call i32 @GetMagickPrecision() #12
  %187 = load double, ptr %175, align 8, !tbaa !69
  %188 = load double, ptr %178, align 8, !tbaa !69
  %189 = fadd double %187, %188
  %190 = load double, ptr %181, align 8, !tbaa !69
  %191 = fadd double %189, %190
  %192 = load double, ptr %184, align 8, !tbaa !69
  %193 = fadd double %191, %192
  %194 = fmul double %193, 2.500000e-01
  %195 = tail call i32 @GetMagickPrecision() #12
  %196 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9
  %197 = load double, ptr %196, align 8, !tbaa !69
  %198 = tail call i32 @GetMagickPrecision() #12
  %199 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9, i64 1
  %200 = load double, ptr %199, align 8, !tbaa !69
  %201 = tail call i32 @GetMagickPrecision() #12
  %202 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9, i64 2
  %203 = load double, ptr %202, align 8, !tbaa !69
  %204 = tail call i32 @GetMagickPrecision() #12
  %205 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9, i64 3
  %206 = load double, ptr %205, align 8, !tbaa !69
  %207 = tail call i32 @GetMagickPrecision() #12
  %208 = load double, ptr %196, align 8, !tbaa !69
  %209 = load double, ptr %199, align 8, !tbaa !69
  %210 = fadd double %208, %209
  %211 = load double, ptr %202, align 8, !tbaa !69
  %212 = fadd double %210, %211
  %213 = load double, ptr %205, align 8, !tbaa !69
  %214 = fadd double %212, %213
  %215 = fmul double %214, 2.500000e-01
  %216 = tail call i32 @GetMagickPrecision() #12
  %217 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10
  %218 = load double, ptr %217, align 8, !tbaa !69
  %219 = tail call i32 @GetMagickPrecision() #12
  %220 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10, i64 1
  %221 = load double, ptr %220, align 8, !tbaa !69
  %222 = tail call i32 @GetMagickPrecision() #12
  %223 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10, i64 2
  %224 = load double, ptr %223, align 8, !tbaa !69
  %225 = tail call i32 @GetMagickPrecision() #12
  %226 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10, i64 3
  %227 = load double, ptr %226, align 8, !tbaa !69
  %228 = tail call i32 @GetMagickPrecision() #12
  %229 = load double, ptr %217, align 8, !tbaa !69
  %230 = load double, ptr %220, align 8, !tbaa !69
  %231 = fadd double %229, %230
  %232 = load double, ptr %223, align 8, !tbaa !69
  %233 = fadd double %231, %232
  %234 = load double, ptr %226, align 8, !tbaa !69
  %235 = fadd double %233, %234
  %236 = fmul double %235, 2.500000e-01
  %237 = tail call i32 @GetMagickPrecision() #12
  %238 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11
  %239 = load double, ptr %238, align 8, !tbaa !69
  %240 = tail call i32 @GetMagickPrecision() #12
  %241 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11, i64 1
  %242 = load double, ptr %241, align 8, !tbaa !69
  %243 = tail call i32 @GetMagickPrecision() #12
  %244 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11, i64 2
  %245 = load double, ptr %244, align 8, !tbaa !69
  %246 = tail call i32 @GetMagickPrecision() #12
  %247 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11, i64 3
  %248 = load double, ptr %247, align 8, !tbaa !69
  %249 = tail call i32 @GetMagickPrecision() #12
  %250 = load double, ptr %238, align 8, !tbaa !69
  %251 = load double, ptr %241, align 8, !tbaa !69
  %252 = fadd double %250, %251
  %253 = load double, ptr %244, align 8, !tbaa !69
  %254 = fadd double %252, %253
  %255 = load double, ptr %247, align 8, !tbaa !69
  %256 = fadd double %254, %255
  %257 = fmul double %256, 2.500000e-01
  %258 = tail call i32 @GetMagickPrecision() #12
  %259 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12
  %260 = load double, ptr %259, align 8, !tbaa !69
  %261 = tail call i32 @GetMagickPrecision() #12
  %262 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12, i64 1
  %263 = load double, ptr %262, align 8, !tbaa !69
  %264 = tail call i32 @GetMagickPrecision() #12
  %265 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12, i64 2
  %266 = load double, ptr %265, align 8, !tbaa !69
  %267 = tail call i32 @GetMagickPrecision() #12
  %268 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12, i64 3
  %269 = load double, ptr %268, align 8, !tbaa !69
  %270 = tail call i32 @GetMagickPrecision() #12
  %271 = load double, ptr %259, align 8, !tbaa !69
  %272 = load double, ptr %262, align 8, !tbaa !69
  %273 = fadd double %271, %272
  %274 = load double, ptr %265, align 8, !tbaa !69
  %275 = fadd double %273, %274
  %276 = load double, ptr %268, align 8, !tbaa !69
  %277 = fadd double %275, %276
  %278 = fmul double %277, 2.500000e-01
  %279 = tail call i32 @GetMagickPrecision() #12
  %280 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13
  %281 = load double, ptr %280, align 8, !tbaa !69
  %282 = tail call i32 @GetMagickPrecision() #12
  %283 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13, i64 1
  %284 = load double, ptr %283, align 8, !tbaa !69
  %285 = tail call i32 @GetMagickPrecision() #12
  %286 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13, i64 2
  %287 = load double, ptr %286, align 8, !tbaa !69
  %288 = tail call i32 @GetMagickPrecision() #12
  %289 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13, i64 3
  %290 = load double, ptr %289, align 8, !tbaa !69
  %291 = tail call i32 @GetMagickPrecision() #12
  %292 = load double, ptr %280, align 8, !tbaa !69
  %293 = load double, ptr %283, align 8, !tbaa !69
  %294 = fadd double %292, %293
  %295 = load double, ptr %286, align 8, !tbaa !69
  %296 = fadd double %294, %295
  %297 = load double, ptr %289, align 8, !tbaa !69
  %298 = fadd double %296, %297
  %299 = fmul double %298, 2.500000e-01
  %300 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.202, ptr noundef %2, i32 noundef %5, double noundef %8, i32 noundef %9, double noundef %11, i32 noundef %12, double noundef %14, i32 noundef %15, double noundef %17, i32 noundef %18, double noundef %26, i32 noundef %27, double noundef %29, i32 noundef %30, double noundef %32, i32 noundef %33, double noundef %35, i32 noundef %36, double noundef %38, i32 noundef %39, double noundef %47, i32 noundef %48, double noundef %50, i32 noundef %51, double noundef %53, i32 noundef %54, double noundef %56, i32 noundef %57, double noundef %59, i32 noundef %60, double noundef %68, i32 noundef %69, double noundef %71, i32 noundef %72, double noundef %74, i32 noundef %75, double noundef %77, i32 noundef %78, double noundef %80, i32 noundef %81, double noundef %89, i32 noundef %90, double noundef %92, i32 noundef %93, double noundef %95, i32 noundef %96, double noundef %98, i32 noundef %99, double noundef %101, i32 noundef %102, double noundef %110, i32 noundef %111, double noundef %113, i32 noundef %114, double noundef %116, i32 noundef %117, double noundef %119, i32 noundef %120, double noundef %122, i32 noundef %123, double noundef %131, i32 noundef %132, double noundef %134, i32 noundef %135, double noundef %137, i32 noundef %138, double noundef %140, i32 noundef %141, double noundef %143, i32 noundef %144, double noundef %152, i32 noundef %153, double noundef %155, i32 noundef %156, double noundef %158, i32 noundef %159, double noundef %161, i32 noundef %162, double noundef %164, i32 noundef %165, double noundef %173, i32 noundef %174, double noundef %176, i32 noundef %177, double noundef %179, i32 noundef %180, double noundef %182, i32 noundef %183, double noundef %185, i32 noundef %186, double noundef %194, i32 noundef %195, double noundef %197, i32 noundef %198, double noundef %200, i32 noundef %201, double noundef %203, i32 noundef %204, double noundef %206, i32 noundef %207, double noundef %215, i32 noundef %216, double noundef %218, i32 noundef %219, double noundef %221, i32 noundef %222, double noundef %224, i32 noundef %225, double noundef %227, i32 noundef %228, double noundef %236, i32 noundef %237, double noundef %239, i32 noundef %240, double noundef %242, i32 noundef %243, double noundef %245, i32 noundef %246, double noundef %248, i32 noundef %249, double noundef %257, i32 noundef %258, double noundef %260, i32 noundef %261, double noundef %263, i32 noundef %264, double noundef %266, i32 noundef %267, double noundef %269, i32 noundef %270, double noundef %278, i32 noundef %279, double noundef %281, i32 noundef %282, double noundef %284, i32 noundef %285, double noundef %287, i32 noundef %288, double noundef %290, i32 noundef %291, double noundef %299) #12
  ret void
}

declare i32 @GetMagickPrecision() local_unnamed_addr #2

declare double @GetImageTotalInkDensity(ptr noundef) local_unnamed_addr #2

declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsHistogramImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ConcatenateColorComponent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @QueryColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

declare ptr @AcquireImageInfo() local_unnamed_addr #2

declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SetWarningHandler(ptr noundef) local_unnamed_addr #2

declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResetImagePropertyIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextImageProperty(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #2

declare ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @StringToList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare void @PrintStringInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResetImageArtifactIterator(ptr noundef) local_unnamed_addr #2

declare ptr @GetNextImageArtifact(ptr noundef) local_unnamed_addr #2

declare void @ResetImageRegistryIterator() local_unnamed_addr #2

declare ptr @GetNextImageRegistry() local_unnamed_addr #2

declare ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #5

declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @CatchException(ptr noundef) local_unnamed_addr #2

declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #11

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { noreturn nounwind }
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
!34 = !{!35, !36, i64 12976}
!35 = !{!"_Image", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !40, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !43, i64 104, !44, i64 112, !36, i64 208, !40, i64 216, !36, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !39, i64 256, !43, i64 264, !43, i64 272, !46, i64 280, !46, i64 312, !46, i64 344, !43, i64 376, !43, i64 384, !43, i64 392, !36, i64 400, !36, i64 404, !36, i64 408, !36, i64 412, !36, i64 416, !36, i64 420, !40, i64 424, !39, i64 432, !39, i64 440, !39, i64 448, !39, i64 456, !39, i64 464, !39, i64 472, !47, i64 480, !48, i64 504, !40, i64 568, !40, i64 576, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !37, i64 616, !37, i64 4712, !37, i64 8808, !39, i64 12904, !39, i64 12912, !50, i64 12920, !36, i64 12976, !39, i64 12984, !40, i64 12992, !51, i64 13000, !51, i64 13032, !40, i64 13064, !39, i64 13072, !39, i64 13080, !40, i64 13088, !40, i64 13096, !40, i64 13104, !36, i64 13112, !36, i64 13116, !41, i64 13120, !40, i64 13128, !46, i64 13136, !40, i64 13168, !40, i64 13176, !36, i64 13184, !36, i64 13188, !52, i64 13192, !36, i64 13200, !39, i64 13208, !39, i64 13216, !36, i64 13224, !39, i64 13232}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"long", !37, i64 0}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"_PixelPacket", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6}
!42 = !{!"short", !37, i64 0}
!43 = !{!"double", !37, i64 0}
!44 = !{!"_ChromaticityInfo", !45, i64 0, !45, i64 24, !45, i64 48, !45, i64 72}
!45 = !{!"_PrimaryInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!46 = !{!"_RectangleInfo", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!47 = !{!"_ErrorInfo", !43, i64 0, !43, i64 8, !43, i64 16}
!48 = !{!"_TimerInfo", !49, i64 0, !49, i64 24, !36, i64 48, !39, i64 56}
!49 = !{!"_Timer", !43, i64 0, !43, i64 8, !43, i64 16}
!50 = !{!"_ExceptionInfo", !36, i64 0, !36, i64 4, !40, i64 8, !40, i64 16, !40, i64 24, !36, i64 32, !40, i64 40, !39, i64 48}
!51 = !{!"_ProfileInfo", !40, i64 0, !39, i64 8, !40, i64 16, !39, i64 24}
!52 = !{!"long long", !37, i64 0}
!53 = !{!36, !36, i64 0}
!54 = !{!35, !39, i64 48}
!55 = !{!56, !43, i64 16}
!56 = !{!"_ChannelStatistics", !39, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88}
!57 = !{!56, !43, i64 8}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!35, !39, i64 40}
!62 = !{!41, !42, i64 4}
!63 = !{!41, !42, i64 2}
!64 = !{!41, !42, i64 0}
!65 = !{!35, !36, i64 32}
!66 = !{!41, !42, i64 6}
!67 = !{!35, !36, i64 4}
!68 = !{!42, !42, i64 0}
!69 = !{!43, !43, i64 0}
!70 = distinct !{!70, !59, !60}
!71 = distinct !{!71, !59, !60}
!72 = !{!37, !37, i64 0}
!73 = !{!35, !39, i64 432}
!74 = !{!35, !39, i64 12904}
!75 = !{!35, !39, i64 12912}
!76 = !{!35, !39, i64 280}
!77 = !{!35, !39, i64 288}
!78 = !{!35, !39, i64 296}
!79 = !{!35, !39, i64 304}
!80 = !{!35, !39, i64 56}
!81 = !{!35, !36, i64 13184}
!82 = !{!35, !36, i64 0}
!83 = !{!35, !39, i64 464}
!84 = !{!35, !39, i64 64}
!85 = !{!35, !43, i64 480}
!86 = !{!35, !43, i64 488}
!87 = !{!35, !43, i64 496}
!88 = !{!35, !39, i64 13152}
!89 = !{!35, !39, i64 13160}
!90 = !{!35, !43, i64 264}
!91 = !{!35, !43, i64 272}
!92 = !{!35, !36, i64 224}
!93 = !{!35, !36, i64 408}
!94 = !{!56, !39, i64 0}
!95 = !{!56, !43, i64 56}
!96 = !{!56, !43, i64 72}
!97 = !{!56, !43, i64 80}
!98 = !{!56, !43, i64 88}
!99 = distinct !{!99, !59, !60}
!100 = distinct !{!100, !59, !60}
!101 = distinct !{!101, !59, !60}
!102 = !{!103, !104, i64 32}
!103 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !104, i64 32, !104, i64 36, !104, i64 40, !104, i64 44, !104, i64 48}
!104 = !{!"float", !37, i64 0}
!105 = !{!103, !104, i64 36}
!106 = !{!103, !104, i64 40}
!107 = !{!103, !104, i64 44}
!108 = !{!103, !104, i64 48}
!109 = !{!35, !40, i64 72}
!110 = !{!103, !36, i64 4}
!111 = !{!103, !36, i64 8}
!112 = distinct !{!112, !59, !60}
!113 = !{!35, !36, i64 208}
!114 = !{!35, !43, i64 104}
!115 = !{!35, !43, i64 112}
!116 = !{!35, !43, i64 136}
!117 = !{!35, !43, i64 160}
!118 = !{!35, !43, i64 184}
!119 = !{!35, !43, i64 120}
!120 = !{!35, !43, i64 144}
!121 = !{!35, !43, i64 168}
!122 = !{!35, !43, i64 192}
!123 = !{!35, !39, i64 312}
!124 = !{!35, !39, i64 320}
!125 = !{!35, !39, i64 328}
!126 = !{!35, !39, i64 336}
!127 = !{!35, !36, i64 404}
!128 = !{!35, !36, i64 13224}
!129 = !{!35, !36, i64 416}
!130 = !{!35, !36, i64 420}
!131 = !{!35, !39, i64 440}
!132 = !{!35, !39, i64 448}
!133 = !{!35, !39, i64 456}
!134 = !{!35, !39, i64 13232}
!135 = !{!35, !40, i64 13104}
!136 = !{!35, !40, i64 13088}
!137 = !{!35, !36, i64 8}
!138 = !{!35, !39, i64 16}
!139 = !{!35, !36, i64 24}
!140 = !{!35, !40, i64 232}
!141 = !{!35, !40, i64 240}
!142 = distinct !{!142, !59, !60}
!143 = distinct !{!143, !59, !60}
!144 = distinct !{!144, !59, !60}
!145 = distinct !{!145, !59, !60}
!146 = distinct !{!146, !59, !60}
!147 = !{!40, !40, i64 0}
!148 = distinct !{!148, !59, !60}
!149 = distinct !{!149, !59, !60}
!150 = distinct !{!150, !59, !60}
!151 = distinct !{!151, !59, !60}
!152 = !{!35, !36, i64 28}
!153 = distinct !{!153, !59, !60}
!154 = distinct !{!154, !59, !60}
!155 = !{!156, !43, i64 256}
!156 = !{!"_ChannelMoments", !37, i64 0, !157, i64 256, !157, i64 272, !43, i64 288, !43, i64 296, !43, i64 304}
!157 = !{!"_PointInfo", !43, i64 0, !43, i64 8}
!158 = !{!156, !43, i64 264}
!159 = !{!156, !43, i64 272}
!160 = !{!156, !43, i64 280}
!161 = !{!156, !43, i64 288}
!162 = !{!156, !43, i64 296}
!163 = !{!156, !43, i64 304}
!164 = distinct !{!164, !59, !60}
