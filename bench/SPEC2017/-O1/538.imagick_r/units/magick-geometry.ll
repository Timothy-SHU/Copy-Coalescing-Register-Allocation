; ModuleID = 'magick/geometry.c'
source_filename = "magick/geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@GetPageGeometry.PageSizes = internal unnamed_addr constant [76 x [2 x ptr]] [[2 x ptr] [ptr @.str.1, ptr @.str.2], [2 x ptr] [ptr @.str.3, ptr @.str.4], [2 x ptr] [ptr @.str.5, ptr @.str.6], [2 x ptr] [ptr @.str.7, ptr @.str.8], [2 x ptr] [ptr @.str.9, ptr @.str.10], [2 x ptr] [ptr @.str.11, ptr @.str.12], [2 x ptr] [ptr @.str.13, ptr @.str.14], [2 x ptr] [ptr @.str.15, ptr @.str.16], [2 x ptr] [ptr @.str.17, ptr @.str.18], [2 x ptr] [ptr @.str.19, ptr @.str.20], [2 x ptr] [ptr @.str.21, ptr @.str.22], [2 x ptr] [ptr @.str.23, ptr @.str.24], [2 x ptr] [ptr @.str.25, ptr @.str.26], [2 x ptr] [ptr @.str.27, ptr @.str.28], [2 x ptr] [ptr @.str.29, ptr @.str.30], [2 x ptr] [ptr @.str.31, ptr @.str.30], [2 x ptr] [ptr @.str.32, ptr @.str.33], [2 x ptr] [ptr @.str.34, ptr @.str.35], [2 x ptr] [ptr @.str.36, ptr @.str.37], [2 x ptr] [ptr @.str.38, ptr @.str.39], [2 x ptr] [ptr @.str.40, ptr @.str.41], [2 x ptr] [ptr @.str.42, ptr @.str.12], [2 x ptr] [ptr @.str.43, ptr @.str.44], [2 x ptr] [ptr @.str.45, ptr @.str.46], [2 x ptr] [ptr @.str.47, ptr @.str.48], [2 x ptr] [ptr @.str.49, ptr @.str.50], [2 x ptr] [ptr @.str.51, ptr @.str.52], [2 x ptr] [ptr @.str.53, ptr @.str.54], [2 x ptr] [ptr @.str.55, ptr @.str.56], [2 x ptr] [ptr @.str.57, ptr @.str.58], [2 x ptr] [ptr @.str.59, ptr @.str.60], [2 x ptr] [ptr @.str.61, ptr @.str.62], [2 x ptr] [ptr @.str.63, ptr @.str.64], [2 x ptr] [ptr @.str.65, ptr @.str.66], [2 x ptr] [ptr @.str.67, ptr @.str.68], [2 x ptr] [ptr @.str.69, ptr @.str.70], [2 x ptr] [ptr @.str.71, ptr @.str.72], [2 x ptr] [ptr @.str.73, ptr @.str.74], [2 x ptr] [ptr @.str.75, ptr @.str.76], [2 x ptr] [ptr @.str.77, ptr @.str.78], [2 x ptr] [ptr @.str.79, ptr @.str.80], [2 x ptr] [ptr @.str.81, ptr @.str.82], [2 x ptr] [ptr @.str.83, ptr @.str.84], [2 x ptr] [ptr @.str.85, ptr @.str.86], [2 x ptr] [ptr @.str.87, ptr @.str.88], [2 x ptr] [ptr @.str.89, ptr @.str.90], [2 x ptr] [ptr @.str.91, ptr @.str.92], [2 x ptr] [ptr @.str.93, ptr @.str.92], [2 x ptr] [ptr @.str.94, ptr @.str.92], [2 x ptr] [ptr @.str.95, ptr @.str.96], [2 x ptr] [ptr @.str.97, ptr @.str.98], [2 x ptr] [ptr @.str.99, ptr @.str.100], [2 x ptr] [ptr @.str.101, ptr @.str.102], [2 x ptr] [ptr @.str.103, ptr @.str.104], [2 x ptr] [ptr @.str.105, ptr @.str.106], [2 x ptr] [ptr @.str.107, ptr @.str.108], [2 x ptr] [ptr @.str.109, ptr @.str.110], [2 x ptr] [ptr @.str.111, ptr @.str.112], [2 x ptr] [ptr @.str.113, ptr @.str.114], [2 x ptr] [ptr @.str.115, ptr @.str.116], [2 x ptr] [ptr @.str.117, ptr @.str.118], [2 x ptr] [ptr @.str.119, ptr @.str.120], [2 x ptr] [ptr @.str.121, ptr @.str.122], [2 x ptr] [ptr @.str.123, ptr @.str.124], [2 x ptr] [ptr @.str.125, ptr @.str.126], [2 x ptr] [ptr @.str.127, ptr @.str.128], [2 x ptr] [ptr @.str.129, ptr @.str.130], [2 x ptr] [ptr @.str.131, ptr @.str.132], [2 x ptr] [ptr @.str.133, ptr @.str.134], [2 x ptr] [ptr @.str.135, ptr @.str.136], [2 x ptr] [ptr @.str.137, ptr @.str.138], [2 x ptr] [ptr @.str.139, ptr @.str.138], [2 x ptr] [ptr @.str.140, ptr @.str.141], [2 x ptr] [ptr @.str.142, ptr @.str.96], [2 x ptr] [ptr @.str.143, ptr @.str.18], [2 x ptr] zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"4x6\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"288x432\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"5x7\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"360x504\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"7x9\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"504x648\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"8x10\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"576x720\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"9x11\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"648x792\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"9x12\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"648x864\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"10x13\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"720x936\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"10x14\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"720x1008\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"11x17\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"792x1224\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"2384x3370\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"1684x2384\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"a10\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"73x105\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"1191x1684\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"842x1191\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"595x842\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"a4small\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"420x595\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"297x420\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"a7\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"210x297\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"a8\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"148x210\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"a9\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"105x148\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"archa\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"archb\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"864x1296\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"archC\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"1296x1728\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"archd\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"1728x2592\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"arche\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"2592x3456\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"b0\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"2920x4127\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"2064x2920\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"b10\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"91x127\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"1460x2064\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"b3\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"1032x1460\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"b4\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"729x1032\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"b5\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"516x729\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"b6\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"363x516\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"b7\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"258x363\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"b8\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"181x258\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"b9\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"127x181\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"c0\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"2599x3676\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"c1\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"1837x2599\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"1298x1837\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"c3\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"918x1296\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"c4\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"649x918\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"c5\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"459x649\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"323x459\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"c7\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"230x323\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"executive\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"540x720\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"flsa\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"612x936\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"flse\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"folio\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"halfletter\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"396x612\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"isob0\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"2835x4008\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"isob1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"2004x2835\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"isob10\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"88x125\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"isob2\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"1417x2004\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"isob3\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"1001x1417\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"isob4\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"709x1001\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"isob5\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"499x709\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"isob6\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"354x499\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"isob7\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"249x354\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"isob8\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"176x249\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"isob9\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"125x176\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"jisb0\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"1030x1456\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"jisb1\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"728x1030\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"jisb2\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"515x728\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"jisb3\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"364x515\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"jisb4\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"257x364\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"jisb5\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"182x257\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"jisb6\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"128x182\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"ledger\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"1224x792\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"legal\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"612x1008\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"letter\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"612x792\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"lettersmall\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"quarto\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"610x780\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"tabloid\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"magick/geometry.c\00", align 1
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"0123456789-, \00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"'%s' : 'Indeterminate Matrix'\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"InvalidGeometry\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @GetGeometry(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %9 = icmp eq ptr %0, null
  br i1 %9, label %206, label %10

10:                                               ; preds = %5
  %11 = load i8, ptr %0, align 1, !tbaa !34
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %206, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %15 = icmp ugt i64 %14, 4094
  br i1 %15, label %206, label %16

16:                                               ; preds = %13
  %17 = call i64 @CopyMagickString(ptr noundef nonnull %7, ptr noundef nonnull %0, i64 noundef 4096) #10
  store ptr %7, ptr %6, align 8, !tbaa !37
  %18 = load i8, ptr %7, align 16, !tbaa !34
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %79, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @__ctype_b_loc() #12
  br label %22

22:                                               ; preds = %20, %74
  %23 = phi i8 [ %18, %20 ], [ %77, %74 ]
  %24 = phi ptr [ %7, %20 ], [ %76, %74 ]
  %25 = phi i32 [ 0, %20 ], [ %75, %74 ]
  br label %26

26:                                               ; preds = %22, %35
  %27 = phi i8 [ %23, %22 ], [ %39, %35 ]
  %28 = phi ptr [ %24, %22 ], [ %38, %35 ]
  %29 = load ptr, ptr %21, align 8, !tbaa !37
  %30 = zext i8 %27 to i64
  %31 = getelementptr inbounds i16, ptr %29, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !39
  %33 = and i16 %32, 8192
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  %37 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %36, i64 noundef 4096) #10
  %38 = load ptr, ptr %6, align 8, !tbaa !37
  %39 = load i8, ptr %38, align 1, !tbaa !34
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %79, label %26, !llvm.loop !41

