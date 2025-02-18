; ModuleID = 'magick/distort.c'
source_filename = "magick/distort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }

@.str = private unnamed_addr constant [17 x i8] c"magick/distort.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s : '%s'\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Invalid number of args: 2 only\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"distort:viewport\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"InvalidGeometry\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"`%s' `%s'\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"  -size %.20gx%.20g -page %+.20g%+.20g xc: +insert \\\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"v.p{ xx-v.page.x-.5, yy-v.page.y-.5 }\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"p{ xx-page.x-.5, yy-page.y-.5 }\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"DistortImages\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [20 x i8] c"Affine Projection:\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"  -distort AffineProjection \\\0A      '\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%lf,\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%lf'\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Affine Distort, FX Equivelent:\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"  -fx 'ii=i+page.x+0.5; jj=j+page.y+0.5;\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"       xx=%+lf*ii %+lf*jj %+lf;\0A\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"       yy=%+lf*ii %+lf*jj %+lf;\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"       %s' \\\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"DistortCoefficients\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Perspective Projection:\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"  -distort PerspectiveProjection \\\0A      '\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%lf, \00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"\0A       \00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"Perspective Distort, FX Equivelent:\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"       rr=%+lf*ii %+lf*jj + 1;\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"       xx=(%+lf*ii %+lf*jj %+lf)/rr;\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"       yy=(%+lf*ii %+lf*jj %+lf)/rr;\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"       rr%s0 ? %s : blue' \\\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"BilinearForward Mapping Equations:\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"    i = %+lf*x %+lf*y %+lf*x*y %+lf;\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"    j = %+lf*x %+lf*y %+lf*x*y %+lf;\0A\00", align 1
@.str.40 = private unnamed_addr constant [41 x i8] c"BilinearForward Distort, FX Equivelent:\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"  -fx 'ii=i+page.x%+lf; jj=j+page.y%+lf;\0A\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"       bb=%lf*ii %+lf*jj %+lf;\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"       rt=bb*bb %+lf*(%lf*ii%+lf*jj);\0A\00", align 1
@.str.44 = private unnamed_addr constant [37 x i8] c"       yy=( -bb + sqrt(rt) ) / %lf;\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"       yy=(%lf*ii%+lf*jj)/bb;\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"       xx=(ii %+lf*yy)/(%lf %+lf*yy);\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"       (rt < 0 ) ? red : %s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"BilinearReverse Distort, FX Equivelent:\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"       xx=%+lf*ii %+lf*jj %+lf*ii*jj %+lf;\0A\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"       yy=%+lf*ii %+lf*jj %+lf*ii*jj %+lf;\0A\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"Polynomial (order %lg, terms %lu), FX Equivelent\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"       xx =\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"\0A         \00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c" %+lf%s\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c";\0A       yy =\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c";\0A       %s' \\\0A\00", align 1
@.str.57 = private unnamed_addr constant [37 x i8] c"Arc Distort, Internal Coefficients:\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"  c%.20g = %+lf\0A\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"Arc Distort, FX Equivelent:\0A\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"  -fx 'ii=i+page.x; jj=j+page.y;\0A\00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"       xx=(atan2(jj,ii)%+lf)/(2*pi);\0A\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"       xx=xx-round(xx);\0A\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"       xx=xx*%lf %+lf;\0A\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"       yy=(%lf - hypot(ii,jj)) * %lf;\0A\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"       v.p{xx-.5,yy-.5}' \\\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"Polar Distort, Internal Coefficents\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Polar Distort, FX Equivelent:\0A\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"       xx=(atan2(ii,jj)%+lf)/(2*pi);\0A\00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"       xx=xx*2*pi*%lf + v.w/2;\0A\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"       yy=(hypot(ii,jj)%+lf)*%lf;\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"DePolar Distort, Internal Coefficents\0A\00", align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"DePolar Distort, FX Equivelent:\0A\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"  -fx 'aa=(i+.5)*%lf %+lf;\0A\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"       rr=(j+.5)*%lf %+lf;\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"       xx=rr*sin(aa) %+lf;\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"       yy=rr*cos(aa) %+lf;\0A\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"Cylinder to Plane Distort, Internal Coefficents\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"  cylinder_radius = %+lf\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"Cylinder to Plane Distort, FX Equivelent:\0A\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"  -fx 'ii=i+page.x%+lf+0.5; jj=j+page.y%+lf+0.5;\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"       aa=atan(ii/%+lf);\0A\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"       xx=%lf*aa%+lf;\0A\00", align 1
@.str.83 = private unnamed_addr constant [27 x i8] c"       yy=jj*cos(aa)%+lf;\0A\00", align 1
@.str.84 = private unnamed_addr constant [49 x i8] c"Plane to Cylinder Distort, Internal Coefficents\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"Plane to Cylinder Distort, FX Equivelent:\0A\00", align 1
@.str.86 = private unnamed_addr constant [20 x i8] c"       ii=ii/%+lf;\0A\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"       xx=%lf*tan(ii)%+lf;\0A\00", align 1
@.str.88 = private unnamed_addr constant [27 x i8] c"       yy=jj/cos(ii)%+lf;\0A\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"Barrel%s Distort, FX Equivelent:\0A\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Inv\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"  -fx 'xc=(w-1)/2;  yc=(h-1)/2;\0A\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"  -fx 'xc=%lf;  yc=%lf;\0A\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"       ii=i-xc;  jj=j-yc;  rr=hypot(ii,jj);\0A\00", align 1
@.str.94 = private unnamed_addr constant [55 x i8] c"       ii=ii%s(%lf*rr*rr*rr %+lf*rr*rr %+lf*rr %+lf);\0A\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.97 = private unnamed_addr constant [55 x i8] c"       jj=jj%s(%lf*rr*rr*rr %+lf*rr*rr %+lf*rr %+lf);\0A\00", align 1
@.str.98 = private unnamed_addr constant [34 x i8] c"       v.p{fx*ii+xc,fy*jj+yc}' \\\0A\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"distort:scale\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"-define distort:scale\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"x=%lf  y=%lf  u=%lf  v=%lf\0A\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"radius = %lf  phi = %lf  validity = %lf\0A\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"du/dx=%lf  du/dx=%lf  dv/dx=%lf  dv/dy=%lf\0A\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"Distort/Image\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"Barycentric Sparse Color:\0A\00", align 1
@.str.106 = private unnamed_addr constant [41 x i8] c"  -channel R -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"  -channel G -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"  -channel B -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.109 = private unnamed_addr constant [41 x i8] c"  -channel K -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.110 = private unnamed_addr constant [41 x i8] c"  -channel A -fx '%+lf*i %+lf*j %+lf' \\\0A\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"Bilinear Sparse Color\0A\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"   -channel R -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"   -channel G -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.114 = private unnamed_addr constant [49 x i8] c"   -channel B -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c"   -channel K -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.116 = private unnamed_addr constant [49 x i8] c"   -channel A -fx '%+lf*i %+lf*j %+lf*i*j %+lf;\0A\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"Distort/SparseColor\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"Polynomial\00", align 1
@.str.119 = private unnamed_addr constant [39 x i8] c"Invalid number of args: order [CPs]...\00", align 1
@.str.120 = private unnamed_addr constant [49 x i8] c"Invalid order, should be interger 1 to 5, or 1.5\00", align 1
@.str.121 = private unnamed_addr constant [34 x i8] c"%s : 'require at least %.20g CPs'\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"unknown method given\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"GenerateCoefficients\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"Affine\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"%s : 'Unsolvable Matrix'\00", align 1
@.str.126 = private unnamed_addr constant [28 x i8] c"%s : 'Needs 6 coeff values'\00", align 1
@.str.127 = private unnamed_addr constant [33 x i8] c"%s : 'Needs at least 1 argument'\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"%s : 'Too Many Arguments (7 or less)'\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"%s : 'Zero Scale Given'\00", align 1
@.str.130 = private unnamed_addr constant [34 x i8] c"%s : 'Needs 8 coefficient values'\00", align 1
@.str.131 = private unnamed_addr constant [27 x i8] c"%s : 'Arc Angle Too Small'\00", align 1
@.str.132 = private unnamed_addr constant [30 x i8] c"%s : 'Outer Radius Too Small'\00", align 1
@.str.133 = private unnamed_addr constant [25 x i8] c"%s : number of arguments\00", align 1
@.str.134 = private unnamed_addr constant [20 x i8] c"%s : Invalid Radius\00", align 1
@.str.135 = private unnamed_addr constant [23 x i8] c"%s : Invalid FOV Angle\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"%s : 'requires CP's (4 numbers each)'\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"shepards:power\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"-define shepards:power\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"no method handler\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"*ii\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"*jj\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"*ii*jj\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"*ii*ii\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"*jj*jj\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"*ii*ii*ii\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"*ii*ii*jj\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"*ii*jj*jj\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"*jj*jj*jj\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"*ii*ii*ii*ii\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"*ii*ii*ii*jj\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"*ii*ii*jj*jj\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"*ii*jj*jj*jj\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"*jj*jj*jj*jj\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*ii*ii\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*ii*jj\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"*ii*ii*ii*jj*jj\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"*ii*ii*jj*jj*jj\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"*ii*jj*jj*jj*jj\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"*jj*jj*jj*jj*jj\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@switch.table.DistortImage.162 = private unnamed_addr constant [21 x ptr] [ptr @.str.1, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159], align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @AffineTransformImage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [6 x double], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 308, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #14
  br label %11

11:                                               ; preds = %8, %3
  %12 = load double, ptr %1, align 8, !tbaa !53
  store double %12, ptr %4, align 16, !tbaa !55
  %13 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !56
  %15 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 1
  store double %14, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 2
  %17 = load double, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 2
  store double %17, ptr %18, align 16, !tbaa !55
  %19 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 3
  %20 = load double, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 3
  store double %20, ptr %21, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 4
  %23 = load double, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 4
  store double %23, ptr %24, align 16, !tbaa !55
  %25 = getelementptr inbounds %struct._AffineMatrix, ptr %1, i64 0, i32 5
  %26 = load double, ptr %25, align 8, !tbaa !60
  %27 = getelementptr inbounds [6 x double], ptr %4, i64 0, i64 5
  store double %26, ptr %27, align 8, !tbaa !55
  %28 = call ptr @DistortImage(ptr noundef %0, i32 noundef 2, i64 noundef 6, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #14
  ret ptr %28
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DistortImage(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._RectangleInfo, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca %struct._MagickPixelPacket, align 8
  %12 = alloca %struct._MagickPixelPacket, align 8
  %13 = alloca %struct._MagickPixelPacket, align 8
  store i32 %1, ptr %8, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1708, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #14
  br label %20

20:                                               ; preds = %17, %6
  %21 = icmp eq i32 %1, 17
  br i1 %21, label %22, label %33

22:                                               ; preds = %20
  %23 = icmp eq i64 %2, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1719, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #14
  br label %2436

26:                                               ; preds = %22
  %27 = load double, ptr %3, align 8, !tbaa !55
  %28 = fptoui double %27 to i64
  %29 = getelementptr inbounds double, ptr %3, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !55
  %31 = fptoui double %30 to i64
  %32 = tail call ptr @DistortResizeImage(ptr noundef %0, i64 noundef %28, i64 noundef %31, ptr noundef %5)
  br label %2436

33:                                               ; preds = %20
  %34 = call fastcc ptr @GenerateCoefficients(ptr noundef %0, ptr noundef nonnull %8, i64 noundef %2, ptr noundef %3, i64 noundef 0, ptr noundef %5)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %2436, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %38 = load i64, ptr %37, align 8, !tbaa !62
  store i64 %38, ptr %9, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !64
  %41 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 1
  store i64 %40, ptr %41, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 2
  %43 = getelementptr inbounds %struct._RectangleInfo, ptr %9, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %44 = load i32, ptr %8, align 4, !tbaa !61
  %45 = icmp eq i32 %44, 9
  %46 = select i1 %45, i32 1, i32 %4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %503, label %48

48:                                               ; preds = %36
  switch i32 %44, label %479 [
    i32 1, label %49
    i32 4, label %138
    i32 9, label %289
    i32 10, label %394
    i32 11, label %414
    i32 12, label %436
    i32 13, label %462
  ]

49:                                               ; preds = %48
  %50 = load double, ptr %34, align 8, !tbaa !55
  %51 = getelementptr inbounds double, ptr %34, i64 4
  %52 = load double, ptr %51, align 8, !tbaa !55
  %53 = getelementptr inbounds double, ptr %34, i64 1
  %54 = load double, ptr %53, align 8, !tbaa !55
  %55 = getelementptr inbounds double, ptr %34, i64 3
  %56 = load double, ptr %55, align 8, !tbaa !55
  %57 = fneg double %54
  %58 = fmul double %56, %57
  %59 = tail call double @llvm.fmuladd.f64(double %50, double %52, double %58)
  %60 = fcmp olt double %59, 0.000000e+00
  %61 = select i1 %60, double -1.000000e+00, double 1.000000e+00
  %62 = fmul double %59, %61
  %63 = fcmp ult double %62, 1.000000e-15
  %64 = fdiv double 1.000000e+00, %59
  %65 = fdiv double %61, 1.000000e-15
  %66 = select i1 %63, double %65, double %64
  %67 = fmul double %52, %66
  %68 = fmul double %66, %57
  %69 = getelementptr inbounds double, ptr %34, i64 5
  %70 = load double, ptr %69, align 8, !tbaa !55
  %71 = getelementptr inbounds double, ptr %34, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !55
  %73 = fneg double %72
  %74 = fmul double %52, %73
  %75 = tail call double @llvm.fmuladd.f64(double %54, double %70, double %74)
  %76 = fmul double %75, %66
  %77 = fneg double %56
  %78 = fmul double %66, %77
  %79 = fmul double %50, %66
  %80 = fneg double %50
  %81 = fmul double %70, %80
  %82 = tail call double @llvm.fmuladd.f64(double %72, double %56, double %81)
  %83 = fmul double %82, %66
  %84 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !66
  %86 = sitofp i64 %85 to double
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %88 = load i64, ptr %87, align 8, !tbaa !67
  %89 = sitofp i64 %88 to double
  %90 = fmul double %68, %89
  %91 = tail call double @llvm.fmuladd.f64(double %67, double %86, double %90)
  %92 = fadd double %76, %91
  %93 = fmul double %79, %89
  %94 = tail call double @llvm.fmuladd.f64(double %78, double %86, double %93)
  %95 = fadd double %83, %94
  %96 = uitofp i64 %38 to double
  %97 = fadd double %96, %86
  %98 = tail call double @llvm.fmuladd.f64(double %67, double %97, double %90)
  %99 = fadd double %76, %98
  %100 = tail call double @llvm.fmuladd.f64(double %78, double %97, double %93)
  %101 = fadd double %83, %100
  %102 = fcmp olt double %92, %99
  %103 = select i1 %102, double %92, double %99
  %104 = fcmp ogt double %92, %99
  %105 = select i1 %104, double %92, double %99
  %106 = fcmp olt double %95, %101
  %107 = select i1 %106, double %95, double %101
  %108 = fcmp ogt double %95, %101
  %109 = select i1 %108, double %95, double %101
  %110 = uitofp i64 %40 to double
  %111 = fadd double %110, %89
  %112 = fmul double %111, %68
  %113 = tail call double @llvm.fmuladd.f64(double %67, double %86, double %112)
  %114 = fadd double %76, %113
  %115 = fmul double %111, %79
  %116 = tail call double @llvm.fmuladd.f64(double %78, double %86, double %115)
  %117 = fadd double %83, %116
  %118 = fcmp olt double %103, %114
  %119 = select i1 %118, double %103, double %114
  %120 = fcmp ogt double %105, %114
  %121 = select i1 %120, double %105, double %114
  %122 = fcmp olt double %107, %117
  %123 = select i1 %122, double %107, double %117
  %124 = fcmp ogt double %109, %117
  %125 = select i1 %124, double %109, double %117
  %126 = tail call double @llvm.fmuladd.f64(double %67, double %97, double %112)
  %127 = fadd double %76, %126
  %128 = tail call double @llvm.fmuladd.f64(double %78, double %97, double %115)
  %129 = fadd double %83, %128
  %130 = fcmp olt double %119, %127
  %131 = select i1 %130, double %119, double %127
  %132 = fcmp ogt double %121, %127
  %133 = select i1 %132, double %121, double %127
  %134 = fcmp olt double %123, %129
  %135 = select i1 %134, double %123, double %129
  %136 = fcmp ogt double %125, %129
  %137 = select i1 %136, double %125, double %129
  br label %479

138:                                              ; preds = %48
  %139 = load double, ptr %34, align 8, !tbaa !55
  %140 = getelementptr inbounds double, ptr %34, i64 4
  %141 = load double, ptr %140, align 8, !tbaa !55
  %142 = getelementptr inbounds double, ptr %34, i64 3
  %143 = load double, ptr %142, align 8, !tbaa !55
  %144 = getelementptr inbounds double, ptr %34, i64 1
  %145 = load double, ptr %144, align 8, !tbaa !55
  %146 = fneg double %143
  %147 = fmul double %145, %146
  %148 = tail call double @llvm.fmuladd.f64(double %139, double %141, double %147)
  %149 = fcmp olt double %148, 0.000000e+00
  %150 = select i1 %149, double -1.000000e+00, double 1.000000e+00
  %151 = fmul double %148, %150
  %152 = fcmp ult double %151, 1.000000e-15
  %153 = fdiv double 1.000000e+00, %148
  %154 = fdiv double %150, 1.000000e-15
  %155 = select i1 %152, double %154, double %153
  %156 = getelementptr inbounds double, ptr %34, i64 7
  %157 = load double, ptr %156, align 8, !tbaa !55
  %158 = getelementptr inbounds double, ptr %34, i64 5
  %159 = load double, ptr %158, align 8, !tbaa !55
  %160 = fneg double %157
  %161 = tail call double @llvm.fmuladd.f64(double %160, double %159, double %141)
  %162 = fmul double %161, %155
  %163 = getelementptr inbounds double, ptr %34, i64 2
  %164 = load double, ptr %163, align 8, !tbaa !55
  %165 = fneg double %145
  %166 = tail call double @llvm.fmuladd.f64(double %157, double %164, double %165)
  %167 = fmul double %166, %155
  %168 = fneg double %141
  %169 = fmul double %164, %168
  %170 = tail call double @llvm.fmuladd.f64(double %145, double %159, double %169)
  %171 = fmul double %170, %155
  %172 = getelementptr inbounds double, ptr %34, i64 6
  %173 = load double, ptr %172, align 8, !tbaa !55
  %174 = tail call double @llvm.fmuladd.f64(double %173, double %159, double %146)
  %175 = fmul double %174, %155
  %176 = fneg double %173
  %177 = tail call double @llvm.fmuladd.f64(double %176, double %164, double %139)
  %178 = fmul double %177, %155
  %179 = fneg double %139
  %180 = fmul double %159, %179
  %181 = tail call double @llvm.fmuladd.f64(double %143, double %164, double %180)
  %182 = fmul double %181, %155
  %183 = fmul double %141, %176
  %184 = tail call double @llvm.fmuladd.f64(double %143, double %157, double %183)
  %185 = fmul double %184, %155
  %186 = fmul double %157, %179
  %187 = tail call double @llvm.fmuladd.f64(double %173, double %145, double %186)
  %188 = fmul double %187, %155
  %189 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !66
  %191 = sitofp i64 %190 to double
  %192 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %193 = load i64, ptr %192, align 8, !tbaa !67
  %194 = sitofp i64 %193 to double
  %195 = fmul double %188, %194
  %196 = tail call double @llvm.fmuladd.f64(double %185, double %191, double %195)
  %197 = fadd double %196, 1.000000e+00
  %198 = fcmp olt double %197, 0.000000e+00
  %199 = select i1 %198, double -1.000000e+00, double 1.000000e+00
  %200 = fmul double %197, %199
  %201 = fcmp ult double %200, 1.000000e-15
  %202 = fdiv double 1.000000e+00, %197
  %203 = fdiv double %199, 1.000000e-15
  %204 = select i1 %201, double %203, double %202
  %205 = fmul double %167, %194
  %206 = tail call double @llvm.fmuladd.f64(double %162, double %191, double %205)
  %207 = fadd double %171, %206
  %208 = fmul double %207, %204
  %209 = fmul double %178, %194
  %210 = tail call double @llvm.fmuladd.f64(double %175, double %191, double %209)
  %211 = fadd double %182, %210
  %212 = fmul double %211, %204
  %213 = uitofp i64 %38 to double
  %214 = fadd double %213, %191
  %215 = tail call double @llvm.fmuladd.f64(double %185, double %214, double %195)
  %216 = fadd double %215, 1.000000e+00
  %217 = fcmp olt double %216, 0.000000e+00
  %218 = select i1 %217, double -1.000000e+00, double 1.000000e+00
  %219 = fmul double %216, %218
  %220 = fcmp ult double %219, 1.000000e-15
  %221 = fdiv double 1.000000e+00, %216
  %222 = fdiv double %218, 1.000000e-15
  %223 = select i1 %220, double %222, double %221
  %224 = tail call double @llvm.fmuladd.f64(double %162, double %214, double %205)
  %225 = fadd double %171, %224
  %226 = fmul double %225, %223
  %227 = tail call double @llvm.fmuladd.f64(double %175, double %214, double %209)
  %228 = fadd double %182, %227
  %229 = fmul double %228, %223
  %230 = fcmp olt double %208, %226
  %231 = select i1 %230, double %208, double %226
  %232 = fcmp ogt double %208, %226
  %233 = select i1 %232, double %208, double %226
  %234 = fcmp olt double %212, %229
  %235 = select i1 %234, double %212, double %229
  %236 = fcmp ogt double %212, %229
  %237 = select i1 %236, double %212, double %229
  %238 = uitofp i64 %40 to double
  %239 = fadd double %238, %194
  %240 = fmul double %188, %239
  %241 = tail call double @llvm.fmuladd.f64(double %185, double %191, double %240)
  %242 = fadd double %241, 1.000000e+00
  %243 = fcmp olt double %242, 0.000000e+00
  %244 = select i1 %243, double -1.000000e+00, double 1.000000e+00
  %245 = fmul double %242, %244
  %246 = fcmp ult double %245, 1.000000e-15
  %247 = fdiv double 1.000000e+00, %242
  %248 = fdiv double %244, 1.000000e-15
  %249 = select i1 %246, double %248, double %247
  %250 = fmul double %167, %239
  %251 = tail call double @llvm.fmuladd.f64(double %162, double %191, double %250)
  %252 = fadd double %171, %251
  %253 = fmul double %252, %249
  %254 = fmul double %178, %239
  %255 = tail call double @llvm.fmuladd.f64(double %175, double %191, double %254)
  %256 = fadd double %182, %255
  %257 = fmul double %256, %249
  %258 = fcmp olt double %231, %253
  %259 = select i1 %258, double %231, double %253
  %260 = fcmp ogt double %233, %253
  %261 = select i1 %260, double %233, double %253
  %262 = fcmp olt double %235, %257
  %263 = select i1 %262, double %235, double %257
  %264 = fcmp ogt double %237, %257
  %265 = select i1 %264, double %237, double %257
  %266 = tail call double @llvm.fmuladd.f64(double %185, double %214, double %240)
  %267 = fadd double %266, 1.000000e+00
  %268 = fcmp olt double %267, 0.000000e+00
  %269 = select i1 %268, double -1.000000e+00, double 1.000000e+00
  %270 = fmul double %267, %269
  %271 = fcmp ult double %270, 1.000000e-15
  %272 = fdiv double 1.000000e+00, %267
  %273 = fdiv double %269, 1.000000e-15
  %274 = select i1 %271, double %273, double %272
  %275 = tail call double @llvm.fmuladd.f64(double %162, double %214, double %250)
  %276 = fadd double %171, %275
  %277 = fmul double %276, %274
  %278 = tail call double @llvm.fmuladd.f64(double %175, double %214, double %254)
  %279 = fadd double %182, %278
  %280 = fmul double %279, %274
  %281 = fcmp olt double %259, %277
  %282 = select i1 %281, double %259, double %277
  %283 = fcmp ogt double %261, %277
  %284 = select i1 %283, double %261, double %277
  %285 = fcmp olt double %263, %280
  %286 = select i1 %285, double %263, double %280
  %287 = fcmp ogt double %265, %280
  %288 = select i1 %287, double %265, double %280
  br label %479

289:                                              ; preds = %48
  %290 = load double, ptr %34, align 8, !tbaa !55
  %291 = getelementptr inbounds double, ptr %34, i64 1
  %292 = load double, ptr %291, align 8, !tbaa !55
  %293 = fmul double %292, 5.000000e-01
  %294 = fsub double %290, %293
  %295 = tail call double @cos(double noundef %294) #14
  %296 = tail call double @sin(double noundef %294) #14
  %297 = getelementptr inbounds double, ptr %34, i64 2
  %298 = load double, ptr %297, align 8, !tbaa !55
  %299 = fmul double %295, %298
  %300 = fmul double %296, %298
  %301 = getelementptr inbounds double, ptr %34, i64 3
  %302 = load double, ptr %301, align 8, !tbaa !55
  %303 = fsub double %298, %302
  %304 = fmul double %295, %303
  %305 = fmul double %296, %303
  %306 = fcmp olt double %299, %304
  %307 = select i1 %306, double %299, double %304
  %308 = fcmp ogt double %299, %304
  %309 = select i1 %308, double %299, double %304
  %310 = fcmp olt double %300, %305
  %311 = select i1 %310, double %300, double %305
  %312 = fcmp ogt double %300, %305
  %313 = select i1 %312, double %300, double %305
  %314 = load double, ptr %34, align 8, !tbaa !55
  %315 = load double, ptr %291, align 8, !tbaa !55
  %316 = fmul double %315, 5.000000e-01
  %317 = fadd double %314, %316
  %318 = tail call double @cos(double noundef %317) #14
  %319 = tail call double @sin(double noundef %317) #14
  %320 = load double, ptr %297, align 8, !tbaa !55
  %321 = fmul double %318, %320
  %322 = fmul double %319, %320
  %323 = fcmp olt double %307, %321
  %324 = select i1 %323, double %307, double %321
  %325 = fcmp ogt double %309, %321
  %326 = select i1 %325, double %309, double %321
  %327 = fcmp olt double %311, %322
  %328 = select i1 %327, double %311, double %322
  %329 = fcmp ogt double %313, %322
  %330 = select i1 %329, double %313, double %322
  %331 = load double, ptr %301, align 8, !tbaa !55
  %332 = fsub double %320, %331
  %333 = fmul double %318, %332
  %334 = fmul double %319, %332
  %335 = fcmp olt double %324, %333
  %336 = select i1 %335, double %324, double %333
  %337 = fcmp ogt double %326, %333
  %338 = select i1 %337, double %326, double %333
  %339 = fcmp olt double %328, %334
  %340 = select i1 %339, double %328, double %334
  %341 = fcmp ogt double %330, %334
  %342 = select i1 %341, double %330, double %334
  %343 = load double, ptr %34, align 8, !tbaa !55
  %344 = load double, ptr %291, align 8, !tbaa !55
  %345 = fmul double %344, 5.000000e-01
  %346 = fsub double %343, %345
  %347 = fdiv double %346, 0x3FF921FB54442D18
  %348 = tail call double @llvm.ceil.f64(double %347)
  %349 = fmul double %348, 0x3FF921FB54442D18
  %350 = load double, ptr %34, align 8, !tbaa !55
  %351 = load double, ptr %291, align 8, !tbaa !55
  %352 = fmul double %351, 5.000000e-01
  %353 = fadd double %350, %352
  %354 = fcmp olt double %349, %353
  br i1 %354, label %355, label %380

355:                                              ; preds = %289, %355
  %356 = phi double [ %371, %355 ], [ %340, %289 ]
  %357 = phi double [ %367, %355 ], [ %336, %289 ]
  %358 = phi double [ %373, %355 ], [ %342, %289 ]
  %359 = phi double [ %369, %355 ], [ %338, %289 ]
  %360 = phi double [ %374, %355 ], [ %349, %289 ]
  %361 = tail call double @cos(double noundef %360) #14
  %362 = tail call double @sin(double noundef %360) #14
  %363 = load double, ptr %297, align 8, !tbaa !55
  %364 = fmul double %361, %363
  %365 = fmul double %362, %363
  %366 = fcmp olt double %357, %364
  %367 = select i1 %366, double %357, double %364
  %368 = fcmp ogt double %359, %364
  %369 = select i1 %368, double %359, double %364
  %370 = fcmp olt double %356, %365
  %371 = select i1 %370, double %356, double %365
  %372 = fcmp ogt double %358, %365
  %373 = select i1 %372, double %358, double %365
  %374 = fadd double %360, 0x3FF921FB54442D18
  %375 = load double, ptr %34, align 8, !tbaa !55
  %376 = load double, ptr %291, align 8, !tbaa !55
  %377 = fmul double %376, 5.000000e-01
  %378 = fadd double %375, %377
  %379 = fcmp olt double %374, %378
  br i1 %379, label %355, label %380, !llvm.loop !68

380:                                              ; preds = %355, %289
  %381 = phi double [ %338, %289 ], [ %369, %355 ]
  %382 = phi double [ %342, %289 ], [ %373, %355 ]
  %383 = phi double [ %336, %289 ], [ %367, %355 ]
  %384 = phi double [ %340, %289 ], [ %371, %355 ]
  %385 = phi double [ %351, %289 ], [ %376, %355 ]
  %386 = load i64, ptr %37, align 8, !tbaa !62
  %387 = uitofp i64 %386 to double
  %388 = fmul double %387, 0x401921FB54442D18
  %389 = fdiv double %388, %385
  store double %389, ptr %291, align 8, !tbaa !55
  %390 = load i64, ptr %39, align 8, !tbaa !64
  %391 = uitofp i64 %390 to double
  %392 = load double, ptr %301, align 8, !tbaa !55
  %393 = fdiv double %391, %392
  store double %393, ptr %301, align 8, !tbaa !55
  br label %479

394:                                              ; preds = %48
  %395 = icmp ult i64 %2, 2
  br i1 %395, label %396, label %398

396:                                              ; preds = %394
  %397 = getelementptr inbounds double, ptr %34, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %397, i8 0, i64 16, i1 false)
  br label %398

398:                                              ; preds = %396, %394
  %399 = getelementptr inbounds double, ptr %34, i64 2
  %400 = load double, ptr %399, align 8, !tbaa !55
  %401 = load double, ptr %34, align 8, !tbaa !55
  %402 = fsub double %400, %401
  %403 = fadd double %400, %401
  %404 = getelementptr inbounds double, ptr %34, i64 3
  %405 = load double, ptr %404, align 8, !tbaa !55
  %406 = fsub double %405, %401
  %407 = fadd double %401, %405
  %408 = uitofp i64 %40 to double
  %409 = getelementptr inbounds double, ptr %34, i64 1
  %410 = load double, ptr %409, align 8, !tbaa !55
  %411 = fsub double %401, %410
  %412 = fdiv double %408, %411
  %413 = getelementptr inbounds double, ptr %34, i64 7
  store double %412, ptr %413, align 8, !tbaa !55
  br label %479

414:                                              ; preds = %48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %415 = load double, ptr %34, align 8, !tbaa !55
  %416 = getelementptr inbounds double, ptr %34, i64 1
  %417 = load double, ptr %416, align 8, !tbaa !55
  %418 = fsub double %415, %417
  %419 = tail call double @llvm.ceil.f64(double %418)
  %420 = fptoui double %419 to i64
  store i64 %420, ptr %41, align 8, !tbaa !65
  %421 = getelementptr inbounds double, ptr %34, i64 5
  %422 = load double, ptr %421, align 8, !tbaa !55
  %423 = getelementptr inbounds double, ptr %34, i64 4
  %424 = load double, ptr %423, align 8, !tbaa !55
  %425 = fsub double %422, %424
  %426 = fmul double %418, %425
  %427 = fmul double %426, 5.000000e-01
  %428 = tail call double @llvm.ceil.f64(double %427)
  %429 = fptoui double %428 to i64
  store i64 %429, ptr %9, align 8, !tbaa !63
  %430 = uitofp i64 %429 to double
  %431 = fdiv double %425, %430
  %432 = getelementptr inbounds double, ptr %34, i64 6
  store double %431, ptr %432, align 8, !tbaa !55
  %433 = uitofp i64 %420 to double
  %434 = fdiv double %418, %433
  %435 = getelementptr inbounds double, ptr %34, i64 7
  store double %434, ptr %435, align 8, !tbaa !55
  br label %479

436:                                              ; preds = %48
  %437 = getelementptr inbounds double, ptr %34, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %438 = load double, ptr %437, align 8, !tbaa !55
  %439 = fmul double %438, 2.000000e+00
  %440 = load double, ptr %34, align 8, !tbaa !55
  %441 = fmul double %440, 5.000000e-01
  %442 = tail call double @tan(double noundef %441) #14
  %443 = fmul double %439, %442
  %444 = tail call double @llvm.ceil.f64(double %443)
  %445 = fptoui double %444 to i64
  store i64 %445, ptr %9, align 8, !tbaa !63
  %446 = getelementptr inbounds double, ptr %34, i64 3
  %447 = load double, ptr %446, align 8, !tbaa !55
  %448 = fmul double %447, 2.000000e+00
  %449 = load double, ptr %34, align 8, !tbaa !55
  %450 = fmul double %449, 5.000000e-01
  %451 = tail call double @cos(double noundef %450) #14
  %452 = fdiv double %448, %451
  %453 = tail call double @llvm.ceil.f64(double %452)
  %454 = fptoui double %453 to i64
  store i64 %454, ptr %41, align 8, !tbaa !65
  %455 = load i64, ptr %9, align 8, !tbaa !63
  %456 = uitofp i64 %455 to double
  %457 = fmul double %456, 5.000000e-01
  %458 = getelementptr inbounds double, ptr %34, i64 4
  store double %457, ptr %458, align 8, !tbaa !55
  %459 = uitofp i64 %454 to double
  %460 = fmul double %459, 5.000000e-01
  %461 = getelementptr inbounds double, ptr %34, i64 5
  store double %460, ptr %461, align 8, !tbaa !55
  br label %479

462:                                              ; preds = %48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  %463 = load double, ptr %34, align 8, !tbaa !55
  %464 = getelementptr inbounds double, ptr %34, i64 1
  %465 = load double, ptr %464, align 8, !tbaa !55
  %466 = fmul double %463, %465
  %467 = tail call double @llvm.ceil.f64(double %466)
  %468 = fptoui double %467 to i64
  store i64 %468, ptr %9, align 8, !tbaa !63
  %469 = getelementptr inbounds double, ptr %34, i64 3
  %470 = load double, ptr %469, align 8, !tbaa !55
  %471 = fmul double %470, 2.000000e+00
  %472 = fptoui double %471 to i64
  store i64 %472, ptr %41, align 8, !tbaa !65
  %473 = uitofp i64 %468 to double
  %474 = fmul double %473, 5.000000e-01
  %475 = getelementptr inbounds double, ptr %34, i64 4
  store double %474, ptr %475, align 8, !tbaa !55
  %476 = uitofp i64 %472 to double
  %477 = fmul double %476, 5.000000e-01
  %478 = getelementptr inbounds double, ptr %34, i64 5
  store double %477, ptr %478, align 8, !tbaa !55
  br label %479

479:                                              ; preds = %48, %462, %436, %414, %398, %380, %138, %49
  %480 = phi i1 [ true, %462 ], [ true, %436 ], [ true, %414 ], [ false, %398 ], [ false, %380 ], [ false, %138 ], [ false, %49 ], [ true, %48 ]
  %481 = phi double [ 0.000000e+00, %462 ], [ 0.000000e+00, %436 ], [ 0.000000e+00, %414 ], [ %403, %398 ], [ %381, %380 ], [ %284, %138 ], [ %133, %49 ], [ 0.000000e+00, %48 ]
  %482 = phi double [ 0.000000e+00, %462 ], [ 0.000000e+00, %436 ], [ 0.000000e+00, %414 ], [ %407, %398 ], [ %382, %380 ], [ %288, %138 ], [ %137, %49 ], [ 0.000000e+00, %48 ]
  %483 = phi double [ 0.000000e+00, %462 ], [ 0.000000e+00, %436 ], [ 0.000000e+00, %414 ], [ %402, %398 ], [ %383, %380 ], [ %282, %138 ], [ %131, %49 ], [ 0.000000e+00, %48 ]
  %484 = phi double [ 0.000000e+00, %462 ], [ 0.000000e+00, %436 ], [ 0.000000e+00, %414 ], [ %406, %398 ], [ %384, %380 ], [ %286, %138 ], [ %135, %49 ], [ 0.000000e+00, %48 ]
  %485 = phi i32 [ %46, %462 ], [ %46, %436 ], [ %46, %414 ], [ %46, %398 ], [ %46, %380 ], [ %46, %138 ], [ %46, %49 ], [ 0, %48 ]
  br i1 %480, label %503, label %486

486:                                              ; preds = %479
  %487 = fadd double %483, -5.000000e-01
  %488 = tail call double @llvm.floor.f64(double %487)
  %489 = fptosi double %488 to i64
  store i64 %489, ptr %42, align 8, !tbaa !71
  %490 = fadd double %484, -5.000000e-01
  %491 = tail call double @llvm.floor.f64(double %490)
  %492 = fptosi double %491 to i64
  store i64 %492, ptr %43, align 8, !tbaa !72
  %493 = sitofp i64 %489 to double
  %494 = fsub double %481, %493
  %495 = fadd double %494, 5.000000e-01
  %496 = tail call double @llvm.ceil.f64(double %495)
  %497 = fptoui double %496 to i64
  store i64 %497, ptr %9, align 8, !tbaa !63
  %498 = sitofp i64 %492 to double
  %499 = fsub double %482, %498
  %500 = fadd double %499, 5.000000e-01
  %501 = tail call double @llvm.ceil.f64(double %500)
  %502 = fptoui double %501 to i64
  store i64 %502, ptr %41, align 8, !tbaa !65
  br label %503

503:                                              ; preds = %479, %486, %36
  %504 = phi i32 [ 0, %36 ], [ %485, %486 ], [ %485, %479 ]
  %505 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.7) #14
  %506 = icmp eq ptr %505, null
  br i1 %506, label %512, label %507

