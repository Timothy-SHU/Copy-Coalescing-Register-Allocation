; ModuleID = 'magick/identify.c'
source_filename = "magick/identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._ChannelMoments = type { [32 x double], %struct._PointInfo, %struct._PointInfo, double, double, double }
%struct._PointInfo = type { double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @IdentifyImage(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca [4096 x i8], align 16
  %12 = alloca [4096 x i8], align 16
  %13 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #15
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 546, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #16
  br label %20

20:                                               ; preds = %17, %3
  %21 = icmp eq ptr %1, null
  %22 = load ptr, ptr @stdout, align 8
  %23 = select i1 %21, ptr %22, ptr %1
  %24 = tail call ptr @AcquireExceptionInfo() #16
  %25 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %55, label %27

27:                                               ; preds = %20
  %28 = tail call i64 @ParseCommandOption(i32 noundef 61, i32 noundef 0, ptr noundef nonnull %25) #16
  %29 = trunc i64 %28 to i32
  %30 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %30) #17
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i64 [ %33, %32 ], [ 0, %27 ]
  %36 = tail call fastcc ptr @GetLocationStatistics(ptr noundef nonnull %0, i32 noundef %29, ptr noundef %24) #17
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !24
  %39 = tail call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef %24) #16
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %38, i32 2
  %42 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.5, ptr noundef nonnull %25) #16
  switch i32 %41, label %43 [
    i32 2, label %45
    i32 12, label %44
  ]

43:                                               ; preds = %34
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  br label %46

44:                                               ; preds = %34
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  br label %46

45:                                               ; preds = %34
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  br label %46

46:                                               ; preds = %45, %44, %43
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !25
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call fastcc void @PrintChannelLocations(ptr noundef %23, ptr noundef nonnull %0, i32 noundef 8, ptr noundef nonnull @.str.14, i32 noundef %29, i64 noundef %35, ptr noundef %36) #17
  br label %51

51:                                               ; preds = %50, %46
  %52 = tail call ptr @RelinquishMagickMemory(ptr noundef %36) #16
  %53 = tail call i32 @ferror(ptr noundef %23) #16
  %54 = icmp eq i32 %53, 0
  br label %1157

55:                                               ; preds = %20
  store i8 0, ptr %5, align 16, !tbaa !26
  %56 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 46
  %57 = tail call double @GetElapsedTime(ptr noundef nonnull %56) #16
  %58 = tail call double @GetUserTime(ptr noundef nonnull %56) #16
  tail call void @GetTimerInfo(ptr noundef nonnull %56) #16
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %60, label %221

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %62 = load i8, ptr %61, align 8, !tbaa !26
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %66 = tail call i32 @LocaleCompare(ptr noundef nonnull %61, ptr noundef nonnull %65) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.15, ptr noundef nonnull %61) #16
  br label %70

70:                                               ; preds = %64, %68, %60
  %71 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %0) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = tail call ptr @GetNextImageInList(ptr noundef nonnull %0) #16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %78 = load i64, ptr %77, align 8, !tbaa !27
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %82 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull %81) #16
  br label %89

83:                                               ; preds = %76, %73, %70
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %86 = load i64, ptr %85, align 8, !tbaa !27
  %87 = uitofp i64 %86 to double
  %88 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull %84, double noundef %87) #16
  br label %89

89:                                               ; preds = %83, %80
  %90 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %91 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull %90) #16
  %92 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %93 = load i64, ptr %92, align 8, !tbaa !28
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %97 = load i64, ptr %96, align 8, !tbaa !29
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %95, %89
  %100 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %101 = load i64, ptr %100, align 8, !tbaa !30
  %102 = icmp eq i64 %93, %101
  %103 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %104 = load i64, ptr %103, align 8, !tbaa !29
  br i1 %102, label %105, label %109

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %107 = load i64, ptr %106, align 8, !tbaa !31
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %99, %105
  %110 = uitofp i64 %93 to double
  %111 = uitofp i64 %104 to double
  %112 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.18, double noundef %110, double noundef %111) #16
  br label %113

113:                                              ; preds = %105, %109, %95
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %115 = load i64, ptr %114, align 8, !tbaa !30
  %116 = uitofp i64 %115 to double
  %117 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %118 = load i64, ptr %117, align 8, !tbaa !31
  %119 = uitofp i64 %118 to double
  %120 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.19, double noundef %116, double noundef %119) #16
  %121 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %122 = load i64, ptr %121, align 8, !tbaa !32
  %123 = icmp eq i64 %122, 0
  %124 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !33
  %126 = icmp eq i64 %125, 0
  %127 = select i1 %123, i1 %126, i1 false
  br i1 %127, label %128, label %136

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %130 = load i64, ptr %129, align 8, !tbaa !34
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %134 = load i64, ptr %133, align 8, !tbaa !35
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %113, %132, %128
  %137 = phi i64 [ 0, %132 ], [ 0, %128 ], [ %125, %113 ]
  %138 = uitofp i64 %122 to double
  %139 = uitofp i64 %137 to double
  %140 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %141 = load i64, ptr %140, align 8, !tbaa !34
  %142 = sitofp i64 %141 to double
  %143 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %144 = load i64, ptr %143, align 8, !tbaa !35
  %145 = sitofp i64 %144 to double
  %146 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.20, double noundef %138, double noundef %139, double noundef %142, double noundef %145) #16
  br label %147

147:                                              ; preds = %136, %132
  %148 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %149 = load i64, ptr %148, align 8, !tbaa !36
  %150 = uitofp i64 %149 to double
  %151 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.21, double noundef %150) #16
  %152 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %153 = load i32, ptr %152, align 8, !tbaa !37
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %147
  %156 = zext i32 %153 to i64
  %157 = tail call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %156) #16
  %158 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef %157) #16
  br label %159

159:                                              ; preds = %155, %147
  %160 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !24
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = zext i32 %161 to i64
  %165 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %164) #16
  %166 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef %165) #16
  br label %167

167:                                              ; preds = %163, %159
  %168 = load i32, ptr %0, align 8, !tbaa !38
  %169 = icmp eq i32 %168, 1
  %170 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 43
  %171 = load i64, ptr %170, align 8, !tbaa !39
  br i1 %169, label %172, label %177

172:                                              ; preds = %167
  %173 = icmp eq i64 %171, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %172
  %175 = call i64 @FormatMagickSize(i64 noundef %171, i32 noundef 0, ptr noundef nonnull %5) #16
  %176 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull %5) #16
  br label %188

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %179 = load i64, ptr %178, align 8, !tbaa !40
  %180 = icmp ugt i64 %171, %179
  br i1 %180, label %184, label %181

181:                                              ; preds = %177
  %182 = uitofp i64 %179 to double
  %183 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.22, double noundef %182) #16
  br label %188

184:                                              ; preds = %177
  %185 = uitofp i64 %171 to double
  %186 = uitofp i64 %179 to double
  %187 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.23, double noundef %185, double noundef %186) #16
  br label %188

188:                                              ; preds = %181, %184, %172, %174
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %190 = load double, ptr %189, align 8, !tbaa !41
  %191 = fcmp une double %190, 0.000000e+00
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = fadd double %190, 5.000000e-01
  %194 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  %195 = load double, ptr %194, align 8, !tbaa !42
  %196 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  %197 = load double, ptr %196, align 8, !tbaa !43
  %198 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.24, double noundef %193, double noundef %195, double noundef %197) #16
  br label %199

199:                                              ; preds = %192, %188
  %200 = call i64 @GetBlobSize(ptr noundef nonnull %0) #16
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %199
  %203 = call i64 @GetBlobSize(ptr noundef nonnull %0) #16
  %204 = call i64 @FormatMagickSize(i64 noundef %203, i32 noundef 0, ptr noundef nonnull %5) #16
  %205 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.16, ptr noundef nonnull %5) #16
  br label %206

206:                                              ; preds = %202, %199
  %207 = fdiv double %57, 6.000000e+01
  %208 = fptoui double %207 to i64
  %209 = call double @fmod(double noundef %57, double noundef 6.000000e+01) #16
  %210 = call double @llvm.floor.f64(double %209)
  %211 = fptoui double %210 to i64
  %212 = call double @llvm.floor.f64(double %57)
  %213 = fsub double %57, %212
  %214 = fmul double %213, 1.000000e+03
  %215 = fptoui double %214 to i64
  %216 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.25, double noundef %58, i64 noundef %208, i64 noundef %211, i64 noundef %215) #16
  %217 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.26) #16
  %218 = call i32 @fflush(ptr noundef %23) #17
  %219 = call i32 @ferror(ptr noundef %23) #16
  %220 = icmp eq i32 %219, 0
  br label %1157

221:                                              ; preds = %55
  %222 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %24) #16
  %223 = tail call ptr @DestroyExceptionInfo(ptr noundef %24) #16
  %224 = icmp eq ptr %222, null
  %225 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  %226 = tail call i32 @GetImageType(ptr noundef nonnull %0, ptr noundef nonnull %225) #16
  %227 = tail call i32 @SignatureImage(ptr noundef nonnull %0) #16
  %228 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %229 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.27, ptr noundef nonnull %228) #16
  %230 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %231 = load i8, ptr %230, align 8, !tbaa !26
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %221
  %234 = tail call i32 @LocaleCompare(ptr noundef nonnull %230, ptr noundef nonnull %228) #16
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %233
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #15
  call void @GetPathComponent(ptr noundef nonnull %230, i32 noundef 4, ptr noundef nonnull %7) #16
  %237 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.28, ptr noundef nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #15
  br label %238

238:                                              ; preds = %233, %236, %221
  %239 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %240 = call ptr @GetMagickInfo(ptr noundef nonnull %239, ptr noundef nonnull %225) #16
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull %239) #16
  br label %255

244:                                              ; preds = %238
  %245 = call ptr @GetMagickDescription(ptr noundef nonnull %240) #16
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = call ptr @GetMagickDescription(ptr noundef nonnull %240) #16
  %249 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.30, ptr noundef nonnull %239, ptr noundef %248) #16
  br label %252

250:                                              ; preds = %244
  %251 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull %239) #16
  br label %252

252:                                              ; preds = %250, %247
  %253 = call ptr @GetMagickMimeType(ptr noundef nonnull %240) #16
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255

255:                                              ; preds = %242, %252
  %256 = call ptr @GetMagickMimeType(ptr noundef %240) #16
  %257 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.31, ptr noundef %256) #16
  br label %258

258:                                              ; preds = %255, %252
  %259 = load i32, ptr %0, align 8, !tbaa !38
  %260 = zext i32 %259 to i64
  %261 = call ptr @CommandOptionToMnemonic(i32 noundef 5, i64 noundef %260) #16
  %262 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.32, ptr noundef %261) #16
  %263 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %264 = load i64, ptr %263, align 8, !tbaa !30
  %265 = uitofp i64 %264 to double
  %266 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %267 = load i64, ptr %266, align 8, !tbaa !31
  %268 = uitofp i64 %267 to double
  %269 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 2
  %270 = load i64, ptr %269, align 8, !tbaa !44
  %271 = sitofp i64 %270 to double
  %272 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 74, i32 3
  %273 = load i64, ptr %272, align 8, !tbaa !45
  %274 = sitofp i64 %273 to double
  %275 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.33, double noundef %265, double noundef %268, double noundef %271, double noundef %274) #16
  %276 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %277 = load i64, ptr %276, align 8, !tbaa !28
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %258
  %280 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %281 = load i64, ptr %280, align 8, !tbaa !29
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %295, label %283

283:                                              ; preds = %279, %258
  %284 = load i64, ptr %263, align 8, !tbaa !30
  %285 = icmp eq i64 %277, %284
  %286 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %287 = load i64, ptr %286, align 8, !tbaa !29
  br i1 %285, label %288, label %291

288:                                              ; preds = %283
  %289 = load i64, ptr %266, align 8, !tbaa !31
  %290 = icmp eq i64 %287, %289
  br i1 %290, label %295, label %291

291:                                              ; preds = %283, %288
  %292 = uitofp i64 %277 to double
  %293 = uitofp i64 %287 to double
  %294 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.34, double noundef %292, double noundef %293) #16
  br label %295

295:                                              ; preds = %288, %291, %279
  %296 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %297 = load double, ptr %296, align 8, !tbaa !46
  %298 = fcmp une double %297, 0.000000e+00
  br i1 %298, label %299, label %314

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %301 = load double, ptr %300, align 8, !tbaa !47
  %302 = fcmp une double %301, 0.000000e+00
  br i1 %302, label %303, label %314

303:                                              ; preds = %299
  %304 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.35, double noundef %297, double noundef %301) #16
  %305 = load i64, ptr %263, align 8, !tbaa !30
  %306 = uitofp i64 %305 to double
  %307 = load double, ptr %296, align 8, !tbaa !46
  %308 = fdiv double %306, %307
  %309 = load i64, ptr %266, align 8, !tbaa !31
  %310 = uitofp i64 %309 to double
  %311 = load double, ptr %300, align 8, !tbaa !47
  %312 = fdiv double %310, %311
  %313 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.36, double noundef %308, double noundef %312) #16
  br label %314

314:                                              ; preds = %303, %299, %295
  %315 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 19
  %316 = load i32, ptr %315, align 8, !tbaa !48
  %317 = zext i32 %316 to i64
  %318 = call ptr @CommandOptionToMnemonic(i32 noundef 58, i64 noundef %317) #16
  %319 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.37, ptr noundef %318) #16
  %320 = zext i32 %226 to i64
  %321 = call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %320) #16
  %322 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.38, ptr noundef %321) #16
  %323 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %324 = load i32, ptr %323, align 8, !tbaa !37
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %330, label %326

326:                                              ; preds = %314
  %327 = zext i32 %324 to i64
  %328 = call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %327) #16
  %329 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.39, ptr noundef %328) #16
  br label %330

330:                                              ; preds = %326, %314
  %331 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 34
  %332 = load i32, ptr %331, align 8, !tbaa !49
  %333 = zext i32 %332 to i64
  %334 = call ptr @CommandOptionToMnemonic(i32 noundef 22, i64 noundef %333) #16
  %335 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.40, ptr noundef %334) #16
  %336 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %337 = load i32, ptr %336, align 4, !tbaa !24
  %338 = zext i32 %337 to i64
  %339 = call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %338) #16
  %340 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.41, ptr noundef %339) #16
  %341 = load i32, ptr %336, align 4, !tbaa !24
  br i1 %224, label %570, label %342