41:                                               ; preds = %26
  switch i8 %27, label %206 [
    i8 37, label %42
    i8 33, label %46
    i8 60, label %50
    i8 62, label %54
    i8 94, label %58
    i8 64, label %62
    i8 40, label %66
    i8 41, label %66
    i8 120, label %69
    i8 88, label %69
    i8 45, label %72
    i8 46, label %72
    i8 44, label %72
    i8 43, label %72
    i8 48, label %72
    i8 49, label %72
    i8 50, label %72
    i8 51, label %72
    i8 52, label %72
    i8 53, label %72
    i8 54, label %72
    i8 55, label %72
    i8 56, label %72
    i8 57, label %72
    i8 69, label %72
    i8 101, label %72
  ]

42:                                               ; preds = %41
  %43 = or i32 %25, 4096
  %44 = getelementptr inbounds i8, ptr %28, i64 1
  %45 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %44, i64 noundef 4096) #10
  br label %74

46:                                               ; preds = %41
  %47 = or i32 %25, 8192
  %48 = getelementptr inbounds i8, ptr %28, i64 1
  %49 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %48, i64 noundef 4096) #10
  br label %74

50:                                               ; preds = %41
  %51 = or i32 %25, 16384
  %52 = getelementptr inbounds i8, ptr %28, i64 1
  %53 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %52, i64 noundef 4096) #10
  br label %74

54:                                               ; preds = %41
  %55 = or i32 %25, 32768
  %56 = getelementptr inbounds i8, ptr %28, i64 1
  %57 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %56, i64 noundef 4096) #10
  br label %74

58:                                               ; preds = %41
  %59 = or i32 %25, 65536
  %60 = getelementptr inbounds i8, ptr %28, i64 1
  %61 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %60, i64 noundef 4096) #10
  br label %74

62:                                               ; preds = %41
  %63 = or i32 %25, 131072
  %64 = getelementptr inbounds i8, ptr %28, i64 1
  %65 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %64, i64 noundef 4096) #10
  br label %74

66:                                               ; preds = %41, %41
  %67 = getelementptr inbounds i8, ptr %28, i64 1
  %68 = call i64 @CopyMagickString(ptr noundef nonnull %28, ptr noundef nonnull %67, i64 noundef 4096) #10
  br label %74

69:                                               ; preds = %41, %41
  %70 = or i32 %25, 524288
  %71 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %71, ptr %6, align 8, !tbaa !37
  br label %74

72:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %73 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %73, ptr %6, align 8, !tbaa !37
  br label %74

74:                                               ; preds = %72, %69, %66, %62, %58, %54, %50, %46, %42
  %75 = phi i32 [ %25, %72 ], [ %70, %69 ], [ %25, %66 ], [ %63, %62 ], [ %59, %58 ], [ %55, %54 ], [ %51, %50 ], [ %47, %46 ], [ %43, %42 ]
  %76 = load ptr, ptr %6, align 8, !tbaa !37
  %77 = load i8, ptr %76, align 1, !tbaa !34
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %22, !llvm.loop !41

79:                                               ; preds = %74, %35, %16
  %80 = phi i32 [ 0, %16 ], [ %25, %35 ], [ %75, %74 ]
  store ptr %7, ptr %6, align 8, !tbaa !37
  %81 = load i8, ptr %7, align 16, !tbaa !34
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %206, label %83

83:                                               ; preds = %79
  store ptr %7, ptr %8, align 8, !tbaa !37
  %84 = call double @InterpretLocaleValue(ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %85 = load ptr, ptr %6, align 8, !tbaa !37
  %86 = call i32 @LocaleNCompare(ptr noundef %85, ptr noundef nonnull @.str, i64 noundef 2) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load ptr, ptr %6, align 8, !tbaa !37
  %90 = call i64 @strtol(ptr noundef %89, ptr noundef nonnull %8, i32 noundef 10) #10
  br label %91

91:                                               ; preds = %88, %83
  %92 = load ptr, ptr %6, align 8, !tbaa !37
  %93 = load i8, ptr %92, align 1, !tbaa !34
  switch i8 %93, label %94 [
    i8 43, label %115
    i8 45, label %115
  ]

94:                                               ; preds = %91
  %95 = load ptr, ptr %8, align 8, !tbaa !37
  %96 = load i8, ptr %95, align 1, !tbaa !34
  switch i8 %96, label %115 [
    i8 -41, label %97
    i8 120, label %97
    i8 88, label %97
    i8 0, label %97
  ]

97:                                               ; preds = %94, %94, %94, %94
  store ptr %92, ptr %8, align 8, !tbaa !37
  %98 = call i32 @LocaleNCompare(ptr noundef nonnull %92, ptr noundef nonnull @.str, i64 noundef 2) #10
  %99 = icmp eq i32 %98, 0
  %100 = load ptr, ptr %6, align 8, !tbaa !37
  br i1 %99, label %101, label %103

101:                                              ; preds = %97
  %102 = call i64 @strtol(ptr noundef %100, ptr noundef nonnull %6, i32 noundef 10) #10
  br label %108

103:                                              ; preds = %97
  %104 = call double @InterpretLocaleValue(ptr noundef %100, ptr noundef nonnull %6) #10
  %105 = fadd double %104, 5.000000e-01
  %106 = call double @llvm.floor.f64(double %105)
  %107 = fptoui double %106 to i64
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi i64 [ %107, %103 ], [ %102, %101 ]
  store i64 %109, ptr %3, align 8, !tbaa !44
  %110 = load ptr, ptr %6, align 8, !tbaa !37
  %111 = load ptr, ptr %8, align 8, !tbaa !37
  %112 = icmp eq ptr %110, %111
  %113 = or i32 %80, 4
  %114 = select i1 %112, i32 %80, i32 %113
  br label %115

115:                                              ; preds = %108, %94, %91, %91
  %116 = phi i32 [ %80, %91 ], [ %80, %91 ], [ %80, %94 ], [ %114, %108 ]
  %117 = load ptr, ptr %6, align 8, !tbaa !37
  %118 = load i8, ptr %117, align 1, !tbaa !34
  switch i8 %118, label %132 [
    i8 88, label %119
    i8 120, label %119
    i8 -41, label %119
  ]

119:                                              ; preds = %115, %115, %115
  %120 = getelementptr inbounds i8, ptr %117, i64 1
  store ptr %120, ptr %6, align 8, !tbaa !37
  %121 = load i8, ptr %120, align 1, !tbaa !34
  switch i8 %121, label %122 [
    i8 43, label %132
    i8 45, label %132
  ]

122:                                              ; preds = %119
  store ptr %120, ptr %8, align 8, !tbaa !37
  %123 = call double @InterpretLocaleValue(ptr noundef nonnull %120, ptr noundef nonnull %6) #10
  %124 = fadd double %123, 5.000000e-01
  %125 = call double @llvm.floor.f64(double %124)
  %126 = fptoui double %125 to i64
  store i64 %126, ptr %4, align 8, !tbaa !44
  %127 = load ptr, ptr %6, align 8, !tbaa !37
  %128 = load ptr, ptr %8, align 8, !tbaa !37
  %129 = icmp eq ptr %127, %128
  %130 = or i32 %116, 8
  %131 = select i1 %129, i32 %116, i32 %130
  br label %132

132:                                              ; preds = %122, %119, %119, %115
  %133 = phi i32 [ %116, %119 ], [ %116, %115 ], [ %116, %119 ], [ %131, %122 ]
  %134 = load ptr, ptr %6, align 8, !tbaa !37
  %135 = load i8, ptr %134, align 1, !tbaa !34
  switch i8 %135, label %161 [
    i8 43, label %136
    i8 45, label %136
  ]

136:                                              ; preds = %132, %132
  %137 = load ptr, ptr %6, align 8, !tbaa !37
  br label %138

138:                                              ; preds = %142, %136
  %139 = phi ptr [ %137, %136 ], [ %146, %142 ]
  %140 = phi i32 [ %133, %136 ], [ %145, %142 ]
  %141 = load i8, ptr %139, align 1, !tbaa !34
  switch i8 %141, label %147 [
    i8 43, label %142
    i8 45, label %142
  ]

142:                                              ; preds = %138, %138
  %143 = icmp eq i8 %141, 45
  %144 = xor i32 %140, 32
  %145 = select i1 %143, i32 %144, i32 %140
  %146 = getelementptr inbounds i8, ptr %139, i64 1
  store ptr %146, ptr %6, align 8, !tbaa !37
  br label %138, !llvm.loop !46

147:                                              ; preds = %138
  store ptr %139, ptr %8, align 8, !tbaa !37
  %148 = call double @InterpretLocaleValue(ptr noundef nonnull %139, ptr noundef nonnull %6) #10
  %149 = fadd double %148, -5.000000e-01
  %150 = call double @llvm.ceil.f64(double %149)
  %151 = fptosi double %150 to i64
  store i64 %151, ptr %1, align 8, !tbaa !44
  %152 = load ptr, ptr %6, align 8, !tbaa !37
  %153 = load ptr, ptr %8, align 8, !tbaa !37
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %147
  %156 = or i32 %140, 1
  %157 = and i32 %140, 32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = sub nsw i64 0, %151
  store i64 %160, ptr %1, align 8, !tbaa !44
  br label %161

161:                                              ; preds = %132, %147, %159, %155
  %162 = phi i32 [ %156, %159 ], [ %156, %155 ], [ %140, %147 ], [ %133, %132 ]
  %163 = load ptr, ptr %6, align 8, !tbaa !37
  %164 = load i8, ptr %163, align 1, !tbaa !34
  switch i8 %164, label %190 [
    i8 43, label %165
    i8 45, label %165
  ]

165:                                              ; preds = %161, %161
  %166 = load ptr, ptr %6, align 8, !tbaa !37
  br label %167

167:                                              ; preds = %171, %165
  %168 = phi ptr [ %166, %165 ], [ %175, %171 ]
  %169 = phi i32 [ %162, %165 ], [ %174, %171 ]
  %170 = load i8, ptr %168, align 1, !tbaa !34
  switch i8 %170, label %176 [
    i8 43, label %171
    i8 45, label %171
  ]

171:                                              ; preds = %167, %167
  %172 = icmp eq i8 %170, 45
  %173 = xor i32 %169, 64
  %174 = select i1 %172, i32 %173, i32 %169
  %175 = getelementptr inbounds i8, ptr %168, i64 1
  store ptr %175, ptr %6, align 8, !tbaa !37
  br label %167, !llvm.loop !47

176:                                              ; preds = %167
  store ptr %168, ptr %8, align 8, !tbaa !37
  %177 = call double @InterpretLocaleValue(ptr noundef nonnull %168, ptr noundef nonnull %6) #10
  %178 = fadd double %177, -5.000000e-01
  %179 = call double @llvm.ceil.f64(double %178)
  %180 = fptosi double %179 to i64
  store i64 %180, ptr %2, align 8, !tbaa !44
  %181 = load ptr, ptr %6, align 8, !tbaa !37
  %182 = load ptr, ptr %8, align 8, !tbaa !37
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %176
  %185 = or i32 %169, 2
  %186 = and i32 %169, 64
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = sub nsw i64 0, %180
  store i64 %189, ptr %2, align 8, !tbaa !44
  br label %190

190:                                              ; preds = %161, %176, %188, %184
  %191 = phi i32 [ %185, %188 ], [ %185, %184 ], [ %169, %176 ], [ %162, %161 ]
  %192 = and i32 %191, 4096
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %190
  %195 = and i32 %191, 524296
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i64, ptr %3, align 8, !tbaa !44
  store i64 %198, ptr %4, align 8, !tbaa !44
  %199 = or disjoint i32 %191, 8
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %199, %197 ], [ %191, %194 ]
  %202 = and i32 %201, 524292
  %203 = icmp eq i32 %202, 524288
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i64, ptr %4, align 8, !tbaa !44
  store i64 %205, ptr %3, align 8, !tbaa !44
  br label %206