507:                                              ; preds = %503
  %508 = call i32 @ParseAbsoluteGeometry(ptr noundef nonnull %505, ptr noundef nonnull %9) #14
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %507
  %511 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1968, i32 noundef 310, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull %505) #14
  br label %512

512:                                              ; preds = %510, %507, %503
  %513 = phi i32 [ 0, %503 ], [ 0, %510 ], [ 1, %507 ]
  %514 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.10) #14
  %515 = icmp eq ptr %514, null
  br i1 %515, label %1132, label %516

516:                                              ; preds = %512
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %10) #14
  %517 = or i32 %513, %504
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %529, label %519

519:                                              ; preds = %516
  %520 = load i64, ptr %9, align 8, !tbaa !63
  %521 = uitofp i64 %520 to double
  %522 = load i64, ptr %41, align 8, !tbaa !65
  %523 = uitofp i64 %522 to double
  %524 = load i64, ptr %42, align 8, !tbaa !71
  %525 = sitofp i64 %524 to double
  %526 = load i64, ptr %43, align 8, !tbaa !72
  %527 = sitofp i64 %526 to double
  %528 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %10, i64 noundef 4096, ptr noundef nonnull @.str.11, double noundef %521, double noundef %523, double noundef %525, double noundef %527) #14
  br label %530

529:                                              ; preds = %516
  store i8 0, ptr %10, align 16, !tbaa !73
  br label %530

530:                                              ; preds = %529, %519
  %531 = phi ptr [ @.str.12, %519 ], [ @.str.13, %529 ]
  switch i32 %44, label %1127 [
    i32 1, label %532
    i32 4, label %625
    i32 6, label %696
    i32 7, label %768
    i32 8, label %796
    i32 9, label %864
    i32 10, label %903
    i32 11, label %951
    i32 12, label %990
    i32 13, label %1023
    i32 14, label %1056
    i32 15, label %1056
  ]

532:                                              ; preds = %530
  %533 = call dereferenceable_or_null(48) ptr @AcquireQuantumMemory(i64 noundef 6, i64 noundef 8) #15
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %538

535:                                              ; preds = %532
  %536 = call ptr @RelinquishMagickMemory(ptr noundef %34) #14
  %537 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2003, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15) #14
  br label %623

538:                                              ; preds = %532
  %539 = load double, ptr %34, align 8, !tbaa !55
  %540 = getelementptr inbounds double, ptr %34, i64 4
  %541 = load double, ptr %540, align 8, !tbaa !55
  %542 = getelementptr inbounds double, ptr %34, i64 1
  %543 = load double, ptr %542, align 8, !tbaa !55
  %544 = getelementptr inbounds double, ptr %34, i64 3
  %545 = load double, ptr %544, align 8, !tbaa !55
  %546 = fneg double %543
  %547 = fmul double %545, %546
  %548 = call double @llvm.fmuladd.f64(double %539, double %541, double %547)
  %549 = fcmp olt double %548, 0.000000e+00
  %550 = select i1 %549, double -1.000000e+00, double 1.000000e+00
  %551 = fmul double %548, %550
  %552 = fcmp ult double %551, 1.000000e-15
  %553 = fdiv double 1.000000e+00, %548
  %554 = fdiv double %550, 1.000000e-15
  %555 = select i1 %552, double %554, double %553
  %556 = fmul double %541, %555
  store double %556, ptr %533, align 8, !tbaa !55
  %557 = load double, ptr %542, align 8, !tbaa !55
  %558 = fneg double %557
  %559 = fmul double %555, %558
  %560 = getelementptr inbounds double, ptr %533, i64 1
  store double %559, ptr %560, align 8, !tbaa !55
  %561 = load double, ptr %542, align 8, !tbaa !55
  %562 = getelementptr inbounds double, ptr %34, i64 5
  %563 = load double, ptr %562, align 8, !tbaa !55
  %564 = getelementptr inbounds double, ptr %34, i64 2
  %565 = load double, ptr %564, align 8, !tbaa !55
  %566 = load double, ptr %540, align 8, !tbaa !55
  %567 = fneg double %565
  %568 = fmul double %566, %567
  %569 = call double @llvm.fmuladd.f64(double %561, double %563, double %568)
  %570 = fmul double %555, %569
  %571 = getelementptr inbounds double, ptr %533, i64 2
  store double %570, ptr %571, align 8, !tbaa !55
  %572 = load double, ptr %544, align 8, !tbaa !55
  %573 = fneg double %572
  %574 = fmul double %555, %573
  %575 = getelementptr inbounds double, ptr %533, i64 3
  store double %574, ptr %575, align 8, !tbaa !55
  %576 = load double, ptr %34, align 8, !tbaa !55
  %577 = fmul double %555, %576
  %578 = getelementptr inbounds double, ptr %533, i64 4
  store double %577, ptr %578, align 8, !tbaa !55
  %579 = load double, ptr %564, align 8, !tbaa !55
  %580 = load double, ptr %544, align 8, !tbaa !55
  %581 = load double, ptr %34, align 8, !tbaa !55
  %582 = load double, ptr %562, align 8, !tbaa !55
  %583 = fneg double %581
  %584 = fmul double %582, %583
  %585 = call double @llvm.fmuladd.f64(double %579, double %580, double %584)
  %586 = fmul double %555, %585
  %587 = getelementptr inbounds double, ptr %533, i64 5
  store double %586, ptr %587, align 8, !tbaa !55
  store double %574, ptr %560, align 8, !tbaa !55
  store double %559, ptr %571, align 8, !tbaa !55
  store double %577, ptr %575, align 8, !tbaa !55
  store double %570, ptr %578, align 8, !tbaa !55
  %588 = load ptr, ptr @stderr, align 8, !tbaa !74
  %589 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %588, ptr noundef nonnull @.str.16) #14
  %590 = load ptr, ptr @stderr, align 8, !tbaa !74
  %591 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %590, ptr noundef nonnull @.str.17) #14
  br label %592

592:                                              ; preds = %538, %592
  %593 = phi i64 [ 0, %538 ], [ %598, %592 ]
  %594 = load ptr, ptr @stderr, align 8, !tbaa !74
  %595 = getelementptr inbounds double, ptr %533, i64 %593
  %596 = load double, ptr %595, align 8, !tbaa !55
  %597 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %594, ptr noundef nonnull @.str.18, double noundef %596) #14
  %598 = add nuw nsw i64 %593, 1
  %599 = icmp eq i64 %598, 5
  br i1 %599, label %600, label %592, !llvm.loop !75

600:                                              ; preds = %592
  %601 = load ptr, ptr @stderr, align 8, !tbaa !74
  %602 = load double, ptr %587, align 8, !tbaa !55
  %603 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %601, ptr noundef nonnull @.str.19, double noundef %602) #14
  %604 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %533) #14
  %605 = load ptr, ptr @stderr, align 8, !tbaa !74
  %606 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %605, ptr noundef nonnull @.str.20) #14
  %607 = load ptr, ptr @stderr, align 8, !tbaa !74
  %608 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %607, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %609 = load ptr, ptr @stderr, align 8, !tbaa !74
  %610 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %609, ptr noundef nonnull @.str.21) #14
  %611 = load ptr, ptr @stderr, align 8, !tbaa !74
  %612 = load double, ptr %34, align 8, !tbaa !55
  %613 = load double, ptr %542, align 8, !tbaa !55
  %614 = load double, ptr %564, align 8, !tbaa !55
  %615 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %611, ptr noundef nonnull @.str.22, double noundef %612, double noundef %613, double noundef %614) #14
  %616 = load ptr, ptr @stderr, align 8, !tbaa !74
  %617 = load double, ptr %544, align 8, !tbaa !55
  %618 = load double, ptr %540, align 8, !tbaa !55
  %619 = load double, ptr %562, align 8, !tbaa !55
  %620 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %616, ptr noundef nonnull @.str.23, double noundef %617, double noundef %618, double noundef %619) #14
  %621 = load ptr, ptr @stderr, align 8, !tbaa !74
  %622 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %621, ptr noundef nonnull @.str.24, ptr noundef nonnull %531) #14
  br label %623

623:                                              ; preds = %600, %535
  %624 = phi ptr [ %536, %535 ], [ %34, %600 ]
  br i1 %534, label %1129, label %1127

625:                                              ; preds = %530
  %626 = call dereferenceable_or_null(64) ptr @AcquireQuantumMemory(i64 noundef 8, i64 noundef 8) #15
  %627 = icmp eq ptr %626, null
  br i1 %627, label %628, label %631

628:                                              ; preds = %625
  %629 = call ptr @RelinquishMagickMemory(ptr noundef %34) #14
  %630 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2036, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #14
  br label %694

631:                                              ; preds = %625
  call fastcc void @InvertPerspectiveCoefficients(ptr noundef %34, ptr noundef nonnull %626)
  %632 = load ptr, ptr @stderr, align 8, !tbaa !74
  %633 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %632, ptr noundef nonnull @.str.26) #14
  %634 = load ptr, ptr @stderr, align 8, !tbaa !74
  %635 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %634, ptr noundef nonnull @.str.27) #14
  br label %636

636:                                              ; preds = %631, %636
  %637 = phi i64 [ 0, %631 ], [ %642, %636 ]
  %638 = load ptr, ptr @stderr, align 8, !tbaa !74
  %639 = getelementptr inbounds double, ptr %626, i64 %637
  %640 = load double, ptr %639, align 8, !tbaa !55
  %641 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %638, ptr noundef nonnull @.str.28, double noundef %640) #14
  %642 = add nuw nsw i64 %637, 1
  %643 = icmp eq i64 %642, 4
  br i1 %643, label %644, label %636, !llvm.loop !76

644:                                              ; preds = %636
  %645 = load ptr, ptr @stderr, align 8, !tbaa !74
  %646 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %645, ptr noundef nonnull @.str.29) #14
  br label %647

647:                                              ; preds = %644, %647
  %648 = phi i64 [ %653, %647 ], [ 4, %644 ]
  %649 = load ptr, ptr @stderr, align 8, !tbaa !74
  %650 = getelementptr inbounds double, ptr %626, i64 %648
  %651 = load double, ptr %650, align 8, !tbaa !55
  %652 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %649, ptr noundef nonnull @.str.28, double noundef %651) #14
  %653 = add nuw nsw i64 %648, 1
  %654 = icmp eq i64 %653, 7
  br i1 %654, label %655, label %647, !llvm.loop !77

655:                                              ; preds = %647
  %656 = load ptr, ptr @stderr, align 8, !tbaa !74
  %657 = getelementptr inbounds double, ptr %626, i64 7
  %658 = load double, ptr %657, align 8, !tbaa !55
  %659 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %656, ptr noundef nonnull @.str.19, double noundef %658) #14
  %660 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %626) #14
  %661 = load ptr, ptr @stderr, align 8, !tbaa !74
  %662 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %661, ptr noundef nonnull @.str.30) #14
  %663 = load ptr, ptr @stderr, align 8, !tbaa !74
  %664 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %663, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %665 = load ptr, ptr @stderr, align 8, !tbaa !74
  %666 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %665, ptr noundef nonnull @.str.21) #14
  %667 = load ptr, ptr @stderr, align 8, !tbaa !74
  %668 = getelementptr inbounds double, ptr %34, i64 6
  %669 = load double, ptr %668, align 8, !tbaa !55
  %670 = getelementptr inbounds double, ptr %34, i64 7
  %671 = load double, ptr %670, align 8, !tbaa !55
  %672 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %667, ptr noundef nonnull @.str.31, double noundef %669, double noundef %671) #14
  %673 = load ptr, ptr @stderr, align 8, !tbaa !74
  %674 = load double, ptr %34, align 8, !tbaa !55
  %675 = getelementptr inbounds double, ptr %34, i64 1
  %676 = load double, ptr %675, align 8, !tbaa !55
  %677 = getelementptr inbounds double, ptr %34, i64 2
  %678 = load double, ptr %677, align 8, !tbaa !55
  %679 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %673, ptr noundef nonnull @.str.32, double noundef %674, double noundef %676, double noundef %678) #14
  %680 = load ptr, ptr @stderr, align 8, !tbaa !74
  %681 = getelementptr inbounds double, ptr %34, i64 3
  %682 = load double, ptr %681, align 8, !tbaa !55
  %683 = getelementptr inbounds double, ptr %34, i64 4
  %684 = load double, ptr %683, align 8, !tbaa !55
  %685 = getelementptr inbounds double, ptr %34, i64 5
  %686 = load double, ptr %685, align 8, !tbaa !55
  %687 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %680, ptr noundef nonnull @.str.33, double noundef %682, double noundef %684, double noundef %686) #14
  %688 = load ptr, ptr @stderr, align 8, !tbaa !74
  %689 = getelementptr inbounds double, ptr %34, i64 8
  %690 = load double, ptr %689, align 8, !tbaa !55
  %691 = fcmp olt double %690, 0.000000e+00
  %692 = select i1 %691, ptr @.str.35, ptr @.str.36
  %693 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %688, ptr noundef nonnull @.str.34, ptr noundef nonnull %692, ptr noundef nonnull %531) #14
  br label %694

694:                                              ; preds = %655, %628
  %695 = phi ptr [ %629, %628 ], [ %34, %655 ]
  br i1 %627, label %1129, label %1127

696:                                              ; preds = %530
  %697 = load ptr, ptr @stderr, align 8, !tbaa !74
  %698 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %697, ptr noundef nonnull @.str.37) #14
  %699 = load ptr, ptr @stderr, align 8, !tbaa !74
  %700 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %699, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %701 = load ptr, ptr @stderr, align 8, !tbaa !74
  %702 = load double, ptr %34, align 8, !tbaa !55
  %703 = getelementptr inbounds double, ptr %34, i64 1
  %704 = load double, ptr %703, align 8, !tbaa !55
  %705 = getelementptr inbounds double, ptr %34, i64 2
  %706 = load double, ptr %705, align 8, !tbaa !55
  %707 = getelementptr inbounds double, ptr %34, i64 3
  %708 = load double, ptr %707, align 8, !tbaa !55
  %709 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %701, ptr noundef nonnull @.str.38, double noundef %702, double noundef %704, double noundef %706, double noundef %708) #14
  %710 = load ptr, ptr @stderr, align 8, !tbaa !74
  %711 = getelementptr inbounds double, ptr %34, i64 4
  %712 = load double, ptr %711, align 8, !tbaa !55
  %713 = getelementptr inbounds double, ptr %34, i64 5
  %714 = load double, ptr %713, align 8, !tbaa !55
  %715 = getelementptr inbounds double, ptr %34, i64 6
  %716 = load double, ptr %715, align 8, !tbaa !55
  %717 = getelementptr inbounds double, ptr %34, i64 7
  %718 = load double, ptr %717, align 8, !tbaa !55
  %719 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %710, ptr noundef nonnull @.str.39, double noundef %712, double noundef %714, double noundef %716, double noundef %718) #14
  %720 = load ptr, ptr @stderr, align 8, !tbaa !74
  %721 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %720, ptr noundef nonnull @.str.40) #14
  %722 = load ptr, ptr @stderr, align 8, !tbaa !74
  %723 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %722, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %724 = load ptr, ptr @stderr, align 8, !tbaa !74
  %725 = load double, ptr %707, align 8, !tbaa !55
  %726 = fsub double 5.000000e-01, %725
  %727 = load double, ptr %717, align 8, !tbaa !55
  %728 = fsub double 5.000000e-01, %727
  %729 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %724, ptr noundef nonnull @.str.41, double noundef %726, double noundef %728) #14
  %730 = load ptr, ptr @stderr, align 8, !tbaa !74
  %731 = load double, ptr %715, align 8, !tbaa !55
  %732 = load double, ptr %705, align 8, !tbaa !55
  %733 = fneg double %732
  %734 = getelementptr inbounds double, ptr %34, i64 8
  %735 = load double, ptr %734, align 8, !tbaa !55
  %736 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %730, ptr noundef nonnull @.str.42, double noundef %731, double noundef %733, double noundef %735) #14
  %737 = getelementptr inbounds double, ptr %34, i64 9
  %738 = load double, ptr %737, align 8, !tbaa !55
  %739 = fcmp une double %738, 0.000000e+00
  %740 = load ptr, ptr @stderr, align 8, !tbaa !74
  %741 = load double, ptr %34, align 8, !tbaa !55
  br i1 %739, label %742, label %750

742:                                              ; preds = %696
  %743 = fmul double %738, -2.000000e+00
  %744 = load double, ptr %711, align 8, !tbaa !55
  %745 = fneg double %741
  %746 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %740, ptr noundef nonnull @.str.43, double noundef %743, double noundef %744, double noundef %745) #14
  %747 = load ptr, ptr @stderr, align 8, !tbaa !74
  %748 = load double, ptr %737, align 8, !tbaa !55
  %749 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %747, ptr noundef nonnull @.str.44, double noundef %748) #14
  br label %754

750:                                              ; preds = %696
  %751 = load double, ptr %711, align 8, !tbaa !55
  %752 = fneg double %751
  %753 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %740, ptr noundef nonnull @.str.45, double noundef %752, double noundef %741) #14
  br label %754

754:                                              ; preds = %750, %742
  %755 = load ptr, ptr @stderr, align 8, !tbaa !74
  %756 = load double, ptr %703, align 8, !tbaa !55
  %757 = fneg double %756
  %758 = load double, ptr %34, align 8, !tbaa !55
  %759 = load double, ptr %705, align 8, !tbaa !55
  %760 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %755, ptr noundef nonnull @.str.46, double noundef %757, double noundef %758, double noundef %759) #14
  %761 = load double, ptr %737, align 8, !tbaa !55
  %762 = fcmp une double %761, 0.000000e+00
  %763 = load ptr, ptr @stderr, align 8, !tbaa !74
  br i1 %762, label %764, label %766

764:                                              ; preds = %754
  %765 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %763, ptr noundef nonnull @.str.47, ptr noundef nonnull %531) #14
  br label %1127

766:                                              ; preds = %754
  %767 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %763, ptr noundef nonnull @.str.24, ptr noundef nonnull %531) #14
  br label %1127

768:                                              ; preds = %530
  %769 = load ptr, ptr @stderr, align 8, !tbaa !74
  %770 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %769, ptr noundef nonnull @.str.48) #14
  %771 = load ptr, ptr @stderr, align 8, !tbaa !74
  %772 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %771, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %773 = load ptr, ptr @stderr, align 8, !tbaa !74
  %774 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %773, ptr noundef nonnull @.str.21) #14
  %775 = load ptr, ptr @stderr, align 8, !tbaa !74
  %776 = load double, ptr %34, align 8, !tbaa !55
  %777 = getelementptr inbounds double, ptr %34, i64 1
  %778 = load double, ptr %777, align 8, !tbaa !55
  %779 = getelementptr inbounds double, ptr %34, i64 2
  %780 = load double, ptr %779, align 8, !tbaa !55
  %781 = getelementptr inbounds double, ptr %34, i64 3
  %782 = load double, ptr %781, align 8, !tbaa !55
  %783 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %775, ptr noundef nonnull @.str.49, double noundef %776, double noundef %778, double noundef %780, double noundef %782) #14
  %784 = load ptr, ptr @stderr, align 8, !tbaa !74
  %785 = getelementptr inbounds double, ptr %34, i64 4
  %786 = load double, ptr %785, align 8, !tbaa !55
  %787 = getelementptr inbounds double, ptr %34, i64 5
  %788 = load double, ptr %787, align 8, !tbaa !55
  %789 = getelementptr inbounds double, ptr %34, i64 6
  %790 = load double, ptr %789, align 8, !tbaa !55
  %791 = getelementptr inbounds double, ptr %34, i64 7
  %792 = load double, ptr %791, align 8, !tbaa !55
  %793 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %784, ptr noundef nonnull @.str.50, double noundef %786, double noundef %788, double noundef %790, double noundef %792) #14
  %794 = load ptr, ptr @stderr, align 8, !tbaa !74
  %795 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %794, ptr noundef nonnull @.str.24, ptr noundef nonnull %531) #14
  br label %1127

796:                                              ; preds = %530
  %797 = getelementptr inbounds double, ptr %34, i64 1
  %798 = load double, ptr %797, align 8, !tbaa !55
  %799 = fptoui double %798 to i64
  %800 = load ptr, ptr @stderr, align 8, !tbaa !74
  %801 = load double, ptr %34, align 8, !tbaa !55
  %802 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %800, ptr noundef nonnull @.str.51, double noundef %801, i64 noundef %799) #14
  %803 = load ptr, ptr @stderr, align 8, !tbaa !74
  %804 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %803, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %805 = load ptr, ptr @stderr, align 8, !tbaa !74
  %806 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %805, ptr noundef nonnull @.str.21) #14
  %807 = load ptr, ptr @stderr, align 8, !tbaa !74
  %808 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %807, ptr noundef nonnull @.str.52) #14
  %809 = getelementptr double, ptr %34, i64 2
  %810 = icmp sgt i64 %799, 0
  br i1 %810, label %811, label %833

811:                                              ; preds = %796, %828
  %812 = phi i64 [ %831, %828 ], [ 0, %796 ]
  %813 = icmp ne i64 %812, 0
  %814 = and i64 %812, 3
  %815 = icmp eq i64 %814, 0
  %816 = and i1 %813, %815
  br i1 %816, label %817, label %820

817:                                              ; preds = %811
  %818 = load ptr, ptr @stderr, align 8, !tbaa !74
  %819 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %818, ptr noundef nonnull @.str.53) #14
  br label %820

820:                                              ; preds = %817, %811
  %821 = load ptr, ptr @stderr, align 8, !tbaa !74
  %822 = getelementptr double, ptr %809, i64 %812
  %823 = load double, ptr %822, align 8, !tbaa !55
  %824 = icmp ult i64 %812, 21
  br i1 %824, label %825, label %828

825:                                              ; preds = %820
  %826 = getelementptr inbounds [21 x ptr], ptr @switch.table.DistortImage.162, i64 0, i64 %812
  %827 = load ptr, ptr %826, align 8
  br label %828

828:                                              ; preds = %820, %825
  %829 = phi ptr [ %827, %825 ], [ @.str.160, %820 ]
  %830 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %821, ptr noundef nonnull @.str.54, double noundef %823, ptr noundef nonnull %829) #14
  %831 = add nuw nsw i64 %812, 1
  %832 = icmp eq i64 %831, %799
  br i1 %832, label %833, label %811, !llvm.loop !78

833:                                              ; preds = %828, %796
  %834 = load ptr, ptr @stderr, align 8, !tbaa !74
  %835 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %834, ptr noundef nonnull @.str.55) #14
  %836 = getelementptr double, ptr %34, i64 2
  %837 = getelementptr double, ptr %836, i64 %799
  %838 = icmp sgt i64 %799, 0
  br i1 %838, label %839, label %861

839:                                              ; preds = %833, %856
  %840 = phi i64 [ %859, %856 ], [ 0, %833 ]
  %841 = icmp ne i64 %840, 0
  %842 = and i64 %840, 3
  %843 = icmp eq i64 %842, 0
  %844 = and i1 %841, %843
  br i1 %844, label %845, label %848

845:                                              ; preds = %839
  %846 = load ptr, ptr @stderr, align 8, !tbaa !74
  %847 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %846, ptr noundef nonnull @.str.53) #14
  br label %848

848:                                              ; preds = %845, %839
  %849 = load ptr, ptr @stderr, align 8, !tbaa !74
  %850 = getelementptr double, ptr %837, i64 %840
  %851 = load double, ptr %850, align 8, !tbaa !55
  %852 = icmp ult i64 %840, 21
  br i1 %852, label %853, label %856

853:                                              ; preds = %848
  %854 = getelementptr inbounds [21 x ptr], ptr @switch.table.DistortImage.162, i64 0, i64 %840
  %855 = load ptr, ptr %854, align 8
  br label %856

856:                                              ; preds = %848, %853
  %857 = phi ptr [ %855, %853 ], [ @.str.160, %848 ]
  %858 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %849, ptr noundef nonnull @.str.54, double noundef %851, ptr noundef nonnull %857) #14
  %859 = add nuw nsw i64 %840, 1
  %860 = icmp eq i64 %859, %799
  br i1 %860, label %861, label %839, !llvm.loop !79

861:                                              ; preds = %856, %833
  %862 = load ptr, ptr @stderr, align 8, !tbaa !74
  %863 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %862, ptr noundef nonnull @.str.56, ptr noundef nonnull %531) #14
  br label %1127

864:                                              ; preds = %530
  %865 = load ptr, ptr @stderr, align 8, !tbaa !74
  %866 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %865, ptr noundef nonnull @.str.57) #14
  br label %867

867:                                              ; preds = %864, %867
  %868 = phi i64 [ 0, %864 ], [ %874, %867 ]
  %869 = load ptr, ptr @stderr, align 8, !tbaa !74
  %870 = sitofp i64 %868 to double
  %871 = getelementptr inbounds double, ptr %34, i64 %868
  %872 = load double, ptr %871, align 8, !tbaa !55
  %873 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %869, ptr noundef nonnull @.str.58, double noundef %870, double noundef %872) #14
  %874 = add nuw nsw i64 %868, 1
  %875 = icmp eq i64 %874, 5
  br i1 %875, label %876, label %867, !llvm.loop !80

876:                                              ; preds = %867
  %877 = load ptr, ptr @stderr, align 8, !tbaa !74
  %878 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %877, ptr noundef nonnull @.str.59) #14
  %879 = load ptr, ptr @stderr, align 8, !tbaa !74
  %880 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %879, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %881 = load ptr, ptr @stderr, align 8, !tbaa !74
  %882 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %881, ptr noundef nonnull @.str.60) #14
  %883 = load ptr, ptr @stderr, align 8, !tbaa !74
  %884 = load double, ptr %34, align 8, !tbaa !55
  %885 = fneg double %884
  %886 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %883, ptr noundef nonnull @.str.61, double noundef %885) #14
  %887 = load ptr, ptr @stderr, align 8, !tbaa !74
  %888 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %887, ptr noundef nonnull @.str.62) #14
  %889 = load ptr, ptr @stderr, align 8, !tbaa !74
  %890 = getelementptr inbounds double, ptr %34, i64 1
  %891 = load double, ptr %890, align 8, !tbaa !55
  %892 = getelementptr inbounds double, ptr %34, i64 4
  %893 = load double, ptr %892, align 8, !tbaa !55
  %894 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %889, ptr noundef nonnull @.str.63, double noundef %891, double noundef %893) #14
  %895 = load ptr, ptr @stderr, align 8, !tbaa !74
  %896 = getelementptr inbounds double, ptr %34, i64 2
  %897 = load double, ptr %896, align 8, !tbaa !55
  %898 = getelementptr inbounds double, ptr %34, i64 3
  %899 = load double, ptr %898, align 8, !tbaa !55
  %900 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %895, ptr noundef nonnull @.str.64, double noundef %897, double noundef %899) #14
  %901 = load ptr, ptr @stderr, align 8, !tbaa !74
  %902 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %901, ptr noundef nonnull @.str.65) #14
  br label %1127

903:                                              ; preds = %530
  %904 = load ptr, ptr @stderr, align 8, !tbaa !74
  %905 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %904, ptr noundef nonnull @.str.66) #14
  br label %906

906:                                              ; preds = %903, %906
  %907 = phi i64 [ 0, %903 ], [ %913, %906 ]
  %908 = load ptr, ptr @stderr, align 8, !tbaa !74
  %909 = sitofp i64 %907 to double
  %910 = getelementptr inbounds double, ptr %34, i64 %907
  %911 = load double, ptr %910, align 8, !tbaa !55
  %912 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %908, ptr noundef nonnull @.str.58, double noundef %909, double noundef %911) #14
  %913 = add nuw nsw i64 %907, 1
  %914 = icmp eq i64 %913, 8
  br i1 %914, label %915, label %906, !llvm.loop !81

915:                                              ; preds = %906
  %916 = load ptr, ptr @stderr, align 8, !tbaa !74
  %917 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %916, ptr noundef nonnull @.str.67) #14
  %918 = load ptr, ptr @stderr, align 8, !tbaa !74
  %919 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %918, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %920 = load ptr, ptr @stderr, align 8, !tbaa !74
  %921 = getelementptr inbounds double, ptr %34, i64 2
  %922 = load double, ptr %921, align 8, !tbaa !55
  %923 = fneg double %922
  %924 = getelementptr inbounds double, ptr %34, i64 3
  %925 = load double, ptr %924, align 8, !tbaa !55
  %926 = fneg double %925
  %927 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %920, ptr noundef nonnull @.str.41, double noundef %923, double noundef %926) #14
  %928 = load ptr, ptr @stderr, align 8, !tbaa !74
  %929 = getelementptr inbounds double, ptr %34, i64 4
  %930 = load double, ptr %929, align 8, !tbaa !55
  %931 = getelementptr inbounds double, ptr %34, i64 5
  %932 = load double, ptr %931, align 8, !tbaa !55
  %933 = fadd double %930, %932
  %934 = fmul double %933, -5.000000e-01
  %935 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %928, ptr noundef nonnull @.str.68, double noundef %934) #14
  %936 = load ptr, ptr @stderr, align 8, !tbaa !74
  %937 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %936, ptr noundef nonnull @.str.62) #14
  %938 = load ptr, ptr @stderr, align 8, !tbaa !74
  %939 = getelementptr inbounds double, ptr %34, i64 6
  %940 = load double, ptr %939, align 8, !tbaa !55
  %941 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %938, ptr noundef nonnull @.str.69, double noundef %940) #14
  %942 = load ptr, ptr @stderr, align 8, !tbaa !74
  %943 = getelementptr inbounds double, ptr %34, i64 1
  %944 = load double, ptr %943, align 8, !tbaa !55
  %945 = fneg double %944
  %946 = getelementptr inbounds double, ptr %34, i64 7
  %947 = load double, ptr %946, align 8, !tbaa !55
  %948 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %942, ptr noundef nonnull @.str.70, double noundef %945, double noundef %947) #14
  %949 = load ptr, ptr @stderr, align 8, !tbaa !74
  %950 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %949, ptr noundef nonnull @.str.65) #14
  br label %1127

951:                                              ; preds = %530
  %952 = load ptr, ptr @stderr, align 8, !tbaa !74
  %953 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %952, ptr noundef nonnull @.str.71) #14
  br label %954

954:                                              ; preds = %951, %954
  %955 = phi i64 [ 0, %951 ], [ %961, %954 ]
  %956 = load ptr, ptr @stderr, align 8, !tbaa !74
  %957 = sitofp i64 %955 to double
  %958 = getelementptr inbounds double, ptr %34, i64 %955
  %959 = load double, ptr %958, align 8, !tbaa !55
  %960 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %956, ptr noundef nonnull @.str.58, double noundef %957, double noundef %959) #14
  %961 = add nuw nsw i64 %955, 1
  %962 = icmp eq i64 %961, 8
  br i1 %962, label %963, label %954, !llvm.loop !82

963:                                              ; preds = %954
  %964 = load ptr, ptr @stderr, align 8, !tbaa !74
  %965 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %964, ptr noundef nonnull @.str.72) #14
  %966 = load ptr, ptr @stderr, align 8, !tbaa !74
  %967 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %966, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %968 = load ptr, ptr @stderr, align 8, !tbaa !74
  %969 = getelementptr inbounds double, ptr %34, i64 6
  %970 = load double, ptr %969, align 8, !tbaa !55
  %971 = getelementptr inbounds double, ptr %34, i64 4
  %972 = load double, ptr %971, align 8, !tbaa !55
  %973 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %968, ptr noundef nonnull @.str.73, double noundef %970, double noundef %972) #14
  %974 = load ptr, ptr @stderr, align 8, !tbaa !74
  %975 = getelementptr inbounds double, ptr %34, i64 7
  %976 = load double, ptr %975, align 8, !tbaa !55
  %977 = getelementptr inbounds double, ptr %34, i64 1
  %978 = load double, ptr %977, align 8, !tbaa !55
  %979 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %974, ptr noundef nonnull @.str.74, double noundef %976, double noundef %978) #14
  %980 = load ptr, ptr @stderr, align 8, !tbaa !74
  %981 = getelementptr inbounds double, ptr %34, i64 2
  %982 = load double, ptr %981, align 8, !tbaa !55
  %983 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %980, ptr noundef nonnull @.str.75, double noundef %982) #14
  %984 = load ptr, ptr @stderr, align 8, !tbaa !74
  %985 = getelementptr inbounds double, ptr %34, i64 3
  %986 = load double, ptr %985, align 8, !tbaa !55
  %987 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %984, ptr noundef nonnull @.str.76, double noundef %986) #14
  %988 = load ptr, ptr @stderr, align 8, !tbaa !74
  %989 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %988, ptr noundef nonnull @.str.65) #14
  br label %1127

990:                                              ; preds = %530
  %991 = load ptr, ptr @stderr, align 8, !tbaa !74
  %992 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %991, ptr noundef nonnull @.str.77) #14
  %993 = load ptr, ptr @stderr, align 8, !tbaa !74
  %994 = getelementptr inbounds double, ptr %34, i64 1
  %995 = load double, ptr %994, align 8, !tbaa !55
  %996 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %993, ptr noundef nonnull @.str.78, double noundef %995) #14
  %997 = load ptr, ptr @stderr, align 8, !tbaa !74
  %998 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %997, ptr noundef nonnull @.str.79) #14
  %999 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1000 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %999, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %1001 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1002 = getelementptr inbounds double, ptr %34, i64 4
  %1003 = load double, ptr %1002, align 8, !tbaa !55
  %1004 = fneg double %1003
  %1005 = getelementptr inbounds double, ptr %34, i64 5
  %1006 = load double, ptr %1005, align 8, !tbaa !55
  %1007 = fneg double %1006
  %1008 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1001, ptr noundef nonnull @.str.80, double noundef %1004, double noundef %1007) #14
  %1009 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1010 = load double, ptr %994, align 8, !tbaa !55
  %1011 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1009, ptr noundef nonnull @.str.81, double noundef %1010) #14
  %1012 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1013 = load double, ptr %994, align 8, !tbaa !55
  %1014 = getelementptr inbounds double, ptr %34, i64 2
  %1015 = load double, ptr %1014, align 8, !tbaa !55
  %1016 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1012, ptr noundef nonnull @.str.82, double noundef %1013, double noundef %1015) #14
  %1017 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1018 = getelementptr inbounds double, ptr %34, i64 3
  %1019 = load double, ptr %1018, align 8, !tbaa !55
  %1020 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1017, ptr noundef nonnull @.str.83, double noundef %1019) #14
  %1021 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1022 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1021, ptr noundef nonnull @.str.24, ptr noundef nonnull %531) #14
  br label %1127

1023:                                             ; preds = %530
  %1024 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1025 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1024, ptr noundef nonnull @.str.84) #14
  %1026 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1027 = getelementptr inbounds double, ptr %34, i64 1
  %1028 = load double, ptr %1027, align 8, !tbaa !55
  %1029 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1026, ptr noundef nonnull @.str.78, double noundef %1028) #14
  %1030 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1031 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1030, ptr noundef nonnull @.str.85) #14
  %1032 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1033 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1032, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %1034 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1035 = getelementptr inbounds double, ptr %34, i64 4
  %1036 = load double, ptr %1035, align 8, !tbaa !55
  %1037 = fneg double %1036
  %1038 = getelementptr inbounds double, ptr %34, i64 5
  %1039 = load double, ptr %1038, align 8, !tbaa !55
  %1040 = fneg double %1039
  %1041 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1034, ptr noundef nonnull @.str.80, double noundef %1037, double noundef %1040) #14
  %1042 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1043 = load double, ptr %1027, align 8, !tbaa !55
  %1044 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1042, ptr noundef nonnull @.str.86, double noundef %1043) #14
  %1045 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1046 = load double, ptr %1027, align 8, !tbaa !55
  %1047 = getelementptr inbounds double, ptr %34, i64 2
  %1048 = load double, ptr %1047, align 8, !tbaa !55
  %1049 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1045, ptr noundef nonnull @.str.87, double noundef %1046, double noundef %1048) #14
  %1050 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1051 = getelementptr inbounds double, ptr %34, i64 3
  %1052 = load double, ptr %1051, align 8, !tbaa !55
  %1053 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1050, ptr noundef nonnull @.str.88, double noundef %1052) #14
  %1054 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1055 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1054, ptr noundef nonnull @.str.24, ptr noundef nonnull %531) #14
  br label %1127

1056:                                             ; preds = %530, %530
  %1057 = load i64, ptr %37, align 8, !tbaa !62
  %1058 = uitofp i64 %1057 to double
  %1059 = fadd double %1058, -1.000000e+00
  %1060 = fmul double %1059, 5.000000e-01
  %1061 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1062 = load i64, ptr %1061, align 8, !tbaa !66
  %1063 = sitofp i64 %1062 to double
  %1064 = fadd double %1060, %1063
  %1065 = load i64, ptr %39, align 8, !tbaa !64
  %1066 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1067 = load i64, ptr %1066, align 8, !tbaa !67
  %1068 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1069 = icmp eq i32 %44, 14
  %1070 = select i1 %1069, ptr @.str.1, ptr @.str.90
  %1071 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1068, ptr noundef nonnull @.str.89, ptr noundef nonnull %1070) #14
  %1072 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1073 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1072, ptr noundef nonnull @.str.2, ptr noundef nonnull %10) #14
  %1074 = getelementptr inbounds double, ptr %34, i64 8
  %1075 = load double, ptr %1074, align 8, !tbaa !55
  %1076 = fsub double %1075, %1064
  %1077 = fadd double %1076, -5.000000e-01
  %1078 = call double @llvm.fabs.f64(double %1077)
  %1079 = fcmp olt double %1078, 1.000000e-01
  br i1 %1079, label %1080, label %1095

1080:                                             ; preds = %1056
  %1081 = uitofp i64 %1065 to double
  %1082 = fadd double %1081, -1.000000e+00
  %1083 = fmul double %1082, 5.000000e-01
  %1084 = sitofp i64 %1067 to double
  %1085 = fadd double %1083, %1084
  %1086 = getelementptr inbounds double, ptr %34, i64 9
  %1087 = load double, ptr %1086, align 8, !tbaa !55
  %1088 = fsub double %1087, %1085
  %1089 = fadd double %1088, -5.000000e-01
  %1090 = call double @llvm.fabs.f64(double %1089)
  %1091 = fcmp olt double %1090, 1.000000e-01
  br i1 %1091, label %1092, label %1095