342:                                              ; preds = %330
  %343 = call ptr @GetImageChannelStatistics(ptr noundef nonnull %0, ptr noundef nonnull %225) #16
  %344 = icmp eq ptr %343, null
  br i1 %344, label %1157, label %345

345:                                              ; preds = %342
  %346 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #16
  %347 = icmp eq ptr %346, null
  br i1 %347, label %351, label %348

348:                                              ; preds = %345
  %349 = call ptr @GetImageChannelMoments(ptr noundef nonnull %0, ptr noundef nonnull %225) #16
  %350 = call ptr @GetImageChannelPerceptualHash(ptr noundef nonnull %0, ptr noundef nonnull %225) #16
  br label %351

351:                                              ; preds = %348, %345
  %352 = phi ptr [ %350, %348 ], [ null, %345 ]
  %353 = phi ptr [ %349, %348 ], [ null, %345 ]
  %354 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #16
  %355 = icmp eq ptr %354, null
  br i1 %355, label %359, label %356

356:                                              ; preds = %351
  %357 = call fastcc i64 @StringToUnsignedLong(ptr noundef nonnull %354) #17
  %358 = call ptr @GetImageChannelFeatures(ptr noundef nonnull %0, i64 noundef %357, ptr noundef nonnull %225) #16
  br label %359

359:                                              ; preds = %356, %351
  %360 = phi ptr [ %358, %356 ], [ null, %351 ]
  %361 = call i64 @GetImageDepth(ptr noundef nonnull %0, ptr noundef nonnull %225) #16
  %362 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 9
  %363 = load i64, ptr %362, align 8, !tbaa !36
  %364 = icmp eq i64 %363, %361
  br i1 %364, label %365, label %368

365:                                              ; preds = %359
  %366 = uitofp i64 %361 to double
  %367 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.44, double noundef %366) #16
  br label %372

368:                                              ; preds = %359
  %369 = uitofp i64 %363 to double
  %370 = uitofp i64 %361 to double
  %371 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.45, double noundef %369, double noundef %370) #16
  br label %372

372:                                              ; preds = %368, %365
  %373 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.46) #16
  %374 = call i32 @IsGrayImage(ptr noundef nonnull %0, ptr noundef nonnull %225) #16
  %375 = icmp eq i32 %374, 0
  %376 = select i1 %375, i32 %341, i32 2
  %377 = getelementptr inbounds %struct._ChannelStatistics, ptr %343, i64 1
  %378 = load i64, ptr %377, align 8, !tbaa !50
  %379 = uitofp i64 %378 to double
  switch i32 %376, label %380 [
    i32 2, label %404
    i32 12, label %390
  ]

380:                                              ; preds = %372
  %381 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.47, double noundef %379) #16
  %382 = getelementptr inbounds %struct._ChannelStatistics, ptr %343, i64 2
  %383 = load i64, ptr %382, align 8, !tbaa !50
  %384 = uitofp i64 %383 to double
  %385 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.48, double noundef %384) #16
  %386 = getelementptr inbounds %struct._ChannelStatistics, ptr %343, i64 4
  %387 = load i64, ptr %386, align 8, !tbaa !50
  %388 = uitofp i64 %387 to double
  %389 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.49, double noundef %388) #16
  br label %406

390:                                              ; preds = %372
  %391 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.50, double noundef %379) #16
  %392 = getelementptr inbounds %struct._ChannelStatistics, ptr %343, i64 2
  %393 = load i64, ptr %392, align 8, !tbaa !50
  %394 = uitofp i64 %393 to double
  %395 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.51, double noundef %394) #16
  %396 = getelementptr inbounds %struct._ChannelStatistics, ptr %343, i64 4
  %397 = load i64, ptr %396, align 8, !tbaa !50
  %398 = uitofp i64 %397 to double
  %399 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.52, double noundef %398) #16
  %400 = getelementptr inbounds %struct._ChannelStatistics, ptr %343, i64 32
  %401 = load i64, ptr %400, align 8, !tbaa !50
  %402 = uitofp i64 %401 to double
  %403 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.53, double noundef %402) #16
  br label %406

404:                                              ; preds = %372
  %405 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.54, double noundef %379) #16
  br label %406

406:                                              ; preds = %404, %390, %380
  %407 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %408 = load i32, ptr %407, align 8, !tbaa !25
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %415, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct._ChannelStatistics, ptr %343, i64 8
  %412 = load i64, ptr %411, align 8, !tbaa !50
  %413 = uitofp i64 %412 to double
  %414 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.55, double noundef %413) #16
  br label %415

415:                                              ; preds = %410, %406
  %416 = load i64, ptr %362, align 8, !tbaa !36
  %417 = icmp ult i64 %416, 17
  br i1 %417, label %418, label %424

418:                                              ; preds = %415
  %419 = sub nuw nsw i64 16, %416
  %420 = lshr i64 65535, %419
  %421 = trunc i64 %420 to i16
  %422 = udiv i16 -1, %421
  %423 = uitofp i16 %422 to double
  br label %424

424:                                              ; preds = %418, %415
  %425 = phi double [ 1.000000e+00, %415 ], [ %423, %418 ]
  %426 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.56) #16
  %427 = fdiv double 1.000000e+00, %425
  switch i32 %376, label %428 [
    i32 2, label %430
    i32 12, label %429
  ]

428:                                              ; preds = %424
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.6, double noundef %427, ptr noundef nonnull %343) #17
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 2, ptr noundef nonnull @.str.7, double noundef %427, ptr noundef nonnull %343) #17
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.8, double noundef %427, ptr noundef nonnull %343) #17
  br label %431

429:                                              ; preds = %424
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.9, double noundef %427, ptr noundef nonnull %343) #17
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 2, ptr noundef nonnull @.str.10, double noundef %427, ptr noundef nonnull %343) #17
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.11, double noundef %427, ptr noundef nonnull %343) #17
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.12, double noundef %427, ptr noundef nonnull %343) #17
  br label %431

430:                                              ; preds = %424
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.13, double noundef %427, ptr noundef nonnull %343) #17
  br label %431

431:                                              ; preds = %430, %429, %428
  %432 = load i32, ptr %407, align 8, !tbaa !25
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %431
  %435 = fdiv double 1.000000e+00, %425
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 8, ptr noundef nonnull @.str.14, double noundef %435, ptr noundef nonnull %343) #17
  br label %436

436:                                              ; preds = %434, %431
  %437 = icmp eq i32 %376, 2
  br i1 %437, label %441, label %438

438:                                              ; preds = %436
  %439 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.57) #16
  %440 = fdiv double 1.000000e+00, %425
  call fastcc void @PrintChannelStatistics(ptr noundef %23, i32 noundef 47, ptr noundef nonnull @.str.58, double noundef %440, ptr noundef nonnull %343) #17
  br label %441

441:                                              ; preds = %436, %438
  %442 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %343) #16
  %443 = icmp eq ptr %353, null
  br i1 %443, label %462, label %444

444:                                              ; preds = %441
  %445 = load i64, ptr %362, align 8, !tbaa !36
  %446 = shl nsw i64 -1, %445
  %447 = xor i64 %446, -1
  %448 = uitofp i64 %447 to double
  %449 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.59) #16
  switch i32 %376, label %450 [
    i32 2, label %452
    i32 12, label %451
  ]

450:                                              ; preds = %444
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.6, double noundef %448, ptr noundef nonnull %353) #17
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 2, ptr noundef nonnull @.str.7, double noundef %448, ptr noundef nonnull %353) #17
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.8, double noundef %448, ptr noundef nonnull %353) #17
  br label %453

451:                                              ; preds = %444
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.9, double noundef %448, ptr noundef nonnull %353) #17
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 2, ptr noundef nonnull @.str.10, double noundef %448, ptr noundef nonnull %353) #17
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.11, double noundef %448, ptr noundef nonnull %353) #17
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.12, double noundef %448, ptr noundef nonnull %353) #17
  br label %453

452:                                              ; preds = %444
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.13, double noundef %448, ptr noundef nonnull %353) #17
  br label %453

453:                                              ; preds = %452, %451, %450
  %454 = load i32, ptr %407, align 8, !tbaa !25
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %457, label %456

456:                                              ; preds = %453
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 8, ptr noundef nonnull @.str.14, double noundef %448, ptr noundef nonnull %353) #17
  br label %457

457:                                              ; preds = %456, %453
  br i1 %437, label %460, label %458

458:                                              ; preds = %457
  %459 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.60) #16
  call fastcc void @PrintChannelMoments(ptr noundef %23, i32 noundef 47, ptr noundef nonnull @.str.58, double noundef %448, ptr noundef nonnull %353) #17
  br label %460

460:                                              ; preds = %458, %457
  %461 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %353) #16
  br label %462

462:                                              ; preds = %460, %441
  %463 = icmp eq ptr %352, null
  br i1 %463, label %471, label %464

464:                                              ; preds = %462
  %465 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.61) #16
  call fastcc void @PrintChannelPerceptualHash(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.62, ptr noundef nonnull %352) #17
  call fastcc void @PrintChannelPerceptualHash(ptr noundef %23, i32 noundef 2, ptr noundef nonnull @.str.63, ptr noundef nonnull %352) #17
  call fastcc void @PrintChannelPerceptualHash(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.64, ptr noundef nonnull %352) #17
  %466 = load i32, ptr %407, align 8, !tbaa !25
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %464
  call fastcc void @PrintChannelPerceptualHash(ptr noundef %23, i32 noundef 8, ptr noundef nonnull @.str.65, ptr noundef nonnull %352) #17
  br label %469

469:                                              ; preds = %468, %464
  %470 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %352) #16
  br label %471

471:                                              ; preds = %469, %462
  %472 = icmp eq ptr %360, null
  br i1 %472, label %484, label %473

473:                                              ; preds = %471
  %474 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.66) #16
  switch i32 %376, label %475 [
    i32 2, label %477
    i32 12, label %476
  ]

475:                                              ; preds = %473
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull %360) #17
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull %360) #17
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull %360) #17
  br label %478

476:                                              ; preds = %473
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull %360) #17
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %360) #17
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %360) #17
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull %360) #17
  br label %478

477:                                              ; preds = %473
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull %360) #17
  br label %478

478:                                              ; preds = %477, %476, %475
  %479 = load i32, ptr %407, align 8, !tbaa !25
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %482, label %481

481:                                              ; preds = %478
  call fastcc void @PrintChannelFeatures(ptr noundef %23, i32 noundef 8, ptr noundef nonnull @.str.14, ptr noundef nonnull %360) #17
  br label %482

482:                                              ; preds = %481, %478
  %483 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %360) #16
  br label %484

484:                                              ; preds = %482, %471
  %485 = load i32, ptr %336, align 4, !tbaa !24
  %486 = icmp eq i32 %485, 12
  br i1 %486, label %487, label %493

487:                                              ; preds = %484
  %488 = call i32 @GetMagickPrecision() #16
  %489 = call double @GetImageTotalInkDensity(ptr noundef nonnull %0) #16
  %490 = fmul double %489, 1.000000e+02
  %491 = fdiv double %490, 6.553500e+04
  %492 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.67, i32 noundef %488, double noundef %491) #16
  br label %493

493:                                              ; preds = %487, %484
  %494 = load i32, ptr %407, align 8, !tbaa !25
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %551, label %496

496:                                              ; preds = %493
  %497 = load i64, ptr %266, align 8, !tbaa !31
  %498 = icmp sgt i64 %497, 0
  %499 = load i64, ptr %263, align 8, !tbaa !30
  br i1 %498, label %500, label %536

500:                                              ; preds = %496
  %501 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %499, i64 noundef 1, ptr noundef nonnull %225) #16
  %502 = icmp eq ptr %501, null
  br i1 %502, label %506, label %511

503:                                              ; preds = %530
  %504 = call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %533, i64 noundef %515, i64 noundef 1, ptr noundef nonnull %225) #16
  %505 = icmp eq ptr %504, null
  br i1 %505, label %506, label %511, !llvm.loop !52

506:                                              ; preds = %503, %500
  %507 = phi ptr [ null, %500 ], [ %514, %503 ]
  %508 = phi i64 [ 0, %500 ], [ %533, %503 ]
  %509 = phi i64 [ 0, %500 ], [ %531, %503 ]
  %510 = load i64, ptr %263, align 8, !tbaa !30
  br label %536

511:                                              ; preds = %500, %503
  %512 = phi ptr [ %504, %503 ], [ %501, %500 ]
  %513 = phi i64 [ %533, %503 ], [ 0, %500 ]
  %514 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #16
  %515 = load i64, ptr %263, align 8, !tbaa !30
  %516 = icmp sgt i64 %515, 0
  br i1 %516, label %517, label %530

517:                                              ; preds = %511
  %518 = shl i64 %515, 3
  %519 = getelementptr i8, ptr %512, i64 %518
  br label %520

520:                                              ; preds = %517, %526
  %521 = phi ptr [ %527, %526 ], [ %512, %517 ]
  %522 = phi i64 [ %528, %526 ], [ 0, %517 ]
  %523 = getelementptr inbounds %struct._PixelPacket, ptr %521, i64 0, i32 3
  %524 = load i16, ptr %523, align 2, !tbaa !54
  %525 = icmp eq i16 %524, -1
  br i1 %525, label %536, label %526

526:                                              ; preds = %520
  %527 = getelementptr inbounds %struct._PixelPacket, ptr %521, i64 1
  %528 = add nuw nsw i64 %522, 1
  %529 = icmp eq i64 %528, %515
  br i1 %529, label %530, label %520, !llvm.loop !55

530:                                              ; preds = %526, %511
  %531 = phi i64 [ 0, %511 ], [ %515, %526 ]
  %532 = phi ptr [ %512, %511 ], [ %519, %526 ]
  %533 = add nuw nsw i64 %513, 1
  %534 = load i64, ptr %266, align 8, !tbaa !31
  %535 = icmp slt i64 %533, %534
  br i1 %535, label %503, label %536, !llvm.loop !52

536:                                              ; preds = %530, %520, %506, %496
  %537 = phi i64 [ %499, %496 ], [ %510, %506 ], [ %515, %520 ], [ %515, %530 ]
  %538 = phi i64 [ 0, %496 ], [ %508, %506 ], [ %513, %520 ], [ %533, %530 ]
  %539 = phi i64 [ 0, %496 ], [ %509, %506 ], [ %522, %520 ], [ %531, %530 ]
  %540 = phi ptr [ null, %496 ], [ %507, %506 ], [ %514, %520 ], [ %514, %530 ]
  %541 = phi ptr [ null, %496 ], [ null, %506 ], [ %521, %520 ], [ %532, %530 ]
  %542 = icmp slt i64 %539, %537
  br i1 %542, label %546, label %543