206:                                              ; preds = %41, %190, %204, %200, %79, %13, %5, %10
  %207 = phi i32 [ 0, %10 ], [ 0, %5 ], [ 0, %13 ], [ %80, %79 ], [ %201, %204 ], [ %201, %200 ], [ %191, %190 ], [ %25, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %207
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPageGeometry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._RectangleInfo, align 8
  %3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 432, ptr noundef nonnull @.str.146, ptr noundef %0) #10
  %4 = tail call ptr @AcquireString(ptr noundef %0) #10
  br label %5

5:                                                ; preds = %1, %27
  %6 = phi ptr [ @.str.1, %1 ], [ %30, %27 ]
  %7 = phi i64 [ 0, %1 ], [ %28, %27 ]
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #11
  %9 = tail call i32 @LocaleNCompare(ptr noundef nonnull %6, ptr noundef %4, i64 noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  %12 = getelementptr inbounds [76 x [2 x ptr]], ptr @GetPageGeometry.PageSizes, i64 0, i64 %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = tail call i64 @CopyMagickString(ptr noundef %4, ptr noundef %13, i64 noundef 4096) #10
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #11
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = tail call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef %16, i64 noundef 4096) #10
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %20 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  %21 = call i32 @GetGeometry(ptr noundef %4, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %2, ptr noundef nonnull %20)
  %22 = and i32 %21, 32768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = tail call i64 @ConcatenateMagickString(ptr noundef %4, ptr noundef nonnull @.str.147, i64 noundef 4096) #10
  br label %26

26:                                               ; preds = %24, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  br label %32

27:                                               ; preds = %5
  %28 = add nuw nsw i64 %7, 1
  %29 = getelementptr inbounds [76 x [2 x ptr]], ptr @GetPageGeometry.PageSizes, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 16, !tbaa !37
  %31 = icmp eq i64 %28, 75
  br i1 %31, label %32, label %5, !llvm.loop !48

32:                                               ; preds = %27, %26
  ret ptr %4
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GravityAdjustGeometry(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #7 {
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i64 %1, ptr %5, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %8, %4
  %10 = load i64, ptr %3, align 8, !tbaa !51
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i64 %0, ptr %3, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %12, %9
  switch i32 %2, label %43 [
    i32 3, label %14
    i32 6, label %14
    i32 9, label %14
    i32 2, label %20
    i32 8, label %20
    i32 5, label %20
    i32 10, label %20
    i32 7, label %29
    i32 4, label %35
  ]

14:                                               ; preds = %13, %13, %13
  %15 = load i64, ptr %3, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !52
  %18 = add i64 %15, %17
  %19 = sub i64 %0, %18
  store i64 %19, ptr %16, align 8, !tbaa !52
  br label %28

20:                                               ; preds = %13, %13, %13, %13
  %21 = lshr i64 %0, 1
  %22 = load i64, ptr %3, align 8, !tbaa !51
  %23 = lshr i64 %22, 1
  %24 = sub nsw i64 %21, %23
  %25 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !52
  %27 = add nsw i64 %24, %26
  store i64 %27, ptr %25, align 8, !tbaa !52
  br label %28

28:                                               ; preds = %20, %14
  switch i32 %2, label %43 [
    i32 7, label %29
    i32 8, label %29
    i32 9, label %29
    i32 6, label %35
    i32 4, label %35
    i32 5, label %35
    i32 10, label %35
  ]

29:                                               ; preds = %13, %28, %28, %28
  %30 = load i64, ptr %5, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !53
  %33 = add i64 %30, %32
  %34 = sub i64 %1, %33
  store i64 %34, ptr %31, align 8, !tbaa !53
  br label %43

35:                                               ; preds = %13, %28, %28, %28, %28
  %36 = lshr i64 %1, 1
  %37 = load i64, ptr %5, align 8, !tbaa !49
  %38 = lshr i64 %37, 1
  %39 = sub nsw i64 %36, %38
  %40 = getelementptr inbounds %struct._RectangleInfo, ptr %3, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !53
  %42 = add nsw i64 %39, %41
  store i64 %42, ptr %40, align 8, !tbaa !53
  br label %43

43:                                               ; preds = %13, %28, %35, %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsGeometry(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = call i32 @ParseGeometry(ptr noundef nonnull %0, ptr noundef nonnull %2), !range !54
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseGeometry(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = icmp eq ptr %0, null
  br i1 %6, label %321, label %7

7:                                                ; preds = %2
  %8 = load i8, ptr %0, align 1, !tbaa !34
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %321, label %10

10:                                               ; preds = %7
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %12 = icmp ugt i64 %11, 4094
  br i1 %12, label %321, label %13

13:                                               ; preds = %10
  %14 = call i64 @CopyMagickString(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef 4096) #10
  store ptr %4, ptr %3, align 8, !tbaa !37
  %15 = load i8, ptr %4, align 16, !tbaa !34
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %79, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @__ctype_b_loc() #12
  br label %19

19:                                               ; preds = %17, %74
  %20 = phi i8 [ %15, %17 ], [ %77, %74 ]
  %21 = phi ptr [ %4, %17 ], [ %76, %74 ]
  %22 = phi i32 [ 0, %17 ], [ %75, %74 ]
  br label %23

23:                                               ; preds = %19, %32
  %24 = phi i8 [ %20, %19 ], [ %36, %32 ]
  %25 = phi ptr [ %21, %19 ], [ %35, %32 ]
  %26 = load ptr, ptr %18, align 8, !tbaa !37
  %27 = zext i8 %24 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !39
  %30 = and i16 %29, 8192
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds i8, ptr %25, i64 1
  %34 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %33, i64 noundef 4096) #10
  %35 = load ptr, ptr %3, align 8, !tbaa !37
  %36 = load i8, ptr %35, align 1, !tbaa !34
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %79, label %23, !llvm.loop !55

38:                                               ; preds = %23
  switch i8 %24, label %321 [
    i8 37, label %39
    i8 33, label %43
    i8 60, label %47
    i8 62, label %51
    i8 94, label %55
    i8 64, label %59
    i8 40, label %63
    i8 41, label %63
    i8 120, label %66
    i8 88, label %66
    i8 45, label %69
    i8 43, label %69
    i8 44, label %69
    i8 48, label %69
    i8 49, label %69
    i8 50, label %69
    i8 51, label %69
    i8 52, label %69
    i8 53, label %69
    i8 54, label %69
    i8 55, label %69
    i8 56, label %69
    i8 57, label %69
    i8 47, label %69
    i8 58, label %69
    i8 -41, label %69
    i8 101, label %69
    i8 69, label %69
    i8 46, label %71
  ]

39:                                               ; preds = %38
  %40 = or i32 %22, 4096
  %41 = getelementptr inbounds i8, ptr %25, i64 1
  %42 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %41, i64 noundef 4096) #10
  br label %74

43:                                               ; preds = %38
  %44 = or i32 %22, 8192
  %45 = getelementptr inbounds i8, ptr %25, i64 1
  %46 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %45, i64 noundef 4096) #10
  br label %74