1092:                                             ; preds = %1080
  %1093 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1094 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1093, ptr noundef nonnull @.str.91) #14
  br label %1102

1095:                                             ; preds = %1080, %1056
  %1096 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1097 = fadd double %1075, -5.000000e-01
  %1098 = getelementptr inbounds double, ptr %34, i64 9
  %1099 = load double, ptr %1098, align 8, !tbaa !55
  %1100 = fadd double %1099, -5.000000e-01
  %1101 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1096, ptr noundef nonnull @.str.92, double noundef %1097, double noundef %1100) #14
  br label %1102

1102:                                             ; preds = %1095, %1092
  %1103 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1104 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1103, ptr noundef nonnull @.str.93) #14
  %1105 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1106 = select i1 %1069, ptr @.str.95, ptr @.str.96
  %1107 = load double, ptr %34, align 8, !tbaa !55
  %1108 = getelementptr inbounds double, ptr %34, i64 1
  %1109 = load double, ptr %1108, align 8, !tbaa !55
  %1110 = getelementptr inbounds double, ptr %34, i64 2
  %1111 = load double, ptr %1110, align 8, !tbaa !55
  %1112 = getelementptr inbounds double, ptr %34, i64 3
  %1113 = load double, ptr %1112, align 8, !tbaa !55
  %1114 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1105, ptr noundef nonnull @.str.94, ptr noundef nonnull %1106, double noundef %1107, double noundef %1109, double noundef %1111, double noundef %1113) #14
  %1115 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1116 = getelementptr inbounds double, ptr %34, i64 4
  %1117 = load double, ptr %1116, align 8, !tbaa !55
  %1118 = getelementptr inbounds double, ptr %34, i64 5
  %1119 = load double, ptr %1118, align 8, !tbaa !55
  %1120 = getelementptr inbounds double, ptr %34, i64 6
  %1121 = load double, ptr %1120, align 8, !tbaa !55
  %1122 = getelementptr inbounds double, ptr %34, i64 7
  %1123 = load double, ptr %1122, align 8, !tbaa !55
  %1124 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1115, ptr noundef nonnull @.str.97, ptr noundef nonnull %1106, double noundef %1117, double noundef %1119, double noundef %1121, double noundef %1123) #14
  %1125 = load ptr, ptr @stderr, align 8, !tbaa !74
  %1126 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %1125, ptr noundef nonnull @.str.98) #14
  br label %1127

1127:                                             ; preds = %1102, %530, %764, %766, %623, %694, %1023, %990, %963, %915, %876, %861, %768
  %1128 = phi ptr [ %34, %530 ], [ %34, %1102 ], [ %34, %1023 ], [ %34, %990 ], [ %34, %963 ], [ %34, %915 ], [ %34, %876 ], [ %34, %861 ], [ %34, %768 ], [ %34, %764 ], [ %34, %766 ], [ %695, %694 ], [ %624, %623 ]
  br label %1129

1129:                                             ; preds = %623, %694, %1127
  %1130 = phi i1 [ true, %1127 ], [ false, %694 ], [ false, %623 ]
  %1131 = phi ptr [ %1128, %1127 ], [ %695, %694 ], [ %624, %623 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %10) #14
  br i1 %1130, label %1132, label %2436

1132:                                             ; preds = %1129, %512
  %1133 = phi ptr [ %1131, %1129 ], [ %34, %512 ]
  %1134 = call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.99) #14
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1161, label %1136

1136:                                             ; preds = %1132
  %1137 = call double @InterpretLocaleValue(ptr noundef nonnull %1134, ptr noundef null) #14
  %1138 = call double @llvm.fabs.f64(double %1137)
  %1139 = load i64, ptr %9, align 8, !tbaa !63
  %1140 = uitofp i64 %1139 to double
  %1141 = call double @llvm.fmuladd.f64(double %1138, double %1140, double 5.000000e-01)
  %1142 = fptoui double %1141 to i64
  store i64 %1142, ptr %9, align 8, !tbaa !63
  %1143 = load i64, ptr %41, align 8, !tbaa !65
  %1144 = uitofp i64 %1143 to double
  %1145 = call double @llvm.fmuladd.f64(double %1138, double %1144, double 5.000000e-01)
  %1146 = fptoui double %1145 to i64
  store i64 %1146, ptr %41, align 8, !tbaa !65
  %1147 = load i64, ptr %42, align 8, !tbaa !71
  %1148 = sitofp i64 %1147 to double
  %1149 = call double @llvm.fmuladd.f64(double %1138, double %1148, double 5.000000e-01)
  %1150 = fptosi double %1149 to i64
  store i64 %1150, ptr %42, align 8, !tbaa !71
  %1151 = load i64, ptr %43, align 8, !tbaa !72
  %1152 = sitofp i64 %1151 to double
  %1153 = call double @llvm.fmuladd.f64(double %1138, double %1152, double 5.000000e-01)
  %1154 = fptosi double %1153 to i64
  store i64 %1154, ptr %43, align 8, !tbaa !72
  %1155 = fcmp olt double %1138, 1.000000e-01
  br i1 %1155, label %1156, label %1159

1156:                                             ; preds = %1136
  %1157 = call ptr @RelinquishMagickMemory(ptr noundef %1133) #14
  %1158 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2273, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.100) #14
  br label %1161

1159:                                             ; preds = %1136
  %1160 = fdiv double 1.000000e+00, %1138
  br label %1161

1161:                                             ; preds = %1132, %1159, %1156
  %1162 = phi i1 [ false, %1156 ], [ true, %1159 ], [ true, %1132 ]
  %1163 = phi double [ %1138, %1156 ], [ %1160, %1159 ], [ 1.000000e+00, %1132 ]
  %1164 = phi ptr [ %1157, %1156 ], [ %1133, %1159 ], [ %1133, %1132 ]
  br i1 %1162, label %1165, label %2436

1165:                                             ; preds = %1161
  %1166 = load i64, ptr %9, align 8, !tbaa !63
  %1167 = load i64, ptr %41, align 8, !tbaa !65
  %1168 = call ptr @CloneImage(ptr noundef %0, i64 noundef %1166, i64 noundef %1167, i32 noundef 1, ptr noundef %5) #14
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %2436, label %1170

1170:                                             ; preds = %1165
  %1171 = call i32 @SetImageStorageClass(ptr noundef %1168, i32 noundef 1) #14
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1173, label %1176

1173:                                             ; preds = %1170
  %1174 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 58
  call void @InheritException(ptr noundef %5, ptr noundef nonnull %1174) #14
  %1175 = call ptr @DestroyImage(ptr noundef %1168) #14
  br label %2436

1176:                                             ; preds = %1170
  %1177 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 12, i32 2
  %1178 = load i16, ptr %1177, align 2, !tbaa !83
  %1179 = uitofp i16 %1178 to float
  %1180 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 12, i32 1
  %1181 = load i16, ptr %1180, align 2, !tbaa !84
  %1182 = uitofp i16 %1181 to float
  %1183 = fsub float %1179, %1182
  %1184 = fcmp olt float %1183, 0.000000e+00
  %1185 = fneg float %1183
  %1186 = select i1 %1184, float %1185, float %1183
  %1187 = fpext float %1186 to double
  %1188 = fcmp olt double %1187, 1.000000e-15
  br i1 %1188, label %1189, label %1199

1189:                                             ; preds = %1176
  %1190 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 12
  %1191 = load i16, ptr %1190, align 2, !tbaa !85
  %1192 = uitofp i16 %1191 to float
  %1193 = fsub float %1182, %1192
  %1194 = fcmp olt float %1193, 0.000000e+00
  %1195 = fneg float %1193
  %1196 = select i1 %1194, float %1195, float %1193
  %1197 = fpext float %1196 to double
  %1198 = fcmp olt double %1197, 1.000000e-15
  br i1 %1198, label %1204, label %1199

1199:                                             ; preds = %1189, %1176
  %1200 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 1
  %1201 = load i32, ptr %1200, align 4, !tbaa !86
  switch i32 %1201, label %1204 [
    i32 19, label %1202
    i32 17, label %1202
    i32 2, label %1202
  ]

1202:                                             ; preds = %1199, %1199, %1199
  %1203 = call i32 @SetImageColorspace(ptr noundef %1168, i32 noundef 13) #14
  br label %1204

1204:                                             ; preds = %1199, %1189, %1202
  %1205 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 12, i32 3
  %1206 = load i16, ptr %1205, align 2, !tbaa !87
  %1207 = icmp eq i16 %1206, 0
  br i1 %1207, label %1210, label %1208

1208:                                             ; preds = %1204
  %1209 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 6
  store i32 1, ptr %1209, align 8, !tbaa !88
  br label %1210

1210:                                             ; preds = %1208, %1204
  %1211 = load i64, ptr %42, align 8, !tbaa !71
  %1212 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 26, i32 2
  store i64 %1211, ptr %1212, align 8, !tbaa !66
  %1213 = load i64, ptr %43, align 8, !tbaa !72
  %1214 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 26, i32 3
  store i64 %1213, ptr %1214, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #14
  call void @GetMagickPixelPacket(ptr noundef %1168, ptr noundef nonnull %11) #14
  %1215 = call i64 @GetMagickResourceLimit(i32 noundef 6) #14
  %1216 = call ptr @AcquireAlignedMemory(i64 noundef %1215, i64 noundef 8) #15
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1246, label %1218

1218:                                             ; preds = %1210
  %1219 = shl i64 %1215, 3
  %1220 = call ptr @ResetMagickMemory(ptr noundef nonnull %1216, i32 noundef 0, i64 noundef %1219) #14
  %1221 = icmp sgt i64 %1215, 0
  br i1 %1221, label %1225, label %1246

1222:                                             ; preds = %1225
  %1223 = add nuw nsw i64 %1226, 1
  %1224 = icmp eq i64 %1223, %1215
  br i1 %1224, label %1246, label %1225, !llvm.loop !89

1225:                                             ; preds = %1218, %1222
  %1226 = phi i64 [ %1223, %1222 ], [ 0, %1218 ]
  %1227 = call ptr @AcquireResampleFilter(ptr noundef %0, ptr noundef %5) #14
  %1228 = getelementptr inbounds ptr, ptr %1216, i64 %1226
  store ptr %1227, ptr %1228, align 8, !tbaa !74
  %1229 = icmp eq ptr %1227, null
  br i1 %1229, label %1230, label %1222

1230:                                             ; preds = %1225
  %1231 = call i64 @GetMagickResourceLimit(i32 noundef 6) #14
  %1232 = icmp sgt i64 %1231, 0
  br i1 %1232, label %1233, label %1244

1233:                                             ; preds = %1230, %1240
  %1234 = phi i64 [ %1241, %1240 ], [ 0, %1230 ]
  %1235 = getelementptr inbounds ptr, ptr %1216, i64 %1234
  %1236 = load ptr, ptr %1235, align 8, !tbaa !74
  %1237 = icmp eq ptr %1236, null
  br i1 %1237, label %1240, label %1238

1238:                                             ; preds = %1233
  %1239 = call ptr @DestroyResampleFilter(ptr noundef nonnull %1236) #14
  store ptr %1239, ptr %1235, align 8, !tbaa !74
  br label %1240

1240:                                             ; preds = %1238, %1233
  %1241 = add nuw nsw i64 %1234, 1
  %1242 = call i64 @GetMagickResourceLimit(i32 noundef 6) #14
  %1243 = icmp slt i64 %1241, %1242
  br i1 %1243, label %1233, label %1244, !llvm.loop !90

1244:                                             ; preds = %1240, %1230
  %1245 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %1216) #14
  br label %1246

1246:                                             ; preds = %1222, %1218, %1210, %1244
  %1247 = phi ptr [ %1245, %1244 ], [ null, %1210 ], [ %1216, %1218 ], [ %1216, %1222 ]
  %1248 = call ptr @AcquireAuthenticCacheView(ptr noundef %1168, ptr noundef %5) #14
  %1249 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 8
  %1250 = load i64, ptr %1249, align 8, !tbaa !64
  %1251 = icmp sgt i64 %1250, 0
  br i1 %1251, label %1252, label %2405

1252:                                             ; preds = %1246
  %1253 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 7
  %1254 = getelementptr inbounds double, ptr %1164, i64 1
  %1255 = getelementptr inbounds double, ptr %1164, i64 3
  %1256 = getelementptr inbounds double, ptr %1164, i64 4
  %1257 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 14
  %1258 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 14, i32 2
  %1259 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 5
  %1260 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 14, i32 1
  %1261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 6
  %1262 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 7
  %1263 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 14, i32 3
  %1264 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 8
  %1265 = getelementptr inbounds %struct._Image, ptr %1168, i64 0, i32 1
  %1266 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 1
  %1267 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1269 = icmp eq i64 %2, 0
  %1270 = getelementptr inbounds double, ptr %1164, i64 8
  %1271 = getelementptr inbounds double, ptr %1164, i64 9
  %1272 = getelementptr inbounds double, ptr %1164, i64 3
  %1273 = fmul double %1163, 0.000000e+00
  %1274 = getelementptr inbounds double, ptr %1164, i64 7
  %1275 = getelementptr inbounds double, ptr %1164, i64 3
  %1276 = fmul double %1163, 0.000000e+00
  %1277 = getelementptr inbounds double, ptr %1164, i64 7
  %1278 = getelementptr inbounds double, ptr %1164, i64 1
  %1279 = getelementptr inbounds double, ptr %1164, i64 2
  %1280 = getelementptr inbounds double, ptr %1164, i64 3
  %1281 = getelementptr inbounds double, ptr %1164, i64 4
  %1282 = getelementptr inbounds double, ptr %1164, i64 5
  %1283 = getelementptr inbounds double, ptr %1164, i64 6
  %1284 = getelementptr inbounds double, ptr %1164, i64 7
  %1285 = getelementptr inbounds double, ptr %1164, i64 4
  %1286 = getelementptr inbounds double, ptr %1164, i64 5
  %1287 = getelementptr inbounds double, ptr %1164, i64 1
  %1288 = fmul double %1163, 0.000000e+00
  %1289 = getelementptr inbounds double, ptr %1164, i64 2
  %1290 = getelementptr inbounds double, ptr %1164, i64 3
  %1291 = getelementptr inbounds double, ptr %1164, i64 4
  %1292 = getelementptr inbounds double, ptr %1164, i64 5
  %1293 = getelementptr inbounds double, ptr %1164, i64 1
  %1294 = fmul double %1163, 0.000000e+00
  %1295 = getelementptr inbounds double, ptr %1164, i64 2
  %1296 = getelementptr inbounds double, ptr %1164, i64 3
  %1297 = getelementptr inbounds double, ptr %1164, i64 6
  %1298 = getelementptr inbounds double, ptr %1164, i64 4
  %1299 = getelementptr inbounds double, ptr %1164, i64 7
  %1300 = getelementptr inbounds double, ptr %1164, i64 1
  %1301 = getelementptr inbounds double, ptr %1164, i64 2
  %1302 = getelementptr inbounds double, ptr %1164, i64 3
  %1303 = getelementptr inbounds double, ptr %1164, i64 2
  %1304 = getelementptr inbounds double, ptr %1164, i64 3
  %1305 = getelementptr inbounds double, ptr %1164, i64 4
  %1306 = getelementptr inbounds double, ptr %1164, i64 5
  %1307 = fmul double %1163, 0.000000e+00
  %1308 = getelementptr inbounds double, ptr %1164, i64 7
  %1309 = getelementptr inbounds double, ptr %1164, i64 6
  %1310 = fmul double %1163, 0.000000e+00
  %1311 = getelementptr inbounds double, ptr %1164, i64 7
  %1312 = getelementptr inbounds double, ptr %1164, i64 6
  %1313 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1314 = getelementptr inbounds double, ptr %1164, i64 1
  %1315 = getelementptr inbounds double, ptr %1164, i64 7
  %1316 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1317 = fmul double %1163, 0.000000e+00
  %1318 = getelementptr inbounds double, ptr %1164, i64 3
  %1319 = getelementptr inbounds double, ptr %1164, i64 1
  %1320 = fmul double %1163, 0.000000e+00
  %1321 = getelementptr inbounds double, ptr %1164, i64 3
  %1322 = getelementptr inbounds double, ptr %1164, i64 1
  %1323 = getelementptr inbounds double, ptr %1164, i64 4
  %1324 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1325 = getelementptr inbounds double, ptr %1164, i64 2
  %1326 = getelementptr inbounds double, ptr %1164, i64 3
  %1327 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1328 = getelementptr inbounds double, ptr %1164, i64 1
  %1329 = getelementptr inbounds double, ptr %1164, i64 3
  %1330 = getelementptr inbounds double, ptr %1164, i64 7
  %1331 = getelementptr inbounds double, ptr %1164, i64 6
  %1332 = getelementptr inbounds double, ptr %1164, i64 2
  %1333 = getelementptr inbounds double, ptr %1164, i64 8
  %1334 = getelementptr inbounds double, ptr %1164, i64 4
  %1335 = getelementptr inbounds double, ptr %1164, i64 9
  %1336 = getelementptr inbounds double, ptr %1164, i64 1
  %1337 = getelementptr inbounds double, ptr %1164, i64 1
  %1338 = getelementptr inbounds double, ptr %1164, i64 2
  %1339 = getelementptr inbounds double, ptr %1164, i64 3
  %1340 = getelementptr inbounds double, ptr %1164, i64 4
  %1341 = getelementptr inbounds double, ptr %1164, i64 5
  %1342 = getelementptr inbounds double, ptr %1164, i64 6
  %1343 = getelementptr inbounds double, ptr %1164, i64 7
  %1344 = getelementptr inbounds double, ptr %1164, i64 1
  %1345 = getelementptr inbounds double, ptr %1164, i64 2
  %1346 = getelementptr inbounds double, ptr %1164, i64 3
  %1347 = getelementptr inbounds double, ptr %1164, i64 4
  %1348 = getelementptr inbounds double, ptr %1164, i64 5
  %1349 = getelementptr inbounds double, ptr %1164, i64 6
  %1350 = getelementptr inbounds double, ptr %1164, i64 7
  %1351 = getelementptr inbounds double, ptr %1164, i64 8
  %1352 = getelementptr inbounds double, ptr %1164, i64 1
  %1353 = getelementptr inbounds double, ptr %1164, i64 2
  %1354 = getelementptr inbounds double, ptr %1164, i64 3
  %1355 = getelementptr inbounds double, ptr %1164, i64 4
  %1356 = getelementptr inbounds double, ptr %1164, i64 5
  %1357 = icmp ne i32 %504, 0
  %1358 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1359 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1360 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1361 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  %1362 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  %1363 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 6
  %1364 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 7
  %1365 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 1
  %1366 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 9
  %1367 = getelementptr inbounds %struct._MagickPixelPacket, ptr %13, i64 0, i32 9
  %1368 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 5
  %1369 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 6
  %1370 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 7
  %1371 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 8
  %1372 = getelementptr inbounds %struct._MagickPixelPacket, ptr %12, i64 0, i32 9
  %1373 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %1374 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %1375 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %1376

1376:                                             ; preds = %1252, %2397
  %1377 = phi i64 [ 0, %1252 ], [ %2400, %2397 ]
  %1378 = phi i64 [ 0, %1252 ], [ %2399, %2397 ]
  %1379 = phi i32 [ 1, %1252 ], [ %2398, %2397 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #14
  %1380 = load i64, ptr %1253, align 8, !tbaa !62
  %1381 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %1248, i64 noundef 0, i64 noundef %1377, i64 noundef %1380, i64 noundef 1, ptr noundef %5) #16
  %1382 = icmp eq ptr %1381, null
  br i1 %1382, label %2397, label %1383

1383:                                             ; preds = %1376
  %1384 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %1248) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %11, i64 56, i1 false), !tbaa.struct !91
  %1385 = load i32, ptr %8, align 4
  %1386 = icmp eq i32 %1385, 1
  br i1 %1386, label %1387, label %1397

1387:                                             ; preds = %1383
  %1388 = load ptr, ptr %1247, align 8, !tbaa !74
  %1389 = load double, ptr %1164, align 8, !tbaa !55
  %1390 = fmul double %1163, %1389
  %1391 = load double, ptr %1254, align 8, !tbaa !55
  %1392 = fmul double %1163, %1391
  %1393 = load double, ptr %1255, align 8, !tbaa !55
  %1394 = fmul double %1163, %1393
  %1395 = load double, ptr %1256, align 8, !tbaa !55
  %1396 = fmul double %1163, %1395
  call void @ScaleResampleFilter(ptr noundef %1388, double noundef %1390, double noundef %1392, double noundef %1394, double noundef %1396) #14
  br label %1397

1397:                                             ; preds = %1383, %1387
  call void @GetMagickPixelPacket(ptr noundef %1168, ptr noundef nonnull %13) #14
  %1398 = load i16, ptr %1258, align 2, !tbaa !83
  %1399 = uitofp i16 %1398 to float
  store float %1399, ptr %1259, align 8, !tbaa !95
  %1400 = load i16, ptr %1260, align 2, !tbaa !84
  %1401 = uitofp i16 %1400 to float
  store float %1401, ptr %1261, align 4, !tbaa !97
  %1402 = load i16, ptr %1257, align 2, !tbaa !85
  %1403 = uitofp i16 %1402 to float
  store float %1403, ptr %1262, align 8, !tbaa !98
  %1404 = load i16, ptr %1263, align 2, !tbaa !99
  %1405 = uitofp i16 %1404 to float
  store float %1405, ptr %1264, align 4, !tbaa !100
  %1406 = load i32, ptr %1265, align 4, !tbaa !86
  %1407 = icmp eq i32 %1406, 12
  br i1 %1407, label %1408, label %1469

1408:                                             ; preds = %1397
  %1409 = load i32, ptr %1266, align 4, !tbaa !101
  %1410 = icmp eq i32 %1409, 13
  br i1 %1410, label %1421, label %1411

1411:                                             ; preds = %1408
  %1412 = uitofp i16 %1398 to double
  %1413 = fmul double %1412, 0x3EF0001000100010
  %1414 = fptrunc double %1413 to float
  %1415 = uitofp i16 %1400 to double
  %1416 = fmul double %1415, 0x3EF0001000100010
  %1417 = fptrunc double %1416 to float
  %1418 = uitofp i16 %1402 to double
  %1419 = fmul double %1418, 0x3EF0001000100010
  %1420 = fptrunc double %1419 to float
  br label %1427

1421:                                             ; preds = %1408
  %1422 = call float @DecodePixelGamma(float noundef %1399) #16
  %1423 = load float, ptr %1261, align 4, !tbaa !97
  %1424 = call float @DecodePixelGamma(float noundef %1423) #16
  %1425 = load float, ptr %1262, align 8, !tbaa !98
  %1426 = call float @DecodePixelGamma(float noundef %1425) #16
  br label %1427

1427:                                             ; preds = %1421, %1411
  %1428 = phi float [ %1420, %1411 ], [ %1426, %1421 ]
  %1429 = phi float [ %1417, %1411 ], [ %1424, %1421 ]
  %1430 = phi float [ %1414, %1411 ], [ %1422, %1421 ]
  %1431 = call float @llvm.fabs.f32(float %1430)
  %1432 = fpext float %1431 to double
  %1433 = fcmp olt double %1432, 1.000000e-15
  br i1 %1433, label %1434, label %1443

1434:                                             ; preds = %1427
  %1435 = call float @llvm.fabs.f32(float %1429)
  %1436 = fpext float %1435 to double
  %1437 = fcmp olt double %1436, 1.000000e-15
  br i1 %1437, label %1438, label %1443

1438:                                             ; preds = %1434
  %1439 = call float @llvm.fabs.f32(float %1428)
  %1440 = fpext float %1439 to double
  %1441 = fcmp olt double %1440, 1.000000e-15
  br i1 %1441, label %1442, label %1443

1442:                                             ; preds = %1438
  store float 6.553500e+04, ptr %1268, align 8, !tbaa !102
  br label %1469

1443:                                             ; preds = %1438, %1434, %1427
  %1444 = fsub float 1.000000e+00, %1430
  %1445 = fsub float 1.000000e+00, %1429
  %1446 = fsub float 1.000000e+00, %1428
  %1447 = fcmp olt float %1445, %1444
  %1448 = select i1 %1447, float %1445, float %1444
  %1449 = fcmp olt float %1446, %1448
  %1450 = select i1 %1449, float %1446, float %1448
  %1451 = fsub float %1444, %1450
  %1452 = fpext float %1451 to double
  %1453 = fpext float %1450 to double
  %1454 = fsub double 1.000000e+00, %1453
  %1455 = fdiv double %1452, %1454
  %1456 = fptrunc double %1455 to float
  %1457 = fsub float %1445, %1450
  %1458 = fpext float %1457 to double
  %1459 = fdiv double %1458, %1454
  %1460 = fptrunc double %1459 to float
  %1461 = fsub float %1446, %1450
  %1462 = fpext float %1461 to double
  %1463 = fdiv double %1462, %1454
  %1464 = fptrunc double %1463 to float
  store i32 12, ptr %1266, align 4, !tbaa !101
  %1465 = fmul float %1456, 6.553500e+04
  store float %1465, ptr %1259, align 8, !tbaa !95
  %1466 = fmul float %1460, 6.553500e+04
  store float %1466, ptr %1261, align 4, !tbaa !97
  %1467 = fmul float %1464, 6.553500e+04
  store float %1467, ptr %1262, align 8, !tbaa !98
  %1468 = fmul float %1450, 6.553500e+04
  store float %1468, ptr %1267, align 8, !tbaa !102
  br label %1469

1469:                                             ; preds = %1443, %1442, %1397
  %1470 = load i64, ptr %1253, align 8, !tbaa !62
  %1471 = icmp sgt i64 %1470, 0
  br i1 %1471, label %1472, label %2382

1472:                                             ; preds = %1469
  %1473 = icmp eq i32 %1385, 14
  %1474 = icmp eq i32 %1385, 15
  %1475 = sitofp i64 %1377 to double
  %1476 = fadd double %1475, 5.000000e-01
  %1477 = fmul double %1163, %1476
  %1478 = icmp ne i32 %1385, 9
  %1479 = and i1 %1357, %1478
  br label %1480

1480:                                             ; preds = %1472, %2376
  %1481 = phi ptr [ %1381, %1472 ], [ %2377, %2376 ]
  %1482 = phi i64 [ 0, %1472 ], [ %2379, %2376 ]
  %1483 = phi ptr [ %1384, %1472 ], [ %2378, %2376 ]
  %1484 = phi double [ 1.000000e+00, %1472 ], [ %2175, %2376 ]
  %1485 = load i64, ptr %42, align 8, !tbaa !71
  %1486 = add nsw i64 %1485, %1482
  %1487 = sitofp i64 %1486 to double
  %1488 = fadd double %1487, 5.000000e-01
  %1489 = fmul double %1163, %1488
  %1490 = load i64, ptr %43, align 8, !tbaa !72
  %1491 = add nsw i64 %1490, %1377
  %1492 = sitofp i64 %1491 to double
  %1493 = fadd double %1492, 5.000000e-01
  %1494 = fmul double %1163, %1493
  switch i32 %1385, label %2174 [
    i32 1, label %1496
    i32 4, label %1509
    i32 7, label %1577
    i32 6, label %1605
    i32 8, label %1650
    i32 9, label %1862
    i32 10, label %1905
    i32 11, label %1957
    i32 12, label %1973
    i32 13, label %2001
    i32 14, label %2054
    i32 15, label %2054
    i32 16, label %1495
  ]

1495:                                             ; preds = %1480
  br i1 %1269, label %2166, label %2132

1496:                                             ; preds = %1480
  %1497 = load double, ptr %1164, align 8, !tbaa !55
  %1498 = load double, ptr %1352, align 8, !tbaa !55
  %1499 = fmul double %1494, %1498
  %1500 = call double @llvm.fmuladd.f64(double %1497, double %1489, double %1499)
  %1501 = load double, ptr %1353, align 8, !tbaa !55
  %1502 = fadd double %1501, %1500
  %1503 = load double, ptr %1354, align 8, !tbaa !55
  %1504 = load double, ptr %1355, align 8, !tbaa !55
  %1505 = fmul double %1494, %1504
  %1506 = call double @llvm.fmuladd.f64(double %1503, double %1489, double %1505)
  %1507 = load double, ptr %1356, align 8, !tbaa !55
  %1508 = fadd double %1507, %1506
  br label %2174

1509:                                             ; preds = %1480
  %1510 = load double, ptr %1164, align 8, !tbaa !55
  %1511 = load double, ptr %1344, align 8, !tbaa !55
  %1512 = fmul double %1494, %1511
  %1513 = call double @llvm.fmuladd.f64(double %1510, double %1489, double %1512)
  %1514 = load double, ptr %1345, align 8, !tbaa !55
  %1515 = fadd double %1514, %1513
  %1516 = load double, ptr %1346, align 8, !tbaa !55
  %1517 = load double, ptr %1347, align 8, !tbaa !55
  %1518 = fmul double %1494, %1517
  %1519 = call double @llvm.fmuladd.f64(double %1516, double %1489, double %1518)
  %1520 = load double, ptr %1348, align 8, !tbaa !55
  %1521 = fadd double %1520, %1519
  %1522 = load double, ptr %1349, align 8, !tbaa !55
  %1523 = load double, ptr %1350, align 8, !tbaa !55
  %1524 = fmul double %1494, %1523
  %1525 = call double @llvm.fmuladd.f64(double %1522, double %1489, double %1524)
  %1526 = fadd double %1525, 1.000000e+00
  %1527 = load double, ptr %1351, align 8, !tbaa !55
  %1528 = fmul double %1527, %1526
  %1529 = fcmp olt double %1528, 0.000000e+00
  %1530 = select i1 %1529, double 0.000000e+00, double 1.000000e+00
  %1531 = call double @llvm.fabs.f64(double %1526)
  %1532 = fmul double %1531, 2.000000e+00
  %1533 = call double @llvm.fabs.f64(double %1522)
  %1534 = call double @llvm.fabs.f64(double %1523)
  %1535 = fcmp ogt double %1533, %1534
  br i1 %1535, label %1536, label %1543

1536:                                             ; preds = %1509
  %1537 = fmul double %1163, %1533
  %1538 = fcmp olt double %1532, %1537
  br i1 %1538, label %1539, label %1550

1539:                                             ; preds = %1536
  %1540 = fmul double %1163, %1522
  %1541 = fdiv double %1528, %1540
  %1542 = fsub double 5.000000e-01, %1541
  br label %1550

1543:                                             ; preds = %1509
  %1544 = fmul double %1163, %1534
  %1545 = fcmp olt double %1532, %1544
  br i1 %1545, label %1546, label %1550

1546:                                             ; preds = %1543
  %1547 = fmul double %1163, %1523
  %1548 = fdiv double %1528, %1547
  %1549 = fsub double 5.000000e-01, %1548
  br label %1550

1550:                                             ; preds = %1543, %1546, %1536, %1539
  %1551 = phi double [ %1542, %1539 ], [ %1530, %1536 ], [ %1549, %1546 ], [ %1530, %1543 ]
  %1552 = fcmp ogt double %1551, 0.000000e+00
  br i1 %1552, label %1553, label %2174

1553:                                             ; preds = %1550
  %1554 = fdiv double 1.000000e+00, %1526
  %1555 = fmul double %1515, %1554
  %1556 = fmul double %1521, %1554
  %1557 = fmul double %1554, %1554
  %1558 = load ptr, ptr %1247, align 8, !tbaa !74
  %1559 = fneg double %1515
  %1560 = fmul double %1522, %1559
  %1561 = call double @llvm.fmuladd.f64(double %1526, double %1510, double %1560)
  %1562 = fmul double %1561, %1557
  %1563 = fmul double %1163, %1562
  %1564 = fmul double %1523, %1559
  %1565 = call double @llvm.fmuladd.f64(double %1526, double %1511, double %1564)
  %1566 = fmul double %1565, %1557
  %1567 = fmul double %1163, %1566
  %1568 = fneg double %1521
  %1569 = fmul double %1522, %1568
  %1570 = call double @llvm.fmuladd.f64(double %1526, double %1516, double %1569)
  %1571 = fmul double %1570, %1557
  %1572 = fmul double %1163, %1571
  %1573 = fmul double %1523, %1568
  %1574 = call double @llvm.fmuladd.f64(double %1526, double %1517, double %1573)
  %1575 = fmul double %1574, %1557
  %1576 = fmul double %1163, %1575
  call void @ScaleResampleFilter(ptr noundef %1558, double noundef %1563, double noundef %1567, double noundef %1572, double noundef %1576) #14
  br label %2174

1577:                                             ; preds = %1480
  %1578 = load double, ptr %1164, align 8, !tbaa !55
  %1579 = load double, ptr %1337, align 8, !tbaa !55
  %1580 = fmul double %1494, %1579
  %1581 = call double @llvm.fmuladd.f64(double %1578, double %1489, double %1580)
  %1582 = load double, ptr %1338, align 8, !tbaa !55
  %1583 = fmul double %1489, %1582
  %1584 = call double @llvm.fmuladd.f64(double %1583, double %1494, double %1581)
  %1585 = load double, ptr %1339, align 8, !tbaa !55
  %1586 = fadd double %1585, %1584
  %1587 = load double, ptr %1340, align 8, !tbaa !55
  %1588 = load double, ptr %1341, align 8, !tbaa !55
  %1589 = fmul double %1494, %1588
  %1590 = call double @llvm.fmuladd.f64(double %1587, double %1489, double %1589)
  %1591 = load double, ptr %1342, align 8, !tbaa !55
  %1592 = fmul double %1489, %1591
  %1593 = call double @llvm.fmuladd.f64(double %1592, double %1494, double %1590)
  %1594 = load double, ptr %1343, align 8, !tbaa !55
  %1595 = fadd double %1594, %1593
  %1596 = load ptr, ptr %1247, align 8, !tbaa !74
  %1597 = call double @llvm.fmuladd.f64(double %1582, double %1494, double %1578)
  %1598 = fmul double %1163, %1597
  %1599 = call double @llvm.fmuladd.f64(double %1582, double %1489, double %1579)
  %1600 = fmul double %1163, %1599
  %1601 = call double @llvm.fmuladd.f64(double %1591, double %1494, double %1587)
  %1602 = fmul double %1163, %1601
  %1603 = call double @llvm.fmuladd.f64(double %1591, double %1489, double %1588)
  %1604 = fmul double %1163, %1603
  call void @ScaleResampleFilter(ptr noundef %1596, double noundef %1598, double noundef %1600, double noundef %1602, double noundef %1604) #14
  br label %2174

1605:                                             ; preds = %1480
  %1606 = load double, ptr %1329, align 8, !tbaa !55
  %1607 = fsub double %1489, %1606
  %1608 = load double, ptr %1330, align 8, !tbaa !55
  %1609 = fsub double %1494, %1608
  %1610 = load double, ptr %1331, align 8, !tbaa !55
  %1611 = load double, ptr %1332, align 8, !tbaa !55
  %1612 = fneg double %1611
  %1613 = fmul double %1609, %1612
  %1614 = call double @llvm.fmuladd.f64(double %1610, double %1607, double %1613)
  %1615 = load double, ptr %1333, align 8, !tbaa !55
  %1616 = fadd double %1615, %1614
  %1617 = load double, ptr %1334, align 8, !tbaa !55
  %1618 = load double, ptr %1164, align 8, !tbaa !55
  %1619 = fneg double %1618
  %1620 = fmul double %1609, %1619
  %1621 = call double @llvm.fmuladd.f64(double %1617, double %1607, double %1620)
  %1622 = load double, ptr %1335, align 8, !tbaa !55
  %1623 = call double @llvm.fabs.f64(double %1622)
  %1624 = fcmp olt double %1623, 1.000000e-15
  br i1 %1624, label %1625, label %1628

1625:                                             ; preds = %1605
  %1626 = fneg double %1621
  %1627 = fdiv double %1626, %1616
  br label %1638

1628:                                             ; preds = %1605
  %1629 = fmul double %1622, -2.000000e+00
  %1630 = fmul double %1629, %1621
  %1631 = call double @llvm.fmuladd.f64(double %1616, double %1616, double %1630)
  %1632 = fcmp olt double %1631, 0.000000e+00
  br i1 %1632, label %1638, label %1633

1633:                                             ; preds = %1628
  %1634 = call double @sqrt(double noundef %1631) #14
  %1635 = fsub double %1634, %1616
  %1636 = load double, ptr %1335, align 8, !tbaa !55
  %1637 = fdiv double %1635, %1636
  br label %1638

1638:                                             ; preds = %1628, %1633, %1625
  %1639 = phi double [ 1.000000e+00, %1625 ], [ 1.000000e+00, %1633 ], [ 0.000000e+00, %1628 ]
  %1640 = phi double [ %1627, %1625 ], [ %1637, %1633 ], [ %1494, %1628 ]
  %1641 = fcmp ogt double %1639, 0.000000e+00
  br i1 %1641, label %1642, label %2174

1642:                                             ; preds = %1638
  %1643 = load double, ptr %1336, align 8, !tbaa !55
  %1644 = fneg double %1643
  %1645 = call double @llvm.fmuladd.f64(double %1644, double %1640, double %1607)
  %1646 = load double, ptr %1164, align 8, !tbaa !55
  %1647 = load double, ptr %1332, align 8, !tbaa !55
  %1648 = call double @llvm.fmuladd.f64(double %1647, double %1640, double %1646)
  %1649 = fdiv double %1645, %1648
  br label %2174

1650:                                             ; preds = %1480
  %1651 = load double, ptr %1328, align 8, !tbaa !55
  %1652 = fptosi double %1651 to i64
  %1653 = icmp sgt i64 %1652, 0
  br i1 %1653, label %1654, label %1850