543:                                              ; preds = %536
  %544 = load i64, ptr %266, align 8, !tbaa !31
  %545 = icmp slt i64 %538, %544
  br i1 %545, label %546, label %551

546:                                              ; preds = %543, %536
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #15
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %9) #16
  %547 = getelementptr inbounds i16, ptr %540, i64 %539
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %541, ptr noundef %547, ptr noundef nonnull %9) #17
  %548 = call i32 @QueryMagickColorname(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %8, ptr noundef nonnull %225) #16
  %549 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.68, ptr noundef nonnull %8) #16
  call void @GetColorTuple(ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %8) #16
  %550 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.69, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #15
  br label %551

551:                                              ; preds = %543, %546, %493
  %552 = call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.70) #16
  %553 = call i32 @IsHistogramImage(ptr noundef nonnull %0, ptr noundef nonnull %225) #16
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %561, label %555

555:                                              ; preds = %551
  %556 = call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %225) #16
  %557 = uitofp i64 %556 to double
  %558 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.71, double noundef %557) #16
  %559 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.72) #16
  %560 = call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef %23, ptr noundef nonnull %225) #16
  br label %570

561:                                              ; preds = %551
  %562 = icmp eq ptr %552, null
  br i1 %562, label %570, label %563

563:                                              ; preds = %561
  %564 = call i32 @IsMagickTrue(ptr noundef nonnull %552) #16
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %570, label %566

566:                                              ; preds = %563
  %567 = call i64 @GetNumberColors(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %225) #16
  %568 = uitofp i64 %567 to double
  %569 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.71, double noundef %568) #16
  br label %570

570:                                              ; preds = %330, %555, %566, %563, %561
  %571 = load i32, ptr %0, align 8, !tbaa !38
  %572 = icmp eq i32 %571, 2
  br i1 %572, label %573, label %613

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 10
  %575 = load i64, ptr %574, align 8, !tbaa !40
  %576 = uitofp i64 %575 to double
  %577 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.73, double noundef %576) #16
  %578 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.74) #16
  %579 = load i64, ptr %574, align 8, !tbaa !40
  %580 = icmp ult i64 %579, 1025
  br i1 %580, label %581, label %613

581:                                              ; preds = %573
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #15
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %13) #16
  %582 = load i64, ptr %574, align 8, !tbaa !40
  %583 = icmp sgt i64 %582, 0
  br i1 %583, label %584, label %612

584:                                              ; preds = %581
  %585 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 11
  %586 = load ptr, ptr %585, align 8, !tbaa !56
  %587 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 1
  %588 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 2
  br label %589

589:                                              ; preds = %584, %604
  %590 = phi ptr [ %586, %584 ], [ %608, %604 ]
  %591 = phi i64 [ 0, %584 ], [ %609, %604 ]
  call fastcc void @SetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef %590, ptr noundef null, ptr noundef nonnull %13) #17
  %592 = call i64 @CopyMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.75, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %13, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %12) #16
  %593 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.76, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %13, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %12) #16
  %594 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.76, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %13, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %12) #16
  %595 = load i32, ptr %587, align 4, !tbaa !57
  %596 = icmp eq i32 %595, 12
  br i1 %596, label %597, label %599

597:                                              ; preds = %589
  %598 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.76, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %13, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %12) #16
  br label %599

599:                                              ; preds = %597, %589
  %600 = load i32, ptr %588, align 8, !tbaa !60
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %599
  %603 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.76, i64 noundef 4096) #16
  call void @ConcatenateColorComponent(ptr noundef nonnull %13, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %12) #16
  br label %604

604:                                              ; preds = %602, %599
  %605 = call i64 @ConcatenateMagickString(ptr noundef nonnull %12, ptr noundef nonnull @.str.77, i64 noundef 4096) #16
  %606 = call i32 @QueryMagickColorname(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef 1, ptr noundef nonnull %10, ptr noundef nonnull %225) #16
  call void @GetColorTuple(ptr noundef nonnull %13, i32 noundef 1, ptr noundef nonnull %11) #16
  %607 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.78, i64 noundef %591, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #16
  %608 = getelementptr inbounds %struct._PixelPacket, ptr %590, i64 1
  %609 = add nuw nsw i64 %591, 1
  %610 = load i64, ptr %574, align 8, !tbaa !40
  %611 = icmp slt i64 %609, %610
  br i1 %611, label %589, label %612, !llvm.loop !61

612:                                              ; preds = %604, %581
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #15
  br label %613

613:                                              ; preds = %573, %612, %570
  %614 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45
  %615 = load double, ptr %614, align 8, !tbaa !41
  %616 = fcmp une double %615, 0.000000e+00
  br i1 %616, label %617, label %619

617:                                              ; preds = %613
  %618 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.79, double noundef %615) #16
  br label %619

619:                                              ; preds = %617, %613
  %620 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 1
  %621 = load double, ptr %620, align 8, !tbaa !42
  %622 = fcmp une double %621, 0.000000e+00
  br i1 %622, label %623, label %625

623:                                              ; preds = %619
  %624 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.80, double noundef %621) #16
  br label %625

625:                                              ; preds = %623, %619
  %626 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 45, i32 2
  %627 = load double, ptr %626, align 8, !tbaa !43
  %628 = fcmp une double %627, 0.000000e+00
  br i1 %628, label %629, label %631

629:                                              ; preds = %625
  %630 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.81, double noundef %627) #16
  br label %631

631:                                              ; preds = %629, %625
  %632 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 17
  %633 = load i32, ptr %632, align 8, !tbaa !62
  %634 = zext i32 %633 to i64
  %635 = call ptr @CommandOptionToMnemonic(i32 noundef 31, i64 noundef %634) #16
  %636 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.82, ptr noundef %635) #16
  %637 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 15
  %638 = load double, ptr %637, align 8, !tbaa !63
  %639 = fcmp une double %638, 0.000000e+00
  br i1 %639, label %640, label %642

640:                                              ; preds = %631
  %641 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.83, double noundef %638) #16
  br label %642

642:                                              ; preds = %640, %631
  %643 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16
  %644 = load double, ptr %643, align 8, !tbaa !64
  %645 = fcmp une double %644, 0.000000e+00
  br i1 %645, label %658, label %646

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 1
  %648 = load double, ptr %647, align 8, !tbaa !65
  %649 = fcmp une double %648, 0.000000e+00
  br i1 %649, label %658, label %650

650:                                              ; preds = %646
  %651 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 2
  %652 = load double, ptr %651, align 8, !tbaa !66
  %653 = fcmp une double %652, 0.000000e+00
  br i1 %653, label %658, label %654

654:                                              ; preds = %650
  %655 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 3
  %656 = load double, ptr %655, align 8, !tbaa !67
  %657 = fcmp une double %656, 0.000000e+00
  br i1 %657, label %658, label %679

658:                                              ; preds = %654, %650, %646, %642
  %659 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.84) #16
  %660 = load double, ptr %643, align 8, !tbaa !64
  %661 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 0, i32 1
  %662 = load double, ptr %661, align 8, !tbaa !68
  %663 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.85, double noundef %660, double noundef %662) #16
  %664 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 1
  %665 = load double, ptr %664, align 8, !tbaa !65
  %666 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 1, i32 1
  %667 = load double, ptr %666, align 8, !tbaa !69
  %668 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.86, double noundef %665, double noundef %667) #16
  %669 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 2
  %670 = load double, ptr %669, align 8, !tbaa !66
  %671 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 2, i32 1
  %672 = load double, ptr %671, align 8, !tbaa !70
  %673 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.87, double noundef %670, double noundef %672) #16
  %674 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 3
  %675 = load double, ptr %674, align 8, !tbaa !67
  %676 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 16, i32 3, i32 1
  %677 = load double, ptr %676, align 8, !tbaa !71
  %678 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.88, double noundef %675, double noundef %677) #16
  br label %679

679:                                              ; preds = %658, %654
  %680 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27
  %681 = load i64, ptr %680, align 8, !tbaa !72
  %682 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27, i32 1
  %683 = load i64, ptr %682, align 8, !tbaa !73
  %684 = mul i64 %683, %681
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %696, label %686

686:                                              ; preds = %679
  %687 = uitofp i64 %681 to double
  %688 = uitofp i64 %683 to double
  %689 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27, i32 2
  %690 = load i64, ptr %689, align 8, !tbaa !74
  %691 = sitofp i64 %690 to double
  %692 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 27, i32 3
  %693 = load i64, ptr %692, align 8, !tbaa !75
  %694 = sitofp i64 %693 to double
  %695 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.89, double noundef %687, double noundef %688, double noundef %691, double noundef %694) #16
  br label %696

696:                                              ; preds = %686, %679
  %697 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 12
  %698 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %697, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %225) #16
  %699 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.90, ptr noundef nonnull %4) #16
  %700 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 13
  %701 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %700, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %225) #16
  %702 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.91, ptr noundef nonnull %4) #16
  %703 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 14
  %704 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %703, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %225) #16
  %705 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.92, ptr noundef nonnull %4) #16
  %706 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 72
  %707 = call i32 @QueryColorname(ptr noundef nonnull %0, ptr noundef nonnull %706, i32 noundef 1, ptr noundef nonnull %4, ptr noundef nonnull %225) #16
  %708 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.93, ptr noundef nonnull %4) #16
  %709 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 33
  %710 = load i32, ptr %709, align 4, !tbaa !76
  %711 = zext i32 %710 to i64
  %712 = call ptr @CommandOptionToMnemonic(i32 noundef 32, i64 noundef %711) #16
  %713 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.94, ptr noundef %712) #16
  %714 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 83
  %715 = load i32, ptr %714, align 8, !tbaa !77
  %716 = zext i32 %715 to i64
  %717 = call ptr @CommandOptionToMnemonic(i32 noundef 51, i64 noundef %716) #16
  %718 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.95, ptr noundef %717) #16
  %719 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 36
  %720 = load i32, ptr %719, align 8, !tbaa !78
  %721 = zext i32 %720 to i64
  %722 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %721) #16
  %723 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.96, ptr noundef %722) #16
  %724 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %725 = load i64, ptr %724, align 8, !tbaa !32
  %726 = icmp eq i64 %725, 0
  %727 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %728 = load i64, ptr %727, align 8, !tbaa !33
  %729 = icmp eq i64 %728, 0
  %730 = select i1 %726, i1 %729, i1 false
  br i1 %730, label %731, label %739

731:                                              ; preds = %696
  %732 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %733 = load i64, ptr %732, align 8, !tbaa !34
  %734 = icmp eq i64 %733, 0
  br i1 %734, label %735, label %739

735:                                              ; preds = %731
  %736 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %737 = load i64, ptr %736, align 8, !tbaa !35
  %738 = icmp eq i64 %737, 0
  br i1 %738, label %755, label %739

739:                                              ; preds = %696, %731, %735
  %740 = phi i64 [ 0, %735 ], [ 0, %731 ], [ %728, %696 ]
  %741 = uitofp i64 %725 to double
  %742 = uitofp i64 %740 to double
  %743 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %744 = load i64, ptr %743, align 8, !tbaa !34
  %745 = sitofp i64 %744 to double
  %746 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %747 = load i64, ptr %746, align 8, !tbaa !35
  %748 = sitofp i64 %747 to double
  %749 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.97, double noundef %741, double noundef %742, double noundef %745, double noundef %748) #16
  %750 = load i64, ptr %743, align 8, !tbaa !34
  %751 = icmp eq i64 %750, 0
  br i1 %751, label %755, label %752

752:                                              ; preds = %739
  %753 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %754 = load i64, ptr %753, align 8, !tbaa !35
  br label %759

755:                                              ; preds = %735, %739
  %756 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %757 = load i64, ptr %756, align 8, !tbaa !35
  %758 = icmp eq i64 %757, 0
  br i1 %758, label %765, label %759

759:                                              ; preds = %752, %755
  %760 = phi i64 [ %750, %752 ], [ 0, %755 ]
  %761 = phi i64 [ %754, %752 ], [ %757, %755 ]
  %762 = sitofp i64 %760 to double
  %763 = sitofp i64 %761 to double
  %764 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.98, double noundef %762, double noundef %763) #16
  br label %765

765:                                              ; preds = %759, %755
  %766 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 37
  %767 = load i32, ptr %766, align 4, !tbaa !79
  %768 = zext i32 %767 to i64
  %769 = call ptr @CommandOptionToMnemonic(i32 noundef 19, i64 noundef %768) #16
  %770 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.99, ptr noundef %769) #16
  %771 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 40
  %772 = load i64, ptr %771, align 8, !tbaa !80
  %773 = icmp eq i64 %772, 0
  br i1 %773, label %780, label %774

774:                                              ; preds = %765
  %775 = uitofp i64 %772 to double
  %776 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 41
  %777 = load i64, ptr %776, align 8, !tbaa !81
  %778 = sitofp i64 %777 to double
  %779 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.100, double noundef %775, double noundef %778) #16
  br label %780

780:                                              ; preds = %774, %765
  %781 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 42
  %782 = load i64, ptr %781, align 8, !tbaa !82
  %783 = icmp eq i64 %782, 1
  br i1 %783, label %787, label %784

784:                                              ; preds = %780
  %785 = uitofp i64 %782 to double
  %786 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.101, double noundef %785) #16
  br label %787

787:                                              ; preds = %784, %780
  %788 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 84
  %789 = load i64, ptr %788, align 8, !tbaa !83
  %790 = icmp eq i64 %789, 0
  br i1 %790, label %794, label %791

791:                                              ; preds = %787
  %792 = uitofp i64 %789 to double
  %793 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.102, double noundef %792) #16
  br label %794

794:                                              ; preds = %791, %787
  %795 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 69
  %796 = load ptr, ptr %795, align 8, !tbaa !84
  %797 = icmp eq ptr %796, null
  br i1 %797, label %798, label %802

798:                                              ; preds = %794
  %799 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 67
  %800 = load ptr, ptr %799, align 8, !tbaa !85
  %801 = icmp eq ptr %800, null
  br i1 %801, label %809, label %802