47:                                               ; preds = %38
  %48 = or i32 %22, 16384
  %49 = getelementptr inbounds i8, ptr %25, i64 1
  %50 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %49, i64 noundef 4096) #10
  br label %74

51:                                               ; preds = %38
  %52 = or i32 %22, 32768
  %53 = getelementptr inbounds i8, ptr %25, i64 1
  %54 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %53, i64 noundef 4096) #10
  br label %74

55:                                               ; preds = %38
  %56 = or i32 %22, 65536
  %57 = getelementptr inbounds i8, ptr %25, i64 1
  %58 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %57, i64 noundef 4096) #10
  br label %74

59:                                               ; preds = %38
  %60 = or i32 %22, 131072
  %61 = getelementptr inbounds i8, ptr %25, i64 1
  %62 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %61, i64 noundef 4096) #10
  br label %74

63:                                               ; preds = %38, %38
  %64 = getelementptr inbounds i8, ptr %25, i64 1
  %65 = call i64 @CopyMagickString(ptr noundef nonnull %25, ptr noundef nonnull %64, i64 noundef 4096) #10
  br label %74

66:                                               ; preds = %38, %38
  %67 = or i32 %22, 524288
  %68 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %68, ptr %3, align 8, !tbaa !37
  br label %74

69:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38, %38
  %70 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %70, ptr %3, align 8, !tbaa !37
  br label %74

71:                                               ; preds = %38
  %72 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %72, ptr %3, align 8, !tbaa !37
  %73 = or i32 %22, 262144
  br label %74

74:                                               ; preds = %71, %69, %66, %63, %59, %55, %51, %47, %43, %39
  %75 = phi i32 [ %73, %71 ], [ %22, %69 ], [ %67, %66 ], [ %22, %63 ], [ %60, %59 ], [ %56, %55 ], [ %52, %51 ], [ %48, %47 ], [ %44, %43 ], [ %40, %39 ]
  %76 = load ptr, ptr %3, align 8, !tbaa !37
  %77 = load i8, ptr %76, align 1, !tbaa !34
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %19, !llvm.loop !55

79:                                               ; preds = %74, %32, %13
  %80 = phi i32 [ 0, %13 ], [ %22, %32 ], [ %75, %74 ]
  store ptr %4, ptr %3, align 8, !tbaa !37
  %81 = load i8, ptr %4, align 16, !tbaa !34
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %321, label %83

83:                                               ; preds = %79
  store ptr %4, ptr %5, align 8, !tbaa !37
  %84 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %85 = load ptr, ptr %3, align 8, !tbaa !37
  %86 = call i32 @LocaleNCompare(ptr noundef %85, ptr noundef nonnull @.str, i64 noundef 2) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load ptr, ptr %3, align 8, !tbaa !37
  %90 = call i64 @strtol(ptr noundef %89, ptr noundef nonnull %5, i32 noundef 10) #10
  br label %91

91:                                               ; preds = %88, %83
  %92 = load ptr, ptr %5, align 8, !tbaa !37
  %93 = load i8, ptr %92, align 1, !tbaa !34
  switch i8 %93, label %111 [
    i8 -41, label %94
    i8 120, label %94
    i8 88, label %94
    i8 44, label %94
    i8 47, label %94
    i8 58, label %94
    i8 0, label %94
  ]

94:                                               ; preds = %91, %91, %91, %91, %91, %91, %91
  %95 = load ptr, ptr %3, align 8, !tbaa !37
  store ptr %95, ptr %5, align 8, !tbaa !37
  %96 = call i32 @LocaleNCompare(ptr noundef %95, ptr noundef nonnull @.str, i64 noundef 2) #10
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %3, align 8, !tbaa !37
  br i1 %97, label %99, label %102

99:                                               ; preds = %94
  %100 = call i64 @strtol(ptr noundef %98, ptr noundef nonnull %3, i32 noundef 10) #10
  %101 = sitofp i64 %100 to double
  br label %104

102:                                              ; preds = %94
  %103 = call double @InterpretLocaleValue(ptr noundef %98, ptr noundef nonnull %3) #10
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi double [ %101, %99 ], [ %103, %102 ]
  %106 = load ptr, ptr %3, align 8, !tbaa !37
  %107 = load ptr, ptr %5, align 8, !tbaa !37
  %108 = icmp eq ptr %106, %107
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = or i32 %80, 4
  store double %105, ptr %1, align 8, !tbaa !56
  br label %111

111:                                              ; preds = %91, %104, %109
  %112 = phi i32 [ %110, %109 ], [ %80, %104 ], [ %80, %91 ]
  %113 = load ptr, ptr %3, align 8, !tbaa !37
  store ptr %113, ptr %5, align 8, !tbaa !37
  %114 = load i8, ptr %113, align 1, !tbaa !34
  switch i8 %114, label %138 [
    i8 -41, label %115
    i8 120, label %115
    i8 88, label %115
    i8 44, label %115
    i8 47, label %115
    i8 58, label %115
  ]

115:                                              ; preds = %111, %111, %111, %111, %111, %111
  %116 = tail call ptr @__ctype_b_loc() #12
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi ptr [ %113, %115 ], [ %119, %117 ]
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  store ptr %119, ptr %3, align 8, !tbaa !37
  %120 = load ptr, ptr %116, align 8, !tbaa !37
  %121 = load i8, ptr %119, align 1, !tbaa !34
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds i16, ptr %120, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !39
  %125 = and i16 %124, 8192
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %127, label %117, !llvm.loop !59

127:                                              ; preds = %117
  %128 = load i8, ptr %113, align 1, !tbaa !34
  switch i8 %128, label %130 [
    i8 -41, label %129
    i8 120, label %129
    i8 88, label %129
  ]

129:                                              ; preds = %127, %127, %127
  switch i8 %121, label %130 [
    i8 43, label %138
    i8 45, label %138
  ]

130:                                              ; preds = %129, %127
  store ptr %119, ptr %5, align 8, !tbaa !37
  %131 = call double @InterpretLocaleValue(ptr noundef nonnull %119, ptr noundef nonnull %3) #10
  %132 = load ptr, ptr %3, align 8, !tbaa !37
  %133 = load ptr, ptr %5, align 8, !tbaa !37
  %134 = icmp eq ptr %132, %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = or i32 %112, 8
  %137 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  store double %131, ptr %137, align 8, !tbaa !60
  br label %138