1654:                                             ; preds = %1650
  %1655 = fmul double %1489, %1489
  %1656 = fmul double %1489, %1655
  %1657 = fmul double %1489, %1656
  %1658 = fmul double %1494, %1494
  %1659 = fmul double %1494, %1658
  %1660 = fmul double %1489, %1494
  %1661 = fmul double %1494, %1660
  %1662 = fmul double %1489, %1489
  %1663 = fmul double %1662, %1494
  %1664 = fmul double %1489, %1489
  %1665 = fmul double %1489, %1664
  %1666 = fmul double %1489, %1489
  %1667 = fmul double %1489, %1666
  %1668 = fmul double %1494, %1667
  %1669 = fmul double %1494, %1494
  %1670 = fmul double %1489, %1494
  %1671 = fmul double %1489, %1489
  %1672 = fmul double %1489, %1489
  %1673 = fmul double %1672, %1494
  %1674 = fmul double %1494, %1673
  %1675 = fmul double %1489, %1494
  %1676 = fmul double %1494, %1675
  %1677 = fmul double %1494, %1676
  %1678 = fmul double %1494, %1494
  %1679 = fmul double %1494, %1678
  %1680 = fmul double %1494, %1679
  %1681 = fmul double %1494, %1494
  %1682 = fmul double %1489, %1494
  %1683 = fmul double %1489, %1489
  %1684 = fmul double %1489, %1489
  %1685 = fmul double %1684, %1494
  %1686 = fmul double %1494, %1685
  %1687 = fmul double %1489, %1489
  %1688 = fmul double %1489, %1687
  %1689 = fmul double %1489, %1688
  %1690 = fmul double %1494, %1494
  %1691 = fmul double %1494, %1690
  %1692 = fmul double %1489, %1494
  %1693 = fmul double %1494, %1692
  %1694 = fmul double %1494, %1693
  %1695 = fmul double %1489, %1494
  %1696 = fmul double %1494, %1695
  %1697 = fmul double %1494, %1494
  %1698 = fmul double %1494, %1697
  %1699 = fmul double %1494, %1698
  %1700 = fmul double %1489, %1489
  %1701 = fmul double %1489, %1700
  %1702 = fmul double %1494, %1701
  %1703 = fmul double %1489, %1489
  %1704 = fmul double %1489, %1703
  %1705 = fmul double %1489, %1489
  %1706 = fmul double %1705, %1494
  %1707 = fmul double %1489, %1489
  %1708 = fmul double %1489, %1707
  %1709 = fmul double %1489, %1708
  %1710 = fmul double %1494, %1494
  %1711 = fmul double %1494, %1710
  %1712 = fmul double %1489, %1494
  %1713 = fmul double %1494, %1712
  %1714 = fmul double %1489, %1489
  %1715 = fmul double %1714, %1494
  %1716 = fmul double %1489, %1489
  %1717 = fmul double %1489, %1716
  %1718 = fmul double %1489, %1489
  %1719 = fmul double %1489, %1718
  %1720 = fmul double %1494, %1719
  %1721 = fmul double %1494, %1494
  %1722 = fmul double %1489, %1494
  %1723 = fmul double %1489, %1489
  %1724 = fmul double %1489, %1489
  %1725 = fmul double %1724, %1494
  %1726 = fmul double %1494, %1725
  %1727 = fmul double %1489, %1494
  %1728 = fmul double %1494, %1727
  %1729 = fmul double %1494, %1728
  %1730 = fmul double %1494, %1494
  %1731 = fmul double %1494, %1730
  %1732 = fmul double %1494, %1731
  %1733 = fmul double %1494, %1494
  %1734 = fmul double %1489, %1494
  %1735 = fmul double %1489, %1489
  %1736 = fmul double %1489, %1489
  %1737 = fmul double %1736, %1494
  %1738 = fmul double %1494, %1737
  %1739 = fmul double %1489, %1489
  %1740 = fmul double %1489, %1739
  %1741 = fmul double %1489, %1740
  %1742 = fmul double %1494, %1494
  %1743 = fmul double %1494, %1742
  %1744 = fmul double %1489, %1494
  %1745 = fmul double %1494, %1744
  %1746 = fmul double %1494, %1745
  %1747 = fmul double %1489, %1494
  %1748 = fmul double %1494, %1747
  %1749 = fmul double %1494, %1494
  %1750 = fmul double %1494, %1749
  %1751 = fmul double %1494, %1750
  %1752 = fmul double %1489, %1489
  %1753 = fmul double %1489, %1752
  %1754 = fmul double %1494, %1753
  %1755 = fmul double %1489, %1489
  %1756 = fmul double %1489, %1755
  %1757 = fmul double %1489, %1489
  %1758 = fmul double %1757, %1494
  br label %1759

1759:                                             ; preds = %1654, %1845
  %1760 = phi double [ 0.000000e+00, %1654 ], [ %1829, %1845 ]
  %1761 = phi double [ 0.000000e+00, %1654 ], [ %1847, %1845 ]
  %1762 = phi double [ 0.000000e+00, %1654 ], [ %1789, %1845 ]
  %1763 = phi double [ 0.000000e+00, %1654 ], [ %1807, %1845 ]
  %1764 = phi i64 [ 0, %1654 ], [ %1848, %1845 ]
  %1765 = phi double [ 0.000000e+00, %1654 ], [ %1771, %1845 ]
  %1766 = phi double [ 0.000000e+00, %1654 ], [ %1811, %1845 ]
  %1767 = call fastcc double @poly_basis_fn(i64 noundef %1764, double noundef %1489, double noundef %1494)
  %1768 = add nuw nsw i64 %1764, 2
  %1769 = getelementptr inbounds double, ptr %1164, i64 %1768
  %1770 = load double, ptr %1769, align 8, !tbaa !55
  %1771 = call double @llvm.fmuladd.f64(double %1767, double %1770, double %1765)
  switch i64 %1764, label %1787 [
    i64 19, label %1786
    i64 1, label %1772
    i64 18, label %1785
    i64 3, label %1773
    i64 4, label %1774
    i64 17, label %1784
    i64 6, label %1775
    i64 7, label %1776
    i64 8, label %1777
    i64 16, label %1783
    i64 10, label %1778
    i64 11, label %1779
    i64 12, label %1780
    i64 13, label %1781
    i64 15, label %1782
  ]

1772:                                             ; preds = %1759
  br label %1787

1773:                                             ; preds = %1759
  br label %1787

1774:                                             ; preds = %1759
  br label %1787

1775:                                             ; preds = %1759
  br label %1787

1776:                                             ; preds = %1759
  br label %1787

1777:                                             ; preds = %1759
  br label %1787

1778:                                             ; preds = %1759
  br label %1787

1779:                                             ; preds = %1759
  br label %1787

1780:                                             ; preds = %1759
  br label %1787

1781:                                             ; preds = %1759
  br label %1787

1782:                                             ; preds = %1759
  br label %1787

1783:                                             ; preds = %1759
  br label %1787

1784:                                             ; preds = %1759
  br label %1787

1785:                                             ; preds = %1759
  br label %1787

1786:                                             ; preds = %1759
  br label %1787

1787:                                             ; preds = %1759, %1772, %1773, %1774, %1775, %1776, %1777, %1778, %1779, %1780, %1781, %1782, %1783, %1784, %1785, %1786
  %1788 = phi double [ %1680, %1786 ], [ %1677, %1785 ], [ %1674, %1784 ], [ %1668, %1783 ], [ %1657, %1782 ], [ %1659, %1781 ], [ %1661, %1780 ], [ %1663, %1779 ], [ %1665, %1778 ], [ %1669, %1777 ], [ %1670, %1776 ], [ %1671, %1775 ], [ %1489, %1774 ], [ %1494, %1773 ], [ 1.000000e+00, %1772 ], [ 0.000000e+00, %1759 ]
  %1789 = call double @llvm.fmuladd.f64(double %1788, double %1770, double %1762)
  switch i64 %1764, label %1805 [
    i64 12, label %1797
    i64 11, label %1796
    i64 2, label %1790
    i64 3, label %1791
    i64 17, label %1801
    i64 5, label %1792
    i64 20, label %1804
    i64 13, label %1798
    i64 19, label %1803
    i64 14, label %1799
    i64 16, label %1800
    i64 18, label %1802
    i64 7, label %1793
    i64 8, label %1794
    i64 9, label %1795
  ]

1790:                                             ; preds = %1787
  br label %1805

1791:                                             ; preds = %1787
  br label %1805

1792:                                             ; preds = %1787
  br label %1805

1793:                                             ; preds = %1787
  br label %1805

1794:                                             ; preds = %1787
  br label %1805

1795:                                             ; preds = %1787
  br label %1805

1796:                                             ; preds = %1787
  br label %1805

1797:                                             ; preds = %1787
  br label %1805

1798:                                             ; preds = %1787
  br label %1805

1799:                                             ; preds = %1787
  br label %1805

1800:                                             ; preds = %1787
  br label %1805

1801:                                             ; preds = %1787
  br label %1805

1802:                                             ; preds = %1787
  br label %1805

1803:                                             ; preds = %1787
  br label %1805

1804:                                             ; preds = %1787
  br label %1805

1805:                                             ; preds = %1787, %1804, %1803, %1802, %1801, %1800, %1799, %1798, %1797, %1796, %1795, %1794, %1793, %1790, %1791, %1792
  %1806 = phi double [ %1494, %1792 ], [ %1489, %1791 ], [ 1.000000e+00, %1790 ], [ %1699, %1804 ], [ %1694, %1803 ], [ %1686, %1802 ], [ %1702, %1801 ], [ %1689, %1800 ], [ %1691, %1799 ], [ %1696, %1798 ], [ %1706, %1797 ], [ %1704, %1796 ], [ %1681, %1795 ], [ %1682, %1794 ], [ %1683, %1793 ], [ 0.000000e+00, %1787 ]
  %1807 = call double @llvm.fmuladd.f64(double %1806, double %1770, double %1763)
  %1808 = add nuw nsw i64 %1768, %1652
  %1809 = getelementptr inbounds double, ptr %1164, i64 %1808
  %1810 = load double, ptr %1809, align 8, !tbaa !55
  %1811 = call double @llvm.fmuladd.f64(double %1767, double %1810, double %1766)
  switch i64 %1764, label %1827 [
    i64 19, label %1826
    i64 1, label %1812
    i64 18, label %1825
    i64 3, label %1813
    i64 4, label %1814
    i64 17, label %1824
    i64 6, label %1815
    i64 7, label %1816
    i64 8, label %1817
    i64 16, label %1823
    i64 10, label %1818
    i64 11, label %1819
    i64 12, label %1820
    i64 13, label %1821
    i64 15, label %1822
  ]

1812:                                             ; preds = %1805
  br label %1827

1813:                                             ; preds = %1805
  br label %1827

1814:                                             ; preds = %1805
  br label %1827

1815:                                             ; preds = %1805
  br label %1827

1816:                                             ; preds = %1805
  br label %1827

1817:                                             ; preds = %1805
  br label %1827

1818:                                             ; preds = %1805
  br label %1827

1819:                                             ; preds = %1805
  br label %1827

1820:                                             ; preds = %1805
  br label %1827

1821:                                             ; preds = %1805
  br label %1827

1822:                                             ; preds = %1805
  br label %1827

1823:                                             ; preds = %1805
  br label %1827

1824:                                             ; preds = %1805
  br label %1827

1825:                                             ; preds = %1805
  br label %1827

1826:                                             ; preds = %1805
  br label %1827

1827:                                             ; preds = %1805, %1812, %1813, %1814, %1815, %1816, %1817, %1818, %1819, %1820, %1821, %1822, %1823, %1824, %1825, %1826
  %1828 = phi double [ %1732, %1826 ], [ %1729, %1825 ], [ %1726, %1824 ], [ %1720, %1823 ], [ %1709, %1822 ], [ %1711, %1821 ], [ %1713, %1820 ], [ %1715, %1819 ], [ %1717, %1818 ], [ %1721, %1817 ], [ %1722, %1816 ], [ %1723, %1815 ], [ %1489, %1814 ], [ %1494, %1813 ], [ 1.000000e+00, %1812 ], [ 0.000000e+00, %1805 ]
  %1829 = call double @llvm.fmuladd.f64(double %1828, double %1810, double %1760)
  switch i64 %1764, label %1845 [
    i64 12, label %1837
    i64 11, label %1836
    i64 2, label %1830
    i64 3, label %1831
    i64 17, label %1841
    i64 5, label %1832
    i64 20, label %1844
    i64 13, label %1838
    i64 19, label %1843
    i64 14, label %1839
    i64 16, label %1840
    i64 18, label %1842
    i64 7, label %1833
    i64 8, label %1834
    i64 9, label %1835
  ]

1830:                                             ; preds = %1827
  br label %1845

1831:                                             ; preds = %1827
  br label %1845

1832:                                             ; preds = %1827
  br label %1845

1833:                                             ; preds = %1827
  br label %1845

1834:                                             ; preds = %1827
  br label %1845

1835:                                             ; preds = %1827
  br label %1845

1836:                                             ; preds = %1827
  br label %1845

1837:                                             ; preds = %1827
  br label %1845

1838:                                             ; preds = %1827
  br label %1845

1839:                                             ; preds = %1827
  br label %1845

1840:                                             ; preds = %1827
  br label %1845

1841:                                             ; preds = %1827
  br label %1845

1842:                                             ; preds = %1827
  br label %1845

1843:                                             ; preds = %1827
  br label %1845

1844:                                             ; preds = %1827
  br label %1845

1845:                                             ; preds = %1827, %1844, %1843, %1842, %1841, %1840, %1839, %1838, %1837, %1836, %1835, %1834, %1833, %1830, %1831, %1832
  %1846 = phi double [ %1494, %1832 ], [ %1489, %1831 ], [ 1.000000e+00, %1830 ], [ %1751, %1844 ], [ %1746, %1843 ], [ %1738, %1842 ], [ %1754, %1841 ], [ %1741, %1840 ], [ %1743, %1839 ], [ %1748, %1838 ], [ %1758, %1837 ], [ %1756, %1836 ], [ %1733, %1835 ], [ %1734, %1834 ], [ %1735, %1833 ], [ 0.000000e+00, %1827 ]
  %1847 = call double @llvm.fmuladd.f64(double %1846, double %1810, double %1761)
  %1848 = add nuw nsw i64 %1764, 1
  %1849 = icmp eq i64 %1848, %1652
  br i1 %1849, label %1850, label %1759, !llvm.loop !103

1850:                                             ; preds = %1845, %1650
  %1851 = phi double [ 0.000000e+00, %1650 ], [ %1811, %1845 ]
  %1852 = phi double [ 0.000000e+00, %1650 ], [ %1771, %1845 ]
  %1853 = phi double [ 0.000000e+00, %1650 ], [ %1807, %1845 ]
  %1854 = phi double [ 0.000000e+00, %1650 ], [ %1789, %1845 ]
  %1855 = phi double [ 0.000000e+00, %1650 ], [ %1847, %1845 ]
  %1856 = phi double [ 0.000000e+00, %1650 ], [ %1829, %1845 ]
  %1857 = load ptr, ptr %1247, align 8, !tbaa !74
  %1858 = fmul double %1163, %1854
  %1859 = fmul double %1163, %1853
  %1860 = fmul double %1163, %1856
  %1861 = fmul double %1163, %1855
  call void @ScaleResampleFilter(ptr noundef %1857, double noundef %1858, double noundef %1859, double noundef %1860, double noundef %1861) #14
  br label %2174

1862:                                             ; preds = %1480
  %1863 = call double @atan2(double noundef %1494, double noundef %1489) #14
  %1864 = load double, ptr %1164, align 8, !tbaa !55
  %1865 = fsub double %1863, %1864
  %1866 = fdiv double %1865, 0x401921FB54442D18
  %1867 = call double @llvm.floor.f64(double %1866)
  %1868 = fsub double %1866, %1867
  %1869 = call double @llvm.ceil.f64(double %1866)
  %1870 = fsub double %1869, %1866
  %1871 = fcmp olt double %1868, %1870
  %1872 = select i1 %1871, double %1867, double %1869
  %1873 = fsub double %1866, %1872
  %1874 = call double @hypot(double noundef %1489, double noundef %1494) #14
  %1875 = fcmp ogt double %1874, 1.000000e-15
  %1876 = load ptr, ptr %1247, align 8, !tbaa !74
  br i1 %1875, label %1877, label %1884

1877:                                             ; preds = %1862
  %1878 = load double, ptr %1319, align 8, !tbaa !55
  %1879 = fmul double %1874, 0x401921FB54442D18
  %1880 = fdiv double %1878, %1879
  %1881 = fmul double %1163, %1880
  %1882 = load double, ptr %1321, align 8, !tbaa !55
  %1883 = fmul double %1163, %1882
  call void @ScaleResampleFilter(ptr noundef %1876, double noundef %1881, double noundef %1320, double noundef %1320, double noundef %1883) #14
  br label %1891

1884:                                             ; preds = %1862
  %1885 = load i64, ptr %1253, align 8, !tbaa !62
  %1886 = shl i64 %1885, 1
  %1887 = uitofp i64 %1886 to double
  %1888 = fmul double %1163, %1887
  %1889 = load double, ptr %1318, align 8, !tbaa !55
  %1890 = fmul double %1163, %1889
  call void @ScaleResampleFilter(ptr noundef %1876, double noundef %1888, double noundef %1317, double noundef %1317, double noundef %1890) #14
  br label %1891

1891:                                             ; preds = %1884, %1877
  %1892 = load double, ptr %1322, align 8, !tbaa !55
  %1893 = load double, ptr %1323, align 8, !tbaa !55
  %1894 = call double @llvm.fmuladd.f64(double %1873, double %1892, double %1893)
  %1895 = load i64, ptr %1324, align 8, !tbaa !66
  %1896 = sitofp i64 %1895 to double
  %1897 = fadd double %1894, %1896
  %1898 = fadd double %1897, 5.000000e-01
  %1899 = load double, ptr %1325, align 8, !tbaa !55
  %1900 = fsub double %1899, %1874
  %1901 = load double, ptr %1326, align 8, !tbaa !55
  %1902 = load i64, ptr %1327, align 8, !tbaa !67
  %1903 = sitofp i64 %1902 to double
  %1904 = call double @llvm.fmuladd.f64(double %1900, double %1901, double %1903)
  br label %2174

1905:                                             ; preds = %1480
  %1906 = load double, ptr %1303, align 8, !tbaa !55
  %1907 = fsub double %1489, %1906
  %1908 = load double, ptr %1304, align 8, !tbaa !55
  %1909 = fsub double %1494, %1908
  %1910 = call double @atan2(double noundef %1907, double noundef %1909) #14
  %1911 = load double, ptr %1305, align 8, !tbaa !55
  %1912 = load double, ptr %1306, align 8, !tbaa !55
  %1913 = fadd double %1911, %1912
  %1914 = fmul double %1913, 5.000000e-01
  %1915 = fsub double %1910, %1914
  %1916 = fdiv double %1915, 0x401921FB54442D18
  %1917 = call double @llvm.floor.f64(double %1916)
  %1918 = fsub double %1916, %1917
  %1919 = call double @llvm.ceil.f64(double %1916)
  %1920 = fsub double %1919, %1916
  %1921 = fcmp olt double %1918, %1920
  %1922 = select i1 %1921, double %1917, double %1919
  %1923 = fsub double %1916, %1922
  %1924 = fmul double %1923, 0x401921FB54442D18
  %1925 = call double @hypot(double noundef %1907, double noundef %1909) #14
  %1926 = fcmp ogt double %1925, 1.000000e-15
  %1927 = load ptr, ptr %1247, align 8, !tbaa !74
  br i1 %1926, label %1928, label %1935

1928:                                             ; preds = %1905
  %1929 = load double, ptr %1309, align 8, !tbaa !55
  %1930 = fmul double %1925, 0x401921FB54442D18
  %1931 = fdiv double %1929, %1930
  %1932 = fmul double %1163, %1931
  %1933 = load double, ptr %1311, align 8, !tbaa !55
  %1934 = fmul double %1163, %1933
  call void @ScaleResampleFilter(ptr noundef %1927, double noundef %1932, double noundef %1310, double noundef %1310, double noundef %1934) #14
  br label %1942

1935:                                             ; preds = %1905
  %1936 = load i64, ptr %1253, align 8, !tbaa !62
  %1937 = shl i64 %1936, 1
  %1938 = uitofp i64 %1937 to double
  %1939 = fmul double %1163, %1938
  %1940 = load double, ptr %1308, align 8, !tbaa !55
  %1941 = fmul double %1163, %1940
  call void @ScaleResampleFilter(ptr noundef %1927, double noundef %1939, double noundef %1307, double noundef %1307, double noundef %1941) #14
  br label %1942

1942:                                             ; preds = %1935, %1928
  %1943 = load double, ptr %1312, align 8, !tbaa !55
  %1944 = load i64, ptr %37, align 8, !tbaa !62
  %1945 = uitofp i64 %1944 to double
  %1946 = fmul double %1945, 5.000000e-01
  %1947 = call double @llvm.fmuladd.f64(double %1924, double %1943, double %1946)
  %1948 = load i64, ptr %1313, align 8, !tbaa !66
  %1949 = sitofp i64 %1948 to double
  %1950 = fadd double %1947, %1949
  %1951 = load double, ptr %1314, align 8, !tbaa !55
  %1952 = fsub double %1925, %1951
  %1953 = load double, ptr %1315, align 8, !tbaa !55
  %1954 = load i64, ptr %1316, align 8, !tbaa !67
  %1955 = sitofp i64 %1954 to double
  %1956 = call double @llvm.fmuladd.f64(double %1952, double %1953, double %1955)
  br label %2174

1957:                                             ; preds = %1480
  %1958 = sitofp i64 %1482 to double
  %1959 = fadd double %1958, 5.000000e-01
  %1960 = fmul double %1163, %1959
  %1961 = load double, ptr %1297, align 8, !tbaa !55
  %1962 = load double, ptr %1298, align 8, !tbaa !55
  %1963 = call double @llvm.fmuladd.f64(double %1960, double %1961, double %1962)
  %1964 = load double, ptr %1299, align 8, !tbaa !55
  %1965 = load double, ptr %1300, align 8, !tbaa !55
  %1966 = call double @llvm.fmuladd.f64(double %1477, double %1964, double %1965)
  %1967 = call double @sin(double noundef %1963) #14
  %1968 = load double, ptr %1301, align 8, !tbaa !55
  %1969 = call double @llvm.fmuladd.f64(double %1966, double %1967, double %1968)
  %1970 = call double @cos(double noundef %1963) #14
  %1971 = load double, ptr %1302, align 8, !tbaa !55
  %1972 = call double @llvm.fmuladd.f64(double %1966, double %1970, double %1971)
  br label %2174

1973:                                             ; preds = %1480
  %1974 = load double, ptr %1291, align 8, !tbaa !55
  %1975 = fsub double %1489, %1974
  %1976 = load double, ptr %1292, align 8, !tbaa !55
  %1977 = fsub double %1494, %1976
  %1978 = load double, ptr %1293, align 8, !tbaa !55
  %1979 = fdiv double %1975, %1978
  %1980 = call double @atan(double noundef %1979) #14
  %1981 = call double @cos(double noundef %1980) #14
  %1982 = load double, ptr %1293, align 8, !tbaa !55
  %1983 = fmul double %1980, %1982
  %1984 = fmul double %1977, %1981
  %1985 = load ptr, ptr %1247, align 8, !tbaa !74
  %1986 = call double @llvm.fmuladd.f64(double %1979, double %1979, double 1.000000e+00)
  %1987 = fdiv double 1.000000e+00, %1986
  %1988 = fmul double %1163, %1987
  %1989 = fneg double %1979
  %1990 = fmul double %1984, %1989
  %1991 = fmul double %1981, %1990
  %1992 = fmul double %1981, %1991
  %1993 = fdiv double %1992, %1982
  %1994 = fmul double %1163, %1993
  %1995 = fdiv double %1984, %1977
  %1996 = fmul double %1163, %1995
  call void @ScaleResampleFilter(ptr noundef %1985, double noundef %1988, double noundef %1294, double noundef %1994, double noundef %1996) #14
  %1997 = load double, ptr %1295, align 8, !tbaa !55
  %1998 = fadd double %1983, %1997
  %1999 = load double, ptr %1296, align 8, !tbaa !55
  %2000 = fadd double %1984, %1999
  br label %2174

2001:                                             ; preds = %1480
  %2002 = load double, ptr %1285, align 8, !tbaa !55
  %2003 = fsub double %1489, %2002
  %2004 = load double, ptr %1286, align 8, !tbaa !55
  %2005 = fsub double %1494, %2004
  %2006 = load double, ptr %1287, align 8, !tbaa !55
  %2007 = call double @llvm.fabs.f64(double %2003)
  %2008 = fneg double %2007
  %2009 = call double @llvm.fmuladd.f64(double %2006, double 0x3FF921FB54442D18, double %2008)
  %2010 = fdiv double %2009, %1163
  %2011 = fadd double %2010, 5.000000e-01
  %2012 = fcmp ogt double %2011, 0.000000e+00
  br i1 %2012, label %2013, label %2047

2013:                                             ; preds = %2001
  %2014 = fdiv double %2003, %2006
  %2015 = call double @cos(double noundef %2014) #14
  %2016 = fdiv double 1.000000e+00, %2015
  %2017 = call double @tan(double noundef %2014) #14
  %2018 = load double, ptr %1287, align 8, !tbaa !55
  %2019 = fmul double %2017, %2018
  %2020 = fmul double %2005, %2016
  %2021 = load ptr, ptr %1247, align 8, !tbaa !74
  %2022 = fmul double %2016, %2016
  %2023 = fmul double %1163, %2022
  %2024 = fmul double %2016, %2020
  %2025 = fdiv double %2024, %2018
  %2026 = fmul double %1163, %2025
  %2027 = fmul double %1163, %2016
  call void @ScaleResampleFilter(ptr noundef %2021, double noundef %2023, double noundef %1288, double noundef %2026, double noundef %2027) #14
  %2028 = fcmp oeq double %2014, 5.000000e-01
  %2029 = fcmp oeq double %2005, 5.000000e-01
  %2030 = select i1 %2028, i1 %2029, i1 false
  br i1 %2030, label %2031, label %2047

2031:                                             ; preds = %2013
  %2032 = load ptr, ptr @stderr, align 8, !tbaa !74
  %2033 = load double, ptr %1287, align 8, !tbaa !55
  %2034 = fmul double %2014, %2033
  %2035 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2032, ptr noundef nonnull @.str.101, double noundef %2034, double noundef %2005, double noundef %2019, double noundef %2020) #17
  %2036 = load ptr, ptr @stderr, align 8, !tbaa !74
  %2037 = load double, ptr %1287, align 8, !tbaa !55
  %2038 = fmul double %2014, 1.800000e+02
  %2039 = fdiv double %2038, 0x400921FB54442D18
  %2040 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2036, ptr noundef nonnull @.str.102, double noundef %2037, double noundef %2039, double noundef %2011) #17
  %2041 = load ptr, ptr @stderr, align 8, !tbaa !74
  %2042 = load double, ptr %1287, align 8, !tbaa !55
  %2043 = fdiv double %2024, %2042
  %2044 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2041, ptr noundef nonnull @.str.103, double noundef %2022, double noundef 0.000000e+00, double noundef %2043, double noundef %2016) #17
  %2045 = load ptr, ptr @stderr, align 8, !tbaa !74
  %2046 = call i32 @fflush(ptr noundef %2045)
  br label %2047

2047:                                             ; preds = %2013, %2031, %2001
  %2048 = phi double [ %1494, %2001 ], [ %2020, %2031 ], [ %2020, %2013 ]
  %2049 = phi double [ %1489, %2001 ], [ %2019, %2031 ], [ %2019, %2013 ]
  %2050 = load double, ptr %1289, align 8, !tbaa !55
  %2051 = fadd double %2049, %2050
  %2052 = load double, ptr %1290, align 8, !tbaa !55
  %2053 = fadd double %2048, %2052
  br label %2174

2054:                                             ; preds = %1480, %1480
  %2055 = load double, ptr %1270, align 8, !tbaa !55
  %2056 = fsub double %1489, %2055
  %2057 = load double, ptr %1271, align 8, !tbaa !55
  %2058 = fsub double %1494, %2057
  %2059 = fmul double %2058, %2058
  %2060 = call double @llvm.fmuladd.f64(double %2056, double %2056, double %2059)
  %2061 = call double @sqrt(double noundef %2060) #14
  %2062 = fcmp ogt double %2061, 1.000000e-15
  br i1 %2062, label %2063, label %2118

2063:                                             ; preds = %2054
  %2064 = load double, ptr %1164, align 8, !tbaa !55
  %2065 = load double, ptr %1278, align 8, !tbaa !55
  %2066 = call double @llvm.fmuladd.f64(double %2064, double %2061, double %2065)
  %2067 = load double, ptr %1279, align 8, !tbaa !55
  %2068 = call double @llvm.fmuladd.f64(double %2066, double %2061, double %2067)
  %2069 = load double, ptr %1280, align 8, !tbaa !55
  %2070 = call double @llvm.fmuladd.f64(double %2068, double %2061, double %2069)
  %2071 = load double, ptr %1281, align 8, !tbaa !55
  %2072 = load double, ptr %1282, align 8, !tbaa !55
  %2073 = call double @llvm.fmuladd.f64(double %2071, double %2061, double %2072)
  %2074 = load double, ptr %1283, align 8, !tbaa !55
  %2075 = call double @llvm.fmuladd.f64(double %2073, double %2061, double %2074)
  %2076 = load double, ptr %1284, align 8, !tbaa !55
  %2077 = call double @llvm.fmuladd.f64(double %2075, double %2061, double %2076)
  %2078 = fmul double %2064, 3.000000e+00
  %2079 = fmul double %2065, 2.000000e+00
  %2080 = call double @llvm.fmuladd.f64(double %2078, double %2061, double %2079)
  %2081 = call double @llvm.fmuladd.f64(double %2080, double %2061, double %2067)
  %2082 = fdiv double %2081, %2061
  %2083 = fmul double %2071, 3.000000e+00
  %2084 = fmul double %2072, 2.000000e+00
  %2085 = call double @llvm.fmuladd.f64(double %2083, double %2061, double %2084)
  %2086 = call double @llvm.fmuladd.f64(double %2085, double %2061, double %2074)
  %2087 = fdiv double %2086, %2061
  br i1 %1474, label %2088, label %2097

2088:                                             ; preds = %2063
  %2089 = fdiv double 1.000000e+00, %2070
  %2090 = fdiv double 1.000000e+00, %2077
  %2091 = fneg double %2089
  %2092 = fmul double %2089, %2091
  %2093 = fmul double %2082, %2092
  %2094 = fneg double %2090
  %2095 = fmul double %2090, %2094
  %2096 = fmul double %2087, %2095
  br label %2097

2097:                                             ; preds = %2088, %2063
  %2098 = phi double [ %2089, %2088 ], [ %2070, %2063 ]
  %2099 = phi double [ %2090, %2088 ], [ %2077, %2063 ]
  %2100 = phi double [ %2093, %2088 ], [ %2082, %2063 ]
  %2101 = phi double [ %2096, %2088 ], [ %2087, %2063 ]
  %2102 = load double, ptr %1270, align 8, !tbaa !55
  %2103 = call double @llvm.fmuladd.f64(double %2056, double %2098, double %2102)
  %2104 = load double, ptr %1271, align 8, !tbaa !55
  %2105 = call double @llvm.fmuladd.f64(double %2058, double %2099, double %2104)
  %2106 = load ptr, ptr %1247, align 8, !tbaa !74
  %2107 = fmul double %2056, %2100
  %2108 = call double @llvm.fmuladd.f64(double %2107, double %2056, double %2098)
  %2109 = fmul double %1163, %2108
  %2110 = fmul double %2058, %2107
  %2111 = fmul double %1163, %2110
  %2112 = fmul double %2056, %2101
  %2113 = fmul double %2058, %2112
  %2114 = fmul double %1163, %2113
  %2115 = fmul double %2058, %2101
  %2116 = call double @llvm.fmuladd.f64(double %2115, double %2058, double %2099)
  %2117 = fmul double %1163, %2116
  call void @ScaleResampleFilter(ptr noundef %2106, double noundef %2109, double noundef %2111, double noundef %2114, double noundef %2117) #14
  br label %2174

2118:                                             ; preds = %2054
  %2119 = load ptr, ptr %1247, align 8, !tbaa !74
  br i1 %1473, label %2120, label %2125

2120:                                             ; preds = %2118
  %2121 = load double, ptr %1275, align 8, !tbaa !55
  %2122 = fmul double %1163, %2121
  %2123 = load double, ptr %1277, align 8, !tbaa !55
  %2124 = fmul double %1163, %2123
  call void @ScaleResampleFilter(ptr noundef %2119, double noundef %2122, double noundef %1276, double noundef %1276, double noundef %2124) #14
  br label %2174

2125:                                             ; preds = %2118
  %2126 = load double, ptr %1272, align 8, !tbaa !55
  %2127 = fdiv double 1.000000e+00, %2126
  %2128 = fmul double %1163, %2127
  %2129 = load double, ptr %1274, align 8, !tbaa !55
  %2130 = fdiv double 1.000000e+00, %2129
  %2131 = fmul double %1163, %2130
  call void @ScaleResampleFilter(ptr noundef %2119, double noundef %2128, double noundef %1273, double noundef %1273, double noundef %2131) #14
  br label %2174

2132:                                             ; preds = %1495, %2132
  %2133 = phi double [ %2163, %2132 ], [ 0.000000e+00, %1495 ]
  %2134 = phi i64 [ %2164, %2132 ], [ 0, %1495 ]
  %2135 = phi double [ %2156, %2132 ], [ 0.000000e+00, %1495 ]
  %2136 = phi double [ %2162, %2132 ], [ 0.000000e+00, %1495 ]
  %2137 = or disjoint i64 %2134, 2
  %2138 = getelementptr inbounds double, ptr %3, i64 %2137
  %2139 = load double, ptr %2138, align 8, !tbaa !55
  %2140 = fsub double %1489, %2139
  %2141 = or disjoint i64 %2134, 3
  %2142 = getelementptr inbounds double, ptr %3, i64 %2141
  %2143 = load double, ptr %2142, align 8, !tbaa !55
  %2144 = fsub double %1494, %2143
  %2145 = fmul double %2144, %2144
  %2146 = call double @llvm.fmuladd.f64(double %2140, double %2140, double %2145)
  %2147 = load double, ptr %1164, align 8, !tbaa !55
  %2148 = call double @pow(double noundef %2146, double noundef %2147) #14
  %2149 = fcmp olt double %2148, 1.000000e+00
  %2150 = fdiv double 1.000000e+00, %2148
  %2151 = select i1 %2149, double 1.000000e+00, double %2150
  %2152 = getelementptr inbounds double, ptr %3, i64 %2134
  %2153 = load double, ptr %2152, align 8, !tbaa !55
  %2154 = load double, ptr %2138, align 8, !tbaa !55
  %2155 = fsub double %2153, %2154
  %2156 = call double @llvm.fmuladd.f64(double %2155, double %2151, double %2135)
  %2157 = or disjoint i64 %2134, 1
  %2158 = getelementptr inbounds double, ptr %3, i64 %2157
  %2159 = load double, ptr %2158, align 8, !tbaa !55
  %2160 = load double, ptr %2142, align 8, !tbaa !55
  %2161 = fsub double %2159, %2160
  %2162 = call double @llvm.fmuladd.f64(double %2161, double %2151, double %2136)
  %2163 = fadd double %2133, %2151
  %2164 = add i64 %2134, 4
  %2165 = icmp ult i64 %2164, %2
  br i1 %2165, label %2132, label %2166, !llvm.loop !104

2166:                                             ; preds = %2132, %1495
  %2167 = phi double [ 0.000000e+00, %1495 ], [ %2162, %2132 ]
  %2168 = phi double [ 0.000000e+00, %1495 ], [ %2156, %2132 ]
  %2169 = phi double [ 0.000000e+00, %1495 ], [ %2163, %2132 ]
  %2170 = fdiv double %2168, %2169
  %2171 = fdiv double %2167, %2169
  %2172 = fadd double %1489, %2170
  %2173 = fadd double %1494, %2171
  br label %2174

2174:                                             ; preds = %2097, %2125, %2120, %1638, %1642, %1550, %1553, %1480, %2166, %2047, %1973, %1957, %1942, %1891, %1850, %1577, %1496
  %2175 = phi double [ %1484, %1480 ], [ %1484, %2166 ], [ %2011, %2047 ], [ %1484, %1973 ], [ %1484, %1957 ], [ %1484, %1942 ], [ %1484, %1891 ], [ %1484, %1850 ], [ %1484, %1577 ], [ %1484, %1496 ], [ %1551, %1553 ], [ %1551, %1550 ], [ %1639, %1642 ], [ %1639, %1638 ], [ %1484, %2120 ], [ %1484, %2125 ], [ %1484, %2097 ]
  %2176 = phi double [ %1494, %1480 ], [ %2173, %2166 ], [ %2053, %2047 ], [ %2000, %1973 ], [ %1972, %1957 ], [ %1956, %1942 ], [ %1904, %1891 ], [ %1851, %1850 ], [ %1595, %1577 ], [ %1508, %1496 ], [ %1556, %1553 ], [ %1494, %1550 ], [ %1640, %1642 ], [ %1640, %1638 ], [ %1494, %2120 ], [ %1494, %2125 ], [ %2105, %2097 ]
  %2177 = phi double [ %1489, %1480 ], [ %2172, %2166 ], [ %2051, %2047 ], [ %1998, %1973 ], [ %1969, %1957 ], [ %1950, %1942 ], [ %1898, %1891 ], [ %1852, %1850 ], [ %1586, %1577 ], [ %1502, %1496 ], [ %1555, %1553 ], [ %1489, %1550 ], [ %1649, %1642 ], [ %1489, %1638 ], [ %1489, %2120 ], [ %1489, %2125 ], [ %2103, %2097 ]
  br i1 %1479, label %2178, label %2185

2178:                                             ; preds = %2174
  %2179 = load i64, ptr %1358, align 8, !tbaa !66
  %2180 = sitofp i64 %2179 to double
  %2181 = fsub double %2177, %2180
  %2182 = load i64, ptr %1359, align 8, !tbaa !67
  %2183 = sitofp i64 %2182 to double
  %2184 = fsub double %2176, %2183
  br label %2185