802:                                              ; preds = %798, %794
  %803 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %804 = load i64, ptr %803, align 8, !tbaa !27
  %805 = uitofp i64 %804 to double
  %806 = call i64 @GetImageListLength(ptr noundef nonnull %0) #16
  %807 = uitofp i64 %806 to double
  %808 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.103, double noundef %805, double noundef %807) #16
  br label %816

809:                                              ; preds = %798
  %810 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 39
  %811 = load i64, ptr %810, align 8, !tbaa !27
  %812 = icmp eq i64 %811, 0
  br i1 %812, label %816, label %813

813:                                              ; preds = %809
  %814 = uitofp i64 %811 to double
  %815 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.104, double noundef %814) #16
  br label %816

816:                                              ; preds = %809, %813, %802
  %817 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 2
  %818 = load i32, ptr %817, align 8, !tbaa !86
  %819 = zext i32 %818 to i64
  %820 = call ptr @CommandOptionToMnemonic(i32 noundef 12, i64 noundef %819) #16
  %821 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.105, ptr noundef %820) #16
  %822 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 3
  %823 = load i64, ptr %822, align 8, !tbaa !87
  %824 = icmp eq i64 %823, 0
  br i1 %824, label %828, label %825

825:                                              ; preds = %816
  %826 = uitofp i64 %823 to double
  %827 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.106, double noundef %826) #16
  br label %828

828:                                              ; preds = %825, %816
  %829 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 4
  %830 = load i32, ptr %829, align 8, !tbaa !88
  %831 = zext i32 %830 to i64
  %832 = call ptr @CommandOptionToMnemonic(i32 noundef 50, i64 noundef %831) #16
  %833 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.107, ptr noundef %832) #16
  %834 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 20
  %835 = load ptr, ptr %834, align 8, !tbaa !89
  %836 = icmp eq ptr %835, null
  br i1 %836, label %839, label %837

837:                                              ; preds = %828
  %838 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.108, ptr noundef nonnull %835) #16
  br label %839

839:                                              ; preds = %837, %828
  %840 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 21
  %841 = load ptr, ptr %840, align 8, !tbaa !90
  %842 = icmp eq ptr %841, null
  br i1 %842, label %905, label %843

843:                                              ; preds = %839
  %844 = call ptr @AcquireImageInfo() #16
  %845 = getelementptr inbounds %struct._ImageInfo, ptr %844, i64 0, i32 6
  %846 = call ptr @CloneString(ptr noundef nonnull %845, ptr noundef nonnull @.str.109) #16
  %847 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.110) #16
  %848 = load ptr, ptr %840, align 8, !tbaa !90
  %849 = load i8, ptr %848, align 1, !tbaa !26
  %850 = icmp eq i8 %849, 0
  br i1 %850, label %903, label %851

851:                                              ; preds = %843
  %852 = getelementptr inbounds %struct._ImageInfo, ptr %844, i64 0, i32 51
  br label %853

853:                                              ; preds = %851, %899
  %854 = phi i8 [ %849, %851 ], [ %901, %899 ]
  %855 = phi ptr [ %848, %851 ], [ %900, %899 ]
  br label %856

856:                                              ; preds = %853, %859
  %857 = phi i8 [ %861, %859 ], [ %854, %853 ]
  %858 = phi ptr [ %860, %859 ], [ %855, %853 ]
  switch i8 %857, label %859 [
    i8 10, label %862
    i8 0, label %862
  ]

859:                                              ; preds = %856
  %860 = getelementptr inbounds i8, ptr %858, i64 1
  %861 = load i8, ptr %860, align 1, !tbaa !26
  br label %856, !llvm.loop !91

862:                                              ; preds = %856, %856
  %863 = ptrtoint ptr %858 to i64
  %864 = ptrtoint ptr %855 to i64
  %865 = sub i64 %863, %864
  %866 = add i64 %865, 1
  %867 = call i64 @CopyMagickString(ptr noundef nonnull %852, ptr noundef nonnull %855, i64 noundef %866) #16
  %868 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.111, ptr noundef nonnull %852) #16
  %869 = call ptr @SetWarningHandler(ptr noundef null) #16
  %870 = call ptr @ReadImage(ptr noundef %844, ptr noundef nonnull %225) #16
  %871 = call ptr @SetWarningHandler(ptr noundef %869) #16
  %872 = icmp eq ptr %870, null
  br i1 %872, label %873, label %875

873:                                              ; preds = %862
  %874 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.26) #16
  br label %899

875:                                              ; preds = %862
  %876 = getelementptr inbounds %struct._Image, ptr %870, i64 0, i32 56
  %877 = load i64, ptr %876, align 8, !tbaa !28
  %878 = uitofp i64 %877 to double
  %879 = getelementptr inbounds %struct._Image, ptr %870, i64 0, i32 57
  %880 = load i64, ptr %879, align 8, !tbaa !29
  %881 = uitofp i64 %880 to double
  %882 = getelementptr inbounds %struct._Image, ptr %870, i64 0, i32 55
  %883 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.112, double noundef %878, double noundef %881, ptr noundef nonnull %882) #16
  %884 = call i32 @SignatureImage(ptr noundef nonnull %870) #16
  call void @ResetImagePropertyIterator(ptr noundef nonnull %870) #16
  %885 = call ptr @GetNextImageProperty(ptr noundef nonnull %870) #16
  %886 = icmp eq ptr %885, null
  br i1 %886, label %897, label %887

887:                                              ; preds = %875, %894
  %888 = phi ptr [ %895, %894 ], [ %885, %875 ]
  %889 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.113, ptr noundef nonnull %888) #16
  %890 = call ptr @GetImageProperty(ptr noundef nonnull %870, ptr noundef nonnull %888) #16
  %891 = icmp eq ptr %890, null
  br i1 %891, label %894, label %892

892:                                              ; preds = %887
  %893 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.114, ptr noundef nonnull %890) #16
  br label %894

894:                                              ; preds = %892, %887
  %895 = call ptr @GetNextImageProperty(ptr noundef nonnull %870) #16
  %896 = icmp eq ptr %895, null
  br i1 %896, label %897, label %887, !llvm.loop !92

897:                                              ; preds = %894, %875
  %898 = call ptr @DestroyImage(ptr noundef nonnull %870) #16
  br label %899

899:                                              ; preds = %897, %873
  %900 = getelementptr inbounds i8, ptr %858, i64 1
  %901 = load i8, ptr %900, align 1, !tbaa !26
  %902 = icmp eq i8 %901, 0
  br i1 %902, label %903, label %853, !llvm.loop !93

903:                                              ; preds = %899, %843
  %904 = call ptr @DestroyImageInfo(ptr noundef %844) #16
  br label %905

905:                                              ; preds = %903, %839
  %906 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.115) #16
  %907 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.116) #16
  %908 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.117) #16
  %909 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull @.str.118) #16
  call void @ResetImagePropertyIterator(ptr noundef %0) #16
  %910 = call ptr @GetNextImageProperty(ptr noundef %0) #16
  %911 = icmp eq ptr %910, null
  br i1 %911, label %924, label %912

912:                                              ; preds = %905
  %913 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.119) #16
  br label %914

914:                                              ; preds = %912, %921
  %915 = phi ptr [ %910, %912 ], [ %922, %921 ]
  %916 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.120, ptr noundef nonnull %915) #16
  %917 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull %915) #16
  %918 = icmp eq ptr %917, null
  br i1 %918, label %921, label %919

919:                                              ; preds = %914
  %920 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.114, ptr noundef nonnull %917) #16
  br label %921

921:                                              ; preds = %919, %914
  %922 = call ptr @GetNextImageProperty(ptr noundef %0) #16
  %923 = icmp eq ptr %922, null
  br i1 %923, label %924, label %914, !llvm.loop !94

924:                                              ; preds = %921, %905
  %925 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.121) #16
  %926 = call ptr @GetImageProperty(ptr noundef %0, ptr noundef nonnull %6) #16
  %927 = icmp eq ptr %926, null
  br i1 %927, label %936, label %928

928:                                              ; preds = %924
  %929 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.122) #16
  %930 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %926) #18
  %931 = icmp ugt i64 %930, 80
  br i1 %931, label %932, label %934

932:                                              ; preds = %928
  %933 = call i32 @fputc(i32 noundef 10, ptr noundef %23) #17
  br label %934

934:                                              ; preds = %932, %928
  %935 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.114, ptr noundef nonnull %926) #16
  br label %936

936:                                              ; preds = %934, %924
  call void @ResetImageProfileIterator(ptr noundef %0) #16
  %937 = call ptr @GetNextImageProfile(ptr noundef %0) #16
  %938 = icmp eq ptr %937, null
  br i1 %938, label %1081, label %939

939:                                              ; preds = %936
  %940 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.123) #16
  br label %941

941:                                              ; preds = %939, %1078
  %942 = phi ptr [ %937, %939 ], [ %1079, %1078 ]
  br label %943

943:                                              ; preds = %941, %943
  %944 = call ptr @GetImageProfile(ptr noundef %0, ptr noundef nonnull %942) #16
  %945 = icmp eq ptr %944, null
  br i1 %945, label %943, label %946, !llvm.loop !95

946:                                              ; preds = %943
  %947 = call i64 @GetStringInfoLength(ptr noundef nonnull %944) #16
  %948 = uitofp i64 %947 to double
  %949 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.124, ptr noundef nonnull %942, double noundef %948) #16
  %950 = call i32 @LocaleCompare(ptr noundef nonnull %942, ptr noundef nonnull @.str.125) #16
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %1074

952:                                              ; preds = %946
  %953 = call i64 @GetStringInfoLength(ptr noundef nonnull %944) #16
  %954 = icmp sgt i64 %953, 0
  br i1 %954, label %955, label %1074

955:                                              ; preds = %952, %1069
  %956 = phi i64 [ %1072, %1069 ], [ 0, %952 ]
  %957 = call ptr @GetStringInfoDatum(ptr noundef nonnull %944) #16
  %958 = add nsw i64 %956, 1
  %959 = getelementptr inbounds i8, ptr %957, i64 %956
  %960 = load i8, ptr %959, align 1, !tbaa !26
  %961 = icmp eq i8 %960, 28
  br i1 %961, label %962, label %1069

962:                                              ; preds = %955
  %963 = call ptr @GetStringInfoDatum(ptr noundef nonnull %944) #16
  %964 = getelementptr inbounds i8, ptr %963, i64 %958
  %965 = load i8, ptr %964, align 1, !tbaa !26
  %966 = call ptr @GetStringInfoDatum(ptr noundef nonnull %944) #16
  %967 = getelementptr i8, ptr %966, i64 %956
  %968 = getelementptr i8, ptr %967, i64 2
  %969 = load i8, ptr %968, align 1, !tbaa !26
  switch i8 %969, label %1021 [
    i8 5, label %1022
    i8 7, label %970
    i8 10, label %971
    i8 15, label %972
    i8 20, label %973
    i8 22, label %974
    i8 25, label %975
    i8 30, label %976
    i8 35, label %977
    i8 40, label %978
    i8 45, label %979
    i8 47, label %980
    i8 50, label %981
    i8 55, label %982
    i8 60, label %983
    i8 65, label %984
    i8 70, label %985
    i8 75, label %986
    i8 80, label %987
    i8 85, label %988
    i8 90, label %989
    i8 95, label %990
    i8 100, label %991
    i8 101, label %992
    i8 103, label %993
    i8 105, label %994
    i8 110, label %995
    i8 115, label %996
    i8 116, label %997
    i8 120, label %998
    i8 121, label %999
    i8 122, label %1000
    i8 -56, label %1001
    i8 -55, label %1002
    i8 -54, label %1003
    i8 -53, label %1004
    i8 -52, label %1005
    i8 -51, label %1006
    i8 -50, label %1007
    i8 -49, label %1008
    i8 -48, label %1009
    i8 -47, label %1010
    i8 -46, label %1011
    i8 -45, label %1012
    i8 -44, label %1013
    i8 -43, label %1014
    i8 -42, label %1015
    i8 -41, label %1016
    i8 -40, label %1017
    i8 -39, label %1018
    i8 -38, label %1019
    i8 -37, label %1020
  ]

970:                                              ; preds = %962
  br label %1022

971:                                              ; preds = %962
  br label %1022

972:                                              ; preds = %962
  br label %1022

973:                                              ; preds = %962
  br label %1022

974:                                              ; preds = %962
  br label %1022

975:                                              ; preds = %962
  br label %1022

976:                                              ; preds = %962
  br label %1022

977:                                              ; preds = %962
  br label %1022

978:                                              ; preds = %962
  br label %1022

979:                                              ; preds = %962
  br label %1022

980:                                              ; preds = %962
  br label %1022

981:                                              ; preds = %962
  br label %1022

982:                                              ; preds = %962
  br label %1022

983:                                              ; preds = %962
  br label %1022

984:                                              ; preds = %962
  br label %1022

985:                                              ; preds = %962
  br label %1022

986:                                              ; preds = %962
  br label %1022

987:                                              ; preds = %962
  br label %1022

988:                                              ; preds = %962
  br label %1022

989:                                              ; preds = %962
  br label %1022

990:                                              ; preds = %962
  br label %1022

991:                                              ; preds = %962
  br label %1022

992:                                              ; preds = %962
  br label %1022

993:                                              ; preds = %962
  br label %1022

994:                                              ; preds = %962
  br label %1022

995:                                              ; preds = %962
  br label %1022

996:                                              ; preds = %962
  br label %1022

997:                                              ; preds = %962
  br label %1022

998:                                              ; preds = %962
  br label %1022

999:                                              ; preds = %962
  br label %1022

1000:                                             ; preds = %962
  br label %1022

1001:                                             ; preds = %962
  br label %1022

1002:                                             ; preds = %962
  br label %1022

1003:                                             ; preds = %962
  br label %1022

1004:                                             ; preds = %962
  br label %1022

1005:                                             ; preds = %962
  br label %1022

1006:                                             ; preds = %962
  br label %1022

1007:                                             ; preds = %962
  br label %1022

1008:                                             ; preds = %962
  br label %1022

1009:                                             ; preds = %962
  br label %1022

1010:                                             ; preds = %962
  br label %1022

1011:                                             ; preds = %962
  br label %1022

1012:                                             ; preds = %962
  br label %1022

1013:                                             ; preds = %962
  br label %1022

1014:                                             ; preds = %962
  br label %1022

1015:                                             ; preds = %962
  br label %1022