138:                                              ; preds = %129, %129, %111, %135, %130
  %139 = phi i32 [ %136, %135 ], [ %112, %130 ], [ %112, %129 ], [ %112, %111 ], [ %112, %129 ]
  %140 = tail call ptr @__ctype_b_loc() #12
  %141 = load ptr, ptr %140, align 8, !tbaa !37
  %142 = load ptr, ptr %3, align 8, !tbaa !37
  %143 = load i8, ptr %142, align 1, !tbaa !34
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i16, ptr %141, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !39
  %147 = and i16 %146, 8192
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %138, %149
  %150 = phi ptr [ %151, %149 ], [ %142, %138 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  store ptr %151, ptr %3, align 8, !tbaa !37
  %152 = load ptr, ptr %140, align 8, !tbaa !37
  %153 = load i8, ptr %151, align 1, !tbaa !34
  %154 = zext i8 %153 to i64
  %155 = getelementptr inbounds i16, ptr %152, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !39
  %157 = and i16 %156, 8192
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %159, label %149, !llvm.loop !61

159:                                              ; preds = %149, %138
  %160 = phi ptr [ %142, %138 ], [ %151, %149 ]
  %161 = phi i8 [ %143, %138 ], [ %153, %149 ]
  switch i8 %161, label %283 [
    i8 44, label %162
    i8 47, label %162
    i8 58, label %162
    i8 43, label %164
    i8 45, label %164
  ]

162:                                              ; preds = %159, %159, %159
  %163 = getelementptr inbounds i8, ptr %160, i64 1
  store ptr %163, ptr %3, align 8, !tbaa !37
  br label %164

164:                                              ; preds = %159, %159, %162
  %165 = load ptr, ptr %3, align 8, !tbaa !37
  br label %166

166:                                              ; preds = %170, %164
  %167 = phi ptr [ %165, %164 ], [ %174, %170 ]
  %168 = phi i32 [ %139, %164 ], [ %173, %170 ]
  %169 = load i8, ptr %167, align 1, !tbaa !34
  switch i8 %169, label %175 [
    i8 43, label %170
    i8 45, label %170
  ]

170:                                              ; preds = %166, %166
  %171 = icmp eq i8 %169, 45
  %172 = xor i32 %168, 32
  %173 = select i1 %171, i32 %172, i32 %168
  %174 = getelementptr inbounds i8, ptr %167, i64 1
  store ptr %174, ptr %3, align 8, !tbaa !37
  br label %166, !llvm.loop !62

175:                                              ; preds = %166
  store ptr %167, ptr %5, align 8, !tbaa !37
  %176 = call double @InterpretLocaleValue(ptr noundef nonnull %167, ptr noundef nonnull %3) #10
  %177 = load ptr, ptr %3, align 8, !tbaa !37
  %178 = load ptr, ptr %5, align 8, !tbaa !37
  %179 = icmp eq ptr %177, %178
  br i1 %179, label %187, label %180

180:                                              ; preds = %175
  %181 = or i32 %168, 1
  %182 = and i32 %168, 32
  %183 = icmp eq i32 %182, 0
  %184 = fneg double %176
  %185 = select i1 %183, double %176, double %184
  %186 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  store double %185, ptr %186, align 8, !tbaa !63
  br label %187

187:                                              ; preds = %180, %175
  %188 = phi i32 [ %181, %180 ], [ %168, %175 ]
  %189 = load ptr, ptr %140, align 8, !tbaa !37
  %190 = load ptr, ptr %3, align 8, !tbaa !37
  %191 = load i8, ptr %190, align 1, !tbaa !34
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds i16, ptr %189, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !39
  %195 = and i16 %194, 8192
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %187, %197
  %198 = phi ptr [ %199, %197 ], [ %190, %187 ]
  %199 = getelementptr inbounds i8, ptr %198, i64 1
  store ptr %199, ptr %3, align 8, !tbaa !37
  %200 = load ptr, ptr %140, align 8, !tbaa !37
  %201 = load i8, ptr %199, align 1, !tbaa !34
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds i16, ptr %200, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !39
  %205 = and i16 %204, 8192
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %207, label %197, !llvm.loop !64

207:                                              ; preds = %197, %187
  %208 = phi ptr [ %190, %187 ], [ %199, %197 ]
  %209 = phi i8 [ %191, %187 ], [ %201, %197 ]
  switch i8 %209, label %235 [
    i8 44, label %210
    i8 47, label %210
    i8 58, label %210
    i8 43, label %212
    i8 45, label %212
  ]

210:                                              ; preds = %207, %207, %207
  %211 = getelementptr inbounds i8, ptr %208, i64 1
  store ptr %211, ptr %3, align 8, !tbaa !37
  br label %212

212:                                              ; preds = %207, %207, %210
  %213 = load ptr, ptr %3, align 8, !tbaa !37
  br label %214

214:                                              ; preds = %218, %212
  %215 = phi ptr [ %213, %212 ], [ %222, %218 ]
  %216 = phi i32 [ %188, %212 ], [ %221, %218 ]
  %217 = load i8, ptr %215, align 1, !tbaa !34
  switch i8 %217, label %223 [
    i8 43, label %218
    i8 45, label %218
  ]

218:                                              ; preds = %214, %214
  %219 = icmp eq i8 %217, 45
  %220 = xor i32 %216, 64
  %221 = select i1 %219, i32 %220, i32 %216
  %222 = getelementptr inbounds i8, ptr %215, i64 1
  store ptr %222, ptr %3, align 8, !tbaa !37
  br label %214, !llvm.loop !65

223:                                              ; preds = %214
  store ptr %215, ptr %5, align 8, !tbaa !37
  %224 = call double @InterpretLocaleValue(ptr noundef nonnull %215, ptr noundef nonnull %3) #10
  %225 = load ptr, ptr %3, align 8, !tbaa !37
  %226 = load ptr, ptr %5, align 8, !tbaa !37
  %227 = icmp eq ptr %225, %226
  br i1 %227, label %235, label %228

228:                                              ; preds = %223
  %229 = or i32 %216, 2
  %230 = and i32 %216, 64
  %231 = icmp eq i32 %230, 0
  %232 = fneg double %224
  %233 = select i1 %231, double %224, double %232
  %234 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 3
  store double %233, ptr %234, align 8, !tbaa !66
  br label %235

235:                                              ; preds = %207, %223, %228
  %236 = phi i32 [ %229, %228 ], [ %216, %223 ], [ %188, %207 ]
  %237 = load ptr, ptr %140, align 8, !tbaa !37
  %238 = load ptr, ptr %3, align 8, !tbaa !37
  %239 = load i8, ptr %238, align 1, !tbaa !34
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds i16, ptr %237, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !39
  %243 = and i16 %242, 8192
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %255, label %245

245:                                              ; preds = %235, %245
  %246 = phi ptr [ %247, %245 ], [ %238, %235 ]
  %247 = getelementptr inbounds i8, ptr %246, i64 1
  store ptr %247, ptr %3, align 8, !tbaa !37
  %248 = load ptr, ptr %140, align 8, !tbaa !37
  %249 = load i8, ptr %247, align 1, !tbaa !34
  %250 = zext i8 %249 to i64
  %251 = getelementptr inbounds i16, ptr %248, i64 %250
  %252 = load i16, ptr %251, align 2, !tbaa !39
  %253 = and i16 %252, 8192
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %255, label %245, !llvm.loop !67

255:                                              ; preds = %245, %235
  %256 = phi ptr [ %238, %235 ], [ %247, %245 ]
  %257 = phi i8 [ %239, %235 ], [ %249, %245 ]
  switch i8 %257, label %283 [
    i8 44, label %258
    i8 47, label %258
    i8 58, label %258
    i8 43, label %260
    i8 45, label %260
  ]

258:                                              ; preds = %255, %255, %255
  %259 = getelementptr inbounds i8, ptr %256, i64 1
  store ptr %259, ptr %3, align 8, !tbaa !37
  br label %260

260:                                              ; preds = %255, %255, %258
  %261 = load ptr, ptr %3, align 8, !tbaa !37
  br label %262

262:                                              ; preds = %266, %260
  %263 = phi ptr [ %261, %260 ], [ %270, %266 ]
  %264 = phi i32 [ %236, %260 ], [ %269, %266 ]
  %265 = load i8, ptr %263, align 1, !tbaa !34
  switch i8 %265, label %271 [
    i8 43, label %266
    i8 45, label %266
  ]

266:                                              ; preds = %262, %262
  %267 = icmp eq i8 %265, 45
  %268 = xor i32 %264, 128
  %269 = select i1 %267, i32 %268, i32 %264
  %270 = getelementptr inbounds i8, ptr %263, i64 1
  store ptr %270, ptr %3, align 8, !tbaa !37
  br label %262, !llvm.loop !68

271:                                              ; preds = %262
  store ptr %263, ptr %5, align 8, !tbaa !37
  %272 = call double @InterpretLocaleValue(ptr noundef nonnull %263, ptr noundef nonnull %3) #10
  %273 = load ptr, ptr %3, align 8, !tbaa !37
  %274 = load ptr, ptr %5, align 8, !tbaa !37
  %275 = icmp eq ptr %273, %274
  br i1 %275, label %283, label %276

276:                                              ; preds = %271
  %277 = or i32 %264, 16
  %278 = and i32 %264, 128
  %279 = icmp eq i32 %278, 0
  %280 = fneg double %272
  %281 = select i1 %279, double %272, double %280
  %282 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 4
  store double %281, ptr %282, align 8, !tbaa !69
  br label %283

283:                                              ; preds = %255, %159, %276, %271
  %284 = phi i32 [ %277, %276 ], [ %264, %271 ], [ %139, %159 ], [ %236, %255 ]
  %285 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 58) #11
  %286 = icmp eq ptr %285, null
  br i1 %286, label %296, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %289 = load double, ptr %288, align 8, !tbaa !60
  %290 = load double, ptr %1, align 8, !tbaa !56
  %291 = fdiv double %290, %289
  store double %291, ptr %1, align 8, !tbaa !56
  store double 1.000000e+00, ptr %288, align 8, !tbaa !60
  %292 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %293 = load double, ptr %292, align 8, !tbaa !63
  %294 = fcmp oeq double %293, 0.000000e+00
  br i1 %294, label %295, label %296

295:                                              ; preds = %287
  store double 2.000000e+00, ptr %288, align 8, !tbaa !60
  br label %296

296:                                              ; preds = %287, %295, %283
  %297 = and i32 %284, 11
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %305

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 2
  %301 = load double, ptr %300, align 8, !tbaa !63
  %302 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  store double %301, ptr %302, align 8, !tbaa !60
  store double 0.000000e+00, ptr %300, align 8, !tbaa !63
  %303 = and i32 %284, -12
  %304 = or disjoint i32 %303, 8
  br label %305

305:                                              ; preds = %299, %296
  %306 = phi i32 [ %304, %299 ], [ %284, %296 ]
  %307 = and i32 %306, 4096
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %321, label %309