2185:                                             ; preds = %2178, %2174
  %2186 = phi double [ %2184, %2178 ], [ %2176, %2174 ]
  %2187 = phi double [ %2181, %2178 ], [ %2177, %2174 ]
  %2188 = fcmp ugt double %2175, 0.000000e+00
  br i1 %2188, label %2246, label %2189

2189:                                             ; preds = %2185
  %2190 = load float, ptr %1259, align 8, !tbaa !95
  %2191 = fcmp ugt float %2190, 0.000000e+00
  br i1 %2191, label %2192, label %2197

2192:                                             ; preds = %2189
  %2193 = fcmp ult float %2190, 6.553500e+04
  br i1 %2193, label %2194, label %2197

2194:                                             ; preds = %2192
  %2195 = fadd float %2190, 5.000000e-01
  %2196 = fptoui float %2195 to i16
  br label %2197

2197:                                             ; preds = %2194, %2192, %2189
  %2198 = phi i16 [ %2196, %2194 ], [ 0, %2189 ], [ -1, %2192 ]
  %2199 = getelementptr inbounds %struct._PixelPacket, ptr %1481, i64 0, i32 2
  store i16 %2198, ptr %2199, align 2, !tbaa !83
  %2200 = load float, ptr %1261, align 4, !tbaa !97
  %2201 = fcmp ugt float %2200, 0.000000e+00
  br i1 %2201, label %2202, label %2207

2202:                                             ; preds = %2197
  %2203 = fcmp ult float %2200, 6.553500e+04
  br i1 %2203, label %2204, label %2207

2204:                                             ; preds = %2202
  %2205 = fadd float %2200, 5.000000e-01
  %2206 = fptoui float %2205 to i16
  br label %2207

2207:                                             ; preds = %2204, %2202, %2197
  %2208 = phi i16 [ %2206, %2204 ], [ 0, %2197 ], [ -1, %2202 ]
  %2209 = getelementptr inbounds %struct._PixelPacket, ptr %1481, i64 0, i32 1
  store i16 %2208, ptr %2209, align 2, !tbaa !84
  %2210 = load float, ptr %1262, align 8, !tbaa !98
  %2211 = fcmp ugt float %2210, 0.000000e+00
  br i1 %2211, label %2212, label %2217

2212:                                             ; preds = %2207
  %2213 = fcmp ult float %2210, 6.553500e+04
  br i1 %2213, label %2214, label %2217

2214:                                             ; preds = %2212
  %2215 = fadd float %2210, 5.000000e-01
  %2216 = fptoui float %2215 to i16
  br label %2217

2217:                                             ; preds = %2214, %2212, %2207
  %2218 = phi i16 [ %2216, %2214 ], [ 0, %2207 ], [ -1, %2212 ]
  store i16 %2218, ptr %1481, align 2, !tbaa !85
  %2219 = load float, ptr %1264, align 4, !tbaa !100
  %2220 = fcmp ugt float %2219, 0.000000e+00
  br i1 %2220, label %2221, label %2226

2221:                                             ; preds = %2217
  %2222 = fcmp ult float %2219, 6.553500e+04
  br i1 %2222, label %2223, label %2226

2223:                                             ; preds = %2221
  %2224 = fadd float %2219, 5.000000e-01
  %2225 = fptoui float %2224 to i16
  br label %2226

2226:                                             ; preds = %2223, %2221, %2217
  %2227 = phi i16 [ %2225, %2223 ], [ 0, %2217 ], [ -1, %2221 ]
  %2228 = getelementptr inbounds %struct._PixelPacket, ptr %1481, i64 0, i32 3
  store i16 %2227, ptr %2228, align 2, !tbaa !99
  %2229 = load i32, ptr %1265, align 4, !tbaa !86
  %2230 = icmp eq i32 %2229, 12
  br i1 %2230, label %2236, label %2231

2231:                                             ; preds = %2226
  %2232 = load i32, ptr %1168, align 8, !tbaa !105
  %2233 = icmp eq i32 %2232, 2
  %2234 = icmp ne ptr %1483, null
  %2235 = and i1 %2234, %2233
  br i1 %2235, label %2238, label %2376

2236:                                             ; preds = %2226
  %2237 = icmp eq ptr %1483, null
  br i1 %2237, label %2376, label %2238

2238:                                             ; preds = %2236, %2231
  %2239 = load float, ptr %1360, align 8, !tbaa !102
  %2240 = fcmp ugt float %2239, 0.000000e+00
  br i1 %2240, label %2241, label %2374

2241:                                             ; preds = %2238
  %2242 = fcmp ult float %2239, 6.553500e+04
  br i1 %2242, label %2243, label %2374

2243:                                             ; preds = %2241
  %2244 = fadd float %2239, 5.000000e-01
  %2245 = fptoui float %2244 to i16
  br label %2374

2246:                                             ; preds = %2185
  %2247 = fadd double %2186, -5.000000e-01
  %2248 = fadd double %2187, -5.000000e-01
  %2249 = load ptr, ptr %1247, align 8, !tbaa !74
  %2250 = call i32 @ResamplePixelColor(ptr noundef %2249, double noundef %2248, double noundef %2247, ptr noundef nonnull %12) #14
  %2251 = fcmp olt double %2175, 1.000000e+00
  br i1 %2251, label %2252, label %2317

2252:                                             ; preds = %2246
  %2253 = fptrunc double %2175 to float
  %2254 = fsub double 1.000000e+00, %2175
  %2255 = fptrunc double %2254 to float
  %2256 = load float, ptr %1361, align 4, !tbaa !100
  %2257 = fsub float 6.553500e+04, %2256
  %2258 = fneg float %2253
  %2259 = call float @llvm.fmuladd.f32(float %2258, float %2257, float 6.553500e+04)
  %2260 = load float, ptr %1264, align 4, !tbaa !100
  %2261 = fsub float 6.553500e+04, %2260
  %2262 = fneg float %2255
  %2263 = call float @llvm.fmuladd.f32(float %2262, float %2261, float 6.553500e+04)
  %2264 = fpext float %2259 to double
  %2265 = call double @llvm.fmuladd.f64(double %2264, double 0xBEF0001000100010, double 1.000000e+00)
  %2266 = fptrunc double %2265 to float
  %2267 = fpext float %2263 to double
  %2268 = call double @llvm.fmuladd.f64(double %2267, double 0xBEF0001000100010, double 1.000000e+00)
  %2269 = fptrunc double %2268 to float
  %2270 = fadd float %2266, %2269
  %2271 = fcmp olt float %2270, 0.000000e+00
  %2272 = fcmp ogt float %2270, 1.000000e+00
  %2273 = select i1 %2272, float 1.000000e+00, float %2270
  %2274 = select i1 %2271, float 0.000000e+00, float %2273
  %2275 = fpext float %2274 to double
  %2276 = fsub double 1.000000e+00, %2275
  %2277 = fmul double %2276, 6.553500e+04
  %2278 = fptrunc double %2277 to float
  store float %2278, ptr %1361, align 4, !tbaa !100
  %2279 = fcmp olt float %2274, 0.000000e+00
  %2280 = select i1 %2279, double -1.000000e+00, double 1.000000e+00
  %2281 = fmul double %2280, %2275
  %2282 = fcmp ult double %2281, 1.000000e-15
  %2283 = fdiv double 1.000000e+00, %2275
  %2284 = fdiv double %2280, 1.000000e-15
  %2285 = select i1 %2282, double %2284, double %2283
  %2286 = load float, ptr %1362, align 8, !tbaa !95
  %2287 = load float, ptr %1259, align 8, !tbaa !95
  %2288 = fmul float %2287, %2269
  %2289 = call float @llvm.fmuladd.f32(float %2266, float %2286, float %2288)
  %2290 = fpext float %2289 to double
  %2291 = fmul double %2285, %2290
  %2292 = fptrunc double %2291 to float
  store float %2292, ptr %1362, align 8, !tbaa !95
  %2293 = load float, ptr %1363, align 4, !tbaa !97
  %2294 = load float, ptr %1261, align 4, !tbaa !97
  %2295 = fmul float %2294, %2269
  %2296 = call float @llvm.fmuladd.f32(float %2266, float %2293, float %2295)
  %2297 = fpext float %2296 to double
  %2298 = fmul double %2285, %2297
  %2299 = fptrunc double %2298 to float
  store float %2299, ptr %1363, align 4, !tbaa !97
  %2300 = load float, ptr %1364, align 8, !tbaa !98
  %2301 = load float, ptr %1262, align 8, !tbaa !98
  %2302 = fmul float %2301, %2269
  %2303 = call float @llvm.fmuladd.f32(float %2266, float %2300, float %2302)
  %2304 = fpext float %2303 to double
  %2305 = fmul double %2285, %2304
  %2306 = fptrunc double %2305 to float
  store float %2306, ptr %1364, align 8, !tbaa !98
  %2307 = load i32, ptr %1365, align 4, !tbaa !101
  %2308 = icmp eq i32 %2307, 12
  br i1 %2308, label %2309, label %2317

2309:                                             ; preds = %2252
  %2310 = load float, ptr %1366, align 8, !tbaa !102
  %2311 = load float, ptr %1367, align 8, !tbaa !102
  %2312 = fmul float %2311, %2269
  %2313 = call float @llvm.fmuladd.f32(float %2266, float %2310, float %2312)
  %2314 = fpext float %2313 to double
  %2315 = fmul double %2285, %2314
  %2316 = fptrunc double %2315 to float
  store float %2316, ptr %1366, align 8, !tbaa !102
  br label %2317

2317:                                             ; preds = %2309, %2252, %2246
  %2318 = load float, ptr %1368, align 8, !tbaa !95
  %2319 = fcmp ugt float %2318, 0.000000e+00
  br i1 %2319, label %2320, label %2325

2320:                                             ; preds = %2317
  %2321 = fcmp ult float %2318, 6.553500e+04
  br i1 %2321, label %2322, label %2325

2322:                                             ; preds = %2320
  %2323 = fadd float %2318, 5.000000e-01
  %2324 = fptoui float %2323 to i16
  br label %2325

2325:                                             ; preds = %2322, %2320, %2317
  %2326 = phi i16 [ %2324, %2322 ], [ 0, %2317 ], [ -1, %2320 ]
  %2327 = getelementptr inbounds %struct._PixelPacket, ptr %1481, i64 0, i32 2
  store i16 %2326, ptr %2327, align 2, !tbaa !83
  %2328 = load float, ptr %1369, align 4, !tbaa !97
  %2329 = fcmp ugt float %2328, 0.000000e+00
  br i1 %2329, label %2330, label %2335

2330:                                             ; preds = %2325
  %2331 = fcmp ult float %2328, 6.553500e+04
  br i1 %2331, label %2332, label %2335

2332:                                             ; preds = %2330
  %2333 = fadd float %2328, 5.000000e-01
  %2334 = fptoui float %2333 to i16
  br label %2335

2335:                                             ; preds = %2332, %2330, %2325
  %2336 = phi i16 [ %2334, %2332 ], [ 0, %2325 ], [ -1, %2330 ]
  %2337 = getelementptr inbounds %struct._PixelPacket, ptr %1481, i64 0, i32 1
  store i16 %2336, ptr %2337, align 2, !tbaa !84
  %2338 = load float, ptr %1370, align 8, !tbaa !98
  %2339 = fcmp ugt float %2338, 0.000000e+00
  br i1 %2339, label %2340, label %2345

2340:                                             ; preds = %2335
  %2341 = fcmp ult float %2338, 6.553500e+04
  br i1 %2341, label %2342, label %2345

2342:                                             ; preds = %2340
  %2343 = fadd float %2338, 5.000000e-01
  %2344 = fptoui float %2343 to i16
  br label %2345

2345:                                             ; preds = %2342, %2340, %2335
  %2346 = phi i16 [ %2344, %2342 ], [ 0, %2335 ], [ -1, %2340 ]
  store i16 %2346, ptr %1481, align 2, !tbaa !85
  %2347 = load float, ptr %1371, align 4, !tbaa !100
  %2348 = fcmp ugt float %2347, 0.000000e+00
  br i1 %2348, label %2349, label %2354

2349:                                             ; preds = %2345
  %2350 = fcmp ult float %2347, 6.553500e+04
  br i1 %2350, label %2351, label %2354

2351:                                             ; preds = %2349
  %2352 = fadd float %2347, 5.000000e-01
  %2353 = fptoui float %2352 to i16
  br label %2354

2354:                                             ; preds = %2351, %2349, %2345
  %2355 = phi i16 [ %2353, %2351 ], [ 0, %2345 ], [ -1, %2349 ]
  %2356 = getelementptr inbounds %struct._PixelPacket, ptr %1481, i64 0, i32 3
  store i16 %2355, ptr %2356, align 2, !tbaa !99
  %2357 = load i32, ptr %1265, align 4, !tbaa !86
  %2358 = icmp eq i32 %2357, 12
  br i1 %2358, label %2364, label %2359

2359:                                             ; preds = %2354
  %2360 = load i32, ptr %1168, align 8, !tbaa !105
  %2361 = icmp eq i32 %2360, 2
  %2362 = icmp ne ptr %1483, null
  %2363 = and i1 %2362, %2361
  br i1 %2363, label %2366, label %2376

2364:                                             ; preds = %2354
  %2365 = icmp eq ptr %1483, null
  br i1 %2365, label %2376, label %2366

2366:                                             ; preds = %2364, %2359
  %2367 = load float, ptr %1372, align 8, !tbaa !102
  %2368 = fcmp ugt float %2367, 0.000000e+00
  br i1 %2368, label %2369, label %2374

2369:                                             ; preds = %2366
  %2370 = fcmp ult float %2367, 6.553500e+04
  br i1 %2370, label %2371, label %2374

2371:                                             ; preds = %2369
  %2372 = fadd float %2367, 5.000000e-01
  %2373 = fptoui float %2372 to i16
  br label %2374

2374:                                             ; preds = %2366, %2369, %2371, %2238, %2241, %2243
  %2375 = phi i16 [ %2245, %2243 ], [ 0, %2238 ], [ -1, %2241 ], [ %2373, %2371 ], [ 0, %2366 ], [ -1, %2369 ]
  store i16 %2375, ptr %1483, align 2, !tbaa !106
  br label %2376

2376:                                             ; preds = %2374, %2364, %2359, %2236, %2231
  %2377 = getelementptr inbounds %struct._PixelPacket, ptr %1481, i64 1
  %2378 = getelementptr inbounds i16, ptr %1483, i64 1
  %2379 = add nuw nsw i64 %1482, 1
  %2380 = load i64, ptr %1253, align 8, !tbaa !62
  %2381 = icmp slt i64 %2379, %2380
  br i1 %2381, label %1480, label %2382, !llvm.loop !107

2382:                                             ; preds = %2376, %1469
  %2383 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %1248, ptr noundef %5) #16
  %2384 = icmp eq i32 %2383, 0
  %2385 = select i1 %2384, i32 0, i32 %1379
  %2386 = load ptr, ptr %1373, align 8, !tbaa !108
  %2387 = icmp eq ptr %2386, null
  br i1 %2387, label %2397, label %2388

2388:                                             ; preds = %2382
  %2389 = add nsw i64 %1378, 1
  %2390 = load i64, ptr %39, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #14
  %2391 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.104, ptr noundef nonnull %1374) #14
  %2392 = load ptr, ptr %1373, align 8, !tbaa !108
  %2393 = load ptr, ptr %1375, align 8, !tbaa !109
  %2394 = call i32 %2392(ptr noundef nonnull %7, i64 noundef %1378, i64 noundef %2390, ptr noundef %2393) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #14
  %2395 = icmp eq i32 %2394, 0
  %2396 = select i1 %2395, i32 0, i32 %2385
  br label %2397

2397:                                             ; preds = %2382, %2388, %1376
  %2398 = phi i32 [ 0, %1376 ], [ %2396, %2388 ], [ %2385, %2382 ]
  %2399 = phi i64 [ %1378, %1376 ], [ %2389, %2388 ], [ %1378, %2382 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #14
  %2400 = add nuw nsw i64 %1377, 1
  %2401 = load i64, ptr %1249, align 8, !tbaa !64
  %2402 = icmp slt i64 %2400, %2401
  br i1 %2402, label %1376, label %2403, !llvm.loop !110

2403:                                             ; preds = %2397
  %2404 = icmp eq i32 %2398, 0
  br label %2405

2405:                                             ; preds = %2403, %1246
  %2406 = phi i1 [ false, %1246 ], [ %2404, %2403 ]
  %2407 = call ptr @DestroyCacheView(ptr noundef %1248) #14
  %2408 = call i64 @GetMagickResourceLimit(i32 noundef 6) #14
  %2409 = icmp sgt i64 %2408, 0
  br i1 %2409, label %2410, label %2421

2410:                                             ; preds = %2405, %2417
  %2411 = phi i64 [ %2418, %2417 ], [ 0, %2405 ]
  %2412 = getelementptr inbounds ptr, ptr %1247, i64 %2411
  %2413 = load ptr, ptr %2412, align 8, !tbaa !74
  %2414 = icmp eq ptr %2413, null
  br i1 %2414, label %2417, label %2415

2415:                                             ; preds = %2410
  %2416 = call ptr @DestroyResampleFilter(ptr noundef nonnull %2413) #14
  store ptr %2416, ptr %2412, align 8, !tbaa !74
  br label %2417

2417:                                             ; preds = %2415, %2410
  %2418 = add nuw nsw i64 %2411, 1
  %2419 = call i64 @GetMagickResourceLimit(i32 noundef 6) #14
  %2420 = icmp slt i64 %2418, %2419
  br i1 %2420, label %2410, label %2421, !llvm.loop !90

2421:                                             ; preds = %2417, %2405
  %2422 = call ptr @RelinquishAlignedMemory(ptr noundef %1247) #14
  br i1 %2406, label %2423, label %2425

2423:                                             ; preds = %2421
  %2424 = call ptr @DestroyImage(ptr noundef %1168) #14
  br label %2425

2425:                                             ; preds = %2423, %2421
  %2426 = phi ptr [ %2424, %2423 ], [ %1168, %2421 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #14
  %2427 = load i32, ptr %8, align 4, !tbaa !61
  %2428 = icmp ne i32 %2427, 9
  %2429 = or i32 %513, %504
  %2430 = icmp ne i32 %2429, 0
  %2431 = or i1 %2430, %2428
  br i1 %2431, label %2434, label %2432

2432:                                             ; preds = %2425
  %2433 = getelementptr inbounds %struct._Image, ptr %2426, i64 0, i32 26, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2433, i8 0, i64 16, i1 false)
  br label %2434

2434:                                             ; preds = %2432, %2425
  %2435 = call ptr @RelinquishMagickMemory(ptr noundef %1164) #14
  br label %2436

2436:                                             ; preds = %1165, %33, %1129, %1161, %2434, %1173, %26, %24
  %2437 = phi ptr [ null, %24 ], [ %32, %26 ], [ null, %1173 ], [ %2426, %2434 ], [ null, %1161 ], [ null, %1129 ], [ null, %33 ], [ null, %1165 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  ret ptr %2437
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @DistortResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._RectangleInfo, align 8
  %6 = alloca [12 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1501, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #14
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq i64 %1, 0
  %15 = icmp eq i64 %2, 0
  %16 = or i1 %14, %15
  br i1 %16, label %80, label %17

17:                                               ; preds = %13
  %18 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 96) #14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !62
  %21 = uitofp i64 %20 to double
  %22 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 4
  store double %21, ptr %22, align 16, !tbaa !55
  %23 = uitofp i64 %1 to double
  %24 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 6
  store double %23, ptr %24, align 16, !tbaa !55
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !64
  %27 = uitofp i64 %26 to double
  %28 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 9
  store double %27, ptr %28, align 8, !tbaa !55
  %29 = uitofp i64 %2 to double
  %30 = getelementptr inbounds [12 x double], ptr %6, i64 0, i64 11
  store double %29, ptr %30, align 8, !tbaa !55
  %31 = call i32 @GetImageVirtualPixelMethod(ptr noundef %0) #14
  %32 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %80, label %34

34:                                               ; preds = %17
  %35 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %32, i32 noundef 8) #14
  %36 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !88
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %32, i32 noundef 8) #14
  %41 = call ptr @DistortImage(ptr noundef nonnull %32, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3)
  %42 = call ptr @DestroyImage(ptr noundef nonnull %32) #14
  %43 = icmp eq ptr %41, null
  br i1 %43, label %80, label %44

44:                                               ; preds = %39
  %45 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %41, i32 noundef 4) #14
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %46) #14
  br label %73

47:                                               ; preds = %34
  %48 = call i32 @SeparateImageChannel(ptr noundef nonnull %32, i32 noundef 64) #14
  %49 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %32, i32 noundef 6) #14
  %50 = call ptr @DistortImage(ptr noundef nonnull %32, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3)
  %51 = call ptr @DestroyImage(ptr noundef nonnull %32) #14
  %52 = icmp eq ptr %50, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %47
  %54 = call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %53
  %57 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %54, i32 noundef 8) #14
  %58 = call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %54, i32 noundef 8) #14
  %59 = call ptr @DistortImage(ptr noundef nonnull %54, i32 noundef 1, i64 noundef 12, ptr noundef nonnull %6, i32 noundef 1, ptr noundef %3)
  %60 = call ptr @DestroyImage(ptr noundef nonnull %54) #14
  %61 = icmp ne ptr %59, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %59, i32 noundef 4) #14
  %64 = call i32 @SetImageAlphaChannel(ptr noundef nonnull %50, i32 noundef 4) #14
  %65 = call i32 @CompositeImage(ptr noundef nonnull %59, i32 noundef 17, ptr noundef nonnull %50, i64 noundef 0, i64 noundef 0) #14
  %66 = getelementptr inbounds %struct._Image, ptr %59, i64 0, i32 58
  call void @InheritException(ptr noundef %3, ptr noundef nonnull %66) #14
  br label %67

67:                                               ; preds = %56, %62
  %68 = phi ptr [ %59, %62 ], [ null, %56 ]
  %69 = call ptr @DestroyImage(ptr noundef nonnull %50) #14
  br label %70

70:                                               ; preds = %67, %53, %47
  %71 = phi ptr [ undef, %47 ], [ undef, %53 ], [ %68, %67 ]
  %72 = phi i1 [ false, %47 ], [ false, %53 ], [ %61, %67 ]
  br i1 %72, label %73, label %80

73:                                               ; preds = %70, %44
  %74 = phi ptr [ %41, %44 ], [ %71, %70 ]
  %75 = call i32 @SetImageVirtualPixelMethod(ptr noundef %74, i32 noundef %31) #14
  store i64 %1, ptr %5, align 8, !tbaa !63
  %76 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 1
  store i64 %2, ptr %76, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct._RectangleInfo, ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 0, i64 16, i1 false)
  %78 = call ptr @CropImage(ptr noundef %74, ptr noundef nonnull %5, ptr noundef %3) #14
  %79 = call ptr @DestroyImage(ptr noundef %74) #14
  br label %80

80:                                               ; preds = %39, %17, %13, %70, %73
  %81 = phi ptr [ %78, %73 ], [ null, %70 ], [ null, %13 ], [ null, %17 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  ret ptr %81
}

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GetImageVirtualPixelMethod(ptr noundef) local_unnamed_addr #2

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SetImageVirtualPixelMethod(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #2

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SeparateImageChannel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CompositeImage(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CropImage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GenerateCoefficients(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x double], align 16
  %8 = alloca [2 x double], align 16
  %9 = alloca [1 x ptr], align 8
  %10 = alloca [8 x double], align 16
  %11 = alloca [4 x double], align 16
  %12 = icmp eq i64 %4, 0
  %13 = select i1 %12, i64 0, i64 2
  %14 = select i1 %12, i64 3, i64 1
  %15 = select i1 %12, i64 2, i64 0
  %16 = select i1 %12, i64 2, i64 %4
  %17 = add i64 %16, 2
  %18 = shl i64 %17, 2
  %19 = icmp ugt i64 %18, %2
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, ptr %1, align 4, !tbaa !61
  switch i32 %21, label %23 [
    i32 6, label %22
    i32 7, label %22
    i32 4, label %22
  ]

22:                                               ; preds = %20, %20, %20
  store i32 1, ptr %1, align 4, !tbaa !61
  br label %23

23:                                               ; preds = %20, %22, %6
  %24 = load i32, ptr %1, align 4, !tbaa !61
  switch i32 %24, label %75 [
    i32 1, label %25
    i32 8, label %27
    i32 7, label %67
    i32 6, label %76
    i32 16, label %69
    i32 9, label %70
    i32 3, label %71
    i32 2, label %71
    i32 13, label %71
    i32 12, label %71
    i32 10, label %72
    i32 11, label %72
    i32 4, label %73
    i32 5, label %73
    i32 14, label %74
    i32 15, label %74
  ]

25:                                               ; preds = %23
  %26 = mul i64 %16, 3
  br label %76

27:                                               ; preds = %23
  %28 = icmp ult i64 %2, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = add nsw i64 %2, -1
  %31 = urem i64 %30, %17
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 438, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #14
  br label %1080

35:                                               ; preds = %29, %27
  %36 = load double, ptr %3, align 8, !tbaa !55
  %37 = fcmp olt double %36, 1.000000e+00
  %38 = fcmp ogt double %36, 5.000000e+00
  %39 = or i1 %37, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = tail call double @llvm.floor.f64(double %36)
  %42 = fcmp une double %41, %36
  %43 = fadd double %36, -1.500000e+00
  %44 = fcmp ogt double %43, 1.000000e-15
  %45 = and i1 %42, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = fadd double %36, 1.000000e+00
  %48 = fadd double %36, 2.000000e+00
  %49 = fmul double %47, %48
  %50 = fmul double %49, 5.000000e-01
  %51 = tail call double @llvm.floor.f64(double %50)
  %52 = fptoui double %51 to i64
  br label %53

53:                                               ; preds = %35, %40, %46
  %54 = phi i64 [ %52, %46 ], [ 0, %40 ], [ 0, %35 ]
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 446, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.120) #14
  br label %1080

58:                                               ; preds = %53
  %59 = mul i64 %54, %16
  %60 = add i64 %59, 2
  %61 = mul i64 %54, %17
  %62 = add i64 %61, 1
  %63 = icmp ugt i64 %62, %2
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = uitofp i64 %54 to double
  %66 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 452, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.118, double noundef %65) #14
  br label %1080

67:                                               ; preds = %23
  %68 = shl i64 %16, 2
  br label %76

69:                                               ; preds = %23
  br label %76

70:                                               ; preds = %23
  br label %76

71:                                               ; preds = %23, %23, %23, %23
  br label %76

72:                                               ; preds = %23, %23
  br label %76

73:                                               ; preds = %23, %23
  br label %76

74:                                               ; preds = %23, %23
  br label %76

75:                                               ; preds = %23
  tail call void @perror(ptr noundef nonnull @.str.122) #17
  br label %76

76:                                               ; preds = %23, %58, %75, %74, %73, %72, %71, %70, %69, %67, %25
  %77 = phi i64 [ %13, %75 ], [ %13, %74 ], [ %13, %73 ], [ %13, %72 ], [ %13, %71 ], [ %13, %70 ], [ %13, %69 ], [ %13, %67 ], [ %13, %58 ], [ %13, %25 ], [ 2, %23 ]
  %78 = phi i64 [ %14, %75 ], [ %14, %74 ], [ %14, %73 ], [ %14, %72 ], [ %14, %71 ], [ %14, %70 ], [ %14, %69 ], [ %14, %67 ], [ %14, %58 ], [ %14, %25 ], [ 1, %23 ]
  %79 = phi i64 [ %15, %75 ], [ %15, %74 ], [ %15, %73 ], [ %15, %72 ], [ %15, %71 ], [ %15, %70 ], [ %15, %69 ], [ %15, %67 ], [ %15, %58 ], [ %15, %25 ], [ 0, %23 ]
  %80 = phi i64 [ 0, %75 ], [ 10, %74 ], [ 9, %73 ], [ 8, %72 ], [ 6, %71 ], [ 5, %70 ], [ 1, %69 ], [ %68, %67 ], [ %60, %58 ], [ %26, %25 ], [ 10, %23 ]
  %81 = tail call ptr @AcquireQuantumMemory(i64 noundef %80, i64 noundef 8) #15
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %76
  %84 = icmp eq i64 %80, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  %86 = shl nuw i64 %80, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %81, i8 0, i64 %86, i1 false), !tbaa !55
  br label %89

87:                                               ; preds = %76
  %88 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 506, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.123) #14
  br label %1080

89:                                               ; preds = %85, %83
  %90 = load i32, ptr %1, align 4, !tbaa !61
  switch i32 %90, label %1079 [
    i32 1, label %91
    i32 2, label %211
    i32 3, label %259
    i32 4, label %366
    i32 5, label %440
    i32 6, label %460
    i32 7, label %460
    i32 8, label %542
    i32 9, label %625
    i32 10, label %708
    i32 11, label %708
    i32 12, label %905
    i32 13, label %905
    i32 14, label %950
    i32 15, label %950
    i32 16, label %1058
  ]

91:                                               ; preds = %89
  %92 = urem i64 %2, %17
  %93 = icmp ne i64 %92, 0
  %94 = icmp ugt i64 %17, %2
  %95 = or i1 %94, %93
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 530, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.124, double noundef 1.000000e+00) #14
  %98 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  br label %1080

99:                                               ; preds = %91
  %100 = icmp eq i64 %17, %2
  br i1 %100, label %101, label %128

101:                                              ; preds = %99
  %102 = icmp eq i64 %77, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = getelementptr double, ptr %3, i64 %77
  %105 = getelementptr double, ptr %81, i64 2
  %106 = tail call i64 @llvm.umax.i64(i64 %16, i64 1)
  br label %120

107:                                              ; preds = %101
  store double 1.000000e+00, ptr %81, align 8, !tbaa !55
  %108 = load double, ptr %3, align 8, !tbaa !55
  %109 = getelementptr inbounds double, ptr %3, i64 2
  %110 = load double, ptr %109, align 8, !tbaa !55
  %111 = fsub double %108, %110
  %112 = getelementptr inbounds double, ptr %81, i64 2
  store double %111, ptr %112, align 8, !tbaa !55
  %113 = getelementptr inbounds double, ptr %81, i64 4
  store double 1.000000e+00, ptr %113, align 8, !tbaa !55
  %114 = getelementptr inbounds double, ptr %3, i64 1
  %115 = load double, ptr %114, align 8, !tbaa !55
  %116 = getelementptr inbounds double, ptr %3, i64 3
  %117 = load double, ptr %116, align 8, !tbaa !55
  %118 = fsub double %115, %117
  %119 = getelementptr inbounds double, ptr %81, i64 5
  store double %118, ptr %119, align 8, !tbaa !55
  br label %1080

120:                                              ; preds = %103, %120
  %121 = phi i64 [ 0, %103 ], [ %126, %120 ]
  %122 = getelementptr double, ptr %104, i64 %121
  %123 = load double, ptr %122, align 8, !tbaa !55
  %124 = mul i64 %121, 3
  %125 = getelementptr double, ptr %105, i64 %124
  store double %123, ptr %125, align 8, !tbaa !55
  %126 = add nuw i64 %121, 1
  %127 = icmp eq i64 %126, %106
  br i1 %127, label %1080, label %120, !llvm.loop !111

128:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  %129 = tail call ptr @AcquireMagickMatrix(i64 noundef 3, i64 noundef 3) #14
  %130 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 8) #15
  %131 = icmp eq ptr %129, null
  %132 = icmp eq ptr %130, null
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = tail call i64 @llvm.umax.i64(i64 %16, i64 1)
  br label %146

136:                                              ; preds = %128
  %137 = tail call ptr @RelinquishMagickMatrix(ptr noundef %129, i64 noundef 3) #14
  %138 = tail call ptr @RelinquishMagickMemory(ptr noundef %130) #14
  %139 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %140 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 572, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #14
  br label %209

141:                                              ; preds = %146
  %142 = icmp eq i64 %2, 0
  br i1 %142, label %163, label %143

143:                                              ; preds = %141
  %144 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  %145 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  br label %153

146:                                              ; preds = %134, %146
  %147 = phi i64 [ %151, %146 ], [ 0, %134 ]
  %148 = mul i64 %147, 3
  %149 = getelementptr inbounds double, ptr %81, i64 %148
  %150 = getelementptr inbounds ptr, ptr %130, i64 %147
  store ptr %149, ptr %150, align 8, !tbaa !74
  %151 = add nuw i64 %147, 1
  %152 = icmp eq i64 %151, %135
  br i1 %152, label %141, label %146, !llvm.loop !112

153:                                              ; preds = %143, %153
  %154 = phi i64 [ 0, %143 ], [ %161, %153 ]
  %155 = getelementptr double, ptr %3, i64 %154
  %156 = getelementptr double, ptr %155, i64 %79
  %157 = load double, ptr %156, align 8, !tbaa !55
  store double %157, ptr %7, align 16, !tbaa !55
  %158 = getelementptr double, ptr %155, i64 %78
  %159 = load double, ptr %158, align 8, !tbaa !55
  store double %159, ptr %144, align 8, !tbaa !55
  store double 1.000000e+00, ptr %145, align 16, !tbaa !55
  %160 = getelementptr double, ptr %155, i64 %77
  call void @LeastSquaresAddTerms(ptr noundef %129, ptr noundef %130, ptr noundef nonnull %7, ptr noundef %160, i64 noundef 3, i64 noundef %16) #14
  %161 = add i64 %154, %17
  %162 = icmp ult i64 %161, %2
  br i1 %162, label %153, label %163, !llvm.loop !113

163:                                              ; preds = %153, %141
  %164 = shl i64 %17, 1
  %165 = icmp eq i64 %164, %2
  br i1 %165, label %166, label %198

166:                                              ; preds = %163
  %167 = getelementptr inbounds double, ptr %3, i64 %79
  %168 = load double, ptr %167, align 8, !tbaa !55
  %169 = getelementptr double, ptr %3, i64 %17
  %170 = getelementptr double, ptr %169, i64 %78
  %171 = load double, ptr %170, align 8, !tbaa !55
  %172 = getelementptr inbounds double, ptr %3, i64 %78
  %173 = load double, ptr %172, align 8, !tbaa !55
  %174 = fsub double %171, %173
  %175 = fsub double %168, %174
  store double %175, ptr %7, align 16, !tbaa !55
  %176 = getelementptr double, ptr %169, i64 %79
  %177 = load double, ptr %176, align 8, !tbaa !55
  %178 = fsub double %177, %168
  %179 = fadd double %173, %178
  %180 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 1
  store double %179, ptr %180, align 8, !tbaa !55
  %181 = getelementptr inbounds [3 x double], ptr %7, i64 0, i64 2
  store double 1.000000e+00, ptr %181, align 16, !tbaa !55
  %182 = icmp eq i64 %77, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  %184 = load double, ptr %3, align 8, !tbaa !55
  %185 = getelementptr inbounds double, ptr %3, i64 5
  %186 = load double, ptr %185, align 8, !tbaa !55
  %187 = fsub double %184, %186
  %188 = getelementptr inbounds double, ptr %3, i64 1
  %189 = load double, ptr %188, align 8, !tbaa !55
  %190 = fadd double %187, %189
  store double %190, ptr %8, align 16, !tbaa !55
  %191 = getelementptr inbounds double, ptr %3, i64 4
  %192 = load double, ptr %191, align 8, !tbaa !55
  %193 = fadd double %189, %192
  %194 = fsub double %193, %184
  %195 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 1
  store double %194, ptr %195, align 8, !tbaa !55
  call void @LeastSquaresAddTerms(ptr noundef %129, ptr noundef %130, ptr noundef nonnull %7, ptr noundef nonnull %8, i64 noundef 3, i64 noundef 2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %198

196:                                              ; preds = %166
  %197 = getelementptr inbounds double, ptr %3, i64 %77
  call void @LeastSquaresAddTerms(ptr noundef %129, ptr noundef %130, ptr noundef nonnull %7, ptr noundef nonnull %197, i64 noundef 3, i64 noundef %16) #14
  br label %198

198:                                              ; preds = %183, %196, %163
  %199 = call i32 @GaussJordanElimination(ptr noundef %129, ptr noundef %130, i64 noundef 3, i64 noundef %16) #14
  %200 = call ptr @RelinquishMagickMatrix(ptr noundef %129, i64 noundef 3) #14
  %201 = call ptr @RelinquishMagickMemory(ptr noundef %130) #14
  %202 = icmp eq i32 %199, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %205 = load i32, ptr %1, align 4, !tbaa !61
  %206 = zext i32 %205 to i64
  %207 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %206) #14
  %208 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 618, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %207) #14
  br label %209

209:                                              ; preds = %198, %203, %136
  %210 = phi ptr [ null, %136 ], [ null, %203 ], [ %81, %198 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %1080

211:                                              ; preds = %89
  %212 = icmp eq i64 %2, 6
  br i1 %212, label %219, label %213

213:                                              ; preds = %211
  %214 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %215 = load i32, ptr %1, align 4, !tbaa !61
  %216 = zext i32 %215 to i64
  %217 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %216) #14
  %218 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 644, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.126, ptr noundef %217) #14
  br label %1080