1016:                                             ; preds = %962
  br label %1022

1017:                                             ; preds = %962
  br label %1022

1018:                                             ; preds = %962
  br label %1022

1019:                                             ; preds = %962
  br label %1022

1020:                                             ; preds = %962
  br label %1022

1021:                                             ; preds = %962
  br label %1022

1022:                                             ; preds = %962, %1021, %1020, %1019, %1018, %1017, %1016, %1015, %1014, %1013, %1012, %1011, %1010, %1009, %1008, %1007, %1006, %1005, %1004, %1003, %1002, %1001, %1000, %999, %998, %997, %996, %995, %994, %993, %992, %991, %990, %989, %988, %987, %986, %985, %984, %983, %982, %981, %980, %979, %978, %977, %976, %975, %974, %973, %972, %971, %970
  %1023 = phi ptr [ @.str.178, %1021 ], [ @.str.177, %1020 ], [ @.str.176, %1019 ], [ @.str.175, %1018 ], [ @.str.174, %1017 ], [ @.str.173, %1016 ], [ @.str.172, %1015 ], [ @.str.171, %1014 ], [ @.str.170, %1013 ], [ @.str.169, %1012 ], [ @.str.168, %1011 ], [ @.str.167, %1010 ], [ @.str.166, %1009 ], [ @.str.165, %1008 ], [ @.str.164, %1007 ], [ @.str.163, %1006 ], [ @.str.162, %1005 ], [ @.str.161, %1004 ], [ @.str.160, %1003 ], [ @.str.159, %1002 ], [ @.str.158, %1001 ], [ @.str.157, %1000 ], [ @.str.156, %999 ], [ @.str.155, %998 ], [ @.str.154, %997 ], [ @.str.153, %996 ], [ @.str.152, %995 ], [ @.str.151, %994 ], [ @.str.150, %993 ], [ @.str.149, %992 ], [ @.str.148, %991 ], [ @.str.147, %990 ], [ @.str.146, %989 ], [ @.str.145, %988 ], [ @.str.144, %987 ], [ @.str.143, %986 ], [ @.str.142, %985 ], [ @.str.141, %984 ], [ @.str.140, %983 ], [ @.str.139, %982 ], [ @.str.138, %981 ], [ @.str.137, %980 ], [ @.str.136, %979 ], [ @.str.135, %978 ], [ @.str.134, %977 ], [ @.str.133, %976 ], [ @.str.132, %975 ], [ @.str.131, %974 ], [ @.str.130, %973 ], [ @.str.129, %972 ], [ @.str.128, %971 ], [ @.str.127, %970 ], [ @.str.126, %962 ]
  %1024 = uitofp i8 %965 to double
  %1025 = uitofp i8 %969 to double
  %1026 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.179, ptr noundef nonnull %1023, double noundef %1024, double noundef %1025) #16
  %1027 = call ptr @GetStringInfoDatum(ptr noundef nonnull %944) #16
  %1028 = getelementptr i8, ptr %1027, i64 %956
  %1029 = getelementptr i8, ptr %1028, i64 3
  %1030 = load i8, ptr %1029, align 1, !tbaa !26
  %1031 = zext i8 %1030 to i64
  %1032 = shl nuw nsw i64 %1031, 8
  %1033 = call ptr @GetStringInfoDatum(ptr noundef nonnull %944) #16
  %1034 = add nsw i64 %956, 5
  %1035 = getelementptr i8, ptr %1033, i64 %956
  %1036 = getelementptr i8, ptr %1035, i64 4
  %1037 = load i8, ptr %1036, align 1, !tbaa !26
  %1038 = zext i8 %1037 to i64
  %1039 = or disjoint i64 %1032, %1038
  %1040 = add nuw nsw i64 %1039, 4096
  %1041 = call ptr @AcquireQuantumMemory(i64 noundef %1040, i64 noundef 1) #19
  %1042 = icmp eq ptr %1041, null
  br i1 %1042, label %1069, label %1043

1043:                                             ; preds = %1022
  %1044 = call ptr @GetStringInfoDatum(ptr noundef nonnull %944) #16
  %1045 = getelementptr inbounds i8, ptr %1044, i64 %1034
  %1046 = add nuw nsw i64 %1039, 1
  %1047 = call i64 @CopyMagickString(ptr noundef nonnull %1041, ptr noundef %1045, i64 noundef %1046) #16
  %1048 = call ptr @StringToList(ptr noundef nonnull %1041) #16
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1067, label %1050

1050:                                             ; preds = %1043
  %1051 = load ptr, ptr %1048, align 8, !tbaa !96
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1065, label %1053

1053:                                             ; preds = %1050, %1053
  %1054 = phi ptr [ %1063, %1053 ], [ %1051, %1050 ]
  %1055 = phi ptr [ %1062, %1053 ], [ %1048, %1050 ]
  %1056 = phi i64 [ %1061, %1053 ], [ 0, %1050 ]
  %1057 = call i32 @fputs(ptr noundef nonnull %1054, ptr noundef %23) #17
  %1058 = call i32 @fputs(ptr noundef nonnull @.str.26, ptr noundef %23) #17
  %1059 = load ptr, ptr %1055, align 8, !tbaa !96
  %1060 = call ptr @RelinquishMagickMemory(ptr noundef %1059) #16
  store ptr %1060, ptr %1055, align 8, !tbaa !96
  %1061 = add nuw nsw i64 %1056, 1
  %1062 = getelementptr inbounds ptr, ptr %1048, i64 %1061
  %1063 = load ptr, ptr %1062, align 8, !tbaa !96
  %1064 = icmp eq ptr %1063, null
  br i1 %1064, label %1065, label %1053, !llvm.loop !97

1065:                                             ; preds = %1053, %1050
  %1066 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %1048) #16
  br label %1067

1067:                                             ; preds = %1065, %1043
  %1068 = call ptr @DestroyString(ptr noundef nonnull %1041) #16
  br label %1069

1069:                                             ; preds = %1022, %1067, %955
  %1070 = phi i64 [ %958, %955 ], [ %1034, %1067 ], [ %1034, %1022 ]
  %1071 = phi i64 [ 1, %955 ], [ %1039, %1067 ], [ %1039, %1022 ]
  %1072 = add nsw i64 %1071, %1070
  %1073 = icmp slt i64 %1072, %953
  br i1 %1073, label %955, label %1074, !llvm.loop !98

1074:                                             ; preds = %1069, %952, %946
  %1075 = load i32, ptr %14, align 8, !tbaa !5
  %1076 = icmp eq i32 %1075, 0
  br i1 %1076, label %1078, label %1077

1077:                                             ; preds = %1074
  call void @PrintStringInfo(ptr noundef %23, ptr noundef nonnull %942, ptr noundef nonnull %944) #16
  br label %1078

1078:                                             ; preds = %1077, %1074
  %1079 = call ptr @GetNextImageProfile(ptr noundef nonnull %0) #16
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1081, label %941, !llvm.loop !95

1081:                                             ; preds = %1078, %936
  call void @ResetImageArtifactIterator(ptr noundef %0) #16
  %1082 = call ptr @GetNextImageArtifact(ptr noundef %0) #16
  %1083 = icmp eq ptr %1082, null
  br i1 %1083, label %1096, label %1084

1084:                                             ; preds = %1081
  %1085 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.180) #16
  br label %1086

1086:                                             ; preds = %1084, %1093
  %1087 = phi ptr [ %1082, %1084 ], [ %1094, %1093 ]
  %1088 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.120, ptr noundef nonnull %1087) #16
  %1089 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull %1087) #16
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1093, label %1091

1091:                                             ; preds = %1086
  %1092 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.114, ptr noundef nonnull %1089) #16
  br label %1093

1093:                                             ; preds = %1091, %1086
  %1094 = call ptr @GetNextImageArtifact(ptr noundef %0) #16
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1096, label %1086, !llvm.loop !99

1096:                                             ; preds = %1093, %1081
  call void @ResetImageRegistryIterator() #16
  %1097 = call ptr @GetNextImageRegistry() #16
  %1098 = icmp eq ptr %1097, null
  br i1 %1098, label %1111, label %1099

1099:                                             ; preds = %1096
  %1100 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.181) #16
  br label %1101

1101:                                             ; preds = %1099, %1108
  %1102 = phi ptr [ %1097, %1099 ], [ %1109, %1108 ]
  %1103 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.120, ptr noundef nonnull %1102) #16
  %1104 = call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull %1102, ptr noundef nonnull %225) #16
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %1108, label %1106

1106:                                             ; preds = %1101
  %1107 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.114, ptr noundef nonnull %1104) #16
  br label %1108

1108:                                             ; preds = %1106, %1101
  %1109 = call ptr @GetNextImageRegistry() #16
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1111, label %1101, !llvm.loop !100

1111:                                             ; preds = %1108, %1096
  %1112 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 5
  %1113 = load i32, ptr %1112, align 4, !tbaa !101
  %1114 = zext i32 %1113 to i64
  %1115 = call ptr @CommandOptionToMnemonic(i32 noundef 2, i64 noundef %1114) #16
  %1116 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.182, ptr noundef %1115) #16
  %1117 = call i64 @GetBlobSize(ptr noundef %0) #16
  %1118 = call i64 @FormatMagickSize(i64 noundef %1117, i32 noundef 0, ptr noundef nonnull %5) #16
  %1119 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.183, ptr noundef nonnull %5) #16
  %1120 = load i64, ptr %263, align 8, !tbaa !30
  %1121 = load i64, ptr %266, align 8, !tbaa !31
  %1122 = mul i64 %1121, %1120
  %1123 = call i64 @FormatMagickSize(i64 noundef %1122, i32 noundef 0, ptr noundef nonnull %5) #16
  %1124 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #18
  %1125 = icmp ugt i64 %1124, 1
  br i1 %1125, label %1126, label %1129

1126:                                             ; preds = %1111
  %1127 = add i64 %1124, -1
  %1128 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 %1127
  store i8 0, ptr %1128, align 1, !tbaa !26
  br label %1129

1129:                                             ; preds = %1126, %1111
  %1130 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.184, ptr noundef nonnull %5) #16
  %1131 = load <2 x i64>, ptr %263, align 8, !tbaa !102
  %1132 = uitofp <2 x i64> %1131 to <2 x double>
  %1133 = shufflevector <2 x double> %1132, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %1134 = fmul <2 x double> %1133, %1132
  %1135 = extractelement <2 x double> %1134, i64 0
  %1136 = fdiv double %1135, %57
  %1137 = fadd double %1136, 5.000000e-01
  %1138 = fptoui double %1137 to i64
  %1139 = call i64 @FormatMagickSize(i64 noundef %1138, i32 noundef 0, ptr noundef nonnull %5) #16
  %1140 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.185, ptr noundef nonnull %5) #16
  %1141 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.186, double noundef %58) #16
  %1142 = fdiv double %57, 6.000000e+01
  %1143 = fptoui double %1142 to i64
  %1144 = call double @fmod(double noundef %57, double noundef 6.000000e+01) #16
  %1145 = call double @llvm.ceil.f64(double %1144)
  %1146 = fptoui double %1145 to i64
  %1147 = call double @llvm.floor.f64(double %57)
  %1148 = fsub double %57, %1147
  %1149 = fmul double %1148, 1.000000e+03
  %1150 = fptoui double %1149 to i64
  %1151 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.187, i64 noundef %1143, i64 noundef %1146, i64 noundef %1150) #16
  %1152 = call ptr @GetMagickVersion(ptr noundef null) #16
  %1153 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %23, ptr noundef nonnull @.str.188, ptr noundef %1152) #16
  %1154 = call i32 @fflush(ptr noundef %23) #17
  %1155 = call i32 @ferror(ptr noundef %23) #16
  %1156 = icmp eq i32 %1155, 0
  br label %1157

1157:                                             ; preds = %342, %1129, %206, %51
  %1158 = phi i1 [ %54, %51 ], [ %220, %206 ], [ %1156, %1129 ], [ false, %342 ]
  %1159 = zext i1 %1158 to i32
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #15
  ret i32 %1159
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireExceptionInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToUnsignedLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call i64 @strtoul(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #16
  ret i64 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @GetLocationStatistics(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._ExceptionInfo, align 8
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 147, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #16
  br label %11

11:                                               ; preds = %8, %3
  %12 = tail call dereferenceable_or_null(4608) ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 96) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  call void @GetExceptionInfo(ptr noundef nonnull %4) #16
  %15 = tail call ptr @__errno_location() #20
  %16 = load i32, ptr %15, align 4, !tbaa !103
  %17 = call ptr @GetExceptionMessage(i32 noundef %16) #16
  %18 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, i32 noundef 700, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef %17) #16
  %19 = call ptr @DestroyString(ptr noundef %17) #16
  call void @CatchException(ptr noundef nonnull %4) #16
  %20 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %4) #16
  call void @MagickCoreTerminus() #16
  call void @_exit(i32 noundef 1) #21
  unreachable

21:                                               ; preds = %11
  %22 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %12, i32 noundef 0, i64 noundef 4608) #16
  %23 = icmp eq i32 %1, 5
  br label %43

24:                                               ; preds = %49
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !31
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %161

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 1, i32 2
  %31 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 2, i32 2
  %32 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 4, i32 2
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %34 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 8, i32 2
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 32, i32 2
  %37 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 1, i32 1
  %38 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 2, i32 1
  %39 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 4, i32 1
  %40 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 8, i32 1
  %41 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 32, i32 1
  %42 = load i64, ptr %25, align 8, !tbaa !30
  br label %52

43:                                               ; preds = %21, %49
  %44 = phi i64 [ 0, %21 ], [ %50, %49 ]
  br i1 %23, label %47, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 %44, i32 2
  store double 0xFFEFFFFFFFFFFFFF, ptr %46, align 8, !tbaa !104
  br label %49

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._ChannelStatistics, ptr %12, i64 %44, i32 1
  store double 0x7FEFFFFFFFFFFFFF, ptr %48, align 8, !tbaa !105
  br label %49

49:                                               ; preds = %45, %47
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, 48
  br i1 %51, label %24, label %43, !llvm.loop !106

52:                                               ; preds = %29, %157
  %53 = phi i64 [ %42, %29 ], [ %59, %157 ]
  %54 = phi i64 [ 0, %29 ], [ %158, %157 ]
  %55 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %54, i64 noundef %53, i64 noundef 1, ptr noundef %2) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %161, label %57