309:                                              ; preds = %305
  %310 = and i32 %306, 524296
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load double, ptr %1, align 8, !tbaa !56
  %314 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  store double %313, ptr %314, align 8, !tbaa !60
  br label %315

315:                                              ; preds = %312, %309
  %316 = and i32 %306, 524292
  %317 = icmp eq i32 %316, 524288
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct._GeometryInfo, ptr %1, i64 0, i32 1
  %320 = load double, ptr %319, align 8, !tbaa !60
  store double %320, ptr %1, align 8, !tbaa !56
  br label %321

321:                                              ; preds = %38, %305, %318, %315, %79, %10, %2, %7
  %322 = phi i32 [ 0, %7 ], [ 0, %2 ], [ 0, %10 ], [ %80, %79 ], [ %306, %315 ], [ %306, %318 ], [ %306, %305 ], [ %22, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %322
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @IsSceneGeometry(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  store ptr %0, ptr %3, align 8, !tbaa !37
  %6 = call double @InterpretLocaleValue(ptr noundef nonnull %0, ptr noundef nonnull %3) #10
  %7 = load ptr, ptr %3, align 8, !tbaa !37
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = call i64 @strspn(ptr noundef nonnull %0, ptr noundef nonnull @.str.148) #11
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 44) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %13
  br label %19

19:                                               ; preds = %15, %9, %5, %2, %18
  %20 = phi i32 [ 1, %18 ], [ 0, %2 ], [ 0, %5 ], [ 0, %9 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseAbsoluteGeometry(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 3
  %5 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  %6 = tail call i32 @GetGeometry(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseAffineGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  tail call void @GetAffineMatrix(ptr noundef %1) #10
  store ptr %0, ptr %5, align 8, !tbaa !37
  %6 = load i8, ptr %0, align 1, !tbaa !34
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %10 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  br label %14

14:                                               ; preds = %8, %37
  %15 = phi ptr [ %0, %8 ], [ %40, %37 ]
  %16 = phi i64 [ 0, %8 ], [ %39, %37 ]
  %17 = phi i32 [ 0, %8 ], [ %38, %37 ]
  call void @GetMagickToken(ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  %18 = load i8, ptr %4, align 16, !tbaa !34
  %19 = icmp eq i8 %18, 44
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8, !tbaa !37
  call void @GetMagickToken(ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  br label %22

22:                                               ; preds = %20, %14
  switch i64 %16, label %37 [
    i64 0, label %23
    i64 1, label %25
    i64 2, label %27
    i64 3, label %29
    i64 4, label %31
    i64 5, label %34
  ]

23:                                               ; preds = %22
  %24 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #10
  store double %24, ptr %1, align 8, !tbaa !70
  br label %37

25:                                               ; preds = %22
  %26 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #10
  store double %26, ptr %13, align 8, !tbaa !72
  br label %37

27:                                               ; preds = %22
  %28 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #10
  store double %28, ptr %12, align 8, !tbaa !73
  br label %37

29:                                               ; preds = %22
  %30 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #10
  store double %30, ptr %11, align 8, !tbaa !74
  br label %37

31:                                               ; preds = %22
  %32 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #10
  store double %32, ptr %10, align 8, !tbaa !75
  %33 = or i32 %17, 1
  br label %37

34:                                               ; preds = %22
  %35 = call double @InterpretLocaleValue(ptr noundef nonnull %4, ptr noundef null) #10
  store double %35, ptr %9, align 8, !tbaa !76
  %36 = or i32 %17, 2
  br label %37

37:                                               ; preds = %23, %25, %27, %29, %31, %34, %22
  %38 = phi i32 [ %17, %22 ], [ %36, %34 ], [ %33, %31 ], [ %17, %29 ], [ %17, %27 ], [ %17, %25 ], [ %17, %23 ]
  %39 = add nuw nsw i64 %16, 1
  %40 = load ptr, ptr %5, align 8, !tbaa !37
  %41 = load i8, ptr %40, align 1, !tbaa !34
  %42 = icmp ne i8 %41, 0
  %43 = icmp ult i64 %16, 5
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %14, label %45, !llvm.loop !77

45:                                               ; preds = %37, %3
  %46 = phi i32 [ 0, %3 ], [ %38, %37 ]
  %47 = load double, ptr %1, align 8, !tbaa !70
  %48 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %49 = load double, ptr %48, align 8, !tbaa !74
  %50 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %51 = load double, ptr %50, align 8, !tbaa !72
  %52 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %53 = load double, ptr %52, align 8, !tbaa !73
  %54 = fneg double %51
  %55 = fmul double %53, %54
  %56 = call double @llvm.fmuladd.f64(double %47, double %49, double %55)
  %57 = call double @llvm.fabs.f64(double %56)
  %58 = fcmp olt double %57, 1.000000e-15
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %2, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 768, i32 noundef 410, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull %0) #10
  br label %61

61:                                               ; preds = %59, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #10
  ret i32 %46
}

declare void @GetAffineMatrix(ptr noundef) local_unnamed_addr #3

declare void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseGravityGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._GeometryInfo, align 8
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %10) #10
  br label %12

12:                                               ; preds = %4, %9
  %13 = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef 32) #10
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !90
  store i64 %15, ptr %2, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !91
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %20 = load i64, ptr %19, align 8, !tbaa !92
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i64 %20, ptr %2, align 8, !tbaa !51
  br label %23

23:                                               ; preds = %22, %12
  %24 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !93
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i64 %25, ptr %18, align 8, !tbaa !49
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %30 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %31 = tail call i32 @GetGeometry(ptr noundef %1, ptr noundef nonnull %29, ptr noundef nonnull %30, ptr noundef nonnull %2, ptr noundef nonnull %18)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1157, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %1) #10
  br label %125

35:                                               ; preds = %28
  %36 = and i32 %31, 4096
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  %40 = load i32, ptr %39, align 4, !tbaa !94
  %41 = icmp eq i32 %40, 0
  %42 = or i32 %31, 3
  %43 = select i1 %41, i32 %31, i32 %42
  %44 = call i32 @ParseGeometry(ptr noundef %1, ptr noundef nonnull %5), !range !54
  %45 = load double, ptr %5, align 8, !tbaa !56
  %46 = and i32 %44, 4
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, double 1.000000e+02, double %45
  %49 = getelementptr inbounds %struct._GeometryInfo, ptr %5, i64 0, i32 1
  %50 = load double, ptr %49, align 8, !tbaa !60
  %51 = and i32 %44, 8
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, double %48, double %50
  %54 = load i64, ptr %14, align 8, !tbaa !90
  %55 = uitofp i64 %54 to double
  %56 = fmul double %48, %55
  %57 = fdiv double %56, 1.000000e+02
  %58 = fadd double %57, 5.000000e-01
  %59 = tail call double @llvm.floor.f64(double %58)
  %60 = fptoui double %59 to i64
  store i64 %60, ptr %2, align 8, !tbaa !51
  %61 = load i64, ptr %16, align 8, !tbaa !91
  %62 = uitofp i64 %61 to double
  %63 = fmul double %53, %62
  %64 = fdiv double %63, 1.000000e+02
  %65 = fadd double %64, 5.000000e-01
  %66 = tail call double @llvm.floor.f64(double %65)
  %67 = fptoui double %66 to i64
  store i64 %67, ptr %18, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  br label %68

68:                                               ; preds = %38, %35
  %69 = phi i32 [ %43, %38 ], [ %31, %35 ]
  %70 = load i64, ptr %2, align 8, !tbaa !51
  %71 = load i64, ptr %18, align 8, !tbaa !49
  %72 = icmp eq i64 %70, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i64, ptr %19, align 8, !tbaa !92
  %75 = load i64, ptr %14, align 8, !tbaa !90
  %76 = or i64 %75, %74
  store i64 %76, ptr %2, align 8, !tbaa !51
  br label %77

77:                                               ; preds = %73, %68
  %78 = icmp eq i64 %71, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = load i64, ptr %24, align 8, !tbaa !93
  %81 = load i64, ptr %16, align 8, !tbaa !91
  %82 = or i64 %81, %80
  store i64 %82, ptr %18, align 8, !tbaa !49
  br label %83

83:                                               ; preds = %79, %77
  %84 = load i64, ptr %14, align 8, !tbaa !90
  %85 = load i64, ptr %16, align 8, !tbaa !91
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 35
  %87 = load i32, ptr %86, align 4, !tbaa !94
  %88 = load i64, ptr %18, align 8, !tbaa !49
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i64 %85, ptr %18, align 8, !tbaa !49
  br label %91

91:                                               ; preds = %90, %83
  %92 = load i64, ptr %2, align 8, !tbaa !51
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i64 %84, ptr %2, align 8, !tbaa !51
  br label %95

95:                                               ; preds = %94, %91
  switch i32 %87, label %124 [
    i32 3, label %96
    i32 6, label %96
    i32 9, label %96
    i32 2, label %101
    i32 8, label %101
    i32 5, label %101
    i32 10, label %101
    i32 7, label %110
    i32 4, label %115
  ]

96:                                               ; preds = %95, %95, %95
  %97 = load i64, ptr %2, align 8, !tbaa !51
  %98 = load i64, ptr %29, align 8, !tbaa !52
  %99 = add i64 %97, %98
  %100 = sub i64 %84, %99
  br label %108

101:                                              ; preds = %95, %95, %95, %95
  %102 = lshr i64 %84, 1
  %103 = load i64, ptr %2, align 8, !tbaa !51
  %104 = lshr i64 %103, 1
  %105 = sub nsw i64 %102, %104
  %106 = load i64, ptr %29, align 8, !tbaa !52
  %107 = add nsw i64 %105, %106
  br label %108

108:                                              ; preds = %101, %96
  %109 = phi i64 [ %107, %101 ], [ %100, %96 ]
  store i64 %109, ptr %29, align 8, !tbaa !52
  switch i32 %87, label %124 [
    i32 7, label %110
    i32 8, label %110
    i32 9, label %110
    i32 6, label %115
    i32 4, label %115
    i32 5, label %115
    i32 10, label %115
  ]

110:                                              ; preds = %108, %108, %108, %95
  %111 = load i64, ptr %18, align 8, !tbaa !49
  %112 = load i64, ptr %30, align 8, !tbaa !53
  %113 = add i64 %111, %112
  %114 = sub i64 %85, %113
  br label %122

115:                                              ; preds = %108, %108, %108, %108, %95
  %116 = lshr i64 %85, 1
  %117 = load i64, ptr %18, align 8, !tbaa !49
  %118 = lshr i64 %117, 1
  %119 = sub nsw i64 %116, %118
  %120 = load i64, ptr %30, align 8, !tbaa !53
  %121 = add nsw i64 %119, %120
  br label %122

122:                                              ; preds = %115, %110
  %123 = phi i64 [ %114, %110 ], [ %121, %115 ]
  store i64 %123, ptr %30, align 8, !tbaa !53
  br label %124

124:                                              ; preds = %122, %95, %108
  store i64 %70, ptr %2, align 8, !tbaa !51
  store i64 %71, ptr %18, align 8, !tbaa !49
  br label %125

125:                                              ; preds = %124, %33
  %126 = phi i32 [ 0, %33 ], [ %69, %124 ]
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define dso_local void @SetGeometry(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %7) #10
  br label %9

9:                                                ; preds = %6, %2
  %10 = tail call ptr @ResetMagickMemory(ptr noundef %1, i32 noundef 0, i64 noundef 32) #10
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !90
  store i64 %12, ptr %1, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct._RectangleInfo, ptr %1, i64 0, i32 1
  store i64 %14, ptr %15, align 8, !tbaa !49
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseMetaGeometry(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct._GeometryInfo, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  %7 = icmp eq ptr %0, null
  br i1 %7, label %179, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !34
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %179, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1275, ptr noundef nonnull @.str.146, ptr noundef nonnull %0) #10
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1575, ptr noundef nonnull @.str.153) #10
  %14 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 40) #10
  %15 = load i64, ptr %3, align 8, !tbaa !44
  %16 = load i64, ptr %4, align 8, !tbaa !44
  %17 = call i32 @GetGeometry(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %18 = and i32 %17, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %11
  %21 = call i32 @ParseGeometry(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !54
  %22 = load double, ptr %6, align 8, !tbaa !56
  %23 = and i32 %21, 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, double 1.000000e+02, double %22
  %26 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !60
  %28 = and i32 %21, 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, double %25, double %27
  %31 = uitofp i64 %15 to double
  %32 = fmul double %25, %31
  %33 = fdiv double %32, 1.000000e+02
  %34 = fadd double %33, 5.000000e-01
  %35 = call double @llvm.floor.f64(double %34)
  %36 = fptoui double %35 to i64
  store i64 %36, ptr %3, align 8, !tbaa !44
  %37 = uitofp i64 %16 to double
  %38 = fmul double %30, %37
  %39 = fdiv double %38, 1.000000e+02
  %40 = fadd double %39, 5.000000e-01
  %41 = call double @llvm.floor.f64(double %40)
  %42 = fptoui double %41 to i64
  store i64 %42, ptr %4, align 8, !tbaa !44
  %43 = load i64, ptr %3, align 8, !tbaa !44
  br label %44

44:                                               ; preds = %20, %11
  %45 = phi i64 [ %43, %20 ], [ %15, %11 ]
  %46 = phi i64 [ %42, %20 ], [ %16, %11 ]
  %47 = and i32 %17, 8192
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i64, ptr %3, align 8, !tbaa !44
  %51 = icmp eq i64 %50, %45
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i64, ptr %4, align 8, !tbaa !44
  %54 = icmp eq i64 %53, %46
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %44
  %56 = and i32 %17, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i64 %45, ptr %3, align 8, !tbaa !44
  br label %59

59:                                               ; preds = %58, %55
  %60 = and i32 %17, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %123, label %125

62:                                               ; preds = %52, %49
  %63 = icmp eq i64 %45, 0
  %64 = icmp eq i64 %46, 0
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %111, label %66

66:                                               ; preds = %62
  %67 = and i32 %17, 12
  %68 = icmp eq i32 %67, 12
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = uitofp i64 %50 to double
  %71 = uitofp i64 %45 to double
  %72 = fdiv double %70, %71
  %73 = and i32 %17, 65536
  %74 = icmp eq i32 %73, 0
  %75 = load i64, ptr %4, align 8, !tbaa !44
  %76 = uitofp i64 %75 to double
  %77 = uitofp i64 %46 to double
  %78 = fdiv double %76, %77
  br i1 %74, label %79, label %82

79:                                               ; preds = %69
  %80 = fcmp ogt double %72, %78
  br i1 %80, label %81, label %111

81:                                               ; preds = %79
  br label %111

82:                                               ; preds = %69
  %83 = fcmp olt double %72, %78
  br i1 %83, label %84, label %111

84:                                               ; preds = %82
  br label %111

85:                                               ; preds = %66
  %86 = and i32 %17, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %85
  %89 = uitofp i64 %50 to double
  %90 = uitofp i64 %45 to double
  %91 = fdiv double %89, %90
  %92 = and i32 %17, 65536
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %88
  %95 = uitofp i64 %46 to double
  %96 = fdiv double %89, %95
  %97 = fcmp olt double %91, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  br label %111

99:                                               ; preds = %85
  %100 = load i64, ptr %4, align 8, !tbaa !44
  %101 = uitofp i64 %100 to double
  %102 = uitofp i64 %46 to double
  %103 = fdiv double %101, %102
  %104 = and i32 %17, 65536
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = uitofp i64 %45 to double
  %108 = fdiv double %101, %107
  %109 = fcmp olt double %103, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %62, %82, %84, %79, %81, %99, %106, %110, %88, %94, %98
  %112 = phi double [ %78, %81 ], [ %72, %79 ], [ %78, %84 ], [ %72, %82 ], [ %96, %98 ], [ %91, %94 ], [ %91, %88 ], [ %108, %110 ], [ %103, %106 ], [ %103, %99 ], [ 1.000000e+00, %62 ]
  %113 = uitofp i64 %45 to double
  %114 = call double @llvm.fmuladd.f64(double %112, double %113, double 5.000000e-01)
  %115 = call double @llvm.floor.f64(double %114)
  %116 = fptoui double %115 to i64
  %117 = call i64 @llvm.umax.i64(i64 %116, i64 1)
  store i64 %117, ptr %3, align 8, !tbaa !44
  %118 = uitofp i64 %46 to double
  %119 = call double @llvm.fmuladd.f64(double %112, double %118, double 5.000000e-01)
  %120 = call double @llvm.floor.f64(double %119)
  %121 = fptoui double %120 to i64
  %122 = call i64 @llvm.umax.i64(i64 %121, i64 1)
  br label %123

123:                                              ; preds = %59, %111
  %124 = phi i64 [ %122, %111 ], [ %46, %59 ]
  store i64 %124, ptr %4, align 8, !tbaa !44
  br label %125

125:                                              ; preds = %123, %59
  %126 = and i32 %17, 32768
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %125
  %129 = load i64, ptr %3, align 8, !tbaa !44
  %130 = icmp ult i64 %45, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i64 %45, ptr %3, align 8, !tbaa !44
  br label %132

132:                                              ; preds = %131, %128
  %133 = load i64, ptr %4, align 8, !tbaa !44
  %134 = icmp ult i64 %46, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i64 %46, ptr %4, align 8, !tbaa !44
  br label %136

136:                                              ; preds = %132, %135, %125
  %137 = and i32 %17, 16384
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %136
  %140 = load i64, ptr %3, align 8, !tbaa !44
  %141 = icmp ugt i64 %45, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i64 %45, ptr %3, align 8, !tbaa !44
  br label %143

143:                                              ; preds = %142, %139
  %144 = load i64, ptr %4, align 8, !tbaa !44
  %145 = icmp ugt i64 %46, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i64 %46, ptr %4, align 8, !tbaa !44
  br label %147

147:                                              ; preds = %143, %146, %136
  %148 = and i32 %17, 131072
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %179, label %150

150:                                              ; preds = %147
  %151 = call i32 @ParseGeometry(ptr noundef nonnull %0, ptr noundef nonnull %6), !range !54
  %152 = load double, ptr %6, align 8, !tbaa !56
  %153 = uitofp i64 %45 to double
  %154 = uitofp i64 %46 to double
  %155 = fmul double %153, %154
  %156 = call double @sqrt(double noundef %155) #10
  %157 = call double @sqrt(double noundef %152) #10
  %158 = fdiv double %156, %157
  %159 = fdiv double %153, %158
  %160 = call double @sqrt(double noundef %152) #10
  %161 = load i64, ptr %3, align 8, !tbaa !44
  %162 = uitofp i64 %161 to double
  %163 = fcmp olt double %159, %162
  br i1 %163, label %170, label %164

164:                                              ; preds = %150
  %165 = fdiv double %156, %160
  %166 = fdiv double %154, %165
  %167 = load i64, ptr %4, align 8, !tbaa !44
  %168 = uitofp i64 %167 to double
  %169 = fcmp olt double %166, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %164, %150
  %171 = call double @sqrt(double noundef %152) #10
  %172 = fdiv double %156, %171
  %173 = fdiv double %153, %172
  %174 = fptoui double %173 to i64
  store i64 %174, ptr %3, align 8, !tbaa !44
  %175 = call double @sqrt(double noundef %152) #10
  %176 = fdiv double %156, %175
  %177 = fdiv double %154, %176
  %178 = fptoui double %177 to i64
  store i64 %178, ptr %4, align 8, !tbaa !44
  br label %179

179:                                              ; preds = %147, %170, %164, %5, %8
  %180 = phi i32 [ 0, %8 ], [ 0, %5 ], [ %17, %164 ], [ %17, %170 ], [ %17, %147 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  ret i32 %180
}

; Function Attrs: nounwind uwtable
define dso_local void @SetGeometryInfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1575, ptr noundef nonnull @.str.153) #10
  %3 = tail call ptr @ResetMagickMemory(ptr noundef %0, i32 noundef 0, i64 noundef 40) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @ParsePageGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %9) #10
  br label %11