219:                                              ; preds = %211
  %220 = getelementptr inbounds i8, ptr %3, i64 40
  %221 = load double, ptr %220, align 8, !tbaa !55
  %222 = getelementptr inbounds i8, ptr %3, i64 32
  %223 = load double, ptr %222, align 8, !tbaa !55
  %224 = getelementptr inbounds i8, ptr %3, i64 24
  %225 = load double, ptr %224, align 8, !tbaa !55
  %226 = getelementptr inbounds i8, ptr %3, i64 16
  %227 = load double, ptr %226, align 8, !tbaa !55
  %228 = getelementptr inbounds i8, ptr %3, i64 8
  %229 = load double, ptr %228, align 8, !tbaa !55
  %230 = load double, ptr %3, align 8, !tbaa !55
  %231 = fneg double %227
  %232 = fmul double %229, %231
  %233 = tail call double @llvm.fmuladd.f64(double %230, double %225, double %232)
  %234 = fcmp olt double %233, 0.000000e+00
  %235 = select i1 %234, double -1.000000e+00, double 1.000000e+00
  %236 = fmul double %233, %235
  %237 = fcmp ult double %236, 1.000000e-15
  %238 = fdiv double 1.000000e+00, %233
  %239 = fdiv double %235, 1.000000e-15
  %240 = select i1 %237, double %239, double %238
  %241 = fmul double %225, %240
  store double %241, ptr %81, align 8, !tbaa !55
  %242 = fmul double %240, %231
  %243 = getelementptr inbounds double, ptr %81, i64 1
  store double %242, ptr %243, align 8, !tbaa !55
  %244 = fneg double %223
  %245 = fmul double %225, %244
  %246 = tail call double @llvm.fmuladd.f64(double %227, double %221, double %245)
  %247 = fmul double %246, %240
  %248 = getelementptr inbounds double, ptr %81, i64 2
  store double %247, ptr %248, align 8, !tbaa !55
  %249 = fneg double %229
  %250 = fmul double %240, %249
  %251 = getelementptr inbounds double, ptr %81, i64 3
  store double %250, ptr %251, align 8, !tbaa !55
  %252 = fmul double %230, %240
  %253 = getelementptr inbounds double, ptr %81, i64 4
  store double %252, ptr %253, align 8, !tbaa !55
  %254 = fneg double %230
  %255 = fmul double %221, %254
  %256 = tail call double @llvm.fmuladd.f64(double %223, double %229, double %255)
  %257 = fmul double %256, %240
  %258 = getelementptr inbounds double, ptr %81, i64 5
  store double %257, ptr %258, align 8, !tbaa !55
  store i32 1, ptr %1, align 4, !tbaa !61
  br label %1080

259:                                              ; preds = %89
  %260 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %261 = load i64, ptr %260, align 8, !tbaa !62
  %262 = uitofp i64 %261 to double
  %263 = fmul double %262, 5.000000e-01
  %264 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %265 = load i64, ptr %264, align 8, !tbaa !66
  %266 = sitofp i64 %265 to double
  %267 = fadd double %263, %266
  %268 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %269 = load i64, ptr %268, align 8, !tbaa !64
  %270 = uitofp i64 %269 to double
  %271 = fmul double %270, 5.000000e-01
  %272 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %273 = load i64, ptr %272, align 8, !tbaa !67
  %274 = sitofp i64 %273 to double
  %275 = fadd double %271, %274
  switch i64 %2, label %285 [
    i64 0, label %276
    i64 1, label %325
    i64 2, label %282
  ]

276:                                              ; preds = %259
  %277 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %278 = load i32, ptr %1, align 4, !tbaa !61
  %279 = zext i32 %278 to i64
  %280 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %279) #14
  %281 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 693, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.127, ptr noundef %280) #14
  br label %1080

282:                                              ; preds = %259
  %283 = load double, ptr %3, align 8, !tbaa !55
  %284 = getelementptr inbounds double, ptr %3, i64 1
  br label %325

285:                                              ; preds = %259
  %286 = load double, ptr %3, align 8, !tbaa !55
  %287 = getelementptr inbounds double, ptr %3, i64 1
  %288 = load double, ptr %287, align 8, !tbaa !55
  switch i64 %2, label %319 [
    i64 3, label %289
    i64 4, label %291
    i64 5, label %295
    i64 6, label %301
    i64 7, label %309
  ]

289:                                              ; preds = %285
  %290 = getelementptr inbounds double, ptr %3, i64 2
  br label %325

291:                                              ; preds = %285
  %292 = getelementptr inbounds double, ptr %3, i64 2
  %293 = load double, ptr %292, align 8, !tbaa !55
  %294 = getelementptr inbounds double, ptr %3, i64 3
  br label %325

295:                                              ; preds = %285
  %296 = getelementptr inbounds double, ptr %3, i64 2
  %297 = load double, ptr %296, align 8, !tbaa !55
  %298 = getelementptr inbounds double, ptr %3, i64 3
  %299 = load double, ptr %298, align 8, !tbaa !55
  %300 = getelementptr inbounds double, ptr %3, i64 4
  br label %325

301:                                              ; preds = %285
  %302 = getelementptr inbounds double, ptr %3, i64 2
  %303 = load double, ptr %302, align 8, !tbaa !55
  %304 = getelementptr inbounds double, ptr %3, i64 3
  %305 = getelementptr inbounds double, ptr %3, i64 4
  %306 = load double, ptr %305, align 8, !tbaa !55
  %307 = getelementptr inbounds double, ptr %3, i64 5
  %308 = load double, ptr %307, align 8, !tbaa !55
  br label %325

309:                                              ; preds = %285
  %310 = getelementptr inbounds double, ptr %3, i64 2
  %311 = load double, ptr %310, align 8, !tbaa !55
  %312 = getelementptr inbounds double, ptr %3, i64 3
  %313 = load double, ptr %312, align 8, !tbaa !55
  %314 = getelementptr inbounds double, ptr %3, i64 4
  %315 = getelementptr inbounds double, ptr %3, i64 5
  %316 = load double, ptr %315, align 8, !tbaa !55
  %317 = getelementptr inbounds double, ptr %3, i64 6
  %318 = load double, ptr %317, align 8, !tbaa !55
  br label %325

319:                                              ; preds = %285
  %320 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %321 = load i32, ptr %1, align 4, !tbaa !61
  %322 = zext i32 %321 to i64
  %323 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %322) #14
  %324 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 735, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.128, ptr noundef %323) #14
  br label %1080

325:                                              ; preds = %259, %289, %291, %295, %301, %309, %282
  %326 = phi double [ %286, %309 ], [ %286, %301 ], [ %286, %295 ], [ %286, %291 ], [ %286, %289 ], [ %267, %282 ], [ %267, %259 ]
  %327 = phi double [ %288, %309 ], [ %288, %301 ], [ %288, %295 ], [ %288, %291 ], [ %288, %289 ], [ %275, %282 ], [ %275, %259 ]
  %328 = phi double [ %311, %309 ], [ %303, %301 ], [ %297, %295 ], [ %293, %291 ], [ 1.000000e+00, %289 ], [ %283, %282 ], [ 1.000000e+00, %259 ]
  %329 = phi double [ %313, %309 ], [ %303, %301 ], [ %299, %295 ], [ %293, %291 ], [ 1.000000e+00, %289 ], [ %283, %282 ], [ 1.000000e+00, %259 ]
  %330 = phi ptr [ %314, %309 ], [ %304, %301 ], [ %300, %295 ], [ %294, %291 ], [ %290, %289 ], [ %284, %282 ], [ %3, %259 ]
  %331 = phi double [ %316, %309 ], [ %306, %301 ], [ %286, %295 ], [ %286, %291 ], [ %286, %289 ], [ %267, %282 ], [ %267, %259 ]
  %332 = phi double [ %318, %309 ], [ %308, %301 ], [ %288, %295 ], [ %288, %291 ], [ %288, %289 ], [ %275, %282 ], [ %275, %259 ]
  %333 = tail call double @llvm.fabs.f64(double %328)
  %334 = fcmp olt double %333, 1.000000e-15
  %335 = tail call double @llvm.fabs.f64(double %329)
  %336 = fcmp olt double %335, 1.000000e-15
  %337 = select i1 %334, i1 true, i1 %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %325
  %339 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %340 = load i32, ptr %1, align 4, !tbaa !61
  %341 = zext i32 %340 to i64
  %342 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %341) #14
  %343 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 745, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.129, ptr noundef %342) #14
  br label %1080

344:                                              ; preds = %325
  %345 = load double, ptr %330, align 8, !tbaa !55
  %346 = fmul double %345, 0x400921FB54442D18
  %347 = fdiv double %346, 1.800000e+02
  %348 = tail call double @cos(double noundef %347) #14
  %349 = tail call double @sin(double noundef %347) #14
  store i32 1, ptr %1, align 4, !tbaa !61
  %350 = fdiv double %348, %328
  store double %350, ptr %81, align 8, !tbaa !55
  %351 = fdiv double %349, %328
  %352 = getelementptr inbounds double, ptr %81, i64 1
  store double %351, ptr %352, align 8, !tbaa !55
  %353 = fneg double %331
  %354 = tail call double @llvm.fmuladd.f64(double %353, double %350, double %326)
  %355 = fneg double %332
  %356 = tail call double @llvm.fmuladd.f64(double %355, double %351, double %354)
  %357 = getelementptr inbounds double, ptr %81, i64 2
  store double %356, ptr %357, align 8, !tbaa !55
  %358 = fneg double %349
  %359 = fdiv double %358, %329
  %360 = getelementptr inbounds double, ptr %81, i64 3
  store double %359, ptr %360, align 8, !tbaa !55
  %361 = fdiv double %348, %329
  %362 = getelementptr inbounds double, ptr %81, i64 4
  store double %361, ptr %362, align 8, !tbaa !55
  %363 = tail call double @llvm.fmuladd.f64(double %353, double %359, double %327)
  %364 = tail call double @llvm.fmuladd.f64(double %355, double %361, double %363)
  %365 = getelementptr inbounds double, ptr %81, i64 5
  store double %364, ptr %365, align 8, !tbaa !55
  br label %1080

366:                                              ; preds = %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #14
  %367 = urem i64 %2, %17
  %368 = icmp ne i64 %367, 0
  %369 = or i1 %19, %368
  br i1 %369, label %370, label %375

370:                                              ; preds = %366
  %371 = zext i32 %90 to i64
  %372 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %371) #14
  %373 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 807, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef %372, double noundef 4.000000e+00) #14
  %374 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  br label %438

375:                                              ; preds = %366
  store ptr %81, ptr %9, align 8, !tbaa !74
  %376 = tail call ptr @AcquireMagickMatrix(i64 noundef 8, i64 noundef 8) #14
  %377 = icmp eq ptr %376, null
  br i1 %377, label %388, label %378

378:                                              ; preds = %375
  %379 = icmp eq i64 %2, 0
  br i1 %379, label %413, label %380

380:                                              ; preds = %378
  %381 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 1
  %382 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 2
  %383 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 3
  %384 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 4
  %385 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 5
  %386 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 6
  %387 = getelementptr inbounds [8 x double], ptr %10, i64 0, i64 7
  br label %390

388:                                              ; preds = %375
  %389 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 818, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #14
  br label %438

390:                                              ; preds = %380, %390
  %391 = phi i64 [ 0, %380 ], [ %411, %390 ]
  %392 = getelementptr double, ptr %3, i64 %391
  %393 = getelementptr double, ptr %392, i64 %79
  %394 = load double, ptr %393, align 8, !tbaa !55
  store double %394, ptr %10, align 16, !tbaa !55
  %395 = getelementptr double, ptr %392, i64 %78
  %396 = load double, ptr %395, align 8, !tbaa !55
  store double %396, ptr %381, align 8, !tbaa !55
  store double 1.000000e+00, ptr %382, align 16, !tbaa !55
  %397 = fneg double %394
  %398 = getelementptr double, ptr %392, i64 %77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %383, i8 0, i64 24, i1 false)
  %399 = load double, ptr %398, align 8, !tbaa !55
  %400 = fmul double %399, %397
  store double %400, ptr %386, align 16, !tbaa !55
  %401 = fneg double %396
  %402 = fmul double %399, %401
  store double %402, ptr %387, align 8, !tbaa !55
  call void @LeastSquaresAddTerms(ptr noundef nonnull %376, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %398, i64 noundef 8, i64 noundef 1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %403 = load double, ptr %393, align 8, !tbaa !55
  store double %403, ptr %383, align 8, !tbaa !55
  %404 = load double, ptr %395, align 8, !tbaa !55
  store double %404, ptr %384, align 16, !tbaa !55
  store double 1.000000e+00, ptr %385, align 8, !tbaa !55
  %405 = fneg double %403
  %406 = getelementptr double, ptr %398, i64 1
  %407 = load double, ptr %406, align 8, !tbaa !55
  %408 = fmul double %407, %405
  store double %408, ptr %386, align 16, !tbaa !55
  %409 = fneg double %404
  %410 = fmul double %407, %409
  store double %410, ptr %387, align 8, !tbaa !55
  call void @LeastSquaresAddTerms(ptr noundef nonnull %376, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %406, i64 noundef 8, i64 noundef 1) #14
  %411 = add i64 %391, 4
  %412 = icmp ult i64 %411, %2
  br i1 %412, label %390, label %413, !llvm.loop !114

413:                                              ; preds = %390, %378
  %414 = call i32 @GaussJordanElimination(ptr noundef nonnull %376, ptr noundef nonnull %9, i64 noundef 8, i64 noundef 1) #14
  %415 = call ptr @RelinquishMagickMatrix(ptr noundef nonnull %376, i64 noundef 8) #14
  %416 = icmp eq i32 %414, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %413
  %418 = call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %419 = load i32, ptr %1, align 4, !tbaa !61
  %420 = zext i32 %419 to i64
  %421 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %420) #14
  %422 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 852, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %421) #14
  br label %438

423:                                              ; preds = %413
  %424 = getelementptr inbounds double, ptr %81, i64 6
  %425 = load double, ptr %424, align 8, !tbaa !55
  %426 = getelementptr inbounds double, ptr %3, i64 %79
  %427 = load double, ptr %426, align 8, !tbaa !55
  %428 = getelementptr inbounds double, ptr %81, i64 7
  %429 = load double, ptr %428, align 8, !tbaa !55
  %430 = getelementptr inbounds double, ptr %3, i64 %78
  %431 = load double, ptr %430, align 8, !tbaa !55
  %432 = fmul double %429, %431
  %433 = call double @llvm.fmuladd.f64(double %425, double %427, double %432)
  %434 = fadd double %433, 1.000000e+00
  %435 = getelementptr inbounds double, ptr %81, i64 8
  %436 = fcmp olt double %434, 0.000000e+00
  %437 = select i1 %436, double -1.000000e+00, double 1.000000e+00
  store double %437, ptr %435, align 8, !tbaa !55
  br label %438

438:                                              ; preds = %423, %417, %388, %370
  %439 = phi ptr [ null, %370 ], [ null, %388 ], [ null, %417 ], [ %81, %423 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  br label %1080

440:                                              ; preds = %89
  %441 = icmp eq i64 %2, 8
  br i1 %441, label %445, label %442

442:                                              ; preds = %440
  %443 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef 5) #14
  %444 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 875, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.130, ptr noundef %443) #14
  br label %1080

445:                                              ; preds = %440
  tail call fastcc void @InvertPerspectiveCoefficients(ptr noundef %3, ptr noundef %81)
  %446 = getelementptr inbounds double, ptr %81, i64 6
  %447 = load double, ptr %446, align 8, !tbaa !55
  %448 = getelementptr inbounds double, ptr %3, i64 2
  %449 = load double, ptr %448, align 8, !tbaa !55
  %450 = getelementptr inbounds double, ptr %81, i64 7
  %451 = load double, ptr %450, align 8, !tbaa !55
  %452 = getelementptr inbounds double, ptr %3, i64 5
  %453 = load double, ptr %452, align 8, !tbaa !55
  %454 = fmul double %451, %453
  %455 = tail call double @llvm.fmuladd.f64(double %447, double %449, double %454)
  %456 = fadd double %455, 1.000000e+00
  %457 = getelementptr inbounds double, ptr %81, i64 8
  %458 = fcmp olt double %456, 0.000000e+00
  %459 = select i1 %458, double -1.000000e+00, double 1.000000e+00
  store double %459, ptr %457, align 8, !tbaa !55
  store i32 4, ptr %1, align 4, !tbaa !61
  br label %1080

460:                                              ; preds = %89, %89
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #14
  %461 = urem i64 %2, %17
  %462 = icmp ne i64 %461, 0
  %463 = or i1 %19, %462
  br i1 %463, label %464, label %469

464:                                              ; preds = %460
  %465 = zext i32 %90 to i64
  %466 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %465) #14
  %467 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 923, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121, ptr noundef %466, double noundef 4.000000e+00) #14
  %468 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  br label %540

469:                                              ; preds = %460
  %470 = tail call ptr @AcquireMagickMatrix(i64 noundef 4, i64 noundef 4) #14
  %471 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 8) #15
  %472 = icmp eq ptr %470, null
  %473 = icmp eq ptr %471, null
  %474 = select i1 %472, i1 true, i1 %473
  br i1 %474, label %477, label %475

475:                                              ; preds = %469
  %476 = tail call i64 @llvm.umax.i64(i64 %16, i64 1)
  br label %488

477:                                              ; preds = %469
  %478 = tail call ptr @RelinquishMagickMatrix(ptr noundef %470, i64 noundef 4) #14
  %479 = tail call ptr @RelinquishMagickMemory(ptr noundef %471) #14
  %480 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %481 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 937, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #14
  br label %540

482:                                              ; preds = %488
  %483 = icmp eq i64 %2, 0
  br i1 %483, label %506, label %484

484:                                              ; preds = %482
  %485 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 1
  %486 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 2
  %487 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 3
  br label %495

488:                                              ; preds = %475, %488
  %489 = phi i64 [ %493, %488 ], [ 0, %475 ]
  %490 = shl i64 %489, 2
  %491 = getelementptr inbounds double, ptr %81, i64 %490
  %492 = getelementptr inbounds ptr, ptr %471, i64 %489
  store ptr %491, ptr %492, align 8, !tbaa !74
  %493 = add nuw i64 %489, 1
  %494 = icmp eq i64 %493, %476
  br i1 %494, label %482, label %488, !llvm.loop !115

495:                                              ; preds = %484, %495
  %496 = phi i64 [ 0, %484 ], [ %504, %495 ]
  %497 = getelementptr double, ptr %3, i64 %496
  %498 = getelementptr double, ptr %497, i64 %79
  %499 = load double, ptr %498, align 8, !tbaa !55
  store double %499, ptr %11, align 16, !tbaa !55
  %500 = getelementptr double, ptr %497, i64 %78
  %501 = load double, ptr %500, align 8, !tbaa !55
  store double %501, ptr %485, align 8, !tbaa !55
  %502 = fmul double %499, %501
  store double %502, ptr %486, align 16, !tbaa !55
  store double 1.000000e+00, ptr %487, align 8, !tbaa !55
  %503 = getelementptr double, ptr %497, i64 %77
  call void @LeastSquaresAddTerms(ptr noundef %470, ptr noundef %471, ptr noundef nonnull %11, ptr noundef %503, i64 noundef 4, i64 noundef %16) #14
  %504 = add i64 %496, %17
  %505 = icmp ult i64 %504, %2
  br i1 %505, label %495, label %506, !llvm.loop !116

506:                                              ; preds = %495, %482
  %507 = call i32 @GaussJordanElimination(ptr noundef %470, ptr noundef %471, i64 noundef 4, i64 noundef %16) #14
  %508 = call ptr @RelinquishMagickMatrix(ptr noundef %470, i64 noundef 4) #14
  %509 = call ptr @RelinquishMagickMemory(ptr noundef %471) #14
  %510 = icmp eq i32 %507, 0
  br i1 %510, label %511, label %517

511:                                              ; preds = %506
  %512 = call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %513 = load i32, ptr %1, align 4, !tbaa !61
  %514 = zext i32 %513 to i64
  %515 = call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %514) #14
  %516 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 960, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %515) #14
  br label %540

517:                                              ; preds = %506
  %518 = load i32, ptr %1, align 4, !tbaa !61
  %519 = icmp eq i32 %518, 6
  br i1 %519, label %520, label %540

520:                                              ; preds = %517
  %521 = load double, ptr %81, align 8, !tbaa !55
  %522 = getelementptr inbounds double, ptr %81, i64 5
  %523 = load double, ptr %522, align 8, !tbaa !55
  %524 = getelementptr inbounds double, ptr %81, i64 1
  %525 = load double, ptr %524, align 8, !tbaa !55
  %526 = getelementptr inbounds double, ptr %81, i64 4
  %527 = load double, ptr %526, align 8, !tbaa !55
  %528 = fneg double %525
  %529 = fmul double %527, %528
  %530 = call double @llvm.fmuladd.f64(double %521, double %523, double %529)
  %531 = getelementptr inbounds double, ptr %81, i64 8
  store double %530, ptr %531, align 8, !tbaa !55
  %532 = getelementptr inbounds double, ptr %81, i64 2
  %533 = load double, ptr %532, align 8, !tbaa !55
  %534 = getelementptr inbounds double, ptr %81, i64 6
  %535 = load double, ptr %534, align 8, !tbaa !55
  %536 = fmul double %535, %528
  %537 = call double @llvm.fmuladd.f64(double %533, double %523, double %536)
  %538 = fmul double %537, 2.000000e+00
  %539 = getelementptr inbounds double, ptr %81, i64 9
  store double %538, ptr %539, align 8, !tbaa !55
  br label %540

540:                                              ; preds = %517, %520, %511, %477, %464
  %541 = phi ptr [ null, %464 ], [ null, %477 ], [ null, %511 ], [ %81, %520 ], [ %81, %517 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #14
  br label %1080

542:                                              ; preds = %89
  %543 = load double, ptr %3, align 8, !tbaa !55
  store double %543, ptr %81, align 8, !tbaa !55
  %544 = load double, ptr %3, align 8, !tbaa !55
  %545 = fcmp olt double %544, 1.000000e+00
  %546 = fcmp ogt double %544, 5.000000e+00
  %547 = or i1 %545, %546
  br i1 %547, label %562, label %548

548:                                              ; preds = %542
  %549 = tail call double @llvm.floor.f64(double %544)
  %550 = fcmp une double %549, %544
  %551 = fadd double %544, -1.500000e+00
  %552 = fcmp ogt double %551, 1.000000e-15
  %553 = and i1 %550, %552
  br i1 %553, label %562, label %554

554:                                              ; preds = %548
  %555 = fadd double %544, 1.000000e+00
  %556 = fadd double %544, 2.000000e+00
  %557 = fmul double %555, %556
  %558 = fmul double %557, 5.000000e-01
  %559 = tail call double @llvm.floor.f64(double %558)
  %560 = fptoui double %559 to i64
  %561 = uitofp i64 %560 to double
  br label %562

562:                                              ; preds = %542, %548, %554
  %563 = phi double [ %561, %554 ], [ 0.000000e+00, %548 ], [ 0.000000e+00, %542 ]
  %564 = getelementptr inbounds double, ptr %81, i64 1
  store double %563, ptr %564, align 8, !tbaa !55
  %565 = fptoui double %563 to i64
  %566 = tail call ptr @AcquireMagickMatrix(i64 noundef %565, i64 noundef %565) #14
  %567 = tail call ptr @AcquireQuantumMemory(i64 noundef %16, i64 noundef 8) #15
  %568 = tail call ptr @AcquireQuantumMemory(i64 noundef %565, i64 noundef 8) #15
  %569 = icmp eq ptr %566, null
  %570 = icmp eq ptr %567, null
  %571 = select i1 %569, i1 true, i1 %570
  %572 = icmp eq ptr %568, null
  %573 = select i1 %571, i1 true, i1 %572
  br i1 %573, label %577, label %574

574:                                              ; preds = %562
  %575 = getelementptr double, ptr %81, i64 2
  %576 = tail call i64 @llvm.umax.i64(i64 %16, i64 1)
  br label %588

577:                                              ; preds = %562
  %578 = tail call ptr @RelinquishMagickMatrix(ptr noundef %566, i64 noundef %565) #14
  %579 = tail call ptr @RelinquishMagickMemory(ptr noundef %567) #14
  %580 = tail call ptr @RelinquishMagickMemory(ptr noundef %568) #14
  %581 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %582 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1081, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.25) #14
  br label %1080

583:                                              ; preds = %588
  %584 = getelementptr double, ptr %3, i64 %77
  %585 = icmp ugt i64 %2, 1
  br i1 %585, label %586, label %613

586:                                              ; preds = %583
  %587 = icmp sgt i64 %565, 0
  br label %595

588:                                              ; preds = %574, %588
  %589 = phi i64 [ 0, %574 ], [ %593, %588 ]
  %590 = mul i64 %589, %565
  %591 = getelementptr double, ptr %575, i64 %590
  %592 = getelementptr inbounds ptr, ptr %567, i64 %589
  store ptr %591, ptr %592, align 8, !tbaa !74
  %593 = add nuw i64 %589, 1
  %594 = icmp eq i64 %593, %576
  br i1 %594, label %583, label %588, !llvm.loop !117

595:                                              ; preds = %586, %609
  %596 = phi i64 [ 1, %586 ], [ %611, %609 ]
  br i1 %587, label %597, label %609

597:                                              ; preds = %595
  %598 = getelementptr double, ptr %3, i64 %596
  %599 = getelementptr double, ptr %598, i64 %79
  %600 = getelementptr double, ptr %598, i64 %78
  br label %601

601:                                              ; preds = %597, %601
  %602 = phi i64 [ 0, %597 ], [ %607, %601 ]
  %603 = load double, ptr %599, align 8, !tbaa !55
  %604 = load double, ptr %600, align 8, !tbaa !55
  %605 = tail call fastcc double @poly_basis_fn(i64 noundef %602, double noundef %603, double noundef %604)
  %606 = getelementptr inbounds double, ptr %568, i64 %602
  store double %605, ptr %606, align 8, !tbaa !55
  %607 = add nuw nsw i64 %602, 1
  %608 = icmp eq i64 %607, %565
  br i1 %608, label %609, label %601, !llvm.loop !118

609:                                              ; preds = %601, %595
  %610 = getelementptr double, ptr %584, i64 %596
  tail call void @LeastSquaresAddTerms(ptr noundef %566, ptr noundef %567, ptr noundef %568, ptr noundef %610, i64 noundef %565, i64 noundef %16) #14
  %611 = add i64 %596, %17
  %612 = icmp ult i64 %611, %2
  br i1 %612, label %595, label %613, !llvm.loop !119

613:                                              ; preds = %609, %583
  %614 = tail call ptr @RelinquishMagickMemory(ptr noundef %568) #14
  %615 = tail call i32 @GaussJordanElimination(ptr noundef %566, ptr noundef %567, i64 noundef %565, i64 noundef %16) #14
  %616 = tail call ptr @RelinquishMagickMatrix(ptr noundef %566, i64 noundef %565) #14
  %617 = tail call ptr @RelinquishMagickMemory(ptr noundef %567) #14
  %618 = icmp eq i32 %615, 0
  br i1 %618, label %619, label %1080

619:                                              ; preds = %613
  %620 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %621 = load i32, ptr %1, align 4, !tbaa !61
  %622 = zext i32 %621 to i64
  %623 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %622) #14
  %624 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1103, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.125, ptr noundef %623) #14
  br label %1080

625:                                              ; preds = %89
  %626 = icmp eq i64 %2, 0
  br i1 %626, label %636, label %627

627:                                              ; preds = %625
  %628 = load double, ptr %3, align 8, !tbaa !55
  %629 = fcmp olt double %628, 1.000000e-15
  br i1 %629, label %630, label %636

630:                                              ; preds = %627
  %631 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %632 = load i32, ptr %1, align 4, !tbaa !61
  %633 = zext i32 %632 to i64
  %634 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %633) #14
  %635 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1148, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.131, ptr noundef %634) #14
  br label %1080

636:                                              ; preds = %627, %625
  %637 = icmp ugt i64 %2, 2
  br i1 %637, label %638, label %648

638:                                              ; preds = %636
  %639 = getelementptr inbounds double, ptr %3, i64 2
  %640 = load double, ptr %639, align 8, !tbaa !55
  %641 = fcmp olt double %640, 1.000000e-15
  br i1 %641, label %642, label %648

642:                                              ; preds = %638
  %643 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %644 = load i32, ptr %1, align 4, !tbaa !61
  %645 = zext i32 %644 to i64
  %646 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %645) #14
  %647 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1155, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132, ptr noundef %646) #14
  br label %1080

648:                                              ; preds = %638, %636
  store double 0xBFF921FB54442D18, ptr %81, align 8, !tbaa !55
  br i1 %626, label %653, label %649

649:                                              ; preds = %648
  %650 = load double, ptr %3, align 8, !tbaa !55
  %651 = fmul double %650, 0x400921FB54442D18
  %652 = fdiv double %651, 1.800000e+02
  br label %653

653:                                              ; preds = %648, %649
  %654 = phi double [ %652, %649 ], [ 0x3FF921FB54442D18, %648 ]
  %655 = getelementptr inbounds double, ptr %81, i64 1
  store double %654, ptr %655, align 8, !tbaa !55
  %656 = icmp ugt i64 %2, 1
  br i1 %656, label %657, label %664

657:                                              ; preds = %653
  %658 = getelementptr inbounds double, ptr %3, i64 1
  %659 = load double, ptr %658, align 8, !tbaa !55
  %660 = fmul double %659, 0x400921FB54442D18
  %661 = fdiv double %660, 1.800000e+02
  %662 = load double, ptr %81, align 8, !tbaa !55
  %663 = fadd double %662, %661
  store double %663, ptr %81, align 8, !tbaa !55
  br label %664

664:                                              ; preds = %657, %653
  %665 = load double, ptr %81, align 8, !tbaa !55
  %666 = fdiv double %665, 0x401921FB54442D18
  %667 = tail call double @llvm.floor.f64(double %666)
  %668 = fsub double %666, %667
  %669 = tail call double @llvm.ceil.f64(double %666)
  %670 = fsub double %669, %666
  %671 = fcmp olt double %668, %670
  %672 = select i1 %671, double %667, double %669
  %673 = fsub double %666, %672
  %674 = fmul double %673, 0x401921FB54442D18
  store double %674, ptr %81, align 8, !tbaa !55
  %675 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %676 = load i64, ptr %675, align 8, !tbaa !64
  %677 = uitofp i64 %676 to double
  %678 = fadd double %677, -1.000000e+00
  %679 = getelementptr inbounds double, ptr %81, i64 3
  store double %678, ptr %679, align 8, !tbaa !55
  %680 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %681 = load i64, ptr %680, align 8, !tbaa !62
  %682 = uitofp i64 %681 to double
  %683 = getelementptr inbounds double, ptr %81, i64 1
  %684 = load double, ptr %683, align 8, !tbaa !55
  %685 = fdiv double %682, %684
  %686 = fmul double %678, 5.000000e-01
  %687 = fadd double %686, %685
  %688 = getelementptr inbounds double, ptr %81, i64 2
  store double %687, ptr %688, align 8, !tbaa !55
  br i1 %637, label %689, label %704

689:                                              ; preds = %664
  %690 = icmp eq i64 %2, 3
  %691 = getelementptr inbounds double, ptr %3, i64 2
  %692 = load double, ptr %691, align 8, !tbaa !55
  br i1 %690, label %697, label %693

693:                                              ; preds = %689
  %694 = getelementptr inbounds double, ptr %3, i64 3
  %695 = load double, ptr %694, align 8, !tbaa !55
  %696 = fsub double %692, %695
  br label %700

697:                                              ; preds = %689
  %698 = fdiv double %692, %687
  %699 = fmul double %678, %698
  br label %700

700:                                              ; preds = %697, %693
  %701 = phi double [ %699, %697 ], [ %696, %693 ]
  store double %701, ptr %679, align 8, !tbaa !55
  %702 = getelementptr inbounds double, ptr %3, i64 2
  %703 = load double, ptr %702, align 8, !tbaa !55
  store double %703, ptr %688, align 8, !tbaa !55
  br label %704

704:                                              ; preds = %700, %664
  %705 = fadd double %682, -1.000000e+00
  %706 = fmul double %705, 5.000000e-01
  %707 = getelementptr inbounds double, ptr %81, i64 4
  store double %706, ptr %707, align 8, !tbaa !55
  br label %1080

708:                                              ; preds = %89, %89
  %709 = icmp eq i64 %2, 3
  br i1 %709, label %716, label %710

710:                                              ; preds = %708
  %711 = icmp ugt i64 %2, 6
  br i1 %711, label %712, label %721

712:                                              ; preds = %710
  %713 = icmp eq i32 %90, 10
  %714 = icmp ugt i64 %2, 8
  %715 = or i1 %714, %713
  br i1 %715, label %716, label %721

716:                                              ; preds = %712, %708
  %717 = zext i32 %90 to i64
  %718 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %717) #14
  %719 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1199, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.133, ptr noundef %718) #14
  %720 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  br label %1080

721:                                              ; preds = %710, %712
  %722 = icmp eq i64 %2, 0
  br i1 %722, label %725, label %723

723:                                              ; preds = %721
  %724 = load double, ptr %3, align 8, !tbaa !55
  br label %725

725:                                              ; preds = %721, %723
  %726 = phi double [ %724, %723 ], [ 0.000000e+00, %721 ]
  store double %726, ptr %81, align 8, !tbaa !55
  %727 = icmp ugt i64 %2, 1
  br i1 %727, label %728, label %731

728:                                              ; preds = %725
  %729 = getelementptr inbounds double, ptr %3, i64 1
  %730 = load double, ptr %729, align 8, !tbaa !55
  br label %731

731:                                              ; preds = %725, %728
  %732 = phi double [ %730, %728 ], [ 0.000000e+00, %725 ]
  %733 = getelementptr inbounds double, ptr %81, i64 1
  store double %732, ptr %733, align 8, !tbaa !55
  %734 = icmp ugt i64 %2, 3
  br i1 %734, label %735, label %741

735:                                              ; preds = %731
  %736 = getelementptr inbounds double, ptr %3, i64 2
  %737 = load double, ptr %736, align 8, !tbaa !55
  %738 = getelementptr inbounds double, ptr %81, i64 2
  store double %737, ptr %738, align 8, !tbaa !55
  %739 = getelementptr inbounds double, ptr %3, i64 3
  %740 = load double, ptr %739, align 8, !tbaa !55
  br label %759

741:                                              ; preds = %731
  %742 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %743 = load i64, ptr %742, align 8, !tbaa !62
  %744 = uitofp i64 %743 to double
  %745 = fmul double %744, 5.000000e-01
  %746 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %747 = load i64, ptr %746, align 8, !tbaa !66
  %748 = sitofp i64 %747 to double
  %749 = fadd double %745, %748
  %750 = getelementptr inbounds double, ptr %81, i64 2
  store double %749, ptr %750, align 8, !tbaa !55
  %751 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %752 = load i64, ptr %751, align 8, !tbaa !64
  %753 = uitofp i64 %752 to double
  %754 = fmul double %753, 5.000000e-01
  %755 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %756 = load i64, ptr %755, align 8, !tbaa !67
  %757 = sitofp i64 %756 to double
  %758 = fadd double %754, %757
  br label %759

759:                                              ; preds = %741, %735
  %760 = phi double [ %758, %741 ], [ %740, %735 ]
  %761 = getelementptr inbounds double, ptr %81, i64 3
  store double %760, ptr %761, align 8, !tbaa !55
  %762 = getelementptr inbounds double, ptr %81, i64 4
  store double 0xC00921FB54442D18, ptr %762, align 8, !tbaa !55
  %763 = icmp ugt i64 %2, 4
  br i1 %763, label %764, label %769

764:                                              ; preds = %759
  %765 = getelementptr inbounds double, ptr %3, i64 4
  %766 = load double, ptr %765, align 8, !tbaa !55
  %767 = fmul double %766, 0x400921FB54442D18
  %768 = fdiv double %767, 1.800000e+02
  store double %768, ptr %762, align 8, !tbaa !55
  br label %769

769:                                              ; preds = %764, %759
  %770 = load double, ptr %762, align 8, !tbaa !55
  %771 = getelementptr inbounds double, ptr %81, i64 5
  store double %770, ptr %771, align 8, !tbaa !55
  %772 = icmp ugt i64 %2, 5
  br i1 %772, label %773, label %778

773:                                              ; preds = %769
  %774 = getelementptr inbounds double, ptr %3, i64 5
  %775 = load double, ptr %774, align 8, !tbaa !55
  %776 = fmul double %775, 0x400921FB54442D18
  %777 = fdiv double %776, 1.800000e+02
  store double %777, ptr %771, align 8, !tbaa !55
  br label %778

778:                                              ; preds = %773, %769
  %779 = load double, ptr %762, align 8, !tbaa !55
  %780 = load double, ptr %771, align 8, !tbaa !55
  %781 = fsub double %779, %780
  %782 = tail call double @llvm.fabs.f64(double %781)
  %783 = fcmp olt double %782, 1.000000e-15
  br i1 %783, label %784, label %786

784:                                              ; preds = %778
  %785 = fadd double %780, 0x401921FB54442D18
  store double %785, ptr %771, align 8, !tbaa !55
  br label %786

786:                                              ; preds = %784, %778
  %787 = load double, ptr %81, align 8, !tbaa !55
  %788 = fcmp olt double %787, 1.000000e-15
  br i1 %788, label %789, label %862

789:                                              ; preds = %786
  %790 = tail call double @llvm.fabs.f64(double %787)
  %791 = fcmp olt double %790, 1.000000e-15
  br i1 %791, label %792, label %823

792:                                              ; preds = %789
  %793 = getelementptr inbounds double, ptr %81, i64 2
  %794 = load double, ptr %793, align 8, !tbaa !55
  %795 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %796 = load i64, ptr %795, align 8, !tbaa !66
  %797 = sitofp i64 %796 to double
  %798 = fsub double %794, %797
  %799 = tail call double @llvm.fabs.f64(double %798)
  %800 = getelementptr inbounds double, ptr %81, i64 3
  %801 = load double, ptr %800, align 8, !tbaa !55
  %802 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %803 = load i64, ptr %802, align 8, !tbaa !67
  %804 = sitofp i64 %803 to double
  %805 = fsub double %801, %804
  %806 = tail call double @llvm.fabs.f64(double %805)
  %807 = fcmp olt double %799, %806
  %808 = select i1 %807, double %799, double %806
  store double %808, ptr %81, align 8, !tbaa !55
  %809 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %810 = load i64, ptr %809, align 8, !tbaa !62
  %811 = uitofp i64 %810 to double
  %812 = fsub double %798, %811
  %813 = tail call double @llvm.fabs.f64(double %812)
  %814 = fcmp olt double %808, %813
  %815 = select i1 %814, double %808, double %813
  store double %815, ptr %81, align 8, !tbaa !55
  %816 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %817 = load i64, ptr %816, align 8, !tbaa !64
  %818 = uitofp i64 %817 to double
  %819 = fsub double %805, %818
  %820 = tail call double @llvm.fabs.f64(double %819)
  %821 = fcmp olt double %815, %820
  %822 = select i1 %821, double %815, double %820
  store double %822, ptr %81, align 8, !tbaa !55
  br label %823