57:                                               ; preds = %52
  %58 = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %0) #16
  %59 = load i64, ptr %25, align 8, !tbaa !30
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %157

61:                                               ; preds = %57
  %62 = icmp eq ptr %58, null
  br label %63

63:                                               ; preds = %61, %153
  %64 = phi i64 [ 0, %61 ], [ %155, %153 ]
  %65 = phi ptr [ %55, %61 ], [ %154, %153 ]
  %66 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 2
  %67 = load i16, ptr %66, align 2, !tbaa !107
  %68 = uitofp i16 %67 to double
  br i1 %23, label %109, label %69

69:                                               ; preds = %63
  %70 = load double, ptr %30, align 8, !tbaa !104
  %71 = fcmp olt double %70, %68
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store double %68, ptr %30, align 8, !tbaa !104
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  %75 = load i16, ptr %74, align 2, !tbaa !108
  %76 = uitofp i16 %75 to double
  %77 = load double, ptr %31, align 8, !tbaa !104
  %78 = fcmp olt double %77, %76
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store double %76, ptr %31, align 8, !tbaa !104
  br label %80

80:                                               ; preds = %79, %73
  %81 = load i16, ptr %65, align 2, !tbaa !109
  %82 = uitofp i16 %81 to double
  %83 = load double, ptr %32, align 8, !tbaa !104
  %84 = fcmp olt double %83, %82
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store double %82, ptr %32, align 8, !tbaa !104
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, ptr %33, align 8, !tbaa !25
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !54
  %92 = uitofp i16 %91 to double
  %93 = load double, ptr %34, align 8, !tbaa !104
  %94 = fcmp olt double %93, %92
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store double %92, ptr %34, align 8, !tbaa !104
  br label %96

96:                                               ; preds = %95, %89, %86
  %97 = load i32, ptr %35, align 4, !tbaa !24
  %98 = icmp eq i32 %97, 12
  br i1 %98, label %99, label %153

99:                                               ; preds = %96
  br i1 %62, label %100, label %103

100:                                              ; preds = %99
  %101 = load double, ptr %36, align 8, !tbaa !104
  %102 = fcmp olt double %101, 0.000000e+00
  br i1 %102, label %149, label %153

103:                                              ; preds = %99
  %104 = getelementptr inbounds i16, ptr %58, i64 %64
  %105 = load i16, ptr %104, align 2, !tbaa !110
  %106 = uitofp i16 %105 to double
  %107 = load double, ptr %36, align 8, !tbaa !104
  %108 = fcmp olt double %107, %106
  br i1 %108, label %149, label %153

109:                                              ; preds = %63
  %110 = load double, ptr %37, align 8, !tbaa !105
  %111 = fcmp ogt double %110, %68
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store double %68, ptr %37, align 8, !tbaa !105
  br label %113

113:                                              ; preds = %112, %109
  %114 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 1
  %115 = load i16, ptr %114, align 2, !tbaa !108
  %116 = uitofp i16 %115 to double
  %117 = load double, ptr %38, align 8, !tbaa !105
  %118 = fcmp ogt double %117, %116
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store double %116, ptr %38, align 8, !tbaa !105
  br label %120

120:                                              ; preds = %119, %113
  %121 = load i16, ptr %65, align 2, !tbaa !109
  %122 = uitofp i16 %121 to double
  %123 = load double, ptr %39, align 8, !tbaa !105
  %124 = fcmp ogt double %123, %122
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store double %122, ptr %39, align 8, !tbaa !105
  br label %126

126:                                              ; preds = %125, %120
  %127 = load i32, ptr %33, align 8, !tbaa !25
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 0, i32 3
  %131 = load i16, ptr %130, align 2, !tbaa !54
  %132 = uitofp i16 %131 to double
  %133 = load double, ptr %40, align 8, !tbaa !105
  %134 = fcmp ogt double %133, %132
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store double %132, ptr %40, align 8, !tbaa !105
  br label %136

136:                                              ; preds = %135, %129, %126
  %137 = load i32, ptr %35, align 4, !tbaa !24
  %138 = icmp eq i32 %137, 12
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  br i1 %62, label %140, label %143

140:                                              ; preds = %139
  %141 = load double, ptr %41, align 8, !tbaa !105
  %142 = fcmp ogt double %141, 0.000000e+00
  br i1 %142, label %149, label %153

143:                                              ; preds = %139
  %144 = getelementptr inbounds i16, ptr %58, i64 %64
  %145 = load i16, ptr %144, align 2, !tbaa !110
  %146 = uitofp i16 %145 to double
  %147 = load double, ptr %41, align 8, !tbaa !105
  %148 = fcmp ogt double %147, %146
  br i1 %148, label %149, label %153

149:                                              ; preds = %143, %103, %140, %100
  %150 = phi i16 [ 0, %100 ], [ 0, %140 ], [ %105, %103 ], [ %145, %143 ]
  %151 = phi ptr [ %36, %100 ], [ %41, %140 ], [ %36, %103 ], [ %41, %143 ]
  %152 = uitofp i16 %150 to double
  store double %152, ptr %151, align 8, !tbaa !111
  br label %153

153:                                              ; preds = %149, %143, %103, %136, %140, %96, %100
  %154 = getelementptr inbounds %struct._PixelPacket, ptr %65, i64 1
  %155 = add nuw nsw i64 %64, 1
  %156 = icmp eq i64 %155, %59
  br i1 %156, label %157, label %63, !llvm.loop !112

157:                                              ; preds = %153, %57
  %158 = add nuw nsw i64 %54, 1
  %159 = load i64, ptr %26, align 8, !tbaa !31
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %52, label %161, !llvm.loop !113

161:                                              ; preds = %157, %52, %24
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %17 = load double, ptr %16, align 8, !tbaa !111
  %18 = tail call i32 @GetMagickPrecision() #16
  %19 = tail call i32 @GetMagickPrecision() #16
  %20 = fmul double %17, 0x3EF0001000100010
  %21 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.191, ptr noundef %3, i32 noundef %18, double noundef %17, i32 noundef %19, double noundef %20) #16
  %22 = tail call ptr @AcquireExceptionInfo() #16
  %23 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %24 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %25 = load i64, ptr %24, align 8, !tbaa !31
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %15
  %28 = icmp eq i64 %5, 0
  %29 = load i64, ptr %23, align 8, !tbaa !30
  br label %34

30:                                               ; preds = %91
  %31 = add nuw nsw i64 %36, 1
  %32 = load i64, ptr %24, align 8, !tbaa !31
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %96, !llvm.loop !114

34:                                               ; preds = %27, %30
  %35 = phi i64 [ %29, %27 ], [ %92, %30 ]
  %36 = phi i64 [ 0, %27 ], [ %31, %30 ]
  %37 = phi i64 [ 0, %27 ], [ %93, %30 ]
  %38 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %1, i64 noundef 0, i64 noundef %36, i64 noundef %35, i64 noundef 1, ptr noundef %22) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %96, label %40

40:                                               ; preds = %34
  %41 = load i64, ptr %23, align 8, !tbaa !30
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %40
  %44 = sitofp i64 %36 to double
  br label %45

45:                                               ; preds = %43, %85
  %46 = phi i64 [ %41, %43 ], [ %86, %85 ]
  %47 = phi i64 [ 0, %43 ], [ %89, %85 ]
  %48 = phi ptr [ %38, %43 ], [ %88, %85 ]
  %49 = phi i64 [ %37, %43 ], [ %87, %85 ]
  switch i32 %2, label %85 [
    i32 1, label %70
    i32 2, label %50
    i32 4, label %57
    i32 8, label %63
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 1
  %52 = load i16, ptr %51, align 2, !tbaa !108
  %53 = uitofp i16 %52 to double
  %54 = fsub double %53, %17
  %55 = tail call double @llvm.fabs.f64(double %54)
  %56 = fcmp olt double %55, 5.000000e-01
  br i1 %56, label %77, label %85

57:                                               ; preds = %45
  %58 = load i16, ptr %48, align 2, !tbaa !109
  %59 = uitofp i16 %58 to double
  %60 = fsub double %59, %17
  %61 = tail call double @llvm.fabs.f64(double %60)
  %62 = fcmp olt double %61, 5.000000e-01
  br i1 %62, label %77, label %85

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 3
  %65 = load i16, ptr %64, align 2, !tbaa !54
  %66 = uitofp i16 %65 to double
  %67 = fsub double %66, %17
  %68 = tail call double @llvm.fabs.f64(double %67)
  %69 = fcmp olt double %68, 5.000000e-01
  br i1 %69, label %77, label %85

70:                                               ; preds = %45
  %71 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 0, i32 2
  %72 = load i16, ptr %71, align 2, !tbaa !107
  %73 = uitofp i16 %72 to double
  %74 = fsub double %73, %17
  %75 = tail call double @llvm.fabs.f64(double %74)
  %76 = fcmp olt double %75, 5.000000e-01
  br i1 %76, label %77, label %85

77:                                               ; preds = %50, %57, %63, %70
  %78 = icmp slt i64 %49, %5
  %79 = select i1 %28, i1 true, i1 %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = sitofp i64 %47 to double
  %82 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.192, double noundef %81, double noundef %44) #16
  %83 = add nsw i64 %49, 1
  %84 = load i64, ptr %23, align 8, !tbaa !30
  br label %85

85:                                               ; preds = %70, %80, %45, %63, %57, %50
  %86 = phi i64 [ %84, %80 ], [ %46, %70 ], [ %46, %45 ], [ %46, %63 ], [ %46, %57 ], [ %46, %50 ]
  %87 = phi i64 [ %83, %80 ], [ %49, %70 ], [ %49, %45 ], [ %49, %63 ], [ %49, %57 ], [ %49, %50 ]
  %88 = getelementptr inbounds %struct._PixelPacket, ptr %48, i64 1
  %89 = add nuw nsw i64 %47, 1
  %90 = icmp slt i64 %89, %86
  br i1 %90, label %45, label %91, !llvm.loop !115

91:                                               ; preds = %85, %77, %40
  %92 = phi i64 [ %41, %40 ], [ %46, %77 ], [ %86, %85 ]
  %93 = phi i64 [ %37, %40 ], [ %49, %77 ], [ %87, %85 ]
  %94 = phi i64 [ 0, %40 ], [ %47, %77 ], [ %89, %85 ]
  %95 = icmp slt i64 %94, %92
  br i1 %95, label %96, label %30

96:                                               ; preds = %30, %34, %91, %15
  %97 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.26) #16
  ret void
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare double @GetElapsedTime(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @GetUserTime(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetTimerInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @GetImageType(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @SignatureImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetMagickDescription(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetMagickMimeType(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageChannelMoments(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageChannelPerceptualHash(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageChannelFeatures(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetImageDepth(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PrintChannelStatistics(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = icmp eq i32 %1, 8
  br i1 %6, label %7, label %38

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 8, i32 2
  %9 = load double, ptr %8, align 8, !tbaa !104
  %10 = fsub double 6.553500e+04, %9
  %11 = fmul double %10, %3
  %12 = fptrunc double %11 to float
  %13 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %12) #17
  %14 = zext i16 %13 to i32
  %15 = fdiv double %10, 6.553500e+04
  %16 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 8, i32 1
  %17 = load double, ptr %16, align 8, !tbaa !105
  %18 = fsub double 6.553500e+04, %17
  %19 = fmul double %18, %3
  %20 = fptrunc double %19 to float
  %21 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %20) #17
  %22 = zext i16 %21 to i32
  %23 = fdiv double %18, 6.553500e+04
  %24 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 8, i32 7
  %25 = load double, ptr %24, align 8, !tbaa !116
  %26 = fsub double 6.553500e+04, %25
  %27 = fmul double %26, %3
  %28 = fdiv double %26, 6.553500e+04
  %29 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 8, i32 9
  %30 = load double, ptr %29, align 8, !tbaa !117
  %31 = fmul double %30, %3
  %32 = fdiv double %30, 6.553500e+04
  %33 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 8, i32 10
  %34 = load double, ptr %33, align 8, !tbaa !118
  %35 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 8, i32 11
  %36 = load double, ptr %35, align 8, !tbaa !119
  %37 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.193, ptr noundef %2, i32 noundef %14, double noundef %15, i32 noundef %22, double noundef %23, double noundef %27, double noundef %28, double noundef %31, double noundef %32, double noundef %34, double noundef %36) #16
  br label %67

38:                                               ; preds = %5
  %39 = zext nneg i32 %1 to i64
  %40 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 %39, i32 1
  %41 = load double, ptr %40, align 8, !tbaa !105
  %42 = fmul double %41, %3
  %43 = fptrunc double %42 to float
  %44 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %43) #17
  %45 = zext i16 %44 to i32
  %46 = fdiv double %41, 6.553500e+04
  %47 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 %39, i32 2
  %48 = load double, ptr %47, align 8, !tbaa !104
  %49 = fmul double %48, %3
  %50 = fptrunc double %49 to float
  %51 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %50) #17
  %52 = zext i16 %51 to i32
  %53 = fdiv double %48, 6.553500e+04
  %54 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 %39, i32 7
  %55 = load double, ptr %54, align 8, !tbaa !116
  %56 = fmul double %55, %3
  %57 = fdiv double %55, 6.553500e+04
  %58 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 %39, i32 9
  %59 = load double, ptr %58, align 8, !tbaa !117
  %60 = fmul double %59, %3
  %61 = fdiv double %59, 6.553500e+04
  %62 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 %39, i32 10
  %63 = load double, ptr %62, align 8, !tbaa !118
  %64 = getelementptr inbounds %struct._ChannelStatistics, ptr %4, i64 %39, i32 11
  %65 = load double, ptr %64, align 8, !tbaa !119
  %66 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.193, ptr noundef %2, i32 noundef %45, double noundef %46, i32 noundef %52, double noundef %53, double noundef %56, double noundef %57, double noundef %60, double noundef %61, double noundef %63, double noundef %65) #16
  br label %67

67:                                               ; preds = %38, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PrintChannelMoments(ptr noundef %0, i32 noundef %1, ptr noundef %2, double noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef %2) #16
  %7 = tail call i32 @GetMagickPrecision() #16
  %8 = zext nneg i32 %1 to i64
  %9 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8
  %10 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !120
  %12 = tail call i32 @GetMagickPrecision() #16
  %13 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 1, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !123
  %15 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.195, i32 noundef %7, double noundef %11, i32 noundef %12, double noundef %14) #16
  %16 = tail call i32 @GetMagickPrecision() #16
  %17 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !124
  %19 = tail call i32 @GetMagickPrecision() #16
  %20 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 2, i32 1
  %21 = load double, ptr %20, align 8, !tbaa !125
  %22 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.196, i32 noundef %16, double noundef %18, i32 noundef %19, double noundef %21) #16
  %23 = tail call i32 @GetMagickPrecision() #16
  %24 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 3
  %25 = load double, ptr %24, align 8, !tbaa !126
  %26 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.197, i32 noundef %23, double noundef %25) #16
  %27 = tail call i32 @GetMagickPrecision() #16
  %28 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 4
  %29 = load double, ptr %28, align 8, !tbaa !127
  %30 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.198, i32 noundef %27, double noundef %29) #16
  %31 = tail call i32 @GetMagickPrecision() #16
  %32 = getelementptr inbounds %struct._ChannelMoments, ptr %4, i64 %8, i32 5
  %33 = load double, ptr %32, align 8, !tbaa !128
  %34 = fmul double %33, %3
  %35 = tail call i32 @GetMagickPrecision() #16
  %36 = load double, ptr %32, align 8, !tbaa !128
  %37 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.199, i32 noundef %31, double noundef %34, i32 noundef %35, double noundef %36) #16
  br label %38