11:                                               ; preds = %4, %8
  %12 = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef 32) #10
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !90
  store i64 %14, ptr %2, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26
  %19 = load i64, ptr %18, align 8, !tbaa !92
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i64 %19, ptr %2, align 8, !tbaa !51
  br label %22

22:                                               ; preds = %21, %11
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !93
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i64 %24, ptr %17, align 8, !tbaa !49
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %29 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %30 = tail call i32 @GetGeometry(ptr noundef %1, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %2, ptr noundef nonnull %17)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1444, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %1) #10
  br label %57

34:                                               ; preds = %27
  %35 = and i32 %30, 4096
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %13, align 8, !tbaa !90
  store i64 %38, ptr %2, align 8, !tbaa !51
  %39 = load i64, ptr %15, align 8, !tbaa !91
  store i64 %39, ptr %17, align 8, !tbaa !49
  br label %40

40:                                               ; preds = %37, %34
  %41 = tail call i32 @ParseMetaGeometry(ptr noundef %1, ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %2, ptr noundef nonnull %17)
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  %44 = and i32 %41, 12
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %41, 528384
  %47 = icmp eq i32 %46, 524288
  %48 = or i1 %45, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = and i32 %41, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64, ptr %17, align 8, !tbaa !49
  store i64 %53, ptr %2, align 8, !tbaa !51
  br label %54