823:                                              ; preds = %792, %789
  %824 = load double, ptr %81, align 8, !tbaa !55
  %825 = fsub double -1.000000e+00, %824
  %826 = tail call double @llvm.fabs.f64(double %825)
  %827 = fcmp olt double %826, 1.000000e-15
  br i1 %827, label %828, label %862

828:                                              ; preds = %823
  %829 = getelementptr inbounds double, ptr %81, i64 2
  %830 = load double, ptr %829, align 8, !tbaa !55
  %831 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %832 = load i64, ptr %831, align 8, !tbaa !66
  %833 = sitofp i64 %832 to double
  %834 = fsub double %830, %833
  %835 = getelementptr inbounds double, ptr %81, i64 3
  %836 = load double, ptr %835, align 8, !tbaa !55
  %837 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %838 = load i64, ptr %837, align 8, !tbaa !67
  %839 = sitofp i64 %838 to double
  %840 = fsub double %836, %839
  %841 = fmul double %840, %840
  %842 = tail call double @llvm.fmuladd.f64(double %834, double %834, double %841)
  store double %842, ptr %81, align 8, !tbaa !55
  %843 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %844 = load i64, ptr %843, align 8, !tbaa !64
  %845 = uitofp i64 %844 to double
  %846 = fsub double %840, %845
  %847 = fmul double %846, %846
  %848 = tail call double @llvm.fmuladd.f64(double %834, double %834, double %847)
  %849 = fcmp ogt double %842, %848
  %850 = select i1 %849, double %842, double %848
  store double %850, ptr %81, align 8, !tbaa !55
  %851 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %852 = load i64, ptr %851, align 8, !tbaa !62
  %853 = uitofp i64 %852 to double
  %854 = fsub double %834, %853
  %855 = tail call double @llvm.fmuladd.f64(double %854, double %854, double %847)
  %856 = fcmp ogt double %850, %855
  %857 = select i1 %856, double %850, double %855
  %858 = tail call double @llvm.fmuladd.f64(double %854, double %854, double %841)
  %859 = fcmp ogt double %857, %858
  %860 = select i1 %859, double %857, double %858
  %861 = tail call double @sqrt(double noundef %860) #14
  store double %861, ptr %81, align 8, !tbaa !55
  br label %862

862:                                              ; preds = %823, %828, %786
  %863 = load double, ptr %81, align 8, !tbaa !55
  %864 = fcmp olt double %863, 1.000000e-15
  br i1 %864, label %871, label %865

865:                                              ; preds = %862
  %866 = load double, ptr %733, align 8, !tbaa !55
  %867 = fcmp olt double %866, -1.000000e-15
  %868 = fsub double %863, %866
  %869 = fcmp olt double %868, 1.000000e-15
  %870 = or i1 %867, %869
  br i1 %870, label %871, label %877

871:                                              ; preds = %865, %862
  %872 = load i32, ptr %1, align 4, !tbaa !61
  %873 = zext i32 %872 to i64
  %874 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %873) #14
  %875 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1259, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.134, ptr noundef %874) #14
  %876 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %81) #14
  br label %1080

877:                                              ; preds = %865
  %878 = load i32, ptr %1, align 4, !tbaa !61
  %879 = icmp eq i32 %878, 10
  %880 = getelementptr inbounds double, ptr %81, i64 6
  %881 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %882 = getelementptr inbounds double, ptr %81, i64 7
  br i1 %879, label %883, label %894

883:                                              ; preds = %877
  %884 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %885 = load i64, ptr %884, align 8, !tbaa !62
  %886 = uitofp i64 %885 to double
  %887 = load double, ptr %771, align 8, !tbaa !55
  %888 = load double, ptr %762, align 8, !tbaa !55
  %889 = fsub double %887, %888
  %890 = fdiv double %886, %889
  store double %890, ptr %880, align 8, !tbaa !55
  %891 = load i64, ptr %881, align 8, !tbaa !64
  %892 = uitofp i64 %891 to double
  %893 = fdiv double %892, %868
  store double %893, ptr %882, align 8, !tbaa !55
  br label %1080

894:                                              ; preds = %877
  %895 = load double, ptr %771, align 8, !tbaa !55
  %896 = load double, ptr %762, align 8, !tbaa !55
  %897 = fsub double %895, %896
  %898 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %899 = load i64, ptr %898, align 8, !tbaa !62
  %900 = uitofp i64 %899 to double
  %901 = fdiv double %897, %900
  store double %901, ptr %880, align 8, !tbaa !55
  %902 = load i64, ptr %881, align 8, !tbaa !64
  %903 = uitofp i64 %902 to double
  %904 = fdiv double %868, %903
  store double %904, ptr %882, align 8, !tbaa !55
  br label %1080

905:                                              ; preds = %89, %89
  %906 = load double, ptr %3, align 8, !tbaa !55
  %907 = fcmp olt double %906, 1.000000e-15
  %908 = fcmp ogt double %906, 1.600000e+02
  %909 = or i1 %907, %908
  br i1 %909, label %910, label %915

910:                                              ; preds = %905
  %911 = zext i32 %90 to i64
  %912 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %911) #14
  %913 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1302, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.135, ptr noundef %912) #14
  %914 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  br label %1080

915:                                              ; preds = %905
  %916 = fmul double %906, 0x400921FB54442D18
  %917 = fdiv double %916, 1.800000e+02
  store double %917, ptr %81, align 8, !tbaa !55
  %918 = icmp eq i32 %90, 12
  %919 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %920 = load i64, ptr %919, align 8, !tbaa !62
  %921 = uitofp i64 %920 to double
  br i1 %918, label %926, label %922

922:                                              ; preds = %915
  %923 = fmul double %917, 5.000000e-01
  %924 = tail call double @tan(double noundef %923) #14
  %925 = fmul double %924, 2.000000e+00
  br label %926

926:                                              ; preds = %915, %922
  %927 = phi double [ %925, %922 ], [ %917, %915 ]
  %928 = fdiv double %921, %927
  %929 = getelementptr inbounds double, ptr %81, i64 1
  store double %928, ptr %929, align 8, !tbaa !55
  %930 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %931 = load i64, ptr %930, align 8, !tbaa !62
  %932 = uitofp i64 %931 to double
  %933 = fmul double %932, 5.000000e-01
  %934 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %935 = load i64, ptr %934, align 8, !tbaa !66
  %936 = sitofp i64 %935 to double
  %937 = fadd double %933, %936
  %938 = getelementptr inbounds double, ptr %81, i64 2
  store double %937, ptr %938, align 8, !tbaa !55
  %939 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %940 = load i64, ptr %939, align 8, !tbaa !64
  %941 = uitofp i64 %940 to double
  %942 = fmul double %941, 5.000000e-01
  %943 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %944 = load i64, ptr %943, align 8, !tbaa !67
  %945 = sitofp i64 %944 to double
  %946 = fadd double %942, %945
  %947 = getelementptr inbounds double, ptr %81, i64 3
  store double %946, ptr %947, align 8, !tbaa !55
  %948 = getelementptr inbounds double, ptr %81, i64 4
  store double %937, ptr %948, align 8, !tbaa !55
  %949 = getelementptr inbounds double, ptr %81, i64 5
  store double %946, ptr %949, align 8, !tbaa !55
  br label %1080

950:                                              ; preds = %89, %89
  %951 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %952 = load i64, ptr %951, align 8, !tbaa !62
  %953 = uitofp i64 %952 to double
  %954 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %955 = load i64, ptr %954, align 8, !tbaa !64
  %956 = uitofp i64 %955 to double
  %957 = fcmp olt double %953, %956
  %958 = select i1 %957, double %953, double %956
  %959 = fdiv double 2.000000e+00, %958
  %960 = icmp ugt i64 %2, 10
  br i1 %960, label %962, label %961

961:                                              ; preds = %950
  switch i64 %2, label %968 [
    i64 9, label %962
    i64 7, label %962
    i64 2, label %962
    i64 1, label %962
    i64 0, label %962
  ]

962:                                              ; preds = %961, %961, %961, %961, %961, %950
  %963 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  %964 = load i32, ptr %1, align 4, !tbaa !61
  %965 = zext i32 %964 to i64
  %966 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %965) #14
  %967 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1353, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.133, ptr noundef %966) #14
  br label %1080

968:                                              ; preds = %961
  %969 = load double, ptr %3, align 8, !tbaa !55
  store double %969, ptr %81, align 8, !tbaa !55
  %970 = getelementptr inbounds double, ptr %3, i64 1
  %971 = load double, ptr %970, align 8, !tbaa !55
  %972 = getelementptr inbounds double, ptr %81, i64 1
  store double %971, ptr %972, align 8, !tbaa !55
  %973 = getelementptr inbounds double, ptr %3, i64 2
  %974 = load double, ptr %973, align 8, !tbaa !55
  %975 = getelementptr inbounds double, ptr %81, i64 2
  store double %974, ptr %975, align 8, !tbaa !55
  switch i64 %2, label %980 [
    i64 5, label %976
    i64 3, label %976
  ]

976:                                              ; preds = %968, %968
  %977 = fsub double 1.000000e+00, %969
  %978 = fsub double %977, %971
  %979 = fsub double %978, %974
  br label %983

980:                                              ; preds = %968
  %981 = getelementptr inbounds double, ptr %3, i64 3
  %982 = load double, ptr %981, align 8, !tbaa !55
  br label %983

983:                                              ; preds = %980, %976
  %984 = phi double [ %982, %980 ], [ %979, %976 ]
  %985 = getelementptr inbounds double, ptr %81, i64 3
  store double %984, ptr %985, align 8, !tbaa !55
  %986 = tail call double @pow(double noundef %959, double noundef 3.000000e+00) #14
  %987 = load double, ptr %81, align 8, !tbaa !55
  %988 = fmul double %986, %987
  store double %988, ptr %81, align 8, !tbaa !55
  %989 = fmul double %959, %959
  %990 = load double, ptr %972, align 8, !tbaa !55
  %991 = fmul double %989, %990
  store double %991, ptr %972, align 8, !tbaa !55
  %992 = load double, ptr %975, align 8, !tbaa !55
  %993 = fmul double %959, %992
  store double %993, ptr %975, align 8, !tbaa !55
  %994 = icmp ugt i64 %2, 7
  br i1 %994, label %995, label %1011

995:                                              ; preds = %983
  %996 = getelementptr inbounds double, ptr %3, i64 4
  %997 = load double, ptr %996, align 8, !tbaa !55
  %998 = tail call double @pow(double noundef %959, double noundef 3.000000e+00) #14
  %999 = fmul double %997, %998
  %1000 = getelementptr inbounds double, ptr %81, i64 4
  store double %999, ptr %1000, align 8, !tbaa !55
  %1001 = getelementptr inbounds double, ptr %3, i64 5
  %1002 = load double, ptr %1001, align 8, !tbaa !55
  %1003 = fmul double %959, %1002
  %1004 = fmul double %959, %1003
  %1005 = getelementptr inbounds double, ptr %81, i64 5
  store double %1004, ptr %1005, align 8, !tbaa !55
  %1006 = getelementptr inbounds double, ptr %3, i64 6
  %1007 = load double, ptr %1006, align 8, !tbaa !55
  %1008 = fmul double %959, %1007
  %1009 = getelementptr inbounds double, ptr %81, i64 6
  store double %1008, ptr %1009, align 8, !tbaa !55
  %1010 = getelementptr inbounds double, ptr %3, i64 7
  br label %1016

1011:                                             ; preds = %983
  %1012 = getelementptr inbounds double, ptr %81, i64 4
  store double %988, ptr %1012, align 8, !tbaa !55
  %1013 = getelementptr inbounds double, ptr %81, i64 5
  store double %991, ptr %1013, align 8, !tbaa !55
  %1014 = getelementptr inbounds double, ptr %81, i64 6
  store double %993, ptr %1014, align 8, !tbaa !55
  %1015 = getelementptr inbounds double, ptr %81, i64 3
  br label %1016

1016:                                             ; preds = %1011, %995
  %1017 = phi ptr [ %1015, %1011 ], [ %1010, %995 ]
  %1018 = load double, ptr %1017, align 8, !tbaa !55
  %1019 = getelementptr inbounds double, ptr %81, i64 7
  store double %1018, ptr %1019, align 8, !tbaa !55
  switch i64 %2, label %1041 [
    i64 5, label %1020
    i64 6, label %1027
    i64 10, label %1034
  ]

1020:                                             ; preds = %1016
  %1021 = getelementptr inbounds double, ptr %3, i64 3
  %1022 = load double, ptr %1021, align 8, !tbaa !55
  %1023 = getelementptr inbounds double, ptr %81, i64 8
  store double %1022, ptr %1023, align 8, !tbaa !55
  %1024 = getelementptr inbounds double, ptr %3, i64 4
  %1025 = load double, ptr %1024, align 8, !tbaa !55
  %1026 = getelementptr inbounds double, ptr %81, i64 9
  store double %1025, ptr %1026, align 8, !tbaa !55
  br label %1080

1027:                                             ; preds = %1016
  %1028 = getelementptr inbounds double, ptr %3, i64 4
  %1029 = load double, ptr %1028, align 8, !tbaa !55
  %1030 = getelementptr inbounds double, ptr %81, i64 8
  store double %1029, ptr %1030, align 8, !tbaa !55
  %1031 = getelementptr inbounds double, ptr %3, i64 5
  %1032 = load double, ptr %1031, align 8, !tbaa !55
  %1033 = getelementptr inbounds double, ptr %81, i64 9
  store double %1032, ptr %1033, align 8, !tbaa !55
  br label %1080

1034:                                             ; preds = %1016
  %1035 = getelementptr inbounds double, ptr %3, i64 8
  %1036 = load double, ptr %1035, align 8, !tbaa !55
  %1037 = getelementptr inbounds double, ptr %81, i64 8
  store double %1036, ptr %1037, align 8, !tbaa !55
  %1038 = getelementptr inbounds double, ptr %3, i64 9
  %1039 = load double, ptr %1038, align 8, !tbaa !55
  %1040 = getelementptr inbounds double, ptr %81, i64 9
  store double %1039, ptr %1040, align 8, !tbaa !55
  br label %1080

1041:                                             ; preds = %1016
  %1042 = load i64, ptr %951, align 8, !tbaa !62
  %1043 = uitofp i64 %1042 to double
  %1044 = fmul double %1043, 5.000000e-01
  %1045 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 2
  %1046 = load i64, ptr %1045, align 8, !tbaa !66
  %1047 = sitofp i64 %1046 to double
  %1048 = fadd double %1044, %1047
  %1049 = getelementptr inbounds double, ptr %81, i64 8
  store double %1048, ptr %1049, align 8, !tbaa !55
  %1050 = load i64, ptr %954, align 8, !tbaa !64
  %1051 = uitofp i64 %1050 to double
  %1052 = fmul double %1051, 5.000000e-01
  %1053 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 26, i32 3
  %1054 = load i64, ptr %1053, align 8, !tbaa !67
  %1055 = sitofp i64 %1054 to double
  %1056 = fadd double %1052, %1055
  %1057 = getelementptr inbounds double, ptr %81, i64 9
  store double %1056, ptr %1057, align 8, !tbaa !55
  br label %1080

1058:                                             ; preds = %89
  %1059 = urem i64 %2, %17
  %1060 = icmp ne i64 %1059, 0
  %1061 = icmp ugt i64 %17, %2
  %1062 = or i1 %1061, %1060
  br i1 %1062, label %1063, label %1068

1063:                                             ; preds = %1058
  %1064 = zext i32 %90 to i64
  %1065 = tail call ptr @CommandOptionToMnemonic(i32 noundef 20, i64 noundef %1064) #14
  %1066 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1412, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.136, ptr noundef %1065) #14
  %1067 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  br label %1080

1068:                                             ; preds = %1058
  %1069 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.137) #14
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1078, label %1071

1071:                                             ; preds = %1068
  %1072 = tail call double @InterpretLocaleValue(ptr noundef nonnull %1069, ptr noundef null) #14
  %1073 = fmul double %1072, 5.000000e-01
  store double %1073, ptr %81, align 8, !tbaa !55
  %1074 = fcmp olt double %1073, 1.000000e-15
  br i1 %1074, label %1075, label %1080

1075:                                             ; preds = %1071
  %1076 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1423, i32 noundef 410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.138) #14
  %1077 = tail call ptr @RelinquishMagickMemory(ptr noundef %81) #14
  br label %1080

1078:                                             ; preds = %1068
  store double 1.000000e+00, ptr %81, align 8, !tbaa !55
  br label %1080

1079:                                             ; preds = %89
  tail call void @perror(ptr noundef nonnull @.str.139) #17
  br label %1080

1080:                                             ; preds = %120, %213, %219, %1075, %1071, %1078, %209, %962, %1027, %1041, %1034, %1020, %883, %894, %577, %619, %613, %276, %319, %338, %344, %107, %1079, %1063, %926, %910, %871, %716, %704, %642, %630, %540, %445, %442, %438, %96, %87, %64, %56, %33
  %1081 = phi ptr [ null, %87 ], [ null, %1079 ], [ null, %1063 ], [ null, %910 ], [ %81, %926 ], [ null, %716 ], [ null, %871 ], [ null, %630 ], [ null, %642 ], [ %81, %704 ], [ %541, %540 ], [ null, %442 ], [ %81, %445 ], [ %439, %438 ], [ null, %96 ], [ null, %33 ], [ null, %56 ], [ null, %64 ], [ %81, %107 ], [ null, %319 ], [ null, %338 ], [ %81, %344 ], [ null, %276 ], [ null, %577 ], [ null, %619 ], [ %81, %613 ], [ %81, %894 ], [ %81, %883 ], [ null, %962 ], [ %81, %1027 ], [ %81, %1041 ], [ %81, %1034 ], [ %81, %1020 ], [ %210, %209 ], [ null, %1075 ], [ %81, %1071 ], [ %81, %1078 ], [ null, %213 ], [ %81, %219 ], [ %81, %120 ]
  ret ptr %1081
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @InvertPerspectiveCoefficients(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  %3 = load double, ptr %0, align 8, !tbaa !55
  %4 = getelementptr inbounds double, ptr %0, i64 4
  %5 = load double, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds double, ptr %0, i64 3
  %7 = load double, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !55
  %10 = fneg double %7
  %11 = fmul double %9, %10
  %12 = tail call double @llvm.fmuladd.f64(double %3, double %5, double %11)
  %13 = fcmp olt double %12, 0.000000e+00
  %14 = select i1 %13, double -1.000000e+00, double 1.000000e+00
  %15 = fmul double %12, %14
  %16 = fcmp ult double %15, 1.000000e-15
  %17 = fdiv double 1.000000e+00, %12
  %18 = fdiv double %14, 1.000000e-15
  %19 = select i1 %16, double %18, double %17
  %20 = getelementptr inbounds double, ptr %0, i64 7
  %21 = load double, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds double, ptr %0, i64 5
  %23 = load double, ptr %22, align 8, !tbaa !55
  %24 = fneg double %21
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %23, double %5)
  %26 = fmul double %25, %19
  store double %26, ptr %1, align 8, !tbaa !55
  %27 = load double, ptr %20, align 8, !tbaa !55
  %28 = getelementptr inbounds double, ptr %0, i64 2
  %29 = load double, ptr %28, align 8, !tbaa !55
  %30 = load double, ptr %8, align 8, !tbaa !55
  %31 = fneg double %30
  %32 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %31)
  %33 = fmul double %19, %32
  %34 = getelementptr inbounds double, ptr %1, i64 1
  store double %33, ptr %34, align 8, !tbaa !55
  %35 = load double, ptr %8, align 8, !tbaa !55
  %36 = load double, ptr %22, align 8, !tbaa !55
  %37 = load double, ptr %4, align 8, !tbaa !55
  %38 = load double, ptr %28, align 8, !tbaa !55
  %39 = fneg double %37
  %40 = fmul double %38, %39
  %41 = tail call double @llvm.fmuladd.f64(double %35, double %36, double %40)
  %42 = fmul double %19, %41
  %43 = getelementptr inbounds double, ptr %1, i64 2
  store double %42, ptr %43, align 8, !tbaa !55
  %44 = getelementptr inbounds double, ptr %0, i64 6
  %45 = load double, ptr %44, align 8, !tbaa !55
  %46 = load double, ptr %22, align 8, !tbaa !55
  %47 = load double, ptr %6, align 8, !tbaa !55
  %48 = fneg double %47
  %49 = tail call double @llvm.fmuladd.f64(double %45, double %46, double %48)
  %50 = fmul double %19, %49
  %51 = getelementptr inbounds double, ptr %1, i64 3
  store double %50, ptr %51, align 8, !tbaa !55
  %52 = load double, ptr %0, align 8, !tbaa !55
  %53 = load double, ptr %44, align 8, !tbaa !55
  %54 = load double, ptr %28, align 8, !tbaa !55
  %55 = fneg double %53
  %56 = tail call double @llvm.fmuladd.f64(double %55, double %54, double %52)
  %57 = fmul double %19, %56
  %58 = getelementptr inbounds double, ptr %1, i64 4
  store double %57, ptr %58, align 8, !tbaa !55
  %59 = load double, ptr %6, align 8, !tbaa !55
  %60 = load double, ptr %28, align 8, !tbaa !55
  %61 = load double, ptr %0, align 8, !tbaa !55
  %62 = load double, ptr %22, align 8, !tbaa !55
  %63 = fneg double %61
  %64 = fmul double %62, %63
  %65 = tail call double @llvm.fmuladd.f64(double %59, double %60, double %64)
  %66 = fmul double %19, %65
  %67 = getelementptr inbounds double, ptr %1, i64 5
  store double %66, ptr %67, align 8, !tbaa !55
  %68 = load double, ptr %6, align 8, !tbaa !55
  %69 = load double, ptr %20, align 8, !tbaa !55
  %70 = load double, ptr %44, align 8, !tbaa !55
  %71 = load double, ptr %4, align 8, !tbaa !55
  %72 = fneg double %70
  %73 = fmul double %71, %72
  %74 = tail call double @llvm.fmuladd.f64(double %68, double %69, double %73)
  %75 = fmul double %19, %74
  %76 = getelementptr inbounds double, ptr %1, i64 6
  store double %75, ptr %76, align 8, !tbaa !55
  %77 = load double, ptr %44, align 8, !tbaa !55
  %78 = load double, ptr %8, align 8, !tbaa !55
  %79 = load double, ptr %0, align 8, !tbaa !55
  %80 = load double, ptr %20, align 8, !tbaa !55
  %81 = fneg double %79
  %82 = fmul double %80, %81
  %83 = tail call double @llvm.fmuladd.f64(double %77, double %78, double %82)
  %84 = fmul double %19, %83
  %85 = getelementptr inbounds double, ptr %1, i64 7
  store double %84, ptr %85, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #2

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SetImageColorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @ScaleResampleFilter(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef double @poly_basis_fn(i64 noundef %0, double noundef %1, double noundef %2) unnamed_addr #9 {
  switch i64 %0, label %74 [
    i64 0, label %75
    i64 1, label %4
    i64 2, label %5
    i64 3, label %6
    i64 4, label %8
    i64 5, label %10
    i64 6, label %12
    i64 7, label %15
    i64 8, label %18
    i64 9, label %21
    i64 10, label %24
    i64 11, label %28
    i64 12, label %32
    i64 13, label %36
    i64 14, label %40
    i64 15, label %44
    i64 16, label %49
    i64 17, label %54
    i64 18, label %59
    i64 19, label %64
    i64 20, label %69
  ]

4:                                                ; preds = %3
  br label %75

5:                                                ; preds = %3
  br label %75

6:                                                ; preds = %3
  %7 = fmul double %1, %2
  br label %75

8:                                                ; preds = %3
  %9 = fmul double %1, %1
  br label %75

10:                                               ; preds = %3
  %11 = fmul double %2, %2
  br label %75

12:                                               ; preds = %3
  %13 = fmul double %1, %1
  %14 = fmul double %13, %1
  br label %75

15:                                               ; preds = %3
  %16 = fmul double %1, %1
  %17 = fmul double %16, %2
  br label %75

18:                                               ; preds = %3
  %19 = fmul double %1, %2
  %20 = fmul double %19, %2
  br label %75

21:                                               ; preds = %3
  %22 = fmul double %2, %2
  %23 = fmul double %22, %2
  br label %75

24:                                               ; preds = %3
  %25 = fmul double %1, %1
  %26 = fmul double %25, %1
  %27 = fmul double %26, %1
  br label %75

28:                                               ; preds = %3
  %29 = fmul double %1, %1
  %30 = fmul double %29, %1
  %31 = fmul double %30, %2
  br label %75

32:                                               ; preds = %3
  %33 = fmul double %1, %1
  %34 = fmul double %33, %2
  %35 = fmul double %34, %2
  br label %75

36:                                               ; preds = %3
  %37 = fmul double %1, %2
  %38 = fmul double %37, %2
  %39 = fmul double %38, %2
  br label %75

40:                                               ; preds = %3
  %41 = fmul double %2, %2
  %42 = fmul double %41, %2
  %43 = fmul double %42, %2
  br label %75

44:                                               ; preds = %3
  %45 = fmul double %1, %1
  %46 = fmul double %45, %1
  %47 = fmul double %46, %1
  %48 = fmul double %47, %1
  br label %75

49:                                               ; preds = %3
  %50 = fmul double %1, %1
  %51 = fmul double %50, %1
  %52 = fmul double %51, %1
  %53 = fmul double %52, %2
  br label %75

54:                                               ; preds = %3
  %55 = fmul double %1, %1
  %56 = fmul double %55, %1
  %57 = fmul double %56, %2
  %58 = fmul double %57, %2
  br label %75

59:                                               ; preds = %3
  %60 = fmul double %1, %1
  %61 = fmul double %60, %2
  %62 = fmul double %61, %2
  %63 = fmul double %62, %2
  br label %75

64:                                               ; preds = %3
  %65 = fmul double %1, %2
  %66 = fmul double %65, %2
  %67 = fmul double %66, %2
  %68 = fmul double %67, %2
  br label %75

69:                                               ; preds = %3
  %70 = fmul double %2, %2
  %71 = fmul double %70, %2
  %72 = fmul double %71, %2
  %73 = fmul double %72, %2
  br label %75

74:                                               ; preds = %3
  br label %75

75:                                               ; preds = %3, %74, %69, %64, %59, %54, %49, %44, %40, %36, %32, %28, %24, %21, %18, %15, %12, %10, %8, %6, %5, %4
  %76 = phi double [ 0.000000e+00, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %44 ], [ %43, %40 ], [ %39, %36 ], [ %35, %32 ], [ %31, %28 ], [ %27, %24 ], [ %23, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %2, %5 ], [ %1, %4 ], [ 1.000000e+00, %3 ]
  ret double %76
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

declare i32 @ResamplePixelColor(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @RotateImage(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca double, align 8
  store double %1, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2843, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #14
  br label %11

11:                                               ; preds = %8, %3
  %12 = load double, ptr %4, align 8, !tbaa !55
  %13 = fptrunc double %12 to float
  %14 = fcmp olt float %13, -4.500000e+01
  br i1 %14, label %18, label %15

15:                                               ; preds = %18, %11
  %16 = phi float [ %13, %11 ], [ %20, %18 ]
  %17 = fcmp ogt float %16, 4.500000e+01
  br i1 %17, label %22, label %30

18:                                               ; preds = %11, %18
  %19 = phi float [ %20, %18 ], [ %13, %11 ]
  %20 = fadd float %19, 3.600000e+02
  %21 = fcmp olt float %20, -4.500000e+01
  br i1 %21, label %18, label %15, !llvm.loop !120

22:                                               ; preds = %15, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %15 ]
  %24 = phi float [ %25, %22 ], [ %16, %15 ]
  %25 = fadd float %24, -9.000000e+01
  %26 = add i64 %23, 1
  %27 = fcmp ogt float %25, 4.500000e+01
  br i1 %27, label %22, label %28, !llvm.loop !121

28:                                               ; preds = %22
  %29 = and i64 %26, 3
  br label %30

30:                                               ; preds = %28, %15
  %31 = phi float [ %16, %15 ], [ %25, %28 ]
  %32 = phi i64 [ 0, %15 ], [ %29, %28 ]
  %33 = fpext float %31 to double
  %34 = fmul double %33, 0x400921FB54442D18
  %35 = fdiv double %34, 1.800000e+02
  %36 = fmul double %35, 5.000000e-01
  %37 = tail call double @tan(double noundef %36) #14
  %38 = fneg double %37
  %39 = tail call double @sin(double noundef %35) #14
  %40 = tail call double @llvm.fabs.f64(double %38)
  %41 = fcmp olt double %40, 1.000000e-15
  %42 = tail call double @llvm.fabs.f64(double %39)
  %43 = fcmp olt double %42, 1.000000e-15
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = tail call ptr @IntegralRotateImage(ptr noundef %0, i64 noundef %32, ptr noundef %2) #14
  br label %54

47:                                               ; preds = %30
  %48 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %2) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @SetImageVirtualPixelMethod(ptr noundef nonnull %48, i32 noundef 1) #14
  %52 = call ptr @DistortImage(ptr noundef nonnull %48, i32 noundef 3, i64 noundef 1, ptr noundef nonnull %4, i32 noundef 1, ptr noundef %2)
  %53 = call ptr @DestroyImage(ptr noundef nonnull %48) #14
  br label %54

54:                                               ; preds = %47, %50, %45
  %55 = phi ptr [ %46, %45 ], [ %52, %50 ], [ null, %47 ]
  ret ptr %55
}

declare ptr @IntegralRotateImage(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @SparseColorImage(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._MagickPixelPacket, align 8
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2930, ptr noundef nonnull @.str.2, ptr noundef nonnull %14) #14
  br label %16

16:                                               ; preds = %13, %6
  %17 = and i32 %1, 1
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %1, 2
  %20 = icmp eq i32 %19, 0
  %21 = lshr exact i32 %19, 1
  %22 = add nuw nsw i32 %21, %17
  %23 = and i32 %1, 4
  %24 = icmp eq i32 %23, 0
  %25 = lshr exact i32 %23, 2
  %26 = add nuw nsw i32 %22, %25
  %27 = and i32 %1, 32
  %28 = icmp eq i32 %27, 0
  %29 = lshr exact i32 %27, 5
  %30 = add nuw nsw i32 %26, %29
  %31 = and i32 %1, 8
  %32 = icmp eq i32 %31, 0
  %33 = lshr exact i32 %31, 3
  %34 = add nuw nsw i32 %30, %33
  %35 = zext nneg i32 %34 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  %36 = icmp ugt i32 %2, 17
  %37 = select i1 %36, i32 16, i32 %2
  store i32 %37, ptr %8, align 4
  %38 = call fastcc ptr @GenerateCoefficients(ptr noundef %0, ptr noundef nonnull %8, i64 noundef %3, ptr noundef %4, i64 noundef %35, ptr noundef %5)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %16
  %41 = load i32, ptr %8, align 4, !tbaa !61
  %42 = icmp eq i32 %41, 16
  %43 = select i1 %42, i32 %2, i32 %41
  %44 = icmp eq i32 %43, 19
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store double 5.000000e-01, ptr %38, align 8, !tbaa !55
  br label %46

46:                                               ; preds = %40, %45, %16
  %47 = phi i32 [ undef, %16 ], [ %43, %45 ], [ %43, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br i1 %39, label %710, label %48

48:                                               ; preds = %46
  %49 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.10) #14
  %50 = icmp eq ptr %49, null
  br i1 %50, label %181, label %51

51:                                               ; preds = %48
  switch i32 %47, label %181 [
    i32 1, label %52
    i32 7, label %110
  ]

52:                                               ; preds = %51
  %53 = load ptr, ptr @stderr, align 8, !tbaa !74
  %54 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %53, ptr noundef nonnull @.str.105) #14
  br i1 %18, label %63, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @stderr, align 8, !tbaa !74
  %57 = load double, ptr %38, align 8, !tbaa !55
  %58 = getelementptr inbounds double, ptr %38, i64 1
  %59 = load double, ptr %58, align 8, !tbaa !55
  %60 = getelementptr inbounds double, ptr %38, i64 2
  %61 = load double, ptr %60, align 8, !tbaa !55
  %62 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %56, ptr noundef nonnull @.str.106, double noundef %57, double noundef %59, double noundef %61) #14
  br label %63

63:                                               ; preds = %55, %52
  %64 = phi i64 [ 3, %55 ], [ 0, %52 ]
  br i1 %20, label %75, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr @stderr, align 8, !tbaa !74
  %67 = getelementptr inbounds double, ptr %38, i64 %64
  %68 = load double, ptr %67, align 8, !tbaa !55
  %69 = getelementptr double, ptr %67, i64 1
  %70 = load double, ptr %69, align 8, !tbaa !55
  %71 = getelementptr double, ptr %67, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !55
  %73 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %66, ptr noundef nonnull @.str.107, double noundef %68, double noundef %70, double noundef %72) #14
  %74 = add nuw nsw i64 %64, 3
  br label %75

75:                                               ; preds = %65, %63
  %76 = phi i64 [ %74, %65 ], [ %64, %63 ]
  br i1 %24, label %87, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr @stderr, align 8, !tbaa !74
  %79 = getelementptr inbounds double, ptr %38, i64 %76
  %80 = load double, ptr %79, align 8, !tbaa !55
  %81 = getelementptr double, ptr %79, i64 1
  %82 = load double, ptr %81, align 8, !tbaa !55
  %83 = getelementptr double, ptr %79, i64 2
  %84 = load double, ptr %83, align 8, !tbaa !55
  %85 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %78, ptr noundef nonnull @.str.108, double noundef %80, double noundef %82, double noundef %84) #14
  %86 = add nuw nsw i64 %76, 3
  br label %87

87:                                               ; preds = %77, %75
  %88 = phi i64 [ %86, %77 ], [ %76, %75 ]
  br i1 %28, label %99, label %89

89:                                               ; preds = %87
  %90 = load ptr, ptr @stderr, align 8, !tbaa !74
  %91 = getelementptr inbounds double, ptr %38, i64 %88
  %92 = load double, ptr %91, align 8, !tbaa !55
  %93 = getelementptr double, ptr %91, i64 1
  %94 = load double, ptr %93, align 8, !tbaa !55
  %95 = getelementptr double, ptr %91, i64 2
  %96 = load double, ptr %95, align 8, !tbaa !55
  %97 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %90, ptr noundef nonnull @.str.109, double noundef %92, double noundef %94, double noundef %96) #14
  %98 = add nuw nsw i64 %88, 3
  br label %99

99:                                               ; preds = %89, %87
  %100 = phi i64 [ %98, %89 ], [ %88, %87 ]
  br i1 %32, label %181, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr @stderr, align 8, !tbaa !74
  %103 = getelementptr inbounds double, ptr %38, i64 %100
  %104 = load double, ptr %103, align 8, !tbaa !55
  %105 = getelementptr double, ptr %103, i64 1
  %106 = load double, ptr %105, align 8, !tbaa !55
  %107 = getelementptr double, ptr %103, i64 2
  %108 = load double, ptr %107, align 8, !tbaa !55
  %109 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %102, ptr noundef nonnull @.str.110, double noundef %104, double noundef %106, double noundef %108) #14
  br label %181

110:                                              ; preds = %51
  %111 = load ptr, ptr @stderr, align 8, !tbaa !74
  %112 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %111, ptr noundef nonnull @.str.111) #14
  br i1 %18, label %123, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr @stderr, align 8, !tbaa !74
  %115 = load double, ptr %38, align 8, !tbaa !55
  %116 = getelementptr inbounds double, ptr %38, i64 1
  %117 = load double, ptr %116, align 8, !tbaa !55
  %118 = getelementptr inbounds double, ptr %38, i64 2
  %119 = load double, ptr %118, align 8, !tbaa !55
  %120 = getelementptr inbounds double, ptr %38, i64 3
  %121 = load double, ptr %120, align 8, !tbaa !55
  %122 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %114, ptr noundef nonnull @.str.112, double noundef %115, double noundef %117, double noundef %119, double noundef %121) #14
  br label %123

123:                                              ; preds = %113, %110
  %124 = phi i64 [ 4, %113 ], [ 0, %110 ]
  br i1 %20, label %140, label %125

125:                                              ; preds = %123
  %126 = load ptr, ptr @stderr, align 8, !tbaa !74
  %127 = getelementptr inbounds double, ptr %38, i64 %124
  %128 = load double, ptr %127, align 8, !tbaa !55
  %129 = or disjoint i64 %124, 1
  %130 = getelementptr inbounds double, ptr %38, i64 %129
  %131 = load double, ptr %130, align 8, !tbaa !55
  %132 = or disjoint i64 %124, 2
  %133 = getelementptr inbounds double, ptr %38, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !55
  %135 = or disjoint i64 %124, 3
  %136 = getelementptr inbounds double, ptr %38, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !55
  %138 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %126, ptr noundef nonnull @.str.113, double noundef %128, double noundef %131, double noundef %134, double noundef %137) #14
  %139 = add nuw nsw i64 %124, 4
  br label %140

140:                                              ; preds = %125, %123
  %141 = phi i64 [ %139, %125 ], [ %124, %123 ]
  br i1 %24, label %154, label %142

142:                                              ; preds = %140
  %143 = load ptr, ptr @stderr, align 8, !tbaa !74
  %144 = getelementptr inbounds double, ptr %38, i64 %141
  %145 = load double, ptr %144, align 8, !tbaa !55
  %146 = getelementptr double, ptr %144, i64 1
  %147 = load double, ptr %146, align 8, !tbaa !55
  %148 = getelementptr double, ptr %144, i64 2
  %149 = load double, ptr %148, align 8, !tbaa !55
  %150 = getelementptr double, ptr %144, i64 3
  %151 = load double, ptr %150, align 8, !tbaa !55
  %152 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %143, ptr noundef nonnull @.str.114, double noundef %145, double noundef %147, double noundef %149, double noundef %151) #14
  %153 = add nuw nsw i64 %141, 4
  br label %154

154:                                              ; preds = %142, %140
  %155 = phi i64 [ %153, %142 ], [ %141, %140 ]
  br i1 %28, label %168, label %156