38:                                               ; preds = %5, %38
  %39 = phi i64 [ 0, %5 ], [ %52, %38 ]
  %40 = sitofp i64 %39 to double
  %41 = fadd double %40, 1.000000e+00
  %42 = tail call i32 @GetMagickPrecision() #16
  %43 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %39
  %44 = load double, ptr %43, align 8, !tbaa !111
  %45 = getelementptr inbounds [8 x double], ptr @__const.PrintChannelMoments.powers, i64 0, i64 %39
  %46 = load double, ptr %45, align 8, !tbaa !111
  %47 = tail call double @pow(double noundef %3, double noundef %46) #16
  %48 = fdiv double %44, %47
  %49 = tail call i32 @GetMagickPrecision() #16
  %50 = load double, ptr %43, align 8, !tbaa !111
  %51 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.200, double noundef %41, i32 noundef %42, double noundef %48, i32 noundef %49, double noundef %50) #16
  %52 = add nuw nsw i64 %39, 1
  %53 = icmp eq i64 %52, 8
  br i1 %53, label %54, label %38, !llvm.loop !129

54:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PrintChannelPerceptualHash(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.194, ptr noundef %2) #16
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %3, i64 %6
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %19, %8 ]
  %10 = sitofp i64 %9 to double
  %11 = fadd double %10, 1.000000e+00
  %12 = tail call i32 @GetMagickPrecision() #16
  %13 = getelementptr inbounds [32 x double], ptr %7, i64 0, i64 %9
  %14 = load double, ptr %13, align 8, !tbaa !111
  %15 = tail call i32 @GetMagickPrecision() #16
  %16 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %3, i64 %6, i32 1, i64 %9
  %17 = load double, ptr %16, align 8, !tbaa !111
  %18 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.201, double noundef %11, i32 noundef %12, double noundef %14, i32 noundef %15, double noundef %17) #16
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 7
  br i1 %20, label %21, label %8, !llvm.loop !130

21:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @PrintChannelFeatures(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = tail call i32 @GetMagickPrecision() #16
  %6 = zext nneg i32 %1 to i64
  %7 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6
  %8 = load double, ptr %7, align 8, !tbaa !111
  %9 = tail call i32 @GetMagickPrecision() #16
  %10 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !111
  %12 = tail call i32 @GetMagickPrecision() #16
  %13 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !111
  %15 = tail call i32 @GetMagickPrecision() #16
  %16 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !111
  %18 = tail call i32 @GetMagickPrecision() #16
  %19 = load double, ptr %7, align 8, !tbaa !111
  %20 = load double, ptr %10, align 8, !tbaa !111
  %21 = fadd double %19, %20
  %22 = load double, ptr %13, align 8, !tbaa !111
  %23 = fadd double %21, %22
  %24 = load double, ptr %16, align 8, !tbaa !111
  %25 = fadd double %23, %24
  %26 = fmul double %25, 2.500000e-01
  %27 = tail call i32 @GetMagickPrecision() #16
  %28 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1
  %29 = load double, ptr %28, align 8, !tbaa !111
  %30 = tail call i32 @GetMagickPrecision() #16
  %31 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !111
  %33 = tail call i32 @GetMagickPrecision() #16
  %34 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1, i64 2
  %35 = load double, ptr %34, align 8, !tbaa !111
  %36 = tail call i32 @GetMagickPrecision() #16
  %37 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 1, i64 3
  %38 = load double, ptr %37, align 8, !tbaa !111
  %39 = tail call i32 @GetMagickPrecision() #16
  %40 = load double, ptr %28, align 8, !tbaa !111
  %41 = load double, ptr %31, align 8, !tbaa !111
  %42 = fadd double %40, %41
  %43 = load double, ptr %34, align 8, !tbaa !111
  %44 = fadd double %42, %43
  %45 = load double, ptr %37, align 8, !tbaa !111
  %46 = fadd double %44, %45
  %47 = fmul double %46, 2.500000e-01
  %48 = tail call i32 @GetMagickPrecision() #16
  %49 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2
  %50 = load double, ptr %49, align 8, !tbaa !111
  %51 = tail call i32 @GetMagickPrecision() #16
  %52 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2, i64 1
  %53 = load double, ptr %52, align 8, !tbaa !111
  %54 = tail call i32 @GetMagickPrecision() #16
  %55 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2, i64 2
  %56 = load double, ptr %55, align 8, !tbaa !111
  %57 = tail call i32 @GetMagickPrecision() #16
  %58 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 2, i64 3
  %59 = load double, ptr %58, align 8, !tbaa !111
  %60 = tail call i32 @GetMagickPrecision() #16
  %61 = load double, ptr %49, align 8, !tbaa !111
  %62 = load double, ptr %52, align 8, !tbaa !111
  %63 = fadd double %61, %62
  %64 = load double, ptr %55, align 8, !tbaa !111
  %65 = fadd double %63, %64
  %66 = load double, ptr %58, align 8, !tbaa !111
  %67 = fadd double %65, %66
  %68 = fmul double %67, 2.500000e-01
  %69 = tail call i32 @GetMagickPrecision() #16
  %70 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3
  %71 = load double, ptr %70, align 8, !tbaa !111
  %72 = tail call i32 @GetMagickPrecision() #16
  %73 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3, i64 1
  %74 = load double, ptr %73, align 8, !tbaa !111
  %75 = tail call i32 @GetMagickPrecision() #16
  %76 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3, i64 2
  %77 = load double, ptr %76, align 8, !tbaa !111
  %78 = tail call i32 @GetMagickPrecision() #16
  %79 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 3, i64 3
  %80 = load double, ptr %79, align 8, !tbaa !111
  %81 = tail call i32 @GetMagickPrecision() #16
  %82 = load double, ptr %70, align 8, !tbaa !111
  %83 = load double, ptr %73, align 8, !tbaa !111
  %84 = fadd double %82, %83
  %85 = load double, ptr %76, align 8, !tbaa !111
  %86 = fadd double %84, %85
  %87 = load double, ptr %79, align 8, !tbaa !111
  %88 = fadd double %86, %87
  %89 = fmul double %88, 2.500000e-01
  %90 = tail call i32 @GetMagickPrecision() #16
  %91 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4
  %92 = load double, ptr %91, align 8, !tbaa !111
  %93 = tail call i32 @GetMagickPrecision() #16
  %94 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4, i64 1
  %95 = load double, ptr %94, align 8, !tbaa !111
  %96 = tail call i32 @GetMagickPrecision() #16
  %97 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4, i64 2
  %98 = load double, ptr %97, align 8, !tbaa !111
  %99 = tail call i32 @GetMagickPrecision() #16
  %100 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 4, i64 3
  %101 = load double, ptr %100, align 8, !tbaa !111
  %102 = tail call i32 @GetMagickPrecision() #16
  %103 = load double, ptr %91, align 8, !tbaa !111
  %104 = load double, ptr %94, align 8, !tbaa !111
  %105 = fadd double %103, %104
  %106 = load double, ptr %97, align 8, !tbaa !111
  %107 = fadd double %105, %106
  %108 = load double, ptr %100, align 8, !tbaa !111
  %109 = fadd double %107, %108
  %110 = fmul double %109, 2.500000e-01
  %111 = tail call i32 @GetMagickPrecision() #16
  %112 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5
  %113 = load double, ptr %112, align 8, !tbaa !111
  %114 = tail call i32 @GetMagickPrecision() #16
  %115 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5, i64 1
  %116 = load double, ptr %115, align 8, !tbaa !111
  %117 = tail call i32 @GetMagickPrecision() #16
  %118 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5, i64 2
  %119 = load double, ptr %118, align 8, !tbaa !111
  %120 = tail call i32 @GetMagickPrecision() #16
  %121 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 5, i64 3
  %122 = load double, ptr %121, align 8, !tbaa !111
  %123 = tail call i32 @GetMagickPrecision() #16
  %124 = load double, ptr %112, align 8, !tbaa !111
  %125 = load double, ptr %115, align 8, !tbaa !111
  %126 = fadd double %124, %125
  %127 = load double, ptr %118, align 8, !tbaa !111
  %128 = fadd double %126, %127
  %129 = load double, ptr %121, align 8, !tbaa !111
  %130 = fadd double %128, %129
  %131 = fmul double %130, 2.500000e-01
  %132 = tail call i32 @GetMagickPrecision() #16
  %133 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6
  %134 = load double, ptr %133, align 8, !tbaa !111
  %135 = tail call i32 @GetMagickPrecision() #16
  %136 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6, i64 1
  %137 = load double, ptr %136, align 8, !tbaa !111
  %138 = tail call i32 @GetMagickPrecision() #16
  %139 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6, i64 2
  %140 = load double, ptr %139, align 8, !tbaa !111
  %141 = tail call i32 @GetMagickPrecision() #16
  %142 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 6, i64 3
  %143 = load double, ptr %142, align 8, !tbaa !111
  %144 = tail call i32 @GetMagickPrecision() #16
  %145 = load double, ptr %133, align 8, !tbaa !111
  %146 = load double, ptr %136, align 8, !tbaa !111
  %147 = fadd double %145, %146
  %148 = load double, ptr %139, align 8, !tbaa !111
  %149 = fadd double %147, %148
  %150 = load double, ptr %142, align 8, !tbaa !111
  %151 = fadd double %149, %150
  %152 = fmul double %151, 2.500000e-01
  %153 = tail call i32 @GetMagickPrecision() #16
  %154 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7
  %155 = load double, ptr %154, align 8, !tbaa !111
  %156 = tail call i32 @GetMagickPrecision() #16
  %157 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7, i64 1
  %158 = load double, ptr %157, align 8, !tbaa !111
  %159 = tail call i32 @GetMagickPrecision() #16
  %160 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7, i64 2
  %161 = load double, ptr %160, align 8, !tbaa !111
  %162 = tail call i32 @GetMagickPrecision() #16
  %163 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 7, i64 3
  %164 = load double, ptr %163, align 8, !tbaa !111
  %165 = tail call i32 @GetMagickPrecision() #16
  %166 = load double, ptr %154, align 8, !tbaa !111
  %167 = load double, ptr %157, align 8, !tbaa !111
  %168 = fadd double %166, %167
  %169 = load double, ptr %160, align 8, !tbaa !111
  %170 = fadd double %168, %169
  %171 = load double, ptr %163, align 8, !tbaa !111
  %172 = fadd double %170, %171
  %173 = fmul double %172, 2.500000e-01
  %174 = tail call i32 @GetMagickPrecision() #16
  %175 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8
  %176 = load double, ptr %175, align 8, !tbaa !111
  %177 = tail call i32 @GetMagickPrecision() #16
  %178 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8, i64 1
  %179 = load double, ptr %178, align 8, !tbaa !111
  %180 = tail call i32 @GetMagickPrecision() #16
  %181 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8, i64 2
  %182 = load double, ptr %181, align 8, !tbaa !111
  %183 = tail call i32 @GetMagickPrecision() #16
  %184 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 8, i64 3
  %185 = load double, ptr %184, align 8, !tbaa !111
  %186 = tail call i32 @GetMagickPrecision() #16
  %187 = load double, ptr %175, align 8, !tbaa !111
  %188 = load double, ptr %178, align 8, !tbaa !111
  %189 = fadd double %187, %188
  %190 = load double, ptr %181, align 8, !tbaa !111
  %191 = fadd double %189, %190
  %192 = load double, ptr %184, align 8, !tbaa !111
  %193 = fadd double %191, %192
  %194 = fmul double %193, 2.500000e-01
  %195 = tail call i32 @GetMagickPrecision() #16
  %196 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9
  %197 = load double, ptr %196, align 8, !tbaa !111
  %198 = tail call i32 @GetMagickPrecision() #16
  %199 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9, i64 1
  %200 = load double, ptr %199, align 8, !tbaa !111
  %201 = tail call i32 @GetMagickPrecision() #16
  %202 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9, i64 2
  %203 = load double, ptr %202, align 8, !tbaa !111
  %204 = tail call i32 @GetMagickPrecision() #16
  %205 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 9, i64 3
  %206 = load double, ptr %205, align 8, !tbaa !111
  %207 = tail call i32 @GetMagickPrecision() #16
  %208 = load double, ptr %196, align 8, !tbaa !111
  %209 = load double, ptr %199, align 8, !tbaa !111
  %210 = fadd double %208, %209
  %211 = load double, ptr %202, align 8, !tbaa !111
  %212 = fadd double %210, %211
  %213 = load double, ptr %205, align 8, !tbaa !111
  %214 = fadd double %212, %213
  %215 = fmul double %214, 2.500000e-01
  %216 = tail call i32 @GetMagickPrecision() #16
  %217 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10
  %218 = load double, ptr %217, align 8, !tbaa !111
  %219 = tail call i32 @GetMagickPrecision() #16
  %220 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10, i64 1
  %221 = load double, ptr %220, align 8, !tbaa !111
  %222 = tail call i32 @GetMagickPrecision() #16
  %223 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10, i64 2
  %224 = load double, ptr %223, align 8, !tbaa !111
  %225 = tail call i32 @GetMagickPrecision() #16
  %226 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 10, i64 3
  %227 = load double, ptr %226, align 8, !tbaa !111
  %228 = tail call i32 @GetMagickPrecision() #16
  %229 = load double, ptr %217, align 8, !tbaa !111
  %230 = load double, ptr %220, align 8, !tbaa !111
  %231 = fadd double %229, %230
  %232 = load double, ptr %223, align 8, !tbaa !111
  %233 = fadd double %231, %232
  %234 = load double, ptr %226, align 8, !tbaa !111
  %235 = fadd double %233, %234
  %236 = fmul double %235, 2.500000e-01
  %237 = tail call i32 @GetMagickPrecision() #16
  %238 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11
  %239 = load double, ptr %238, align 8, !tbaa !111
  %240 = tail call i32 @GetMagickPrecision() #16
  %241 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11, i64 1
  %242 = load double, ptr %241, align 8, !tbaa !111
  %243 = tail call i32 @GetMagickPrecision() #16
  %244 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11, i64 2
  %245 = load double, ptr %244, align 8, !tbaa !111
  %246 = tail call i32 @GetMagickPrecision() #16
  %247 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 11, i64 3
  %248 = load double, ptr %247, align 8, !tbaa !111
  %249 = tail call i32 @GetMagickPrecision() #16
  %250 = load double, ptr %238, align 8, !tbaa !111
  %251 = load double, ptr %241, align 8, !tbaa !111
  %252 = fadd double %250, %251
  %253 = load double, ptr %244, align 8, !tbaa !111
  %254 = fadd double %252, %253
  %255 = load double, ptr %247, align 8, !tbaa !111
  %256 = fadd double %254, %255
  %257 = fmul double %256, 2.500000e-01
  %258 = tail call i32 @GetMagickPrecision() #16
  %259 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12
  %260 = load double, ptr %259, align 8, !tbaa !111
  %261 = tail call i32 @GetMagickPrecision() #16
  %262 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12, i64 1
  %263 = load double, ptr %262, align 8, !tbaa !111
  %264 = tail call i32 @GetMagickPrecision() #16
  %265 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12, i64 2
  %266 = load double, ptr %265, align 8, !tbaa !111
  %267 = tail call i32 @GetMagickPrecision() #16
  %268 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 12, i64 3
  %269 = load double, ptr %268, align 8, !tbaa !111
  %270 = tail call i32 @GetMagickPrecision() #16
  %271 = load double, ptr %259, align 8, !tbaa !111
  %272 = load double, ptr %262, align 8, !tbaa !111
  %273 = fadd double %271, %272
  %274 = load double, ptr %265, align 8, !tbaa !111
  %275 = fadd double %273, %274
  %276 = load double, ptr %268, align 8, !tbaa !111
  %277 = fadd double %275, %276
  %278 = fmul double %277, 2.500000e-01
  %279 = tail call i32 @GetMagickPrecision() #16
  %280 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13
  %281 = load double, ptr %280, align 8, !tbaa !111
  %282 = tail call i32 @GetMagickPrecision() #16
  %283 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13, i64 1
  %284 = load double, ptr %283, align 8, !tbaa !111
  %285 = tail call i32 @GetMagickPrecision() #16
  %286 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13, i64 2
  %287 = load double, ptr %286, align 8, !tbaa !111
  %288 = tail call i32 @GetMagickPrecision() #16
  %289 = getelementptr inbounds %struct._ChannelFeatures, ptr %3, i64 %6, i32 13, i64 3
  %290 = load double, ptr %289, align 8, !tbaa !111
  %291 = tail call i32 @GetMagickPrecision() #16
  %292 = load double, ptr %280, align 8, !tbaa !111
  %293 = load double, ptr %283, align 8, !tbaa !111
  %294 = fadd double %292, %293
  %295 = load double, ptr %286, align 8, !tbaa !111
  %296 = fadd double %294, %295
  %297 = load double, ptr %289, align 8, !tbaa !111
  %298 = fadd double %296, %297
  %299 = fmul double %298, 2.500000e-01
  %300 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %0, ptr noundef nonnull @.str.202, ptr noundef %2, i32 noundef %5, double noundef %8, i32 noundef %9, double noundef %11, i32 noundef %12, double noundef %14, i32 noundef %15, double noundef %17, i32 noundef %18, double noundef %26, i32 noundef %27, double noundef %29, i32 noundef %30, double noundef %32, i32 noundef %33, double noundef %35, i32 noundef %36, double noundef %38, i32 noundef %39, double noundef %47, i32 noundef %48, double noundef %50, i32 noundef %51, double noundef %53, i32 noundef %54, double noundef %56, i32 noundef %57, double noundef %59, i32 noundef %60, double noundef %68, i32 noundef %69, double noundef %71, i32 noundef %72, double noundef %74, i32 noundef %75, double noundef %77, i32 noundef %78, double noundef %80, i32 noundef %81, double noundef %89, i32 noundef %90, double noundef %92, i32 noundef %93, double noundef %95, i32 noundef %96, double noundef %98, i32 noundef %99, double noundef %101, i32 noundef %102, double noundef %110, i32 noundef %111, double noundef %113, i32 noundef %114, double noundef %116, i32 noundef %117, double noundef %119, i32 noundef %120, double noundef %122, i32 noundef %123, double noundef %131, i32 noundef %132, double noundef %134, i32 noundef %135, double noundef %137, i32 noundef %138, double noundef %140, i32 noundef %141, double noundef %143, i32 noundef %144, double noundef %152, i32 noundef %153, double noundef %155, i32 noundef %156, double noundef %158, i32 noundef %159, double noundef %161, i32 noundef %162, double noundef %164, i32 noundef %165, double noundef %173, i32 noundef %174, double noundef %176, i32 noundef %177, double noundef %179, i32 noundef %180, double noundef %182, i32 noundef %183, double noundef %185, i32 noundef %186, double noundef %194, i32 noundef %195, double noundef %197, i32 noundef %198, double noundef %200, i32 noundef %201, double noundef %203, i32 noundef %204, double noundef %206, i32 noundef %207, double noundef %215, i32 noundef %216, double noundef %218, i32 noundef %219, double noundef %221, i32 noundef %222, double noundef %224, i32 noundef %225, double noundef %227, i32 noundef %228, double noundef %236, i32 noundef %237, double noundef %239, i32 noundef %240, double noundef %242, i32 noundef %243, double noundef %245, i32 noundef %246, double noundef %248, i32 noundef %249, double noundef %257, i32 noundef %258, double noundef %260, i32 noundef %261, double noundef %263, i32 noundef %264, double noundef %266, i32 noundef %267, double noundef %269, i32 noundef %270, double noundef %278, i32 noundef %279, double noundef %281, i32 noundef %282, double noundef %284, i32 noundef %285, double noundef %287, i32 noundef %288, double noundef %290, i32 noundef %291, double noundef %299) #16
  ret void
}

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #2