54:                                               ; preds = %52, %49
  br i1 %43, label %55, label %57

55:                                               ; preds = %54
  %56 = load i64, ptr %2, align 8, !tbaa !51
  store i64 %56, ptr %17, align 8, !tbaa !49
  br label %57

57:                                               ; preds = %55, %54, %40, %32
  %58 = phi i32 [ 0, %32 ], [ %41, %40 ], [ %41, %54 ], [ %41, %55 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseRegionGeometry(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %9) #10
  br label %11

11:                                               ; preds = %4, %8
  %12 = tail call ptr @ResetMagickMemory(ptr noundef %2, i32 noundef 0, i64 noundef 32) #10
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !90
  store i64 %14, ptr %2, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 1
  store i64 %16, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 2
  %19 = getelementptr inbounds %struct._RectangleInfo, ptr %2, i64 0, i32 3
  %20 = tail call i32 @ParseMetaGeometry(ptr noundef %1, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %2, ptr noundef nonnull %17)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1509, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %1) #10
  br label %24

24:                                               ; preds = %22, %11
  ret i32 %20
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

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
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !35, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !35, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !45, i64 0}
!45 = !{!"long", !35, i64 0}
!46 = distinct !{!46, !42, !43}
!47 = distinct !{!47, !42, !43}
!48 = distinct !{!48, !42, !43}
!49 = !{!50, !45, i64 8}
!50 = !{!"_RectangleInfo", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!51 = !{!50, !45, i64 0}
!52 = !{!50, !45, i64 16}
!53 = !{!50, !45, i64 24}
!54 = !{i32 0, i32 1048576}
!55 = distinct !{!55, !42, !43}
!56 = !{!57, !58, i64 0}
!57 = !{!"_GeometryInfo", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32}
!58 = !{!"double", !35, i64 0}
!59 = distinct !{!59, !42, !43}
!60 = !{!57, !58, i64 8}
!61 = distinct !{!61, !42, !43}
!62 = distinct !{!62, !42, !43}
!63 = !{!57, !58, i64 16}
!64 = distinct !{!64, !42, !43}
!65 = distinct !{!65, !42, !43}
!66 = !{!57, !58, i64 24}
!67 = distinct !{!67, !42, !43}
!68 = distinct !{!68, !42, !43}
!69 = !{!57, !58, i64 32}
!70 = !{!71, !58, i64 0}
!71 = !{!"_AffineMatrix", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40}
!72 = !{!71, !58, i64 8}
!73 = !{!71, !58, i64 16}
!74 = !{!71, !58, i64 24}
!75 = !{!71, !58, i64 32}
!76 = !{!71, !58, i64 40}
!77 = distinct !{!77, !42, !43}
!78 = !{!79, !80, i64 12976}
!79 = !{!"_Image", !80, i64 0, !80, i64 4, !80, i64 8, !45, i64 16, !80, i64 24, !80, i64 28, !80, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !38, i64 72, !81, i64 80, !81, i64 88, !81, i64 96, !58, i64 104, !82, i64 112, !80, i64 208, !38, i64 216, !80, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !45, i64 256, !58, i64 264, !58, i64 272, !50, i64 280, !50, i64 312, !50, i64 344, !58, i64 376, !58, i64 384, !58, i64 392, !80, i64 400, !80, i64 404, !80, i64 408, !80, i64 412, !80, i64 416, !80, i64 420, !38, i64 424, !45, i64 432, !45, i64 440, !45, i64 448, !45, i64 456, !45, i64 464, !45, i64 472, !84, i64 480, !85, i64 504, !38, i64 568, !38, i64 576, !38, i64 584, !38, i64 592, !38, i64 600, !38, i64 608, !35, i64 616, !35, i64 4712, !35, i64 8808, !45, i64 12904, !45, i64 12912, !87, i64 12920, !80, i64 12976, !45, i64 12984, !38, i64 12992, !88, i64 13000, !88, i64 13032, !38, i64 13064, !45, i64 13072, !45, i64 13080, !38, i64 13088, !38, i64 13096, !38, i64 13104, !80, i64 13112, !80, i64 13116, !81, i64 13120, !38, i64 13128, !50, i64 13136, !38, i64 13168, !38, i64 13176, !80, i64 13184, !80, i64 13188, !89, i64 13192, !80, i64 13200, !45, i64 13208, !45, i64 13216, !80, i64 13224, !45, i64 13232}
!80 = !{!"int", !35, i64 0}
!81 = !{!"_PixelPacket", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6}
!82 = !{!"_ChromaticityInfo", !83, i64 0, !83, i64 24, !83, i64 48, !83, i64 72}
!83 = !{!"_PrimaryInfo", !58, i64 0, !58, i64 8, !58, i64 16}
!84 = !{!"_ErrorInfo", !58, i64 0, !58, i64 8, !58, i64 16}
!85 = !{!"_TimerInfo", !86, i64 0, !86, i64 24, !80, i64 48, !45, i64 56}
!86 = !{!"_Timer", !58, i64 0, !58, i64 8, !58, i64 16}
!87 = !{!"_ExceptionInfo", !80, i64 0, !80, i64 4, !38, i64 8, !38, i64 16, !38, i64 24, !80, i64 32, !38, i64 40, !45, i64 48}
!88 = !{!"_ProfileInfo", !38, i64 0, !45, i64 8, !38, i64 16, !45, i64 24}
!89 = !{!"long long", !35, i64 0}
!90 = !{!79, !45, i64 40}
!91 = !{!79, !45, i64 48}
!92 = !{!79, !45, i64 280}
!93 = !{!79, !45, i64 288}
!94 = !{!79, !80, i64 412}