156:                                              ; preds = %154
  %157 = load ptr, ptr @stderr, align 8, !tbaa !74
  %158 = getelementptr inbounds double, ptr %38, i64 %155
  %159 = load double, ptr %158, align 8, !tbaa !55
  %160 = getelementptr double, ptr %158, i64 1
  %161 = load double, ptr %160, align 8, !tbaa !55
  %162 = getelementptr double, ptr %158, i64 2
  %163 = load double, ptr %162, align 8, !tbaa !55
  %164 = getelementptr double, ptr %158, i64 3
  %165 = load double, ptr %164, align 8, !tbaa !55
  %166 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %157, ptr noundef nonnull @.str.115, double noundef %159, double noundef %161, double noundef %163, double noundef %165) #14
  %167 = add nuw nsw i64 %155, 4
  br label %168

168:                                              ; preds = %156, %154
  %169 = phi i64 [ %167, %156 ], [ %155, %154 ]
  br i1 %32, label %181, label %170

170:                                              ; preds = %168
  %171 = load ptr, ptr @stderr, align 8, !tbaa !74
  %172 = getelementptr inbounds double, ptr %38, i64 %169
  %173 = load double, ptr %172, align 8, !tbaa !55
  %174 = getelementptr double, ptr %172, i64 1
  %175 = load double, ptr %174, align 8, !tbaa !55
  %176 = getelementptr double, ptr %172, i64 2
  %177 = load double, ptr %176, align 8, !tbaa !55
  %178 = getelementptr double, ptr %172, i64 3
  %179 = load double, ptr %178, align 8, !tbaa !55
  %180 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %171, ptr noundef nonnull @.str.116, double noundef %173, double noundef %175, double noundef %177, double noundef %179) #14
  br label %181

181:                                              ; preds = %168, %170, %99, %101, %51, %48
  %182 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #14
  %183 = icmp eq ptr %182, null
  br i1 %183, label %710, label %184

184:                                              ; preds = %181
  %185 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %182, i32 noundef 1) #14
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 58
  tail call void @InheritException(ptr noundef %5, ptr noundef nonnull %188) #14
  %189 = tail call ptr @DestroyImage(ptr noundef nonnull %182) #14
  br label %710

190:                                              ; preds = %184
  %191 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %182, ptr noundef %5) #14
  %192 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 8
  %193 = load i64, ptr %192, align 8, !tbaa !64
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %705

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 7
  %197 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %198 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 5
  %199 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 6
  %200 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 7
  %201 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 8
  %202 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %203 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %204 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %205 = icmp eq i64 %3, 0
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %207 = add nuw nsw i64 %35, 2
  %208 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %209 = getelementptr inbounds double, ptr %38, i64 1
  %210 = getelementptr inbounds double, ptr %38, i64 2
  %211 = getelementptr inbounds double, ptr %38, i64 3
  %212 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %213 = getelementptr inbounds double, ptr %38, i64 1
  %214 = getelementptr inbounds double, ptr %38, i64 2
  %215 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %216 = icmp eq i64 %3, 0
  %217 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %218 = add nuw nsw i64 %35, 2
  %219 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %220 = getelementptr inbounds %struct._Image, ptr %182, i64 0, i32 1
  %221 = getelementptr inbounds %struct._MagickPixelPacket, ptr %9, i64 0, i32 9
  %222 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %223 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %224 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %225 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %226

226:                                              ; preds = %195, %694
  %227 = phi i64 [ 0, %195 ], [ %697, %694 ]
  %228 = phi i64 [ 0, %195 ], [ %696, %694 ]
  %229 = phi i32 [ 1, %195 ], [ %695, %694 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #14
  %230 = load i64, ptr %196, align 8, !tbaa !62
  %231 = call ptr @GetCacheViewAuthenticPixels(ptr noundef %191, i64 noundef 0, i64 noundef %227, i64 noundef %230, i64 noundef 1, ptr noundef %5) #16
  %232 = icmp eq ptr %231, null
  br i1 %232, label %694, label %233

233:                                              ; preds = %226
  %234 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %191) #14
  call void @GetMagickPixelPacket(ptr noundef nonnull %182, ptr noundef nonnull %9) #14
  %235 = load i64, ptr %197, align 8, !tbaa !62
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %679

237:                                              ; preds = %233
  %238 = sitofp i64 %227 to double
  %239 = sitofp i64 %227 to double
  %240 = sitofp i64 %227 to double
  %241 = sitofp i64 %227 to double
  %242 = sitofp i64 %227 to double
  %243 = sitofp i64 %227 to double
  %244 = sitofp i64 %227 to double
  %245 = sitofp i64 %227 to double
  %246 = sitofp i64 %227 to double
  %247 = sitofp i64 %227 to double
  %248 = sitofp i64 %227 to double
  %249 = sitofp i64 %227 to double
  br label %250

250:                                              ; preds = %237, %673
  %251 = phi ptr [ %231, %237 ], [ %674, %673 ]
  %252 = phi i64 [ 0, %237 ], [ %676, %673 ]
  %253 = phi ptr [ %234, %237 ], [ %675, %673 ]
  %254 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 2
  %255 = load i16, ptr %254, align 2, !tbaa !83
  %256 = uitofp i16 %255 to float
  store float %256, ptr %198, align 8, !tbaa !95
  %257 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 1
  %258 = load i16, ptr %257, align 2, !tbaa !84
  %259 = uitofp i16 %258 to float
  store float %259, ptr %199, align 4, !tbaa !97
  %260 = load i16, ptr %251, align 2, !tbaa !85
  %261 = uitofp i16 %260 to float
  store float %261, ptr %200, align 8, !tbaa !98
  %262 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 0, i32 3
  %263 = load i16, ptr %262, align 2, !tbaa !99
  %264 = uitofp i16 %263 to float
  store float %264, ptr %201, align 4, !tbaa !100
  %265 = load i32, ptr %202, align 4, !tbaa !86
  %266 = icmp eq i32 %265, 12
  %267 = icmp ne ptr %253, null
  %268 = and i1 %267, %266
  br i1 %268, label %269, label %272

269:                                              ; preds = %250
  %270 = load i16, ptr %253, align 2, !tbaa !106
  %271 = uitofp i16 %270 to float
  store float %271, ptr %203, align 8, !tbaa !102
  br label %272

272:                                              ; preds = %250, %269
  switch i32 %47, label %273 [
    i32 1, label %276
    i32 7, label %344
    i32 19, label %434
    i32 16, label %434
  ]

273:                                              ; preds = %272
  br i1 %216, label %598, label %274

274:                                              ; preds = %273
  %275 = sitofp i64 %252 to double
  br label %545

276:                                              ; preds = %272
  br i1 %18, label %286, label %277

277:                                              ; preds = %276
  %278 = load double, ptr %38, align 8, !tbaa !55
  %279 = sitofp i64 %252 to double
  %280 = load double, ptr %213, align 8, !tbaa !55
  %281 = fmul double %280, %244
  %282 = call double @llvm.fmuladd.f64(double %278, double %279, double %281)
  %283 = load double, ptr %214, align 8, !tbaa !55
  %284 = fadd double %283, %282
  %285 = fptrunc double %284 to float
  store float %285, ptr %198, align 8, !tbaa !95
  br label %286

286:                                              ; preds = %277, %276
  %287 = phi i64 [ 3, %277 ], [ 0, %276 ]
  br i1 %20, label %301, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds double, ptr %38, i64 %287
  %290 = load double, ptr %289, align 8, !tbaa !55
  %291 = sitofp i64 %252 to double
  %292 = getelementptr double, ptr %289, i64 1
  %293 = load double, ptr %292, align 8, !tbaa !55
  %294 = fmul double %293, %245
  %295 = call double @llvm.fmuladd.f64(double %290, double %291, double %294)
  %296 = getelementptr double, ptr %289, i64 2
  %297 = load double, ptr %296, align 8, !tbaa !55
  %298 = fadd double %297, %295
  %299 = fptrunc double %298 to float
  store float %299, ptr %199, align 4, !tbaa !97
  %300 = add nuw nsw i64 %287, 3
  br label %301

301:                                              ; preds = %288, %286
  %302 = phi i64 [ %300, %288 ], [ %287, %286 ]
  br i1 %24, label %316, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds double, ptr %38, i64 %302
  %305 = load double, ptr %304, align 8, !tbaa !55
  %306 = sitofp i64 %252 to double
  %307 = getelementptr double, ptr %304, i64 1
  %308 = load double, ptr %307, align 8, !tbaa !55
  %309 = fmul double %308, %246
  %310 = call double @llvm.fmuladd.f64(double %305, double %306, double %309)
  %311 = getelementptr double, ptr %304, i64 2
  %312 = load double, ptr %311, align 8, !tbaa !55
  %313 = fadd double %312, %310
  %314 = fptrunc double %313 to float
  store float %314, ptr %200, align 8, !tbaa !98
  %315 = add nuw nsw i64 %302, 3
  br label %316

316:                                              ; preds = %303, %301
  %317 = phi i64 [ %315, %303 ], [ %302, %301 ]
  br i1 %28, label %331, label %318

318:                                              ; preds = %316
  %319 = getelementptr inbounds double, ptr %38, i64 %317
  %320 = load double, ptr %319, align 8, !tbaa !55
  %321 = sitofp i64 %252 to double
  %322 = getelementptr double, ptr %319, i64 1
  %323 = load double, ptr %322, align 8, !tbaa !55
  %324 = fmul double %323, %247
  %325 = call double @llvm.fmuladd.f64(double %320, double %321, double %324)
  %326 = getelementptr double, ptr %319, i64 2
  %327 = load double, ptr %326, align 8, !tbaa !55
  %328 = fadd double %327, %325
  %329 = fptrunc double %328 to float
  store float %329, ptr %215, align 8, !tbaa !102
  %330 = add nuw nsw i64 %317, 3
  br label %331

331:                                              ; preds = %318, %316
  %332 = phi i64 [ %330, %318 ], [ %317, %316 ]
  br i1 %32, label %598, label %333

333:                                              ; preds = %331
  %334 = getelementptr inbounds double, ptr %38, i64 %332
  %335 = load double, ptr %334, align 8, !tbaa !55
  %336 = sitofp i64 %252 to double
  %337 = getelementptr double, ptr %334, i64 1
  %338 = load double, ptr %337, align 8, !tbaa !55
  %339 = fmul double %338, %248
  %340 = call double @llvm.fmuladd.f64(double %335, double %336, double %339)
  %341 = getelementptr double, ptr %334, i64 2
  %342 = load double, ptr %341, align 8, !tbaa !55
  %343 = fadd double %342, %340
  br label %595

344:                                              ; preds = %272
  br i1 %18, label %357, label %345

345:                                              ; preds = %344
  %346 = load double, ptr %38, align 8, !tbaa !55
  %347 = sitofp i64 %252 to double
  %348 = load double, ptr %209, align 8, !tbaa !55
  %349 = fmul double %348, %239
  %350 = call double @llvm.fmuladd.f64(double %346, double %347, double %349)
  %351 = load double, ptr %210, align 8, !tbaa !55
  %352 = fmul double %351, %347
  %353 = call double @llvm.fmuladd.f64(double %352, double %239, double %350)
  %354 = load double, ptr %211, align 8, !tbaa !55
  %355 = fadd double %354, %353
  %356 = fptrunc double %355 to float
  store float %356, ptr %198, align 8, !tbaa !95
  br label %357

357:                                              ; preds = %345, %344
  %358 = phi i64 [ 4, %345 ], [ 0, %344 ]
  br i1 %20, label %379, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds double, ptr %38, i64 %358
  %361 = load double, ptr %360, align 8, !tbaa !55
  %362 = sitofp i64 %252 to double
  %363 = or disjoint i64 %358, 1
  %364 = getelementptr inbounds double, ptr %38, i64 %363
  %365 = load double, ptr %364, align 8, !tbaa !55
  %366 = fmul double %365, %240
  %367 = call double @llvm.fmuladd.f64(double %361, double %362, double %366)
  %368 = or disjoint i64 %358, 2
  %369 = getelementptr inbounds double, ptr %38, i64 %368
  %370 = load double, ptr %369, align 8, !tbaa !55
  %371 = fmul double %370, %362
  %372 = call double @llvm.fmuladd.f64(double %371, double %240, double %367)
  %373 = or disjoint i64 %358, 3
  %374 = getelementptr inbounds double, ptr %38, i64 %373
  %375 = load double, ptr %374, align 8, !tbaa !55
  %376 = fadd double %375, %372
  %377 = fptrunc double %376 to float
  store float %377, ptr %199, align 4, !tbaa !97
  %378 = add nuw nsw i64 %358, 4
  br label %379

379:                                              ; preds = %359, %357
  %380 = phi i64 [ %378, %359 ], [ %358, %357 ]
  br i1 %24, label %398, label %381

381:                                              ; preds = %379
  %382 = getelementptr inbounds double, ptr %38, i64 %380
  %383 = load double, ptr %382, align 8, !tbaa !55
  %384 = sitofp i64 %252 to double
  %385 = getelementptr double, ptr %382, i64 1
  %386 = load double, ptr %385, align 8, !tbaa !55
  %387 = fmul double %386, %241
  %388 = call double @llvm.fmuladd.f64(double %383, double %384, double %387)
  %389 = getelementptr double, ptr %382, i64 2
  %390 = load double, ptr %389, align 8, !tbaa !55
  %391 = fmul double %390, %384
  %392 = call double @llvm.fmuladd.f64(double %391, double %241, double %388)
  %393 = getelementptr double, ptr %382, i64 3
  %394 = load double, ptr %393, align 8, !tbaa !55
  %395 = fadd double %394, %392
  %396 = fptrunc double %395 to float
  store float %396, ptr %200, align 8, !tbaa !98
  %397 = add nuw nsw i64 %380, 4
  br label %398

398:                                              ; preds = %381, %379
  %399 = phi i64 [ %397, %381 ], [ %380, %379 ]
  br i1 %28, label %417, label %400

400:                                              ; preds = %398
  %401 = getelementptr inbounds double, ptr %38, i64 %399
  %402 = load double, ptr %401, align 8, !tbaa !55
  %403 = sitofp i64 %252 to double
  %404 = getelementptr double, ptr %401, i64 1
  %405 = load double, ptr %404, align 8, !tbaa !55
  %406 = fmul double %405, %242
  %407 = call double @llvm.fmuladd.f64(double %402, double %403, double %406)
  %408 = getelementptr double, ptr %401, i64 2
  %409 = load double, ptr %408, align 8, !tbaa !55
  %410 = fmul double %409, %403
  %411 = call double @llvm.fmuladd.f64(double %410, double %242, double %407)
  %412 = getelementptr double, ptr %401, i64 3
  %413 = load double, ptr %412, align 8, !tbaa !55
  %414 = fadd double %413, %411
  %415 = fptrunc double %414 to float
  store float %415, ptr %212, align 8, !tbaa !102
  %416 = add nuw nsw i64 %399, 4
  br label %417

417:                                              ; preds = %400, %398
  %418 = phi i64 [ %416, %400 ], [ %399, %398 ]
  br i1 %32, label %598, label %419

419:                                              ; preds = %417
  %420 = getelementptr inbounds double, ptr %38, i64 %418
  %421 = load double, ptr %420, align 8, !tbaa !55
  %422 = sitofp i64 %252 to double
  %423 = getelementptr double, ptr %420, i64 1
  %424 = load double, ptr %423, align 8, !tbaa !55
  %425 = fmul double %424, %243
  %426 = call double @llvm.fmuladd.f64(double %421, double %422, double %425)
  %427 = getelementptr double, ptr %420, i64 2
  %428 = load double, ptr %427, align 8, !tbaa !55
  %429 = fmul double %428, %422
  %430 = call double @llvm.fmuladd.f64(double %429, double %243, double %426)
  %431 = getelementptr double, ptr %420, i64 3
  %432 = load double, ptr %431, align 8, !tbaa !55
  %433 = fadd double %432, %430
  br label %595

434:                                              ; preds = %272, %272
  br i1 %18, label %436, label %435

435:                                              ; preds = %434
  store float 0.000000e+00, ptr %198, align 8, !tbaa !95
  br label %436

436:                                              ; preds = %435, %434
  br i1 %20, label %438, label %437

437:                                              ; preds = %436
  store float 0.000000e+00, ptr %199, align 4, !tbaa !97
  br label %438

438:                                              ; preds = %437, %436
  br i1 %24, label %440, label %439

439:                                              ; preds = %438
  store float 0.000000e+00, ptr %200, align 8, !tbaa !98
  br label %440

440:                                              ; preds = %439, %438
  br i1 %28, label %442, label %441

441:                                              ; preds = %440
  store float 0.000000e+00, ptr %204, align 8, !tbaa !102
  br label %442

442:                                              ; preds = %441, %440
  br i1 %32, label %444, label %443

443:                                              ; preds = %442
  store float 0.000000e+00, ptr %201, align 4, !tbaa !100
  br label %444

444:                                              ; preds = %443, %442
  br i1 %205, label %515, label %445

445:                                              ; preds = %444
  %446 = sitofp i64 %252 to double
  br label %447

447:                                              ; preds = %445, %511
  %448 = phi double [ 0.000000e+00, %445 ], [ %512, %511 ]
  %449 = phi i64 [ 0, %445 ], [ %513, %511 ]
  %450 = add nsw i64 %449, 2
  %451 = getelementptr inbounds double, ptr %4, i64 %449
  %452 = load double, ptr %451, align 8, !tbaa !55
  %453 = fsub double %446, %452
  %454 = getelementptr double, ptr %451, i64 1
  %455 = load double, ptr %454, align 8, !tbaa !55
  %456 = fsub double %238, %455
  %457 = fmul double %456, %456
  %458 = call double @llvm.fmuladd.f64(double %453, double %453, double %457)
  %459 = load double, ptr %38, align 8, !tbaa !55
  %460 = call double @pow(double noundef %458, double noundef %459) #14
  %461 = fcmp olt double %460, 1.000000e+00
  %462 = fdiv double 1.000000e+00, %460
  %463 = select i1 %461, double 1.000000e+00, double %462
  br i1 %18, label %472, label %464

464:                                              ; preds = %447
  %465 = add nsw i64 %449, 3
  %466 = getelementptr inbounds double, ptr %4, i64 %450
  %467 = load double, ptr %466, align 8, !tbaa !55
  %468 = load float, ptr %198, align 8, !tbaa !95
  %469 = fpext float %468 to double
  %470 = call double @llvm.fmuladd.f64(double %467, double %463, double %469)
  %471 = fptrunc double %470 to float
  store float %471, ptr %198, align 8, !tbaa !95
  br label %472

472:                                              ; preds = %464, %447
  %473 = phi i64 [ %465, %464 ], [ %450, %447 ]
  br i1 %20, label %482, label %474

474:                                              ; preds = %472
  %475 = add nsw i64 %473, 1
  %476 = getelementptr inbounds double, ptr %4, i64 %473
  %477 = load double, ptr %476, align 8, !tbaa !55
  %478 = load float, ptr %199, align 4, !tbaa !97
  %479 = fpext float %478 to double
  %480 = call double @llvm.fmuladd.f64(double %477, double %463, double %479)
  %481 = fptrunc double %480 to float
  store float %481, ptr %199, align 4, !tbaa !97
  br label %482

482:                                              ; preds = %474, %472
  %483 = phi i64 [ %475, %474 ], [ %473, %472 ]
  br i1 %24, label %492, label %484

484:                                              ; preds = %482
  %485 = add nsw i64 %483, 1
  %486 = getelementptr inbounds double, ptr %4, i64 %483
  %487 = load double, ptr %486, align 8, !tbaa !55
  %488 = load float, ptr %200, align 8, !tbaa !98
  %489 = fpext float %488 to double
  %490 = call double @llvm.fmuladd.f64(double %487, double %463, double %489)
  %491 = fptrunc double %490 to float
  store float %491, ptr %200, align 8, !tbaa !98
  br label %492

492:                                              ; preds = %484, %482
  %493 = phi i64 [ %485, %484 ], [ %483, %482 ]
  br i1 %28, label %502, label %494

494:                                              ; preds = %492
  %495 = add nsw i64 %493, 1
  %496 = getelementptr inbounds double, ptr %4, i64 %493
  %497 = load double, ptr %496, align 8, !tbaa !55
  %498 = load float, ptr %206, align 8, !tbaa !102
  %499 = fpext float %498 to double
  %500 = call double @llvm.fmuladd.f64(double %497, double %463, double %499)
  %501 = fptrunc double %500 to float
  store float %501, ptr %206, align 8, !tbaa !102
  br label %502

502:                                              ; preds = %494, %492
  %503 = phi i64 [ %495, %494 ], [ %493, %492 ]
  br i1 %32, label %511, label %504

504:                                              ; preds = %502
  %505 = getelementptr inbounds double, ptr %4, i64 %503
  %506 = load double, ptr %505, align 8, !tbaa !55
  %507 = load float, ptr %201, align 4, !tbaa !100
  %508 = fpext float %507 to double
  %509 = call double @llvm.fmuladd.f64(double %506, double %463, double %508)
  %510 = fptrunc double %509 to float
  store float %510, ptr %201, align 4, !tbaa !100
  br label %511

511:                                              ; preds = %504, %502
  %512 = fadd double %448, %463
  %513 = add i64 %207, %449
  %514 = icmp ult i64 %513, %3
  br i1 %514, label %447, label %515, !llvm.loop !122

515:                                              ; preds = %511, %444
  %516 = phi double [ 0.000000e+00, %444 ], [ %512, %511 ]
  br i1 %18, label %522, label %517

517:                                              ; preds = %515
  %518 = load float, ptr %198, align 8, !tbaa !95
  %519 = fpext float %518 to double
  %520 = fdiv double %519, %516
  %521 = fptrunc double %520 to float
  store float %521, ptr %198, align 8, !tbaa !95
  br label %522

522:                                              ; preds = %517, %515
  br i1 %20, label %528, label %523

523:                                              ; preds = %522
  %524 = load float, ptr %199, align 4, !tbaa !97
  %525 = fpext float %524 to double
  %526 = fdiv double %525, %516
  %527 = fptrunc double %526 to float
  store float %527, ptr %199, align 4, !tbaa !97
  br label %528

528:                                              ; preds = %523, %522
  br i1 %24, label %534, label %529

529:                                              ; preds = %528
  %530 = load float, ptr %200, align 8, !tbaa !98
  %531 = fpext float %530 to double
  %532 = fdiv double %531, %516
  %533 = fptrunc double %532 to float
  store float %533, ptr %200, align 8, !tbaa !98
  br label %534

534:                                              ; preds = %529, %528
  br i1 %28, label %540, label %535

535:                                              ; preds = %534
  %536 = load float, ptr %208, align 8, !tbaa !102
  %537 = fpext float %536 to double
  %538 = fdiv double %537, %516
  %539 = fptrunc double %538 to float
  store float %539, ptr %208, align 8, !tbaa !102
  br label %540

540:                                              ; preds = %535, %534
  br i1 %32, label %598, label %541

541:                                              ; preds = %540
  %542 = load float, ptr %201, align 4, !tbaa !100
  %543 = fpext float %542 to double
  %544 = fdiv double %543, %516
  br label %595

545:                                              ; preds = %274, %591
  %546 = phi double [ 0x7FEFFFFFFFFFFFFF, %274 ], [ %592, %591 ]
  %547 = phi i64 [ 0, %274 ], [ %593, %591 ]
  %548 = getelementptr inbounds double, ptr %4, i64 %547
  %549 = load double, ptr %548, align 8, !tbaa !55
  %550 = fsub double %275, %549
  %551 = getelementptr double, ptr %548, i64 1
  %552 = load double, ptr %551, align 8, !tbaa !55
  %553 = fsub double %249, %552
  %554 = fmul double %553, %553
  %555 = call double @llvm.fmuladd.f64(double %550, double %550, double %554)
  %556 = fcmp olt double %555, %546
  br i1 %556, label %557, label %591

557:                                              ; preds = %545
  %558 = add nsw i64 %547, 2
  br i1 %18, label %564, label %559

559:                                              ; preds = %557
  %560 = add nsw i64 %547, 3
  %561 = getelementptr inbounds double, ptr %4, i64 %558
  %562 = load double, ptr %561, align 8, !tbaa !55
  %563 = fptrunc double %562 to float
  store float %563, ptr %198, align 8, !tbaa !95
  br label %564

564:                                              ; preds = %559, %557
  %565 = phi i64 [ %560, %559 ], [ %558, %557 ]
  br i1 %20, label %571, label %566

566:                                              ; preds = %564
  %567 = add nsw i64 %565, 1
  %568 = getelementptr inbounds double, ptr %4, i64 %565
  %569 = load double, ptr %568, align 8, !tbaa !55
  %570 = fptrunc double %569 to float
  store float %570, ptr %199, align 4, !tbaa !97
  br label %571

571:                                              ; preds = %566, %564
  %572 = phi i64 [ %567, %566 ], [ %565, %564 ]
  br i1 %24, label %578, label %573

573:                                              ; preds = %571
  %574 = add nsw i64 %572, 1
  %575 = getelementptr inbounds double, ptr %4, i64 %572
  %576 = load double, ptr %575, align 8, !tbaa !55
  %577 = fptrunc double %576 to float
  store float %577, ptr %200, align 8, !tbaa !98
  br label %578

578:                                              ; preds = %573, %571
  %579 = phi i64 [ %574, %573 ], [ %572, %571 ]
  br i1 %28, label %585, label %580

580:                                              ; preds = %578
  %581 = add nsw i64 %579, 1
  %582 = getelementptr inbounds double, ptr %4, i64 %579
  %583 = load double, ptr %582, align 8, !tbaa !55
  %584 = fptrunc double %583 to float
  store float %584, ptr %217, align 8, !tbaa !102
  br label %585

585:                                              ; preds = %580, %578
  %586 = phi i64 [ %581, %580 ], [ %579, %578 ]
  br i1 %32, label %591, label %587

587:                                              ; preds = %585
  %588 = getelementptr inbounds double, ptr %4, i64 %586
  %589 = load double, ptr %588, align 8, !tbaa !55
  %590 = fptrunc double %589 to float
  store float %590, ptr %201, align 4, !tbaa !100
  br label %591

591:                                              ; preds = %585, %587, %545
  %592 = phi double [ %546, %545 ], [ %555, %587 ], [ %555, %585 ]
  %593 = add i64 %218, %547
  %594 = icmp ult i64 %593, %3
  br i1 %594, label %545, label %598, !llvm.loop !123

595:                                              ; preds = %333, %419, %541
  %596 = phi double [ %544, %541 ], [ %433, %419 ], [ %343, %333 ]
  %597 = fptrunc double %596 to float
  store float %597, ptr %201, align 4, !tbaa !100
  br label %598

598:                                              ; preds = %591, %595, %273, %540, %417, %331
  br i1 %18, label %602, label %599

599:                                              ; preds = %598
  %600 = load float, ptr %198, align 8, !tbaa !95
  %601 = fmul float %600, 6.553500e+04
  store float %601, ptr %198, align 8, !tbaa !95
  br label %602

602:                                              ; preds = %599, %598
  br i1 %20, label %606, label %603

603:                                              ; preds = %602
  %604 = load float, ptr %199, align 4, !tbaa !97
  %605 = fmul float %604, 6.553500e+04
  store float %605, ptr %199, align 4, !tbaa !97
  br label %606

606:                                              ; preds = %603, %602
  br i1 %24, label %610, label %607

607:                                              ; preds = %606
  %608 = load float, ptr %200, align 8, !tbaa !98
  %609 = fmul float %608, 6.553500e+04
  store float %609, ptr %200, align 8, !tbaa !98
  br label %610

610:                                              ; preds = %607, %606
  br i1 %28, label %614, label %611

611:                                              ; preds = %610
  %612 = load float, ptr %219, align 8, !tbaa !102
  %613 = fmul float %612, 6.553500e+04
  store float %613, ptr %219, align 8, !tbaa !102
  br label %614

614:                                              ; preds = %611, %610
  br i1 %32, label %618, label %615

615:                                              ; preds = %614
  %616 = load float, ptr %201, align 4, !tbaa !100
  %617 = fmul float %616, 6.553500e+04
  store float %617, ptr %201, align 4, !tbaa !100
  br label %618

618:                                              ; preds = %615, %614
  %619 = load float, ptr %198, align 8, !tbaa !95
  %620 = fcmp ugt float %619, 0.000000e+00
  br i1 %620, label %621, label %626

621:                                              ; preds = %618
  %622 = fcmp ult float %619, 6.553500e+04
  br i1 %622, label %623, label %626

623:                                              ; preds = %621
  %624 = fadd float %619, 5.000000e-01
  %625 = fptoui float %624 to i16
  br label %626

626:                                              ; preds = %623, %621, %618
  %627 = phi i16 [ %625, %623 ], [ 0, %618 ], [ -1, %621 ]
  store i16 %627, ptr %254, align 2, !tbaa !83
  %628 = load float, ptr %199, align 4, !tbaa !97
  %629 = fcmp ugt float %628, 0.000000e+00
  br i1 %629, label %630, label %635

630:                                              ; preds = %626
  %631 = fcmp ult float %628, 6.553500e+04
  br i1 %631, label %632, label %635

632:                                              ; preds = %630
  %633 = fadd float %628, 5.000000e-01
  %634 = fptoui float %633 to i16
  br label %635

635:                                              ; preds = %632, %630, %626
  %636 = phi i16 [ %634, %632 ], [ 0, %626 ], [ -1, %630 ]
  store i16 %636, ptr %257, align 2, !tbaa !84
  %637 = load float, ptr %200, align 8, !tbaa !98
  %638 = fcmp ugt float %637, 0.000000e+00
  br i1 %638, label %639, label %644

639:                                              ; preds = %635
  %640 = fcmp ult float %637, 6.553500e+04
  br i1 %640, label %641, label %644

641:                                              ; preds = %639
  %642 = fadd float %637, 5.000000e-01
  %643 = fptoui float %642 to i16
  br label %644

644:                                              ; preds = %641, %639, %635
  %645 = phi i16 [ %643, %641 ], [ 0, %635 ], [ -1, %639 ]
  store i16 %645, ptr %251, align 2, !tbaa !85
  %646 = load float, ptr %201, align 4, !tbaa !100
  %647 = fcmp ugt float %646, 0.000000e+00
  br i1 %647, label %648, label %653

648:                                              ; preds = %644
  %649 = fcmp ult float %646, 6.553500e+04
  br i1 %649, label %650, label %653

650:                                              ; preds = %648
  %651 = fadd float %646, 5.000000e-01
  %652 = fptoui float %651 to i16
  br label %653

653:                                              ; preds = %650, %648, %644
  %654 = phi i16 [ %652, %650 ], [ 0, %644 ], [ -1, %648 ]
  store i16 %654, ptr %262, align 2, !tbaa !99
  %655 = load i32, ptr %220, align 4, !tbaa !86
  %656 = icmp eq i32 %655, 12
  br i1 %656, label %661, label %657

657:                                              ; preds = %653
  %658 = load i32, ptr %182, align 8, !tbaa !105
  %659 = icmp eq i32 %658, 2
  %660 = and i1 %267, %659
  br i1 %660, label %663, label %673

661:                                              ; preds = %653
  %662 = icmp eq ptr %253, null
  br i1 %662, label %673, label %663

663:                                              ; preds = %661, %657
  %664 = load float, ptr %221, align 8, !tbaa !102
  %665 = fcmp ugt float %664, 0.000000e+00
  br i1 %665, label %666, label %671

666:                                              ; preds = %663
  %667 = fcmp ult float %664, 6.553500e+04
  br i1 %667, label %668, label %671

668:                                              ; preds = %666
  %669 = fadd float %664, 5.000000e-01
  %670 = fptoui float %669 to i16
  br label %671

671:                                              ; preds = %668, %666, %663
  %672 = phi i16 [ %670, %668 ], [ 0, %663 ], [ -1, %666 ]
  store i16 %672, ptr %253, align 2, !tbaa !106
  br label %673

673:                                              ; preds = %657, %661, %671
  %674 = getelementptr inbounds %struct._PixelPacket, ptr %251, i64 1
  %675 = getelementptr inbounds i16, ptr %253, i64 1
  %676 = add nuw nsw i64 %252, 1
  %677 = load i64, ptr %197, align 8, !tbaa !62
  %678 = icmp slt i64 %676, %677
  br i1 %678, label %250, label %679, !llvm.loop !124

679:                                              ; preds = %673, %233
  %680 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %191, ptr noundef %5) #16
  %681 = icmp eq i32 %680, 0
  %682 = select i1 %681, i32 0, i32 %229
  %683 = load ptr, ptr %222, align 8, !tbaa !108
  %684 = icmp eq ptr %683, null
  br i1 %684, label %694, label %685

685:                                              ; preds = %679
  %686 = add nsw i64 %228, 1
  %687 = load i64, ptr %223, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #14
  %688 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.117, ptr noundef nonnull %224) #14
  %689 = load ptr, ptr %222, align 8, !tbaa !108
  %690 = load ptr, ptr %225, align 8, !tbaa !109
  %691 = call i32 %689(ptr noundef nonnull %7, i64 noundef %228, i64 noundef %687, ptr noundef %690) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #14
  %692 = icmp eq i32 %691, 0
  %693 = select i1 %692, i32 0, i32 %682
  br label %694

694:                                              ; preds = %679, %685, %226
  %695 = phi i32 [ 0, %226 ], [ %693, %685 ], [ %682, %679 ]
  %696 = phi i64 [ %228, %226 ], [ %686, %685 ], [ %228, %679 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #14
  %697 = add nuw nsw i64 %227, 1
  %698 = load i64, ptr %192, align 8, !tbaa !64
  %699 = icmp slt i64 %697, %698
  br i1 %699, label %226, label %700, !llvm.loop !125

700:                                              ; preds = %694
  %701 = icmp eq i32 %695, 0
  %702 = call ptr @DestroyCacheView(ptr noundef %191) #14
  br i1 %701, label %703, label %707

703:                                              ; preds = %700
  %704 = call ptr @DestroyImage(ptr noundef nonnull %182) #14
  br label %707

705:                                              ; preds = %190
  %706 = tail call ptr @DestroyCacheView(ptr noundef %191) #14
  br label %707

707:                                              ; preds = %705, %703, %700
  %708 = phi ptr [ %704, %703 ], [ %182, %700 ], [ %182, %705 ]
  %709 = call ptr @RelinquishMagickMemory(ptr noundef %38) #14
  br label %710

710:                                              ; preds = %181, %46, %707, %187
  %711 = phi ptr [ null, %187 ], [ %708, %707 ], [ null, %46 ], [ null, %181 ]
  ret ptr %711
}

; Function Attrs: hot
declare ptr @GetCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #11

declare ptr @AcquireMagickMatrix(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @RelinquishMagickMatrix(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @LeastSquaresAddTerms(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GaussJordanElimination(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #2

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @AcquireResampleFilter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: hot
declare float @DecodePixelGamma(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare ptr @DestroyResampleFilter(ptr noundef) local_unnamed_addr #2

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { hot nounwind }
attributes #17 = { cold }

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
!53 = !{!54, !43, i64 0}
!54 = !{!"_AffineMatrix", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!55 = !{!43, !43, i64 0}
!56 = !{!54, !43, i64 8}
!57 = !{!54, !43, i64 16}
!58 = !{!54, !43, i64 24}
!59 = !{!54, !43, i64 32}
!60 = !{!54, !43, i64 40}
!61 = !{!36, !36, i64 0}
!62 = !{!35, !39, i64 40}
!63 = !{!46, !39, i64 0}
!64 = !{!35, !39, i64 48}
!65 = !{!46, !39, i64 8}
!66 = !{!35, !39, i64 296}
!67 = !{!35, !39, i64 304}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!46, !39, i64 16}
!72 = !{!46, !39, i64 24}
!73 = !{!37, !37, i64 0}
!74 = !{!40, !40, i64 0}
!75 = distinct !{!75, !69, !70}
!76 = distinct !{!76, !69, !70}
!77 = distinct !{!77, !69, !70}
!78 = distinct !{!78, !69, !70}
!79 = distinct !{!79, !69, !70}
!80 = distinct !{!80, !69, !70}
!81 = distinct !{!81, !69, !70}
!82 = distinct !{!82, !69, !70}
!83 = !{!41, !42, i64 4}
!84 = !{!41, !42, i64 2}
!85 = !{!41, !42, i64 0}
!86 = !{!35, !36, i64 4}
!87 = !{!35, !42, i64 86}
!88 = !{!35, !36, i64 32}
!89 = distinct !{!89, !69, !70}
!90 = distinct !{!90, !69, !70}
!91 = !{i64 0, i64 4, !61, i64 4, i64 4, !61, i64 8, i64 4, !61, i64 16, i64 8, !55, i64 24, i64 8, !92, i64 32, i64 4, !93, i64 36, i64 4, !93, i64 40, i64 4, !93, i64 44, i64 4, !93, i64 48, i64 4, !93}
!92 = !{!39, !39, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"float", !37, i64 0}
!95 = !{!96, !94, i64 32}
!96 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !94, i64 32, !94, i64 36, !94, i64 40, !94, i64 44, !94, i64 48}
!97 = !{!96, !94, i64 36}
!98 = !{!96, !94, i64 40}
!99 = !{!41, !42, i64 6}
!100 = !{!96, !94, i64 44}
!101 = !{!96, !36, i64 4}
!102 = !{!96, !94, i64 48}
!103 = distinct !{!103, !69, !70}
!104 = distinct !{!104, !69, !70}
!105 = !{!35, !36, i64 0}
!106 = !{!42, !42, i64 0}
!107 = distinct !{!107, !69, !70}
!108 = !{!35, !40, i64 568}
!109 = !{!35, !40, i64 576}
!110 = distinct !{!110, !69, !70}
!111 = distinct !{!111, !69, !70}
!112 = distinct !{!112, !69, !70}
!113 = distinct !{!113, !69, !70}
!114 = distinct !{!114, !69, !70}
!115 = distinct !{!115, !69, !70}
!116 = distinct !{!116, !69, !70}
!117 = distinct !{!117, !69, !70}
!118 = distinct !{!118, !69, !70}
!119 = distinct !{!119, !69, !70}
!120 = distinct !{!120, !69, !70}
!121 = distinct !{!121, !69, !70}
!122 = distinct !{!122, !69, !70}
!123 = distinct !{!123, !69, !70}
!124 = distinct !{!124, !69, !70}
!125 = distinct !{!125, !69, !70}