; Function Attrs: optsize
declare double @GetImageTotalInkDensity(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetMagickPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 5
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !110
  %7 = uitofp <4 x i16> %6 to <4 x float>
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %8, ptr %5, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !24
  %11 = icmp eq i32 %10, 12
  %12 = icmp ne ptr %2, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i16, ptr %2, align 2, !tbaa !110
  %16 = uitofp i16 %15 to float
  %17 = getelementptr inbounds %struct._MagickPixelPacket, ptr %3, i64 0, i32 9
  store float %16, ptr %17, align 8, !tbaa !132
  br label %18

18:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: optsize
declare i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsHistogramImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ConcatenateColorComponent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @QueryColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @AcquireImageInfo() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @SetWarningHandler(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetImagePropertyIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @StringToList(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @PrintStringInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetImageArtifactIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageArtifact(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ResetImageRegistryIterator() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetNextImageRegistry() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: optsize
declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #14 {
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { nounwind optsize allocsize(0,1) }
attributes #20 = { nounwind optsize willreturn memory(none) }
attributes #21 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 12976}
!6 = !{!"_Image", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !11, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !14, i64 104, !15, i64 112, !7, i64 208, !11, i64 216, !7, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !10, i64 256, !14, i64 264, !14, i64 272, !17, i64 280, !17, i64 312, !17, i64 344, !14, i64 376, !14, i64 384, !14, i64 392, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !11, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !18, i64 480, !19, i64 504, !11, i64 568, !11, i64 576, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !8, i64 616, !8, i64 4712, !8, i64 8808, !10, i64 12904, !10, i64 12912, !21, i64 12920, !7, i64 12976, !10, i64 12984, !11, i64 12992, !22, i64 13000, !22, i64 13032, !11, i64 13064, !10, i64 13072, !10, i64 13080, !11, i64 13088, !11, i64 13096, !11, i64 13104, !7, i64 13112, !7, i64 13116, !12, i64 13120, !11, i64 13128, !17, i64 13136, !11, i64 13168, !11, i64 13176, !7, i64 13184, !7, i64 13188, !23, i64 13192, !7, i64 13200, !10, i64 13208, !10, i64 13216, !7, i64 13224, !10, i64 13232}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"_PixelPacket", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!13 = !{!"short", !8, i64 0}
!14 = !{!"double", !8, i64 0}
!15 = !{!"_ChromaticityInfo", !16, i64 0, !16, i64 24, !16, i64 48, !16, i64 72}
!16 = !{!"_PrimaryInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{!"_RectangleInfo", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"_ErrorInfo", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"_TimerInfo", !20, i64 0, !20, i64 24, !7, i64 48, !10, i64 56}
!20 = !{!"_Timer", !14, i64 0, !14, i64 8, !14, i64 16}
!21 = !{!"_ExceptionInfo", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 40, !10, i64 48}
!22 = !{!"_ProfileInfo", !11, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!23 = !{!"long long", !8, i64 0}
!24 = !{!6, !7, i64 4}
!25 = !{!6, !7, i64 32}
!26 = !{!8, !8, i64 0}
!27 = !{!6, !10, i64 432}
!28 = !{!6, !10, i64 12904}
!29 = !{!6, !10, i64 12912}
!30 = !{!6, !10, i64 40}
!31 = !{!6, !10, i64 48}
!32 = !{!6, !10, i64 280}
!33 = !{!6, !10, i64 288}
!34 = !{!6, !10, i64 296}
!35 = !{!6, !10, i64 304}
!36 = !{!6, !10, i64 56}
!37 = !{!6, !7, i64 13184}
!38 = !{!6, !7, i64 0}
!39 = !{!6, !10, i64 464}
!40 = !{!6, !10, i64 64}
!41 = !{!6, !14, i64 480}
!42 = !{!6, !14, i64 488}
!43 = !{!6, !14, i64 496}
!44 = !{!6, !10, i64 13152}
!45 = !{!6, !10, i64 13160}
!46 = !{!6, !14, i64 264}
!47 = !{!6, !14, i64 272}
!48 = !{!6, !7, i64 224}
!49 = !{!6, !7, i64 408}
!50 = !{!51, !10, i64 0}
!51 = !{!"_ChannelStatistics", !10, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!12, !13, i64 6}
!55 = distinct !{!55, !53}
!56 = !{!6, !11, i64 72}
!57 = !{!58, !7, i64 4}
!58 = !{!"_MagickPixelPacket", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !10, i64 24, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48}
!59 = !{!"float", !8, i64 0}
!60 = !{!58, !7, i64 8}
!61 = distinct !{!61, !53}
!62 = !{!6, !7, i64 208}
!63 = !{!6, !14, i64 104}
!64 = !{!6, !14, i64 112}
!65 = !{!6, !14, i64 136}
!66 = !{!6, !14, i64 160}
!67 = !{!6, !14, i64 184}
!68 = !{!6, !14, i64 120}
!69 = !{!6, !14, i64 144}
!70 = !{!6, !14, i64 168}
!71 = !{!6, !14, i64 192}
!72 = !{!6, !10, i64 312}
!73 = !{!6, !10, i64 320}
!74 = !{!6, !10, i64 328}
!75 = !{!6, !10, i64 336}
!76 = !{!6, !7, i64 404}
!77 = !{!6, !7, i64 13224}
!78 = !{!6, !7, i64 416}
!79 = !{!6, !7, i64 420}
!80 = !{!6, !10, i64 440}
!81 = !{!6, !10, i64 448}
!82 = !{!6, !10, i64 456}
!83 = !{!6, !10, i64 13232}
!84 = !{!6, !11, i64 13104}
!85 = !{!6, !11, i64 13088}
!86 = !{!6, !7, i64 8}
!87 = !{!6, !10, i64 16}
!88 = !{!6, !7, i64 24}
!89 = !{!6, !11, i64 232}
!90 = !{!6, !11, i64 240}
!91 = distinct !{!91, !53}
!92 = distinct !{!92, !53}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !53}
!95 = distinct !{!95, !53}
!96 = !{!11, !11, i64 0}
!97 = distinct !{!97, !53}
!98 = distinct !{!98, !53}
!99 = distinct !{!99, !53}
!100 = distinct !{!100, !53}
!101 = !{!6, !7, i64 28}
!102 = !{!10, !10, i64 0}
!103 = !{!7, !7, i64 0}
!104 = !{!51, !14, i64 16}
!105 = !{!51, !14, i64 8}
!106 = distinct !{!106, !53}
!107 = !{!12, !13, i64 4}
!108 = !{!12, !13, i64 2}
!109 = !{!12, !13, i64 0}
!110 = !{!13, !13, i64 0}
!111 = !{!14, !14, i64 0}
!112 = distinct !{!112, !53}
!113 = distinct !{!113, !53}
!114 = distinct !{!114, !53}
!115 = distinct !{!115, !53}
!116 = !{!51, !14, i64 56}
!117 = !{!51, !14, i64 72}
!118 = !{!51, !14, i64 80}
!119 = !{!51, !14, i64 88}
!120 = !{!121, !14, i64 256}
!121 = !{!"_ChannelMoments", !8, i64 0, !122, i64 256, !122, i64 272, !14, i64 288, !14, i64 296, !14, i64 304}
!122 = !{!"_PointInfo", !14, i64 0, !14, i64 8}
!123 = !{!121, !14, i64 264}
!124 = !{!121, !14, i64 272}
!125 = !{!121, !14, i64 280}
!126 = !{!121, !14, i64 288}
!127 = !{!121, !14, i64 296}
!128 = !{!121, !14, i64 304}
!129 = distinct !{!129, !53}
!130 = distinct !{!130, !53}
!131 = !{!59, !59, i64 0}
!132 = !{!58, !59, i64 48}
