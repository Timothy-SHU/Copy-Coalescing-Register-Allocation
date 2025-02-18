; ModuleID = 'magick/resize.c'
source_filename = "magick/resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { ptr, double, double, double, double, i32 }
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
%struct._ResizeFilter = type { ptr, ptr, float, float, float, float, [7 x float], i32, i32, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ContributionInfo = type { float, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@AcquireResizeFilter.mapping = internal unnamed_addr constant [31 x %struct.anon] [%struct.anon { i32 0, i32 2 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 3, i32 2 }, %struct.anon { i32 4, i32 2 }, %struct.anon { i32 15, i32 5 }, %struct.anon { i32 15, i32 6 }, %struct.anon { i32 15, i32 7 }, %struct.anon { i32 8, i32 2 }, %struct.anon { i32 9, i32 2 }, %struct.anon { i32 10, i32 2 }, %struct.anon { i32 11, i32 2 }, %struct.anon { i32 12, i32 2 }, %struct.anon { i32 13, i32 2 }, %struct.anon { i32 14, i32 2 }, %struct.anon { i32 15, i32 2 }, %struct.anon { i32 15, i32 16 }, %struct.anon { i32 22, i32 17 }, %struct.anon { i32 15, i32 10 }, %struct.anon { i32 15, i32 19 }, %struct.anon { i32 15, i32 3 }, %struct.anon { i32 21, i32 2 }, %struct.anon { i32 22, i32 22 }, %struct.anon { i32 23, i32 23 }, %struct.anon { i32 24, i32 24 }, %struct.anon { i32 25, i32 25 }, %struct.anon { i32 26, i32 2 }, %struct.anon { i32 27, i32 2 }, %struct.anon { i32 22, i32 28 }, %struct.anon { i32 29, i32 2 }, %struct.anon { i32 30, i32 22 }], align 16
@AcquireResizeFilter.filters = internal unnamed_addr constant [31 x %struct.anon.0] [%struct.anon.0 { ptr @Box, double 5.000000e-01, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Box, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Box, double 5.000000e-01, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Triangle, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1 }, %struct.anon.0 { ptr @CubicBC, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @Hanning, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 3 }, %struct.anon.0 { ptr @Hamming, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 4 }, %struct.anon.0 { ptr @Blackman, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 5 }, %struct.anon.0 { ptr @Gaussian, double 2.000000e+00, double 1.500000e+00, double 0.000000e+00, double 0.000000e+00, i32 6 }, %struct.anon.0 { ptr @Quadratic, double 1.500000e+00, double 1.500000e+00, double 0.000000e+00, double 0.000000e+00, i32 7 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 5.000000e-01, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF2492492492492, double 0x3FD5555555555555, double 0x3FD5555555555555, i32 2 }, %struct.anon.0 { ptr @Jinc, double 3.000000e+00, double 0x3FF383C4936E7CFB, double 0.000000e+00, double 0.000000e+00, i32 8 }, %struct.anon.0 { ptr @Sinc, double 4.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 9 }, %struct.anon.0 { ptr @SincFast, double 4.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @Kaiser, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 11 }, %struct.anon.0 { ptr @Welsh, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 12 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @Bohman, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 13 }, %struct.anon.0 { ptr @Triangle, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1 }, %struct.anon.0 { ptr @Lagrange, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 14 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF2B27E986FB7A1, double 0x3FD834AFDABD7B9D, double 0x3FD3E5A812A14232, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF1B1736377D6E3, double 0x3FD0C4D88475319A, double 0x3FD79D93BDC56733, i32 2 }, %struct.anon.0 { ptr @Cosine, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 15 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }], align 16
@AcquireResizeFilter.jinc_zeros = internal unnamed_addr constant [16 x double] [double 0x3FF383C4936E7CFB, double 0x4001DD7392B48691, double 0x4009E811F2D4FEC0, double 0x4010F6D92EF1230B, double 0x4014F897398D2A3D, double 0x4018F9C69B83031A, double 0x401CFAA254BE1A14, double 0x40207DA466F40EB9, double 0x40227DE5A5605E00, double 0x40247E1A296C3FD7, double 0x40267E4557CCE5B2, double 0x40287E6979A00AB2, double 0x402A7E8827691760, double 0x402C7EA28704F9D1, double 0x402E7EB9713F7348, double 0x40303F66C4C44E83], align 16
@.str = private unnamed_addr constant [16 x i8] c"magick/resize.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"filter:filter\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"filter:window\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"filter:sigma\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"filter:alpha\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"filter:kaiser-beta\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"filter:kaiser-alpha\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"filter:lobes\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"filter:blur\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"filter:support\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"filter:win-support\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"filter:b\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"filter:c\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"filter:verbose\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"# Resampling Filter (for graphing)\0A#\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"# filter = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"# window = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"# support = %.*g\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"# window-support = %.*g\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"# scale-blur = %.*g\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"# gaussian-sigma = %.*g\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"# kaiser-beta = %.*g\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"# practical-support = %.*g\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"# B,C = %.*g,%.*g\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%5.2lf\09%.*g\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Resize/Image\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"`%s' (LQR)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Magnify/Image\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"NegativeOrZeroImageSize\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"sample:offset\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Sample/Image\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Scale/Image\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"file://%s\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Thumb::URI\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Thumb::MTime\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Thumb::Size\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"image/%s\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Thumb::Mimetype\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Thumb::Image::Width\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Thumb::Image::Height\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"Thumb::Document::Pages\00", align 1
@J1.Pone = internal unnamed_addr constant [9 x double] [double 0x443F81C2E523683D, double 0xC40CEF86BDED9999, double 0x43C012D008C7BCEA, double 0xC35FE006C30BA161, double 0x42F088DAAD7AF759, double 0xC273407F5DC0C206, double 0x41E96E3A40C9A788, double 0xC151E9B261F60E0A, double 0x40A51A3ED3F64AC9], align 16
@J1.Qone = internal unnamed_addr constant [9 x double] [double 0x444F81C2E523683D, double 0x43E491E139AE7522, double 0x436B0DDF388A59F6, double 0x42E7AA6E7871A918, double 0x425E85BCB84A30F5, double 0x41CE372A2D2DE908, double 0x4136EA619851D3CA, double 0x40991BB9EE66133E, double 1.000000e+00], align 16
@P1.Pone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EEA4DB0C43C658, double 0x40DE9E7DA39BF79D, double 0x40B3797BB3646E7F, double 0x406A64E4B4E35797, double 0x3FF41D6010A865E8], align 16
@P1.Qone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EE9CCB1A4A81E9, double 0x40DE821A02293EF4, double 0x40B34265806168F6, double 0x4069627B08F1C66B, double 1.000000e+00], align 16
@Q1.Pone = internal unnamed_addr constant [6 x double] [double 0x4075F2CD95877EA5, double 0x408688503DDC68E8, double 0x407A9FCBFC4E8E2C, double 0x4054CC274093A456, double 0x401245CEC89DC00C, double 0x3FA2169069C535FB], align 16
@Q1.Qone = internal unnamed_addr constant [6 x double] [double 0x40BD43BCC75F5387, double 0x40CE1B16B30D93F2, double 0x40C1E01DA86532F5, double 0x409C4CBF2E6DF9FA, double 0x4059F4668A3ED3A5, double 1.000000e+00], align 16
@.str.55 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @AcquireResizeFilter(ptr noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr nocapture readnone %4) local_unnamed_addr #0 {
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 902, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %5
  %14 = tail call dereferenceable_or_null(80) ptr @AcquireMagickMemory(i64 noundef 80) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  call void @GetExceptionInfo(ptr noundef nonnull %6) #21
  %17 = tail call ptr @__errno_location() #23
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = call ptr @GetExceptionMessage(i32 noundef %18) #21
  %20 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 909, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %19) #21
  %21 = call ptr @DestroyString(ptr noundef %19) #21
  call void @CatchException(ptr noundef nonnull %6) #21
  %22 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #21
  call void @MagickCoreTerminus() #21
  call void @_exit(i32 noundef 1) #24
  unreachable

23:                                               ; preds = %13
  %24 = tail call ptr @ResetMagickMemory(ptr noundef %14, i32 noundef 0, i64 noundef 80) #21
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %25
  %27 = load i32, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %25, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !56
  %30 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 5
  store float %2, ptr %30, align 4, !tbaa !57
  %31 = icmp ne i32 %3, 0
  %32 = icmp eq i32 %27, 15
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ne i32 %1, 15
  %35 = and i1 %34, %33
  %36 = select i1 %35, i32 13, i32 %27
  %37 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.5) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %23
  %40 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %37) #21
  %41 = add i64 %40, -1
  %42 = icmp ult i64 %41, 30
  %43 = trunc i64 %40 to i32
  %44 = select i1 %42, i32 2, i32 %29
  %45 = select i1 %42, i32 %43, i32 %36
  %46 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.6) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %39
  %49 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %46) #21
  %50 = add i64 %49, -1
  %51 = icmp ult i64 %50, 30
  %52 = trunc i64 %49 to i32
  %53 = select i1 %51, i32 %52, i32 %44
  br label %65

54:                                               ; preds = %23
  %55 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.6) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %55) #21
  %59 = add i64 %58, -1
  %60 = icmp ult i64 %59, 30
  %61 = select i1 %31, i32 13, i32 15
  %62 = trunc i64 %58 to i32
  %63 = select i1 %60, i32 %62, i32 %29
  %64 = select i1 %60, i32 %61, i32 %36
  br label %65

65:                                               ; preds = %48, %39, %54, %57
  %66 = phi i32 [ %63, %57 ], [ %29, %54 ], [ %44, %39 ], [ %53, %48 ]
  %67 = phi i32 [ %64, %57 ], [ %36, %54 ], [ %45, %39 ], [ %45, %48 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 16, !tbaa !60
  store ptr %70, ptr %14, align 8, !tbaa !62
  %71 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %68, i32 1
  %72 = load double, ptr %71, align 8, !tbaa !63
  %73 = fptrunc double %72 to float
  %74 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 2
  store float %73, ptr %74, align 8, !tbaa !64
  %75 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %68, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 7
  store i32 %76, ptr %77, align 4, !tbaa !66
  %78 = zext i32 %66 to i64
  %79 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 16, !tbaa !60
  %81 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 1
  store ptr %80, ptr %81, align 8, !tbaa !67
  %82 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %78, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !65
  %84 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 8
  store i32 %83, ptr %84, align 8, !tbaa !68
  %85 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %78, i32 2
  %86 = load double, ptr %85, align 16, !tbaa !69
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 4
  store float %87, ptr %88, align 8, !tbaa !70
  %89 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 9
  store i64 2880220587, ptr %89, align 8, !tbaa !71
  br i1 %31, label %90, label %93

90:                                               ; preds = %65
  switch i32 %67, label %99 [
    i32 2, label %91
    i32 22, label %92
    i32 23, label %92
    i32 24, label %92
    i32 25, label %92
    i32 30, label %92
  ]

91:                                               ; preds = %90
  store float 0x3FE6A09E60000000, ptr %74, align 8, !tbaa !64
  br label %93

92:                                               ; preds = %90, %90, %90, %90, %90
  store ptr @Jinc, ptr %14, align 8, !tbaa !62
  store ptr @Jinc, ptr %81, align 8, !tbaa !67
  store float 0x3FF383C4A0000000, ptr %88, align 8, !tbaa !70
  br label %93

93:                                               ; preds = %91, %92, %65
  switch i32 %67, label %99 [
    i32 23, label %95
    i32 25, label %94
  ]

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %93, %94
  %96 = phi float [ 0x3FEE8F5480000000, %94 ], [ 0x3FEF6667A0000000, %93 ]
  %97 = load float, ptr %30, align 4, !tbaa !57
  %98 = fmul float %97, %96
  store float %98, ptr %30, align 4, !tbaa !57
  br label %99

99:                                               ; preds = %95, %90, %93
  %100 = load ptr, ptr %14, align 8, !tbaa !62
  %101 = icmp eq ptr %100, @Gaussian
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %81, align 8, !tbaa !67
  %104 = icmp eq ptr %103, @Gaussian
  br i1 %104, label %105, label %143

105:                                              ; preds = %102, %99
  %106 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.7) #21
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = tail call double @InterpretLocaleValue(ptr noundef nonnull %106, ptr noundef null) #21
  %110 = fptrunc double %109 to float
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi float [ %110, %108 ], [ 5.000000e-01, %105 ]
  %113 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  store float %112, ptr %113, align 8, !tbaa !72
  %114 = fpext float %112 to double
  %115 = fmul double %114, 2.000000e+00
  %116 = fmul double %115, %114
  %117 = fcmp olt double %116, 0.000000e+00
  %118 = select i1 %117, double -1.000000e+00, double 1.000000e+00
  %119 = fmul double %116, %118
  %120 = fcmp ult double %119, 1.000000e-15
  %121 = fdiv double 1.000000e+00, %116
  %122 = fdiv double %118, 1.000000e-15
  %123 = select i1 %120, double %122, double %121
  %124 = fptrunc double %123 to float
  %125 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 1
  store float %124, ptr %125, align 4, !tbaa !72
  %126 = fmul double %114, 0x401921FB54442D18
  %127 = fmul double %126, %114
  %128 = fcmp olt double %127, 0.000000e+00
  %129 = select i1 %128, double -1.000000e+00, double 1.000000e+00
  %130 = fmul double %127, %129
  %131 = fcmp ult double %130, 1.000000e-15
  %132 = fdiv double 1.000000e+00, %127
  %133 = fdiv double %129, 1.000000e-15
  %134 = select i1 %131, double %133, double %132
  %135 = fptrunc double %134 to float
  %136 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 2
  store float %135, ptr %136, align 8, !tbaa !72
  %137 = fcmp ogt float %112, 5.000000e-01
  br i1 %137, label %138, label %143

138:                                              ; preds = %111
  %139 = load float, ptr %74, align 8, !tbaa !64
  %140 = fpext float %139 to double
  %141 = fmul double %115, %140
  %142 = fptrunc double %141 to float
  store float %142, ptr %74, align 8, !tbaa !64
  br label %143

143:                                              ; preds = %111, %138, %102
  %144 = load ptr, ptr %14, align 8, !tbaa !62
  %145 = icmp eq ptr %144, @Kaiser
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr %81, align 8, !tbaa !67
  %148 = icmp eq ptr %147, @Kaiser
  br i1 %148, label %149, label %201

149:                                              ; preds = %146, %143
  %150 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.8) #21
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = tail call double @InterpretLocaleValue(ptr noundef nonnull %150, ptr noundef null) #21
  %154 = fptrunc double %153 to float
  br label %155

155:                                              ; preds = %152, %149
  %156 = phi float [ %154, %152 ], [ 6.500000e+00, %149 ]
  %157 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.9) #21
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = tail call double @InterpretLocaleValue(ptr noundef nonnull %157, ptr noundef null) #21
  %161 = fptrunc double %160 to float
  br label %162

162:                                              ; preds = %159, %155
  %163 = phi float [ %161, %159 ], [ %156, %155 ]
  %164 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.10) #21
  %165 = icmp eq ptr %164, null
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = tail call double @InterpretLocaleValue(ptr noundef nonnull %164, ptr noundef null) #21
  %168 = fmul double %167, 0x400921FB54442D18
  %169 = fptrunc double %168 to float
  br label %170

170:                                              ; preds = %166, %162
  %171 = phi float [ %169, %166 ], [ %163, %162 ]
  %172 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  store float %171, ptr %172, align 8, !tbaa !72
  %173 = fmul float %171, %171
  %174 = fmul float %173, 2.500000e-01
  %175 = fpext float %174 to double
  %176 = fcmp ogt double %175, 1.000000e-15
  br i1 %176, label %177, label %189

177:                                              ; preds = %170, %177
  %178 = phi i64 [ %186, %177 ], [ 2, %170 ]
  %179 = phi float [ %181, %177 ], [ 1.000000e+00, %170 ]
  %180 = phi float [ %185, %177 ], [ %174, %170 ]
  %181 = fadd float %180, %179
  %182 = sitofp i64 %178 to float
  %183 = fmul float %182, %182
  %184 = fdiv float %174, %183
  %185 = fmul float %180, %184
  %186 = add nuw nsw i64 %178, 1
  %187 = fpext float %185 to double
  %188 = fcmp ogt double %187, 1.000000e-15
  br i1 %188, label %177, label %189, !llvm.loop !73

189:                                              ; preds = %177, %170
  %190 = phi float [ 1.000000e+00, %170 ], [ %181, %177 ]
  %191 = fpext float %190 to double
  %192 = fcmp olt float %190, 0.000000e+00
  %193 = select i1 %192, double -1.000000e+00, double 1.000000e+00
  %194 = fmul double %193, %191
  %195 = fcmp ult double %194, 1.000000e-15
  %196 = fdiv double 1.000000e+00, %191
  %197 = fdiv double %193, 1.000000e-15
  %198 = select i1 %195, double %197, double %196
  %199 = fptrunc double %198 to float
  %200 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 1
  store float %199, ptr %200, align 4, !tbaa !72
  br label %201

201:                                              ; preds = %189, %146
  %202 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.11) #21
  %203 = icmp eq ptr %202, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %201
  %205 = tail call i64 @strtol(ptr nocapture noundef nonnull %202, ptr noundef null, i32 noundef 10) #21
  %206 = tail call i64 @llvm.smax.i64(i64 %205, i64 1)
  %207 = sitofp i64 %206 to float
  store float %207, ptr %74, align 8, !tbaa !64
  br label %208

208:                                              ; preds = %204, %201
  %209 = load ptr, ptr %14, align 8, !tbaa !62
  %210 = icmp eq ptr %209, @Jinc
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load float, ptr %74, align 8, !tbaa !64
  %213 = fcmp ogt float %212, 1.600000e+01
  br i1 %213, label %220, label %214

214:                                              ; preds = %211
  %215 = fptosi float %212 to i64
  %216 = add nsw i64 %215, -1
  %217 = getelementptr inbounds [16 x double], ptr @AcquireResizeFilter.jinc_zeros, i64 0, i64 %216
  %218 = load double, ptr %217, align 8, !tbaa !76
  %219 = fptrunc double %218 to float
  br label %220

220:                                              ; preds = %211, %214
  %221 = phi float [ %219, %214 ], [ 0x40303F66C0000000, %211 ]
  store float %221, ptr %74, align 8, !tbaa !64
  %222 = icmp eq i32 %67, 30
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = fpext float %221 to double
  %225 = tail call double @llvm.floor.f64(double %224)
  %226 = fdiv double %225, %224
  %227 = load float, ptr %30, align 4, !tbaa !57
  %228 = fpext float %227 to double
  %229 = fmul double %226, %228
  %230 = fptrunc double %229 to float
  store float %230, ptr %30, align 4, !tbaa !57
  br label %231

231:                                              ; preds = %220, %223, %208
  %232 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.12) #21
  %233 = icmp eq ptr %232, null
  br i1 %233, label %240, label %234

234:                                              ; preds = %231
  %235 = tail call double @InterpretLocaleValue(ptr noundef nonnull %232, ptr noundef null) #21
  %236 = load float, ptr %30, align 4, !tbaa !57
  %237 = fpext float %236 to double
  %238 = fmul double %235, %237
  %239 = fptrunc double %238 to float
  store float %239, ptr %30, align 4, !tbaa !57
  br label %240

240:                                              ; preds = %234, %231
  %241 = load float, ptr %30, align 4, !tbaa !57
  %242 = fpext float %241 to double
  %243 = fcmp olt double %242, 1.000000e-15
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store float 0x3CD203AFA0000000, ptr %30, align 4, !tbaa !57
  br label %245

245:                                              ; preds = %244, %240
  %246 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.13) #21
  %247 = icmp eq ptr %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %245
  %249 = tail call double @InterpretLocaleValue(ptr noundef nonnull %246, ptr noundef null) #21
  %250 = fptrunc double %249 to float
  %251 = tail call float @llvm.fabs.f32(float %250)
  store float %251, ptr %74, align 8, !tbaa !64
  br label %252

252:                                              ; preds = %248, %245
  %253 = load float, ptr %74, align 8, !tbaa !64
  %254 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 3
  store float %253, ptr %254, align 4, !tbaa !77
  %255 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.14) #21
  %256 = icmp eq ptr %255, null
  br i1 %256, label %261, label %257

257:                                              ; preds = %252
  %258 = tail call double @InterpretLocaleValue(ptr noundef nonnull %255, ptr noundef null) #21
  %259 = fptrunc double %258 to float
  %260 = tail call float @llvm.fabs.f32(float %259)
  store float %260, ptr %254, align 4, !tbaa !77
  br label %261

261:                                              ; preds = %257, %252
  %262 = load float, ptr %254, align 4, !tbaa !77
  %263 = load float, ptr %88, align 8, !tbaa !70
  %264 = fdiv float %263, %262
  store float %264, ptr %88, align 8, !tbaa !70
  %265 = load ptr, ptr %14, align 8, !tbaa !62
  %266 = icmp eq ptr %265, @CubicBC
  br i1 %266, label %270, label %267

267:                                              ; preds = %261
  %268 = load ptr, ptr %81, align 8, !tbaa !67
  %269 = icmp eq ptr %268, @CubicBC
  br i1 %269, label %270, label %335

270:                                              ; preds = %267, %261
  %271 = icmp eq ptr %80, @CubicBC
  %272 = select i1 %271, i64 %78, i64 %68
  %273 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %272, i32 3
  %274 = load double, ptr %273, align 8, !tbaa !78
  %275 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %272, i32 4
  %276 = load double, ptr %275, align 16, !tbaa !79
  %277 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.15) #21
  %278 = icmp eq ptr %277, null
  br i1 %278, label %291, label %279

279:                                              ; preds = %270
  %280 = tail call double @InterpretLocaleValue(ptr noundef nonnull %277, ptr noundef null) #21
  %281 = fptrunc double %280 to float
  %282 = fpext float %281 to double
  %283 = fsub double 1.000000e+00, %282
  %284 = fmul double %283, 5.000000e-01
  %285 = fptrunc double %284 to float
  %286 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.16) #21
  %287 = icmp eq ptr %286, null
  br i1 %287, label %302, label %288

288:                                              ; preds = %279
  %289 = tail call double @InterpretLocaleValue(ptr noundef nonnull %286, ptr noundef null) #21
  %290 = fptrunc double %289 to float
  br label %302

291:                                              ; preds = %270
  %292 = fptrunc double %274 to float
  %293 = fptrunc double %276 to float
  %294 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.16) #21
  %295 = icmp eq ptr %294, null
  br i1 %295, label %302, label %296

296:                                              ; preds = %291
  %297 = tail call double @InterpretLocaleValue(ptr noundef nonnull %294, ptr noundef null) #21
  %298 = fptrunc double %297 to float
  %299 = fpext float %298 to double
  %300 = tail call double @llvm.fmuladd.f64(double %299, double -2.000000e+00, double 1.000000e+00)
  %301 = fptrunc double %300 to float
  br label %302

302:                                              ; preds = %291, %296, %279, %288
  %303 = phi float [ %290, %288 ], [ %285, %279 ], [ %298, %296 ], [ %293, %291 ]
  %304 = phi float [ %281, %288 ], [ %281, %279 ], [ %301, %296 ], [ %292, %291 ]
  %305 = fadd float %304, %304
  %306 = fpext float %305 to double
  %307 = fpext float %304 to double
  %308 = tail call double @llvm.fmuladd.f64(double %307, double 0xBFD5555555555555, double 1.000000e+00)
  %309 = fptrunc double %308 to float
  %310 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  store float %309, ptr %310, align 8, !tbaa !72
  %311 = fadd double %306, -3.000000e+00
  %312 = fpext float %303 to double
  %313 = fadd double %311, %312
  %314 = fptrunc double %313 to float
  %315 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 1
  store float %314, ptr %315, align 4, !tbaa !72
  %316 = tail call double @llvm.fmuladd.f64(double %307, double -1.500000e+00, double 2.000000e+00)
  %317 = fsub double %316, %312
  %318 = fptrunc double %317 to float
  %319 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 2
  store float %318, ptr %319, align 8, !tbaa !72
  %320 = fmul double %312, 4.000000e+00
  %321 = tail call double @llvm.fmuladd.f64(double %307, double 0x3FF5555555555555, double %320)
  %322 = fptrunc double %321 to float
  %323 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 3
  store float %322, ptr %323, align 4, !tbaa !72
  %324 = fneg double %306
  %325 = tail call double @llvm.fmuladd.f64(double %312, double -8.000000e+00, double %324)
  %326 = fptrunc double %325 to float
  %327 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 4
  store float %326, ptr %327, align 8, !tbaa !72
  %328 = tail call double @llvm.fmuladd.f64(double %312, double 5.000000e+00, double %307)
  %329 = fptrunc double %328 to float
  %330 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 5
  store float %329, ptr %330, align 4, !tbaa !72
  %331 = fneg double %312
  %332 = tail call double @llvm.fmuladd.f64(double %307, double 0xBFC5555555555555, double %331)
  %333 = fptrunc double %332 to float
  %334 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6, i64 6
  store float %333, ptr %334, align 8, !tbaa !72
  br label %335

335:                                              ; preds = %302, %267
  %336 = phi double [ %312, %302 ], [ 0.000000e+00, %267 ]
  %337 = phi double [ %307, %302 ], [ 0.000000e+00, %267 ]
  %338 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.17) #21
  %339 = tail call i32 @IsMagickTrue(ptr noundef %338) #21
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %461, label %341

341:                                              ; preds = %335
  %342 = load ptr, ptr %14, align 8, !tbaa !62
  %343 = icmp eq ptr %342, @Box
  %344 = select i1 %343, i32 2, i32 %67
  %345 = icmp eq ptr %342, @Sinc
  %346 = select i1 %345, i32 14, i32 %344
  %347 = icmp eq ptr %342, @SincFast
  %348 = select i1 %347, i32 15, i32 %346
  %349 = icmp eq ptr %342, @Jinc
  %350 = select i1 %349, i32 13, i32 %348
  %351 = icmp eq ptr %342, @CubicBC
  %352 = select i1 %351, i32 10, i32 %350
  %353 = load ptr, ptr %81, align 8, !tbaa !67
  %354 = icmp eq ptr %353, @Box
  %355 = select i1 %354, i32 2, i32 %66
  %356 = icmp eq ptr %353, @Sinc
  %357 = select i1 %356, i32 14, i32 %355
  %358 = icmp eq ptr %353, @SincFast
  %359 = select i1 %358, i32 15, i32 %357
  %360 = icmp eq ptr %353, @Jinc
  %361 = select i1 %360, i32 13, i32 %359
  %362 = icmp eq ptr %353, @CubicBC
  %363 = select i1 %362, i32 10, i32 %361
  %364 = load float, ptr %74, align 8, !tbaa !64
  %365 = load float, ptr %30, align 4, !tbaa !57
  %366 = fmul float %364, %365
  %367 = fpext float %366 to double
  %368 = load ptr, ptr @stdout, align 8, !tbaa !80
  %369 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %368, ptr noundef nonnull @.str.18) #21
  %370 = load ptr, ptr @stdout, align 8, !tbaa !80
  %371 = zext i32 %352 to i64
  %372 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %371) #21
  %373 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %370, ptr noundef nonnull @.str.19, ptr noundef %372) #21
  %374 = load ptr, ptr @stdout, align 8, !tbaa !80
  %375 = zext i32 %363 to i64
  %376 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %375) #21
  %377 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %374, ptr noundef nonnull @.str.20, ptr noundef %376) #21
  %378 = load ptr, ptr @stdout, align 8, !tbaa !80
  %379 = tail call i32 @GetMagickPrecision() #21
  %380 = load float, ptr %74, align 8, !tbaa !64
  %381 = fpext float %380 to double
  %382 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %378, ptr noundef nonnull @.str.21, i32 noundef %379, double noundef %381) #21
  %383 = load ptr, ptr @stdout, align 8, !tbaa !80
  %384 = tail call i32 @GetMagickPrecision() #21
  %385 = load float, ptr %254, align 4, !tbaa !77
  %386 = fpext float %385 to double
  %387 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %383, ptr noundef nonnull @.str.22, i32 noundef %384, double noundef %386) #21
  %388 = load ptr, ptr @stdout, align 8, !tbaa !80
  %389 = tail call i32 @GetMagickPrecision() #21
  %390 = load float, ptr %30, align 4, !tbaa !57
  %391 = fpext float %390 to double
  %392 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %388, ptr noundef nonnull @.str.23, i32 noundef %389, double noundef %391) #21
  %393 = icmp eq i32 %352, 8
  %394 = icmp eq i32 %363, 8
  %395 = or i1 %393, %394
  br i1 %395, label %396, label %403

396:                                              ; preds = %341
  %397 = load ptr, ptr @stdout, align 8, !tbaa !80
  %398 = tail call i32 @GetMagickPrecision() #21
  %399 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  %400 = load float, ptr %399, align 8, !tbaa !72
  %401 = fpext float %400 to double
  %402 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %397, ptr noundef nonnull @.str.24, i32 noundef %398, double noundef %401) #21
  br label %403

403:                                              ; preds = %341, %396
  %404 = icmp eq i32 %352, 16
  %405 = icmp eq i32 %363, 16
  %406 = or i1 %404, %405
  br i1 %406, label %407, label %414

407:                                              ; preds = %403
  %408 = load ptr, ptr @stdout, align 8, !tbaa !80
  %409 = tail call i32 @GetMagickPrecision() #21
  %410 = getelementptr inbounds %struct._ResizeFilter, ptr %14, i64 0, i32 6
  %411 = load float, ptr %410, align 8, !tbaa !72
  %412 = fpext float %411 to double
  %413 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %408, ptr noundef nonnull @.str.25, i32 noundef %409, double noundef %412) #21
  br label %414

414:                                              ; preds = %403, %407
  %415 = load ptr, ptr @stdout, align 8, !tbaa !80
  %416 = tail call i32 @GetMagickPrecision() #21
  %417 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %415, ptr noundef nonnull @.str.26, i32 noundef %416, double noundef %367) #21
  %418 = icmp eq i32 %352, 10
  %419 = icmp eq i32 %363, 10
  %420 = or i1 %418, %419
  br i1 %420, label %421, label %426

421:                                              ; preds = %414
  %422 = load ptr, ptr @stdout, align 8, !tbaa !80
  %423 = tail call i32 @GetMagickPrecision() #21
  %424 = tail call i32 @GetMagickPrecision() #21
  %425 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %422, ptr noundef nonnull @.str.27, i32 noundef %423, double noundef %337, i32 noundef %424, double noundef %336) #21
  br label %426

426:                                              ; preds = %414, %421
  %427 = load ptr, ptr @stdout, align 8, !tbaa !80
  %428 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %427, ptr noundef nonnull @.str.28) #21
  %429 = fcmp ult float %366, 0.000000e+00
  br i1 %429, label %457, label %430

430:                                              ; preds = %426, %448
  %431 = phi double [ %455, %448 ], [ 0.000000e+00, %426 ]
  %432 = load ptr, ptr @stdout, align 8, !tbaa !80
  %433 = tail call i32 @GetMagickPrecision() #21
  %434 = fptrunc double %431 to float
  %435 = tail call float @llvm.fabs.f32(float %434)
  %436 = load float, ptr %30, align 4, !tbaa !57
  %437 = fdiv float %435, %436
  %438 = load float, ptr %254, align 4, !tbaa !77
  %439 = fpext float %438 to double
  %440 = fcmp olt double %439, 1.000000e-15
  br i1 %440, label %448, label %441

441:                                              ; preds = %430
  %442 = load ptr, ptr %81, align 8, !tbaa !67
  %443 = icmp eq ptr %442, @Box
  br i1 %443, label %448, label %444

444:                                              ; preds = %441
  %445 = load float, ptr %88, align 8, !tbaa !70
  %446 = fmul float %437, %445
  %447 = tail call float %442(float noundef %446, ptr noundef nonnull %14) #21
  br label %448

448:                                              ; preds = %430, %441, %444
  %449 = phi float [ %447, %444 ], [ 1.000000e+00, %441 ], [ 1.000000e+00, %430 ]
  %450 = load ptr, ptr %14, align 8, !tbaa !62
  %451 = tail call float %450(float noundef %437, ptr noundef nonnull %14) #21
  %452 = fmul float %449, %451
  %453 = fpext float %452 to double
  %454 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %432, ptr noundef nonnull @.str.29, double noundef %431, i32 noundef %433, double noundef %453) #21
  %455 = fadd double %431, 0x3F847AE140000000
  %456 = fcmp ugt double %455, %367
  br i1 %456, label %457, label %430, !llvm.loop !81

457:                                              ; preds = %448, %426
  %458 = load ptr, ptr @stdout, align 8, !tbaa !80
  %459 = tail call i32 @GetMagickPrecision() #21
  %460 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %458, ptr noundef nonnull @.str.29, double noundef %367, i32 noundef %459, double noundef 0.000000e+00) #21
  br label %461

461:                                              ; preds = %457, %335
  %462 = tail call i32 @DeleteImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.17) #21
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @Box(float %0, ptr nocapture readnone %1) #2 {
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @Triangle(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fcmp olt float %0, 1.000000e+00
  %4 = fsub float 1.000000e+00, %0
  %5 = select i1 %3, float %4, float 0.000000e+00
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal float @CubicBC(float noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = fcmp olt float %0, 1.000000e+00
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6
  %6 = load float, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !72
  %9 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 2
  %10 = load float, ptr %9, align 8, !tbaa !72
  %11 = tail call float @llvm.fmuladd.f32(float %0, float %10, float %8)
  %12 = fmul float %11, %0
  %13 = tail call float @llvm.fmuladd.f32(float %0, float %12, float %6)
  br label %28

14:                                               ; preds = %2
  %15 = fcmp olt float %0, 2.000000e+00
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !72
  %19 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 4
  %20 = load float, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 5
  %22 = load float, ptr %21, align 4, !tbaa !72
  %23 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 6
  %24 = load float, ptr %23, align 8, !tbaa !72
  %25 = tail call float @llvm.fmuladd.f32(float %0, float %24, float %22)
  %26 = tail call float @llvm.fmuladd.f32(float %0, float %25, float %20)
  %27 = tail call float @llvm.fmuladd.f32(float %0, float %26, float %18)
  br label %28

28:                                               ; preds = %14, %16, %4
  %29 = phi float [ %13, %4 ], [ %27, %16 ], [ 0.000000e+00, %14 ]
  ret float %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @Hanning(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #21
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 5.000000e-01, double 5.000000e-01)
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @Hamming(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #21
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 4.600000e-01, double 5.400000e-01)
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @Blackman(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #21
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 1.600000e-01, double 5.000000e-01)
  %9 = tail call double @llvm.fmuladd.f64(double %7, double %8, double 3.400000e-01)
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal float @Gaussian(float noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !72
  %5 = fneg float %4
  %6 = fmul float %5, %0
  %7 = fmul float %6, %0
  %8 = fpext float %7 to double
  %9 = tail call double @exp(double noundef %8) #21
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @Quadratic(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fpext float %0 to double
  %4 = fcmp olt float %0, 5.000000e-01
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = fmul float %0, %0
  %7 = fsub float 7.500000e-01, %6
  br label %15

8:                                                ; preds = %2
  %9 = fcmp olt float %0, 1.500000e+00
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = fadd double %3, -1.500000e+00
  %12 = fmul double %11, 5.000000e-01
  %13 = fmul double %11, %12
  %14 = fptrunc double %13 to float
  br label %15

15:                                               ; preds = %8, %10, %5
  %16 = phi float [ %7, %5 ], [ %14, %10 ], [ 0.000000e+00, %8 ]
  ret float %16
}

; Function Attrs: nofree nounwind memory(write) uwtable
define internal float @Jinc(float noundef %0, ptr nocapture readnone %1) #6 {
  %3 = fcmp oeq float %0, 0.000000e+00
  br i1 %3, label %103, label %4

4:                                                ; preds = %2
  %5 = fmul float %0, 0x400921FB60000000
  %6 = fcmp oeq float %5, 0.000000e+00
  br i1 %6, label %100, label %7

7:                                                ; preds = %4
  %8 = fcmp olt float %5, 0.000000e+00
  %9 = fneg float %5
  %10 = select i1 %8, float %9, float %5
  %11 = fcmp olt float %10, 8.000000e+00
  br i1 %11, label %12, label %35

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %30, %12 ], [ 7, %7 ]
  %14 = phi float [ %29, %12 ], [ 1.000000e+00, %7 ]
  %15 = phi float [ %22, %12 ], [ 0x40A51A3EE0000000, %7 ]
  %16 = fmul float %10, %15
  %17 = fmul float %10, %16
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds [9 x double], ptr @J1.Pone, i64 0, i64 %13
  %20 = load double, ptr %19, align 8, !tbaa !76
  %21 = fadd double %20, %18
  %22 = fptrunc double %21 to float
  %23 = fmul float %10, %14
  %24 = fmul float %10, %23
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds [9 x double], ptr @J1.Qone, i64 0, i64 %13
  %27 = load double, ptr %26, align 8, !tbaa !76
  %28 = fadd double %27, %25
  %29 = fptrunc double %28 to float
  %30 = add nsw i64 %13, -1
  %31 = icmp eq i64 %13, 0
  br i1 %31, label %32, label %12, !llvm.loop !82

32:                                               ; preds = %12
  %33 = fdiv float %22, %29
  %34 = fmul float %5, %33
  br label %100

35:                                               ; preds = %7
  %36 = fpext float %10 to double
  %37 = fmul double %36, 0x400921FB54442D18
  %38 = fdiv double 2.000000e+00, %37
  %39 = tail call double @sqrt(double noundef %38) #21
  %40 = fdiv double 8.000000e+00, %36
  br label %41

41:                                               ; preds = %35, %41
  %42 = phi i64 [ 4, %35 ], [ %57, %41 ]
  %43 = phi float [ 1.000000e+00, %35 ], [ %56, %41 ]
  %44 = phi float [ 0x3FF41D6020000000, %35 ], [ %50, %41 ]
  %45 = fpext float %44 to double
  %46 = fmul double %40, %45
  %47 = getelementptr inbounds [6 x double], ptr @P1.Pone, i64 0, i64 %42
  %48 = load double, ptr %47, align 8, !tbaa !76
  %49 = tail call double @llvm.fmuladd.f64(double %46, double %40, double %48)
  %50 = fptrunc double %49 to float
  %51 = fpext float %43 to double
  %52 = fmul double %40, %51
  %53 = getelementptr inbounds [6 x double], ptr @P1.Qone, i64 0, i64 %42
  %54 = load double, ptr %53, align 8, !tbaa !76
  %55 = tail call double @llvm.fmuladd.f64(double %52, double %40, double %54)
  %56 = fptrunc double %55 to float
  %57 = add nsw i64 %42, -1
  %58 = icmp eq i64 %42, 0
  br i1 %58, label %59, label %41, !llvm.loop !83

59:                                               ; preds = %41
  %60 = fdiv float %50, %56
  %61 = tail call double @sin(double noundef %36) #21
  %62 = tail call double @cos(double noundef %36) #21
  %63 = fsub double %61, %62
  %64 = fdiv double 8.000000e+00, %36
  br label %65

65:                                               ; preds = %59, %65
  %66 = phi i64 [ 4, %59 ], [ %81, %65 ]
  %67 = phi float [ 1.000000e+00, %59 ], [ %80, %65 ]
  %68 = phi float [ 0x3FA2169060000000, %59 ], [ %74, %65 ]
  %69 = fpext float %68 to double
  %70 = fmul double %64, %69
  %71 = getelementptr inbounds [6 x double], ptr @Q1.Pone, i64 0, i64 %66
  %72 = load double, ptr %71, align 8, !tbaa !76
  %73 = tail call double @llvm.fmuladd.f64(double %70, double %64, double %72)
  %74 = fptrunc double %73 to float
  %75 = fpext float %67 to double
  %76 = fmul double %64, %75
  %77 = getelementptr inbounds [6 x double], ptr @Q1.Qone, i64 0, i64 %66
  %78 = load double, ptr %77, align 8, !tbaa !76
  %79 = tail call double @llvm.fmuladd.f64(double %76, double %64, double %78)
  %80 = fptrunc double %79 to float
  %81 = add nsw i64 %66, -1
  %82 = icmp eq i64 %66, 0
  br i1 %82, label %83, label %65, !llvm.loop !84

83:                                               ; preds = %65
  %84 = fpext float %60 to double
  %85 = fmul double %63, 0x3FE6A09E667F3BCC
  %86 = fdiv float %74, %80
  %87 = fpext float %86 to double
  %88 = tail call double @sin(double noundef %36) #21
  %89 = tail call double @cos(double noundef %36) #21
  %90 = fadd double %88, %89
  %91 = fmul double %90, 0xBFE6A09E667F3BCC
  %92 = fdiv double -8.000000e+00, %36
  %93 = fmul double %92, %87
  %94 = fmul double %93, %91
  %95 = tail call double @llvm.fmuladd.f64(double %84, double %85, double %94)
  %96 = fmul double %39, %95
  %97 = fptrunc double %96 to float
  %98 = fneg float %97
  %99 = select i1 %8, float %98, float %97
  br label %100

100:                                              ; preds = %4, %32, %83
  %101 = phi float [ %34, %32 ], [ %99, %83 ], [ 0.000000e+00, %4 ]
  %102 = fdiv float %101, %0
  br label %103

103:                                              ; preds = %2, %100
  %104 = phi float [ %102, %100 ], [ 0x3FF921FB60000000, %2 ]
  ret float %104
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @Sinc(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fcmp une float %0, 0.000000e+00
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = fpext float %0 to double
  %6 = fmul double %5, 0x400921FB54442D18
  %7 = fptrunc double %6 to float
  %8 = fpext float %7 to double
  %9 = tail call double @sin(double noundef %8) #21
  %10 = fdiv double %9, %8
  %11 = fptrunc double %10 to float
  br label %12

12:                                               ; preds = %2, %4
  %13 = phi float [ %11, %4 ], [ 1.000000e+00, %2 ]
  ret float %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @SincFast(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fcmp ogt float %0, 4.000000e+00
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fpext float %0 to double
  %6 = fmul double %5, 0x400921FB54442D18
  %7 = fptrunc double %6 to float
  %8 = fpext float %7 to double
  %9 = tail call double @sin(double noundef %8) #21
  %10 = fdiv double %9, %8
  br label %31

11:                                               ; preds = %2
  %12 = fmul float %0, %0
  %13 = fpext float %12 to double
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 0xBCA98546B213E547, double 0x3D1C8B574F3D493C)
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %14, double 0xBD80778FF9CFD451)
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double 0x3DDA532C7DACB935)
  %17 = tail call double @llvm.fmuladd.f64(double %13, double %16, double 0xBE300406665C46FB)
  %18 = tail call double @llvm.fmuladd.f64(double %13, double %17, double 0x3E7E09D9614D342A)
  %19 = tail call double @llvm.fmuladd.f64(double %13, double %18, double 0xBEC50D655760D6D4)
  %20 = tail call double @llvm.fmuladd.f64(double %13, double %19, double 0x3F04AAE0F2F31F28)
  %21 = tail call double @llvm.fmuladd.f64(double %13, double %20, double 0xBF392E7E30A21C51)
  %22 = tail call double @llvm.fmuladd.f64(double %13, double %21, double 0x3F5C71C712204843)
  %23 = fadd double %13, -1.000000e+00
  %24 = fadd double %13, -4.000000e+00
  %25 = fmul double %23, %24
  %26 = fadd double %13, -9.000000e+00
  %27 = fmul double %26, %25
  %28 = fadd double %13, -1.600000e+01
  %29 = fmul double %28, %27
  %30 = fmul double %29, %22
  br label %31

31:                                               ; preds = %11, %4
  %32 = phi double [ %10, %4 ], [ %30, %11 ]
  %33 = fptrunc double %32 to float
  ret float %33
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define internal float @Kaiser(float noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !72
  %6 = load float, ptr %3, align 8, !tbaa !72
  %7 = fpext float %6 to double
  %8 = fmul float %0, %0
  %9 = fpext float %8 to double
  %10 = fsub double 1.000000e+00, %9
  %11 = tail call double @sqrt(double noundef %10) #21
  %12 = fmul double %11, %7
  %13 = fptrunc double %12 to float
  %14 = fmul float %13, %13
  %15 = fmul float %14, 2.500000e-01
  %16 = fpext float %15 to double
  %17 = fcmp ogt double %16, 1.000000e-15
  br i1 %17, label %18, label %30

18:                                               ; preds = %2, %18
  %19 = phi i64 [ %27, %18 ], [ 2, %2 ]
  %20 = phi float [ %22, %18 ], [ 1.000000e+00, %2 ]
  %21 = phi float [ %26, %18 ], [ %15, %2 ]
  %22 = fadd float %21, %20
  %23 = sitofp i64 %19 to float
  %24 = fmul float %23, %23
  %25 = fdiv float %15, %24
  %26 = fmul float %21, %25
  %27 = add nuw nsw i64 %19, 1
  %28 = fpext float %26 to double
  %29 = fcmp ogt double %28, 1.000000e-15
  br i1 %29, label %18, label %30, !llvm.loop !73

30:                                               ; preds = %18, %2
  %31 = phi float [ 1.000000e+00, %2 ], [ %22, %18 ]
  %32 = fmul float %5, %31
  ret float %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @Welsh(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fcmp olt float %0, 1.000000e+00
  %4 = fmul float %0, %0
  %5 = fsub float 1.000000e+00, %4
  %6 = select i1 %3, float %5, float 0.000000e+00
  ret float %6
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @Bohman(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #21
  %6 = fneg double %5
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %5, double 1.000000e+00)
  %8 = tail call double @sqrt(double noundef %7) #21
  %9 = fsub double 1.000000e+00, %3
  %10 = fmul double %8, 0x3FD45F306DC9C883
  %11 = tail call double @llvm.fmuladd.f64(double %9, double %5, double %10)
  %12 = fptrunc double %11 to float
  ret float %12
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal float @Lagrange(float noundef %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !64
  %5 = fcmp olt float %4, %0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = fpext float %8 to double
  %10 = fmul double %9, 2.000000e+00
  %11 = fptosi double %10 to i64
  %12 = fadd float %8, %0
  %13 = fptosi float %12 to i64
  %14 = icmp sgt i64 %11, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %6, %25
  %16 = phi float [ %26, %25 ], [ 1.000000e+00, %6 ]
  %17 = phi i64 [ %27, %25 ], [ 0, %6 ]
  %18 = icmp eq i64 %17, %13
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = sub nsw i64 %13, %17
  %21 = sitofp i64 %20 to float
  %22 = fsub float %21, %0
  %23 = fdiv float %22, %21
  %24 = fmul float %16, %23
  br label %25

25:                                               ; preds = %15, %19
  %26 = phi float [ %24, %19 ], [ %16, %15 ]
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %15, !llvm.loop !85

29:                                               ; preds = %25, %6, %2
  %30 = phi float [ 0.000000e+00, %2 ], [ 1.000000e+00, %6 ], [ %26, %25 ]
  ret float %30
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define internal float @Cosine(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x3FF921FB54442D18
  %5 = tail call double @cos(double noundef %4) #21
  %6 = fptrunc double %5 to float
  ret float %6
}

declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #9

declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @DestroyString(ptr noundef) local_unnamed_addr #9

declare void @CatchException(ptr noundef) local_unnamed_addr #9

declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #9

declare void @MagickCoreTerminus() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #12

declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !57
  %6 = fmul float %3, %5
  ret float %6
}

declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #9

declare i32 @GetMagickPrecision() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local float @GetResizeFilterWeight(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = tail call float @llvm.fabs.f32(float %1)
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !57
  %6 = fdiv float %3, %5
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = icmp eq ptr %13, @Box
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %17 = load float, ptr %16, align 8, !tbaa !70
  %18 = fmul float %6, %17
  %19 = tail call float %13(float noundef %18, ptr noundef %0) #21
  br label %20

20:                                               ; preds = %2, %11, %15
  %21 = phi float [ %19, %15 ], [ 1.000000e+00, %11 ], [ 1.000000e+00, %2 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !62
  %23 = tail call float %22(float noundef %6, ptr noundef nonnull %0) #21
  %24 = fmul float %21, %23
  ret float %24
}

declare i32 @DeleteImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @InterpolativeResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 6, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @InterpolativeResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [4096 x i8], align 16
  %7 = alloca %struct._MagickPixelPacket, align 8
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1701, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #21
  br label %14

14:                                               ; preds = %11, %5
  %15 = icmp eq i64 %1, 0
  %16 = icmp eq i64 %2, 0
  %17 = or i1 %15, %16
  br i1 %17, label %184, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !86
  %21 = icmp eq i64 %20, %1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !87
  %25 = icmp eq i64 %24, %2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #21
  br label %184

28:                                               ; preds = %22, %18
  %29 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %4) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %184, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %29, i32 noundef 1) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %35) #21
  %36 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #21
  br label %184

37:                                               ; preds = %31
  %38 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %4) #21
  %39 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %29, ptr noundef %4) #21
  %40 = load i64, ptr %19, align 8, !tbaa !86
  %41 = uitofp i64 %40 to double
  %42 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %43 = load i64, ptr %42, align 8, !tbaa !86
  %44 = uitofp i64 %43 to double
  %45 = fdiv double %41, %44
  %46 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %47 = load i64, ptr %46, align 8, !tbaa !87
  %48 = uitofp i64 %47 to double
  %49 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %50 = load i64, ptr %49, align 8, !tbaa !87
  %51 = uitofp i64 %50 to double
  %52 = fdiv double %48, %51
  %53 = icmp sgt i64 %50, 0
  br i1 %53, label %54, label %181

54:                                               ; preds = %37
  %55 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 5
  %56 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 6
  %57 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 7
  %58 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 8
  %59 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 1
  %60 = getelementptr inbounds %struct._MagickPixelPacket, ptr %7, i64 0, i32 9
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %62 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %63 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %64

64:                                               ; preds = %54, %169
  %65 = phi i64 [ 0, %54 ], [ %172, %169 ]
  %66 = phi i32 [ 1, %54 ], [ %171, %169 ]
  %67 = phi i64 [ 0, %54 ], [ %170, %169 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #21
  %68 = icmp eq i32 %66, 0
  br i1 %68, label %169, label %69

69:                                               ; preds = %64
  %70 = load i64, ptr %42, align 8, !tbaa !86
  %71 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %65, i64 noundef %70, i64 noundef 1, ptr noundef %4) #25
  %72 = icmp eq ptr %71, null
  br i1 %72, label %169, label %73

73:                                               ; preds = %69
  %74 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %39) #21
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %7) #21
  %75 = sitofp i64 %65 to float
  %76 = fpext float %75 to double
  %77 = fadd double %76, 5.000000e-01
  %78 = call double @llvm.fmuladd.f64(double %77, double %52, double -5.000000e-01)
  %79 = load i64, ptr %42, align 8, !tbaa !86
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %154

81:                                               ; preds = %73
  %82 = icmp ne ptr %74, null
  %83 = icmp eq ptr %74, null
  br label %84

84:                                               ; preds = %81, %149
  %85 = phi i64 [ 0, %81 ], [ %151, %149 ]
  %86 = phi ptr [ %71, %81 ], [ %150, %149 ]
  %87 = sitofp i64 %85 to float
  %88 = fpext float %87 to double
  %89 = fadd double %88, 5.000000e-01
  %90 = call double @llvm.fmuladd.f64(double %89, double %45, double -5.000000e-01)
  %91 = call i32 @InterpolateMagickPixelPacket(ptr noundef %0, ptr noundef %38, i32 noundef %3, double noundef %90, double noundef %78, ptr noundef nonnull %7, ptr noundef %4) #21
  %92 = getelementptr inbounds i16, ptr %74, i64 %85
  %93 = load float, ptr %55, align 8, !tbaa !88
  %94 = fcmp ugt float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = fcmp ult float %93, 6.553500e+04
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = fadd float %93, 5.000000e-01
  %99 = fptoui float %98 to i16
  br label %100

100:                                              ; preds = %97, %95, %84
  %101 = phi i16 [ %99, %97 ], [ 0, %84 ], [ -1, %95 ]
  %102 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 2
  store i16 %101, ptr %102, align 2, !tbaa !90
  %103 = load float, ptr %56, align 4, !tbaa !91
  %104 = fcmp ugt float %103, 0.000000e+00
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = fcmp ult float %103, 6.553500e+04
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = fadd float %103, 5.000000e-01
  %109 = fptoui float %108 to i16
  br label %110

110:                                              ; preds = %107, %105, %100
  %111 = phi i16 [ %109, %107 ], [ 0, %100 ], [ -1, %105 ]
  %112 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 1
  store i16 %111, ptr %112, align 2, !tbaa !92
  %113 = load float, ptr %57, align 8, !tbaa !93
  %114 = fcmp ugt float %113, 0.000000e+00
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = fcmp ult float %113, 6.553500e+04
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = fadd float %113, 5.000000e-01
  %119 = fptoui float %118 to i16
  br label %120

120:                                              ; preds = %117, %115, %110
  %121 = phi i16 [ %119, %117 ], [ 0, %110 ], [ -1, %115 ]
  store i16 %121, ptr %86, align 2, !tbaa !94
  %122 = load float, ptr %58, align 4, !tbaa !95
  %123 = fcmp ugt float %122, 0.000000e+00
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = fcmp ult float %122, 6.553500e+04
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = fadd float %122, 5.000000e-01
  %128 = fptoui float %127 to i16
  br label %129

129:                                              ; preds = %126, %124, %120
  %130 = phi i16 [ %128, %126 ], [ 0, %120 ], [ -1, %124 ]
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 0, i32 3
  store i16 %130, ptr %131, align 2, !tbaa !96
  %132 = load i32, ptr %59, align 4, !tbaa !97
  %133 = icmp eq i32 %132, 12
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i32, ptr %29, align 8, !tbaa !98
  %136 = icmp eq i32 %135, 2
  %137 = and i1 %82, %136
  br i1 %137, label %139, label %149

138:                                              ; preds = %129
  br i1 %83, label %149, label %139

139:                                              ; preds = %138, %134
  %140 = load float, ptr %60, align 8, !tbaa !99
  %141 = fcmp ugt float %140, 0.000000e+00
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = fcmp ult float %140, 6.553500e+04
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = fadd float %140, 5.000000e-01
  %146 = fptoui float %145 to i16
  br label %147

147:                                              ; preds = %144, %142, %139
  %148 = phi i16 [ %146, %144 ], [ 0, %139 ], [ -1, %142 ]
  store i16 %148, ptr %92, align 2, !tbaa !100
  br label %149

149:                                              ; preds = %134, %138, %147
  %150 = getelementptr inbounds %struct._PixelPacket, ptr %86, i64 1
  %151 = add nuw nsw i64 %85, 1
  %152 = load i64, ptr %42, align 8, !tbaa !86
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %84, label %154, !llvm.loop !101

154:                                              ; preds = %149, %73
  %155 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %39, ptr noundef %4) #25
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %61, align 8, !tbaa !102
  %159 = icmp eq ptr %158, null
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = add nsw i64 %67, 1
  %162 = load i64, ptr %46, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #21
  %163 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %6, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.30, ptr noundef nonnull %62) #21
  %164 = load ptr, ptr %61, align 8, !tbaa !102
  %165 = load ptr, ptr %63, align 8, !tbaa !103
  %166 = call i32 %164(ptr noundef nonnull %6, i64 noundef %67, i64 noundef %162, ptr noundef %165) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #21
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i32
  br label %169

169:                                              ; preds = %157, %160, %154, %69, %64
  %170 = phi i64 [ %67, %64 ], [ %67, %69 ], [ %67, %154 ], [ %161, %160 ], [ %67, %157 ]
  %171 = phi i32 [ 0, %64 ], [ 1, %69 ], [ 1, %154 ], [ %168, %160 ], [ 1, %157 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #21
  %172 = add nuw nsw i64 %65, 1
  %173 = load i64, ptr %49, align 8, !tbaa !87
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %64, label %175, !llvm.loop !104

175:                                              ; preds = %169
  %176 = icmp eq i32 %171, 0
  %177 = call ptr @DestroyCacheView(ptr noundef %39) #21
  %178 = call ptr @DestroyCacheView(ptr noundef %38) #21
  br i1 %176, label %179, label %184

179:                                              ; preds = %175
  %180 = call ptr @DestroyImage(ptr noundef nonnull %29) #21
  br label %184

181:                                              ; preds = %37
  %182 = tail call ptr @DestroyCacheView(ptr noundef %39) #21
  %183 = tail call ptr @DestroyCacheView(ptr noundef %38) #21
  br label %184

184:                                              ; preds = %181, %175, %179, %28, %14, %34, %26
  %185 = phi ptr [ %27, %26 ], [ null, %34 ], [ null, %14 ], [ null, %28 ], [ %180, %179 ], [ %29, %175 ], [ %29, %181 ]
  ret ptr %185
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyResizeFilter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 9
  store i64 -2880220588, ptr %2, align 8, !tbaa !71
  %3 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #21
  ret ptr %3
}

declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @GetResizeFilterCoefficient(ptr noundef readnone %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 6
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterBlur(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %3 = load float, ptr %2, align 4, !tbaa !57
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterScale(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 8, !tbaa !70
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterWindowSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !77
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GetResizeFilterWeightingType(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !66
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @GetResizeFilterWindowWeightingType(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !68
  ret i32 %3
}

declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #9

declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #9

declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #14

declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #9

declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #14

declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @LiquidRescaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1992, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1995, i32 noundef 420, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %14) #21
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagnifyImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [9 x float], align 16
  %5 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %6 = load i32, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %10 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2052, ptr noundef nonnull @.str.2, ptr noundef nonnull %9) #21
  br label %11

11:                                               ; preds = %8, %2
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !86
  %14 = shl i64 %13, 1
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %16 = load i64, ptr %15, align 8, !tbaa !87
  %17 = shl i64 %16, 1
  %18 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %14, i64 noundef %17, i32 noundef 1, ptr noundef %1) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %234, label %20

20:                                               ; preds = %11
  %21 = tail call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %1) #21
  %22 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %18, ptr noundef %1) #21
  %23 = load i64, ptr %15, align 8, !tbaa !87
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %231

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._Image, ptr %18, i64 0, i32 7
  %27 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 1
  %28 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 7
  %29 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 3
  %30 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 5
  %31 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 3
  %32 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 5
  %33 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %35 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %36

36:                                               ; preds = %25, %219
  %37 = phi i64 [ 0, %25 ], [ %222, %219 ]
  %38 = phi i64 [ 0, %25 ], [ %221, %219 ]
  %39 = phi i32 [ 1, %25 ], [ %220, %219 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %219, label %41

41:                                               ; preds = %36
  %42 = shl nuw nsw i64 %37, 1
  %43 = load i64, ptr %26, align 8, !tbaa !86
  %44 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %22, i64 noundef 0, i64 noundef %42, i64 noundef %43, i64 noundef 2, ptr noundef %1) #25
  %45 = icmp eq ptr %44, null
  br i1 %45, label %219, label %46

46:                                               ; preds = %41
  %47 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %22) #21
  %48 = load i64, ptr %12, align 8, !tbaa !86
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %203

50:                                               ; preds = %46
  %51 = add nsw i64 %37, -1
  br label %52

52:                                               ; preds = %50, %196
  %53 = phi i64 [ 0, %50 ], [ %200, %196 ]
  %54 = phi ptr [ %44, %50 ], [ %199, %196 ]
  %55 = phi ptr [ %47, %50 ], [ %198, %196 ]
  %56 = phi i32 [ 1, %50 ], [ %197, %196 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #21
  %57 = add nsw i64 %53, -1
  %58 = call ptr @GetCacheViewVirtualPixels(ptr noundef %21, i64 noundef %57, i64 noundef %51, i64 noundef 3, i64 noundef 3, ptr noundef %1) #25
  %59 = icmp eq ptr %58, null
  br i1 %59, label %196, label %60

60:                                               ; preds = %52
  %61 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %21) #21
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %67, %62 ]
  %64 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 %63
  %65 = call float @GetPixelIntensity(ptr noundef %0, ptr noundef nonnull %64) #25
  %66 = getelementptr inbounds [9 x float], ptr %4, i64 0, i64 %63
  store float %65, ptr %66, align 4, !tbaa !72
  %67 = add nuw nsw i64 %63, 1
  %68 = icmp eq i64 %67, 9
  br i1 %68, label %69, label %62, !llvm.loop !105

69:                                               ; preds = %62
  %70 = load float, ptr %27, align 4, !tbaa !72
  %71 = load float, ptr %28, align 4, !tbaa !72
  %72 = fsub float %70, %71
  %73 = call float @llvm.fabs.f32(float %72)
  %74 = fpext float %73 to double
  %75 = fcmp olt double %74, 1.000000e-15
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load float, ptr %29, align 4, !tbaa !72
  %78 = load float, ptr %30, align 4, !tbaa !72
  %79 = fsub float %77, %78
  %80 = call float @llvm.fabs.f32(float %79)
  %81 = fpext float %80 to double
  %82 = fcmp olt double %81, 1.000000e-15
  br i1 %82, label %83, label %91

83:                                               ; preds = %76, %69
  %84 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 4
  %85 = load i64, ptr %84, align 2
  store i64 %85, ptr %54, align 2
  %86 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %87 = load i64, ptr %84, align 2
  store i64 %87, ptr %86, align 2
  %88 = load i64, ptr %26, align 8, !tbaa !86
  %89 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %88
  %90 = load i64, ptr %84, align 2
  store i64 %90, ptr %89, align 2
  br label %127

91:                                               ; preds = %76
  %92 = fsub float %70, %77
  %93 = call float @llvm.fabs.f32(float %92)
  %94 = fpext float %93 to double
  %95 = fcmp olt double %94, 1.000000e-15
  %96 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 3
  %97 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 4
  %98 = select i1 %95, ptr %96, ptr %97
  %99 = load i64, ptr %98, align 2
  store i64 %99, ptr %54, align 2
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 1
  %101 = load float, ptr %27, align 4, !tbaa !72
  %102 = load float, ptr %30, align 4, !tbaa !72
  %103 = fsub float %101, %102
  %104 = call float @llvm.fabs.f32(float %103)
  %105 = fpext float %104 to double
  %106 = fcmp olt double %105, 1.000000e-15
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %58, i64 5
  %108 = select i1 %106, ptr %107, ptr %97
  %109 = load i64, ptr %108, align 2
  store i64 %109, ptr %100, align 2
  %110 = load i64, ptr %26, align 8, !tbaa !86
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %110
  %112 = load float, ptr %29, align 4, !tbaa !72
  %113 = load float, ptr %28, align 4, !tbaa !72
  %114 = fsub float %112, %113
  %115 = call float @llvm.fabs.f32(float %114)
  %116 = fpext float %115 to double
  %117 = fcmp olt double %116, 1.000000e-15
  %118 = select i1 %117, ptr %96, ptr %97
  %119 = load i64, ptr %118, align 2
  store i64 %119, ptr %111, align 2
  %120 = load float, ptr %30, align 4, !tbaa !72
  %121 = load float, ptr %28, align 4, !tbaa !72
  %122 = fsub float %120, %121
  %123 = call float @llvm.fabs.f32(float %122)
  %124 = fpext float %123 to double
  %125 = fcmp olt double %124, 1.000000e-15
  %126 = select i1 %125, ptr %107, ptr %97
  br label %127

127:                                              ; preds = %91, %83
  %128 = phi ptr [ %84, %83 ], [ %126, %91 ]
  %129 = phi i64 [ %88, %83 ], [ %110, %91 ]
  %130 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 %129
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %130, i64 1
  %132 = load i64, ptr %128, align 2
  store i64 %132, ptr %131, align 2
  %133 = icmp eq ptr %61, null
  br i1 %133, label %193, label %134

134:                                              ; preds = %127
  %135 = load float, ptr %27, align 4, !tbaa !72
  %136 = load float, ptr %28, align 4, !tbaa !72
  %137 = fsub float %135, %136
  %138 = call float @llvm.fabs.f32(float %137)
  %139 = fpext float %138 to double
  %140 = fcmp olt double %139, 1.000000e-15
  br i1 %140, label %148, label %141

141:                                              ; preds = %134
  %142 = load float, ptr %31, align 4, !tbaa !72
  %143 = load float, ptr %32, align 4, !tbaa !72
  %144 = fsub float %142, %143
  %145 = call float @llvm.fabs.f32(float %144)
  %146 = fpext float %145 to double
  %147 = fcmp olt double %146, 1.000000e-15
  br i1 %147, label %148, label %156

148:                                              ; preds = %141, %134
  %149 = getelementptr inbounds i16, ptr %61, i64 4
  %150 = load i16, ptr %149, align 2, !tbaa !100
  store i16 %150, ptr %55, align 2, !tbaa !100
  %151 = getelementptr inbounds i16, ptr %55, i64 1
  %152 = load i16, ptr %149, align 2, !tbaa !100
  store i16 %152, ptr %151, align 2, !tbaa !100
  %153 = load i64, ptr %26, align 8, !tbaa !86
  %154 = getelementptr inbounds i16, ptr %55, i64 %153
  %155 = load i16, ptr %149, align 2, !tbaa !100
  store i16 %155, ptr %154, align 2, !tbaa !100
  br label %186

156:                                              ; preds = %141
  %157 = fsub float %135, %142
  %158 = call float @llvm.fabs.f32(float %157)
  %159 = fpext float %158 to double
  %160 = fcmp olt double %159, 1.000000e-15
  %161 = getelementptr inbounds i16, ptr %61, i64 4
  %162 = getelementptr inbounds i16, ptr %61, i64 3
  %163 = select i1 %160, ptr %162, ptr %161
  %164 = load i16, ptr %163, align 2, !tbaa !100
  store i16 %164, ptr %55, align 2, !tbaa !100
  %165 = getelementptr inbounds i16, ptr %55, i64 1
  %166 = fsub float %135, %143
  %167 = call float @llvm.fabs.f32(float %166)
  %168 = fpext float %167 to double
  %169 = fcmp olt double %168, 1.000000e-15
  %170 = getelementptr inbounds i16, ptr %61, i64 5
  %171 = select i1 %169, ptr %170, ptr %161
  %172 = load i16, ptr %171, align 2, !tbaa !100
  store i16 %172, ptr %165, align 2, !tbaa !100
  %173 = load i64, ptr %26, align 8, !tbaa !86
  %174 = getelementptr inbounds i16, ptr %55, i64 %173
  %175 = fsub float %142, %136
  %176 = call float @llvm.fabs.f32(float %175)
  %177 = fpext float %176 to double
  %178 = fcmp olt double %177, 1.000000e-15
  %179 = select i1 %178, ptr %162, ptr %161
  %180 = load i16, ptr %179, align 2, !tbaa !100
  store i16 %180, ptr %174, align 2, !tbaa !100
  %181 = fsub float %143, %136
  %182 = call float @llvm.fabs.f32(float %181)
  %183 = fpext float %182 to double
  %184 = fcmp olt double %183, 1.000000e-15
  %185 = select i1 %184, ptr %170, ptr %161
  br label %186

186:                                              ; preds = %156, %148
  %187 = phi ptr [ %149, %148 ], [ %185, %156 ]
  %188 = phi i64 [ %153, %148 ], [ %173, %156 ]
  %189 = getelementptr inbounds i16, ptr %55, i64 %188
  %190 = getelementptr inbounds i16, ptr %189, i64 1
  %191 = load i16, ptr %187, align 2, !tbaa !100
  store i16 %191, ptr %190, align 2, !tbaa !100
  %192 = getelementptr inbounds i16, ptr %55, i64 2
  br label %193

193:                                              ; preds = %186, %127
  %194 = phi ptr [ %192, %186 ], [ %55, %127 ]
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %54, i64 2
  br label %196

196:                                              ; preds = %52, %193
  %197 = phi i32 [ %56, %193 ], [ 0, %52 ]
  %198 = phi ptr [ %194, %193 ], [ %55, %52 ]
  %199 = phi ptr [ %195, %193 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #21
  %200 = add nuw nsw i64 %53, 1
  %201 = load i64, ptr %12, align 8, !tbaa !86
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %52, label %203, !llvm.loop !106

203:                                              ; preds = %196, %46
  %204 = phi i32 [ 1, %46 ], [ %197, %196 ]
  %205 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %22, ptr noundef %1) #25
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %206, i32 0, i32 %204
  %208 = load ptr, ptr %33, align 8, !tbaa !102
  %209 = icmp eq ptr %208, null
  br i1 %209, label %219, label %210

210:                                              ; preds = %203
  %211 = add nsw i64 %38, 1
  %212 = load i64, ptr %15, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #21
  %213 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.33, ptr noundef nonnull %34) #21
  %214 = load ptr, ptr %33, align 8, !tbaa !102
  %215 = load ptr, ptr %35, align 8, !tbaa !103
  %216 = call i32 %214(ptr noundef nonnull %3, i64 noundef %38, i64 noundef %212, ptr noundef %215) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #21
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %217, i32 0, i32 %207
  br label %219

219:                                              ; preds = %203, %210, %41, %36
  %220 = phi i32 [ 0, %36 ], [ 0, %41 ], [ %218, %210 ], [ %207, %203 ]
  %221 = phi i64 [ %38, %36 ], [ %38, %41 ], [ %211, %210 ], [ %38, %203 ]
  %222 = add nuw nsw i64 %37, 1
  %223 = load i64, ptr %15, align 8, !tbaa !87
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %36, label %225, !llvm.loop !107

225:                                              ; preds = %219
  %226 = icmp eq i32 %220, 0
  %227 = call ptr @DestroyCacheView(ptr noundef %22) #21
  %228 = call ptr @DestroyCacheView(ptr noundef %21) #21
  br i1 %226, label %229, label %234

229:                                              ; preds = %225
  %230 = call ptr @DestroyImage(ptr noundef nonnull %18) #21
  br label %234

231:                                              ; preds = %20
  %232 = tail call ptr @DestroyCacheView(ptr noundef %22) #21
  %233 = tail call ptr @DestroyCacheView(ptr noundef %21) #21
  br label %234

234:                                              ; preds = %231, %225, %229, %11
  %235 = phi ptr [ null, %11 ], [ %230, %229 ], [ %18, %225 ], [ %18, %231 ]
  ret ptr %235
}

; Function Attrs: hot
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #14

declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #9

; Function Attrs: hot
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define dso_local ptr @MinifyImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2267, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #21
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !86
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !87
  %15 = lshr i64 %14, 1
  %16 = tail call ptr @ResizeImage(ptr noundef %0, i64 noundef %12, i64 noundef %15, i32 noundef 29, double noundef 1.000000e+00, ptr noundef %1)
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2980, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #21
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp eq i64 %1, 0
  %16 = icmp eq i64 %2, 0
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2984, i32 noundef 465, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #21
  br label %117

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !86
  %24 = icmp eq i64 %23, %1
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %27 = load i64, ptr %26, align 8, !tbaa !87
  %28 = icmp eq i64 %27, %2
  %29 = icmp eq i32 %3, 0
  %30 = and i1 %29, %28
  %31 = fcmp oeq double %4, 1.000000e+00
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #21
  br label %117

35:                                               ; preds = %25, %21
  %36 = uitofp i64 %1 to float
  %37 = uitofp i64 %23 to float
  %38 = fdiv float %36, %37
  %39 = uitofp i64 %2 to float
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !87
  %42 = uitofp i64 %41 to float
  %43 = fdiv float %39, %42
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = fcmp oeq float %38, 1.000000e+00
  %47 = fcmp oeq float %43, 1.000000e+00
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %0, align 8, !tbaa !98
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %54 = load i32, ptr %53, align 8, !tbaa !108
  %55 = icmp ne i32 %54, 0
  %56 = fmul float %38, %43
  %57 = fcmp ogt float %56, 1.000000e+00
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %49
  br label %60

60:                                               ; preds = %52, %45, %35, %59
  %61 = phi i32 [ 12, %59 ], [ %3, %35 ], [ 1, %45 ], [ 22, %52 ]
  %62 = fptrunc double %4 to float
  %63 = tail call ptr @AcquireResizeFilter(ptr noundef %0, i32 noundef %61, float noundef %62, i32 noundef 0, ptr poison)
  %64 = tail call ptr @AccelerateResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %63, ptr noundef %5) #21
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct._ResizeFilter, ptr %63, i64 0, i32 9
  store i64 -2880220588, ptr %67, align 8, !tbaa !71
  %68 = tail call ptr @RelinquishMagickMemory(ptr noundef %63) #21
  br label %117

69:                                               ; preds = %60
  %70 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %5) #21
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct._ResizeFilter, ptr %63, i64 0, i32 9
  store i64 -2880220588, ptr %73, align 8, !tbaa !71
  %74 = tail call ptr @RelinquishMagickMemory(ptr noundef %63) #21
  br label %117

75:                                               ; preds = %69
  %76 = fcmp ogt float %38, %43
  br i1 %76, label %77, label %79

77:                                               ; preds = %75
  %78 = load i64, ptr %40, align 8, !tbaa !87
  br label %81

79:                                               ; preds = %75
  %80 = load i64, ptr %22, align 8, !tbaa !86
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i64 [ %2, %79 ], [ %78, %77 ]
  %83 = phi i64 [ %80, %79 ], [ %1, %77 ]
  %84 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %83, i64 noundef %82, i32 noundef 1, ptr noundef %5) #21
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct._ResizeFilter, ptr %63, i64 0, i32 9
  store i64 -2880220588, ptr %87, align 8, !tbaa !71
  %88 = tail call ptr @RelinquishMagickMemory(ptr noundef %63) #21
  %89 = tail call ptr @DestroyImage(ptr noundef nonnull %70) #21
  br label %117

90:                                               ; preds = %81
  store i64 0, ptr %7, align 8, !tbaa !109
  br i1 %76, label %91, label %98

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 7
  %93 = load i64, ptr %92, align 8, !tbaa !86
  %94 = add i64 %93, %2
  %95 = call fastcc i32 @HorizontalFilter(ptr noundef %63, ptr noundef %0, ptr noundef nonnull %84, float noundef %38, i64 noundef %94, ptr noundef nonnull %7, ptr noundef %5), !range !110
  %96 = call fastcc i32 @VerticalFilter(ptr noundef %63, ptr noundef nonnull %84, ptr noundef nonnull %70, float noundef %43, i64 noundef %94, ptr noundef nonnull %7, ptr noundef %5), !range !110
  %97 = and i32 %96, %95
  br label %105

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct._Image, ptr %84, i64 0, i32 8
  %100 = load i64, ptr %99, align 8, !tbaa !87
  %101 = add i64 %100, %1
  %102 = call fastcc i32 @VerticalFilter(ptr noundef %63, ptr noundef %0, ptr noundef nonnull %84, float noundef %43, i64 noundef %101, ptr noundef nonnull %7, ptr noundef %5), !range !110
  %103 = call fastcc i32 @HorizontalFilter(ptr noundef %63, ptr noundef nonnull %84, ptr noundef nonnull %70, float noundef %38, i64 noundef %101, ptr noundef nonnull %7, ptr noundef %5), !range !110
  %104 = and i32 %103, %102
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi i32 [ %97, %91 ], [ %104, %98 ]
  %107 = tail call ptr @DestroyImage(ptr noundef nonnull %84) #21
  %108 = getelementptr inbounds %struct._ResizeFilter, ptr %63, i64 0, i32 9
  store i64 -2880220588, ptr %108, align 8, !tbaa !71
  %109 = tail call ptr @RelinquishMagickMemory(ptr noundef %63) #21
  %110 = icmp eq i32 %106, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = tail call ptr @DestroyImage(ptr noundef nonnull %70) #21
  br label %117

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %115 = load i32, ptr %114, align 8, !tbaa !111
  %116 = getelementptr inbounds %struct._Image, ptr %70, i64 0, i32 77
  store i32 %115, ptr %116, align 8, !tbaa !111
  br label %117

117:                                              ; preds = %113, %111, %86, %72, %66, %33, %18
  %118 = phi ptr [ null, %18 ], [ %34, %33 ], [ %64, %66 ], [ null, %72 ], [ %89, %86 ], [ null, %111 ], [ %70, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret ptr %118
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ResampleImage(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2328, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !86
  %16 = uitofp i64 %15 to double
  %17 = fmul double %16, %1
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %19 = load double, ptr %18, align 8, !tbaa !112
  %20 = fcmp oeq double %19, 0.000000e+00
  %21 = select i1 %20, double 7.200000e+01, double %19
  %22 = fdiv double %17, %21
  %23 = fadd double %22, 5.000000e-01
  %24 = fptoui double %23 to i64
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !87
  %27 = uitofp i64 %26 to double
  %28 = fmul double %27, %2
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %30 = load double, ptr %29, align 8, !tbaa !113
  %31 = fcmp oeq double %30, 0.000000e+00
  %32 = select i1 %31, double 7.200000e+01, double %30
  %33 = fdiv double %28, %32
  %34 = fadd double %33, 5.000000e-01
  %35 = fptoui double %34 to i64
  %36 = tail call ptr @ResizeImage(ptr noundef %0, i64 noundef %24, i64 noundef %35, i32 noundef %3, double noundef %4, ptr noundef %5)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 24
  store double %1, ptr %39, align 8, !tbaa !112
  %40 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 25
  store double %2, ptr %40, align 8, !tbaa !113
  br label %41

41:                                               ; preds = %38, %13
  ret ptr %36
}

declare ptr @AccelerateResizeImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @HorizontalFilter(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #21
  %10 = fpext float %3 to double
  %11 = fdiv double 1.000000e+00, %10
  %12 = fadd double %11, 1.000000e-15
  %13 = fcmp ogt double %12, 1.000000e+00
  %14 = select i1 %13, double %12, double 1.000000e+00
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %19 = load float, ptr %18, align 4, !tbaa !57
  %20 = fmul float %17, %19
  %21 = fmul float %20, %15
  %22 = fcmp ogt float %21, 5.000000e-01
  br i1 %22, label %25, label %23

23:                                               ; preds = %7
  %24 = load i32, ptr %1, align 8, !tbaa !98
  br label %25

25:                                               ; preds = %7, %23
  %26 = phi i32 [ %24, %23 ], [ 1, %7 ]
  %27 = tail call i32 @SetImageStorageClass(ptr noundef %2, i32 noundef %26) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58
  tail call void @InheritException(ptr noundef %6, ptr noundef nonnull %30) #21
  br label %591

31:                                               ; preds = %25
  %32 = fcmp olt float %21, 5.000000e-01
  %33 = select i1 %32, float 5.000000e-01, float %21
  %34 = fpext float %33 to double
  %35 = tail call double @llvm.fmuladd.f64(double %34, double 2.000000e+00, double 3.000000e+00)
  %36 = fptoui double %35 to i64
  %37 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %38 = tail call ptr @AcquireQuantumMemory(i64 noundef %37, i64 noundef 8) #26
  %39 = icmp eq ptr %38, null
  br i1 %39, label %68, label %40

40:                                               ; preds = %31
  %41 = shl i64 %37, 3
  %42 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %38, i32 noundef 0, i64 noundef %41) #21
  %43 = icmp sgt i64 %37, 0
  br i1 %43, label %47, label %68

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %37
  br i1 %46, label %68, label %47, !llvm.loop !114

47:                                               ; preds = %40, %44
  %48 = phi i64 [ %45, %44 ], [ 0, %40 ]
  %49 = tail call ptr @AcquireAlignedMemory(i64 noundef %36, i64 noundef 16) #26
  %50 = getelementptr inbounds ptr, ptr %38, i64 %48
  store ptr %49, ptr %50, align 8, !tbaa !80
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %44

52:                                               ; preds = %47
  %53 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52, %62
  %56 = phi i64 [ %63, %62 ], [ 0, %52 ]
  %57 = getelementptr inbounds ptr, ptr %38, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %58) #21
  store ptr %61, ptr %57, align 8, !tbaa !80
  br label %62

62:                                               ; preds = %60, %55
  %63 = add nuw nsw i64 %56, 1
  %64 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %55, label %66, !llvm.loop !115

66:                                               ; preds = %62, %52
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %38) #21
  br label %68

68:                                               ; preds = %44, %31, %40, %66
  %69 = phi ptr [ %67, %66 ], [ null, %31 ], [ %38, %40 ], [ %38, %44 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %73 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2504, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %72) #21
  br label %591

74:                                               ; preds = %68
  %75 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 56) #21
  %76 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %6) #21
  %77 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef %6) #21
  %78 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %79 = load i64, ptr %78, align 8, !tbaa !86
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %572

81:                                               ; preds = %74
  %82 = select i1 %32, float 1.000000e+00, float %15
  %83 = fcmp olt float %82, 0.000000e+00
  %84 = select i1 %83, double -1.000000e+00, double 1.000000e+00
  %85 = fpext float %82 to double
  %86 = fmul double %84, %85
  %87 = fcmp ult double %86, 1.000000e-15
  %88 = fdiv double %84, 1.000000e-15
  %89 = fdiv double 1.000000e+00, %85
  %90 = select i1 %87, double %88, double %89
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %93 = fpext float %91 to double
  %94 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %95 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 1
  %96 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %97 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %98 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %99 = getelementptr inbounds i8, ptr %9, i64 32
  %100 = getelementptr inbounds i8, ptr %9, i64 36
  %101 = getelementptr inbounds i8, ptr %9, i64 40
  %102 = getelementptr inbounds i8, ptr %9, i64 44
  %103 = getelementptr inbounds i8, ptr %9, i64 48
  %104 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %105 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %106 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %107 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %108 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %109 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  %110 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %111 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 48
  br label %112

112:                                              ; preds = %81, %567
  %113 = phi i32 [ 1, %81 ], [ %568, %567 ]
  %114 = phi i64 [ 0, %81 ], [ %569, %567 ]
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %567, label %116

116:                                              ; preds = %112
  %117 = sitofp i64 %114 to double
  %118 = fadd double %117, 5.000000e-01
  %119 = fptrunc double %118 to float
  %120 = fdiv float %119, %3
  %121 = fpext float %120 to double
  %122 = fadd double %121, 1.000000e-15
  %123 = fptrunc double %122 to float
  %124 = fsub float %123, %33
  %125 = fpext float %124 to double
  %126 = fadd double %125, 5.000000e-01
  %127 = fcmp ogt double %126, 0.000000e+00
  %128 = select i1 %127, double %126, double 0.000000e+00
  %129 = fptosi double %128 to i64
  %130 = fadd float %33, %123
  %131 = fpext float %130 to double
  %132 = fadd double %131, 5.000000e-01
  %133 = load i64, ptr %92, align 8, !tbaa !86
  %134 = uitofp i64 %133 to double
  %135 = fcmp olt double %132, %134
  %136 = select i1 %135, double %132, double %134
  %137 = fptosi double %136 to i64
  %138 = load ptr, ptr %69, align 8, !tbaa !80
  %139 = sub nsw i64 %137, %129
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %116, %166
  %142 = phi i64 [ %172, %166 ], [ 0, %116 ]
  %143 = phi float [ %171, %166 ], [ 0.000000e+00, %116 ]
  %144 = add nsw i64 %142, %129
  %145 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %142
  %146 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %142, i32 1
  store i64 %144, ptr %146, align 8, !tbaa !116
  %147 = sitofp i64 %144 to float
  %148 = fsub float %147, %123
  %149 = fpext float %148 to double
  %150 = fadd double %149, 5.000000e-01
  %151 = fmul double %150, %93
  %152 = fptrunc double %151 to float
  %153 = call float @llvm.fabs.f32(float %152)
  %154 = load float, ptr %18, align 4, !tbaa !57
  %155 = fdiv float %153, %154
  %156 = load float, ptr %94, align 4, !tbaa !77
  %157 = fpext float %156 to double
  %158 = fcmp olt double %157, 1.000000e-15
  br i1 %158, label %166, label %159

159:                                              ; preds = %141
  %160 = load ptr, ptr %95, align 8, !tbaa !67
  %161 = icmp eq ptr %160, @Box
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load float, ptr %96, align 8, !tbaa !70
  %164 = fmul float %155, %163
  %165 = call float %160(float noundef %164, ptr noundef %0) #21
  br label %166

166:                                              ; preds = %141, %159, %162
  %167 = phi float [ %165, %162 ], [ 1.000000e+00, %159 ], [ 1.000000e+00, %141 ]
  %168 = load ptr, ptr %0, align 8, !tbaa !62
  %169 = call float %168(float noundef %155, ptr noundef nonnull %0) #21
  %170 = fmul float %167, %169
  store float %170, ptr %145, align 8, !tbaa !118
  %171 = fadd float %143, %170
  %172 = add nuw nsw i64 %142, 1
  %173 = icmp eq i64 %172, %139
  br i1 %173, label %174, label %141, !llvm.loop !119

174:                                              ; preds = %166, %116
  %175 = phi float [ 0.000000e+00, %116 ], [ %171, %166 ]
  %176 = phi i64 [ 0, %116 ], [ %172, %166 ]
  %177 = fcmp une float %175, 0.000000e+00
  %178 = fcmp une float %175, 1.000000e+00
  %179 = and i1 %177, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %174
  %181 = fpext float %175 to double
  %182 = fcmp olt float %175, 0.000000e+00
  %183 = select i1 %182, double -1.000000e+00, double 1.000000e+00
  %184 = fmul double %183, %181
  %185 = fcmp ult double %184, 1.000000e-15
  %186 = fdiv double 1.000000e+00, %181
  %187 = fdiv double %183, 1.000000e-15
  %188 = select i1 %185, double %187, double %186
  %189 = fptrunc double %188 to float
  %190 = icmp eq i64 %176, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %180, %191
  %192 = phi i64 [ %196, %191 ], [ 0, %180 ]
  %193 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %192
  %194 = load float, ptr %193, align 8, !tbaa !118
  %195 = fmul float %194, %189
  store float %195, ptr %193, align 8, !tbaa !118
  %196 = add nuw nsw i64 %192, 1
  %197 = icmp eq i64 %196, %176
  br i1 %197, label %198, label %191, !llvm.loop !120

198:                                              ; preds = %191, %180, %174
  %199 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !116
  %201 = getelementptr %struct._ContributionInfo, ptr %138, i64 %176
  %202 = getelementptr %struct._ContributionInfo, ptr %201, i64 -1, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !116
  %204 = sub i64 %203, %200
  %205 = add i64 %204, 1
  %206 = load i64, ptr %97, align 8, !tbaa !87
  %207 = call ptr @GetCacheViewVirtualPixels(ptr noundef %76, i64 noundef %200, i64 noundef 0, i64 noundef %205, i64 noundef %206, ptr noundef %6) #25
  %208 = load i64, ptr %98, align 8, !tbaa !87
  %209 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %77, i64 noundef %114, i64 noundef 0, i64 noundef 1, i64 noundef %208, ptr noundef %6) #25
  %210 = icmp eq ptr %207, null
  %211 = icmp eq ptr %209, null
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %567, label %213

213:                                              ; preds = %198
  %214 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %76) #21
  %215 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %77) #21
  %216 = load i64, ptr %98, align 8, !tbaa !87
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %218, label %552

218:                                              ; preds = %213
  %219 = load i32, ptr %104, align 8, !tbaa !108
  %220 = icmp eq i32 %219, 0
  %221 = icmp eq i64 %176, 0
  %222 = icmp eq i64 %176, 0
  %223 = icmp eq ptr %214, null
  %224 = icmp eq ptr %215, null
  %225 = icmp eq i64 %176, 0
  %226 = icmp eq i64 %176, 0
  %227 = icmp eq ptr %215, null
  %228 = load i32, ptr %2, align 8, !tbaa !98
  %229 = icmp eq i32 %228, 2
  %230 = icmp eq ptr %215, null
  %231 = fpext float %123 to double
  %232 = sitofp i64 %129 to double
  %233 = fcmp ogt double %231, %232
  %234 = select i1 %233, double %231, double %232
  %235 = sitofp i64 %137 to double
  %236 = fadd double %235, -1.000000e+00
  %237 = fcmp olt double %234, %236
  %238 = select i1 %237, double %234, double %236
  %239 = fadd double %238, 5.000000e-01
  %240 = fptosi double %239 to i64
  %241 = sub nsw i64 %240, %129
  %242 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %241, i32 1
  br label %243

243:                                              ; preds = %218, %548
  %244 = phi i64 [ 0, %218 ], [ %550, %548 ]
  %245 = phi ptr [ %209, %218 ], [ %549, %548 ]
  %246 = load float, ptr %99, align 8, !tbaa.struct !121
  %247 = load float, ptr %100, align 4, !tbaa.struct !122
  %248 = load float, ptr %101, align 8, !tbaa.struct !123
  %249 = load float, ptr %102, align 4, !tbaa.struct !124
  %250 = load float, ptr %103, align 8, !tbaa.struct !125
  br i1 %220, label %259, label %251

251:                                              ; preds = %243
  br i1 %221, label %418, label %252

252:                                              ; preds = %251
  %253 = load i64, ptr %202, align 8, !tbaa !116
  %254 = load i64, ptr %199, align 8, !tbaa !116
  %255 = add i64 %253, 1
  %256 = sub i64 %255, %254
  %257 = mul nsw i64 %256, %244
  %258 = getelementptr %struct._PixelPacket, ptr %207, i64 %257
  br label %380

259:                                              ; preds = %243
  br i1 %225, label %296, label %260

260:                                              ; preds = %259
  %261 = load i64, ptr %202, align 8, !tbaa !116
  %262 = load i64, ptr %199, align 8, !tbaa !116
  %263 = add i64 %261, 1
  %264 = sub i64 %263, %262
  %265 = mul nsw i64 %264, %244
  %266 = getelementptr %struct._PixelPacket, ptr %207, i64 %265
  br label %267

267:                                              ; preds = %260, %267
  %268 = phi i64 [ 0, %260 ], [ %294, %267 ]
  %269 = phi float [ %246, %260 ], [ %282, %267 ]
  %270 = phi float [ %247, %260 ], [ %286, %267 ]
  %271 = phi float [ %248, %260 ], [ %289, %267 ]
  %272 = phi float [ %249, %260 ], [ %293, %267 ]
  %273 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %268
  %274 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %268, i32 1
  %275 = load i64, ptr %274, align 8, !tbaa !116
  %276 = sub nsw i64 %275, %262
  %277 = load float, ptr %273, align 8, !tbaa !118
  %278 = getelementptr %struct._PixelPacket, ptr %266, i64 %276
  %279 = getelementptr %struct._PixelPacket, ptr %266, i64 %276, i32 2
  %280 = load i16, ptr %279, align 2, !tbaa !90
  %281 = uitofp i16 %280 to float
  %282 = call float @llvm.fmuladd.f32(float %277, float %281, float %269)
  %283 = getelementptr %struct._PixelPacket, ptr %266, i64 %276, i32 1
  %284 = load i16, ptr %283, align 2, !tbaa !92
  %285 = uitofp i16 %284 to float
  %286 = call float @llvm.fmuladd.f32(float %277, float %285, float %270)
  %287 = load i16, ptr %278, align 2, !tbaa !94
  %288 = uitofp i16 %287 to float
  %289 = call float @llvm.fmuladd.f32(float %277, float %288, float %271)
  %290 = getelementptr %struct._PixelPacket, ptr %266, i64 %276, i32 3
  %291 = load i16, ptr %290, align 2, !tbaa !96
  %292 = uitofp i16 %291 to float
  %293 = call float @llvm.fmuladd.f32(float %277, float %292, float %272)
  %294 = add nuw nsw i64 %268, 1
  %295 = icmp eq i64 %294, %176
  br i1 %295, label %296, label %267, !llvm.loop !126

296:                                              ; preds = %267, %259
  %297 = phi float [ %249, %259 ], [ %293, %267 ]
  %298 = phi float [ %248, %259 ], [ %289, %267 ]
  %299 = phi float [ %247, %259 ], [ %286, %267 ]
  %300 = phi float [ %246, %259 ], [ %282, %267 ]
  %301 = fcmp ugt float %300, 0.000000e+00
  br i1 %301, label %302, label %307

302:                                              ; preds = %296
  %303 = fcmp ult float %300, 6.553500e+04
  br i1 %303, label %304, label %307

304:                                              ; preds = %302
  %305 = fadd float %300, 5.000000e-01
  %306 = fptoui float %305 to i16
  br label %307

307:                                              ; preds = %296, %302, %304
  %308 = phi i16 [ %306, %304 ], [ 0, %296 ], [ -1, %302 ]
  %309 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 2
  store i16 %308, ptr %309, align 2, !tbaa !90
  %310 = fcmp ugt float %299, 0.000000e+00
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = fcmp ult float %299, 6.553500e+04
  br i1 %312, label %313, label %316

313:                                              ; preds = %311
  %314 = fadd float %299, 5.000000e-01
  %315 = fptoui float %314 to i16
  br label %316

316:                                              ; preds = %307, %311, %313
  %317 = phi i16 [ %315, %313 ], [ 0, %307 ], [ -1, %311 ]
  %318 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 1
  store i16 %317, ptr %318, align 2, !tbaa !92
  %319 = fcmp ugt float %298, 0.000000e+00
  br i1 %319, label %320, label %325

320:                                              ; preds = %316
  %321 = fcmp ult float %298, 6.553500e+04
  br i1 %321, label %322, label %325

322:                                              ; preds = %320
  %323 = fadd float %298, 5.000000e-01
  %324 = fptoui float %323 to i16
  br label %325

325:                                              ; preds = %316, %320, %322
  %326 = phi i16 [ %324, %322 ], [ 0, %316 ], [ -1, %320 ]
  store i16 %326, ptr %245, align 2, !tbaa !94
  %327 = fcmp ugt float %297, 0.000000e+00
  br i1 %327, label %328, label %333

328:                                              ; preds = %325
  %329 = fcmp ult float %297, 6.553500e+04
  br i1 %329, label %330, label %333

330:                                              ; preds = %328
  %331 = fadd float %297, 5.000000e-01
  %332 = fptoui float %331 to i16
  br label %333

333:                                              ; preds = %325, %328, %330
  %334 = phi i16 [ %332, %330 ], [ 0, %325 ], [ -1, %328 ]
  %335 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 3
  store i16 %334, ptr %335, align 2, !tbaa !96
  %336 = load i32, ptr %107, align 4, !tbaa !97
  %337 = icmp eq i32 %336, 12
  br i1 %337, label %338, label %527

338:                                              ; preds = %333
  %339 = load i32, ptr %108, align 4, !tbaa !97
  %340 = icmp eq i32 %339, 12
  br i1 %340, label %341, label %527

341:                                              ; preds = %338
  br i1 %226, label %368, label %342

342:                                              ; preds = %341
  %343 = load i64, ptr %202, align 8, !tbaa !116
  %344 = load i64, ptr %199, align 8, !tbaa !116
  %345 = add i64 %343, 1
  %346 = sub i64 %345, %344
  %347 = mul nsw i64 %346, %244
  %348 = getelementptr i16, ptr %214, i64 %347
  br label %349

349:                                              ; preds = %342, %362
  %350 = phi i64 [ 0, %342 ], [ %366, %362 ]
  %351 = phi float [ %250, %342 ], [ %365, %362 ]
  %352 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %350
  %353 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %350, i32 1
  %354 = load i64, ptr %353, align 8, !tbaa !116
  %355 = sub nsw i64 %354, %344
  %356 = load float, ptr %352, align 8, !tbaa !118
  %357 = getelementptr i16, ptr %348, i64 %355
  %358 = icmp eq ptr %357, null
  br i1 %358, label %362, label %359

359:                                              ; preds = %349
  %360 = load i16, ptr %357, align 2, !tbaa !100
  %361 = zext i16 %360 to i32
  br label %362

362:                                              ; preds = %349, %359
  %363 = phi i32 [ %361, %359 ], [ 0, %349 ]
  %364 = sitofp i32 %363 to float
  %365 = call float @llvm.fmuladd.f32(float %356, float %364, float %351)
  %366 = add nuw nsw i64 %350, 1
  %367 = icmp eq i64 %366, %176
  br i1 %367, label %368, label %349, !llvm.loop !127

368:                                              ; preds = %362, %341
  %369 = phi float [ %250, %341 ], [ %365, %362 ]
  br i1 %227, label %527, label %370

370:                                              ; preds = %368
  %371 = getelementptr inbounds i16, ptr %215, i64 %244
  %372 = fcmp ugt float %369, 0.000000e+00
  br i1 %372, label %373, label %378

373:                                              ; preds = %370
  %374 = fcmp ult float %369, 6.553500e+04
  br i1 %374, label %375, label %378

375:                                              ; preds = %373
  %376 = fadd float %369, 5.000000e-01
  %377 = fptoui float %376 to i16
  br label %378

378:                                              ; preds = %370, %373, %375
  %379 = phi i16 [ %377, %375 ], [ 0, %370 ], [ -1, %373 ]
  store i16 %379, ptr %371, align 2, !tbaa !100
  br label %527

380:                                              ; preds = %252, %380
  %381 = phi double [ 0.000000e+00, %252 ], [ %415, %380 ]
  %382 = phi i64 [ 0, %252 ], [ %416, %380 ]
  %383 = phi float [ %246, %252 ], [ %404, %380 ]
  %384 = phi float [ %247, %252 ], [ %408, %380 ]
  %385 = phi float [ %248, %252 ], [ %411, %380 ]
  %386 = phi float [ %249, %252 ], [ %413, %380 ]
  %387 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %382
  %388 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %382, i32 1
  %389 = load i64, ptr %388, align 8, !tbaa !116
  %390 = sub nsw i64 %389, %254
  %391 = load float, ptr %387, align 8, !tbaa !118
  %392 = fpext float %391 to double
  %393 = fmul double %392, 0x3EF0001000100010
  %394 = getelementptr %struct._PixelPacket, ptr %258, i64 %390
  %395 = getelementptr %struct._PixelPacket, ptr %258, i64 %390, i32 3
  %396 = load i16, ptr %395, align 2, !tbaa !96
  %397 = xor i16 %396, -1
  %398 = uitofp i16 %397 to double
  %399 = fmul double %393, %398
  %400 = fptrunc double %399 to float
  %401 = getelementptr %struct._PixelPacket, ptr %258, i64 %390, i32 2
  %402 = load i16, ptr %401, align 2, !tbaa !90
  %403 = uitofp i16 %402 to float
  %404 = call float @llvm.fmuladd.f32(float %400, float %403, float %383)
  %405 = getelementptr %struct._PixelPacket, ptr %258, i64 %390, i32 1
  %406 = load i16, ptr %405, align 2, !tbaa !92
  %407 = uitofp i16 %406 to float
  %408 = call float @llvm.fmuladd.f32(float %400, float %407, float %384)
  %409 = load i16, ptr %394, align 2, !tbaa !94
  %410 = uitofp i16 %409 to float
  %411 = call float @llvm.fmuladd.f32(float %400, float %410, float %385)
  %412 = uitofp i16 %396 to float
  %413 = call float @llvm.fmuladd.f32(float %391, float %412, float %386)
  %414 = fpext float %400 to double
  %415 = fadd double %381, %414
  %416 = add nuw nsw i64 %382, 1
  %417 = icmp eq i64 %416, %176
  br i1 %417, label %418, label %380, !llvm.loop !128

418:                                              ; preds = %380, %251
  %419 = phi float [ %249, %251 ], [ %413, %380 ]
  %420 = phi float [ %248, %251 ], [ %411, %380 ]
  %421 = phi float [ %247, %251 ], [ %408, %380 ]
  %422 = phi float [ %246, %251 ], [ %404, %380 ]
  %423 = phi double [ 0.000000e+00, %251 ], [ %415, %380 ]
  %424 = fcmp olt double %423, 0.000000e+00
  %425 = select i1 %424, double 0.000000e+00, double %423
  %426 = fcmp ult double %425, 1.000000e-15
  %427 = fdiv double 1.000000e+00, %425
  %428 = select i1 %426, double 0x430C6BF52633FFFF, double %427
  %429 = fpext float %422 to double
  %430 = fmul double %428, %429
  %431 = fptrunc double %430 to float
  %432 = fcmp ugt float %431, 0.000000e+00
  br i1 %432, label %433, label %438

433:                                              ; preds = %418
  %434 = fcmp ult float %431, 6.553500e+04
  br i1 %434, label %435, label %438

435:                                              ; preds = %433
  %436 = fadd float %431, 5.000000e-01
  %437 = fptoui float %436 to i16
  br label %438

438:                                              ; preds = %418, %433, %435
  %439 = phi i16 [ %437, %435 ], [ 0, %418 ], [ -1, %433 ]
  %440 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 2
  store i16 %439, ptr %440, align 2, !tbaa !90
  %441 = fpext float %421 to double
  %442 = fmul double %428, %441
  %443 = fptrunc double %442 to float
  %444 = fcmp ugt float %443, 0.000000e+00
  br i1 %444, label %445, label %450

445:                                              ; preds = %438
  %446 = fcmp ult float %443, 6.553500e+04
  br i1 %446, label %447, label %450

447:                                              ; preds = %445
  %448 = fadd float %443, 5.000000e-01
  %449 = fptoui float %448 to i16
  br label %450

450:                                              ; preds = %438, %445, %447
  %451 = phi i16 [ %449, %447 ], [ 0, %438 ], [ -1, %445 ]
  %452 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 1
  store i16 %451, ptr %452, align 2, !tbaa !92
  %453 = fpext float %420 to double
  %454 = fmul double %428, %453
  %455 = fptrunc double %454 to float
  %456 = fcmp ugt float %455, 0.000000e+00
  br i1 %456, label %457, label %462

457:                                              ; preds = %450
  %458 = fcmp ult float %455, 6.553500e+04
  br i1 %458, label %459, label %462

459:                                              ; preds = %457
  %460 = fadd float %455, 5.000000e-01
  %461 = fptoui float %460 to i16
  br label %462

462:                                              ; preds = %450, %457, %459
  %463 = phi i16 [ %461, %459 ], [ 0, %450 ], [ -1, %457 ]
  store i16 %463, ptr %245, align 2, !tbaa !94
  %464 = fcmp ugt float %419, 0.000000e+00
  br i1 %464, label %465, label %470

465:                                              ; preds = %462
  %466 = fcmp ult float %419, 6.553500e+04
  br i1 %466, label %467, label %470

467:                                              ; preds = %465
  %468 = fadd float %419, 5.000000e-01
  %469 = fptoui float %468 to i16
  br label %470

470:                                              ; preds = %462, %465, %467
  %471 = phi i16 [ %469, %467 ], [ 0, %462 ], [ -1, %465 ]
  %472 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 3
  store i16 %471, ptr %472, align 2, !tbaa !96
  %473 = load i32, ptr %105, align 4, !tbaa !97
  %474 = icmp eq i32 %473, 12
  br i1 %474, label %475, label %527

475:                                              ; preds = %470
  %476 = load i32, ptr %106, align 4, !tbaa !97
  %477 = icmp eq i32 %476, 12
  br i1 %477, label %478, label %527

478:                                              ; preds = %475
  br i1 %222, label %512, label %479

479:                                              ; preds = %478
  %480 = load i64, ptr %202, align 8, !tbaa !116
  %481 = load i64, ptr %199, align 8, !tbaa !116
  %482 = add i64 %480, 1
  %483 = sub i64 %482, %481
  %484 = mul nsw i64 %483, %244
  br label %485

485:                                              ; preds = %479, %506
  %486 = phi i64 [ 0, %479 ], [ %510, %506 ]
  %487 = phi float [ %250, %479 ], [ %509, %506 ]
  %488 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %486
  %489 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %486, i32 1
  %490 = load i64, ptr %489, align 8, !tbaa !116
  %491 = sub nsw i64 %490, %481
  %492 = add nsw i64 %484, %491
  %493 = load float, ptr %488, align 8, !tbaa !118
  %494 = fpext float %493 to double
  %495 = fmul double %494, 0x3EF0001000100010
  %496 = getelementptr inbounds %struct._PixelPacket, ptr %207, i64 %492, i32 3
  %497 = load i16, ptr %496, align 2, !tbaa !96
  %498 = xor i16 %497, -1
  %499 = uitofp i16 %498 to double
  %500 = fmul double %495, %499
  %501 = fptrunc double %500 to float
  br i1 %223, label %506, label %502

502:                                              ; preds = %485
  %503 = getelementptr inbounds i16, ptr %214, i64 %492
  %504 = load i16, ptr %503, align 2, !tbaa !100
  %505 = zext i16 %504 to i32
  br label %506

506:                                              ; preds = %485, %502
  %507 = phi i32 [ %505, %502 ], [ 0, %485 ]
  %508 = sitofp i32 %507 to float
  %509 = call float @llvm.fmuladd.f32(float %501, float %508, float %487)
  %510 = add nuw nsw i64 %486, 1
  %511 = icmp eq i64 %510, %176
  br i1 %511, label %512, label %485, !llvm.loop !129

512:                                              ; preds = %506, %478
  %513 = phi float [ %250, %478 ], [ %509, %506 ]
  br i1 %224, label %527, label %514

514:                                              ; preds = %512
  %515 = getelementptr inbounds i16, ptr %215, i64 %244
  %516 = fpext float %513 to double
  %517 = fmul double %428, %516
  %518 = fptrunc double %517 to float
  %519 = fcmp ugt float %518, 0.000000e+00
  br i1 %519, label %520, label %525

520:                                              ; preds = %514
  %521 = fcmp ult float %518, 6.553500e+04
  br i1 %521, label %522, label %525

522:                                              ; preds = %520
  %523 = fadd float %518, 5.000000e-01
  %524 = fptoui float %523 to i16
  br label %525

525:                                              ; preds = %514, %520, %522
  %526 = phi i16 [ %524, %522 ], [ 0, %514 ], [ -1, %520 ]
  store i16 %526, ptr %515, align 2, !tbaa !100
  br label %527

527:                                              ; preds = %470, %475, %525, %512, %333, %338, %378, %368
  br i1 %229, label %528, label %548

528:                                              ; preds = %527
  %529 = load i32, ptr %1, align 8, !tbaa !98
  %530 = icmp eq i32 %529, 2
  br i1 %530, label %531, label %548

531:                                              ; preds = %528
  %532 = getelementptr inbounds i16, ptr %215, i64 %244
  br i1 %230, label %548, label %533

533:                                              ; preds = %531
  %534 = load i64, ptr %202, align 8, !tbaa !116
  %535 = load i64, ptr %199, align 8, !tbaa !116
  %536 = add i64 %534, 1
  %537 = sub i64 %536, %535
  %538 = mul nsw i64 %537, %244
  %539 = load i64, ptr %242, align 8, !tbaa !116
  %540 = sub nsw i64 %539, %535
  %541 = getelementptr i16, ptr %214, i64 %538
  %542 = getelementptr i16, ptr %541, i64 %540
  %543 = icmp eq ptr %542, null
  br i1 %543, label %546, label %544

544:                                              ; preds = %533
  %545 = load i16, ptr %542, align 2, !tbaa !100
  br label %546

546:                                              ; preds = %533, %544
  %547 = phi i16 [ %545, %544 ], [ 0, %533 ]
  store i16 %547, ptr %532, align 2, !tbaa !100
  br label %548

548:                                              ; preds = %531, %546, %528, %527
  %549 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 1
  %550 = add nuw nsw i64 %244, 1
  %551 = icmp eq i64 %550, %216
  br i1 %551, label %552, label %243, !llvm.loop !130

552:                                              ; preds = %548, %213
  %553 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %77, ptr noundef %6) #25
  %554 = icmp ne i32 %553, 0
  %555 = zext i1 %554 to i32
  %556 = load ptr, ptr %109, align 8, !tbaa !102
  %557 = icmp eq ptr %556, null
  br i1 %557, label %567, label %558

558:                                              ; preds = %552
  %559 = load i64, ptr %5, align 8, !tbaa !109
  %560 = add nsw i64 %559, 1
  store i64 %560, ptr %5, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #21
  %561 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.30, ptr noundef nonnull %110) #21
  %562 = load ptr, ptr %109, align 8, !tbaa !102
  %563 = load ptr, ptr %111, align 8, !tbaa !103
  %564 = call i32 %562(ptr noundef nonnull %8, i64 noundef %559, i64 noundef %4, ptr noundef %563) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #21
  %565 = icmp eq i32 %564, 0
  %566 = select i1 %565, i32 0, i32 %555
  br label %567

567:                                              ; preds = %552, %558, %198, %112
  %568 = phi i32 [ 0, %112 ], [ 0, %198 ], [ %566, %558 ], [ %555, %552 ]
  %569 = add nuw nsw i64 %114, 1
  %570 = load i64, ptr %78, align 8, !tbaa !86
  %571 = icmp slt i64 %569, %570
  br i1 %571, label %112, label %572, !llvm.loop !131

572:                                              ; preds = %567, %74
  %573 = phi i32 [ 1, %74 ], [ %568, %567 ]
  %574 = call ptr @DestroyCacheView(ptr noundef %77) #21
  %575 = call ptr @DestroyCacheView(ptr noundef %76) #21
  %576 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %577 = icmp sgt i64 %576, 0
  br i1 %577, label %578, label %589

578:                                              ; preds = %572, %585
  %579 = phi i64 [ %586, %585 ], [ 0, %572 ]
  %580 = getelementptr inbounds ptr, ptr %69, i64 %579
  %581 = load ptr, ptr %580, align 8, !tbaa !80
  %582 = icmp eq ptr %581, null
  br i1 %582, label %585, label %583

583:                                              ; preds = %578
  %584 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %581) #21
  store ptr %584, ptr %580, align 8, !tbaa !80
  br label %585

585:                                              ; preds = %583, %578
  %586 = add nuw nsw i64 %579, 1
  %587 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %588 = icmp slt i64 %586, %587
  br i1 %588, label %578, label %589, !llvm.loop !115

589:                                              ; preds = %585, %572
  %590 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %69) #21
  br label %591

591:                                              ; preds = %589, %71, %29
  %592 = phi i32 [ 0, %29 ], [ 0, %71 ], [ %573, %589 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #21
  ret i32 %592
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @VerticalFilter(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef %4, ptr nocapture noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4096 x i8], align 16
  %9 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #21
  %10 = fpext float %3 to double
  %11 = fdiv double 1.000000e+00, %10
  %12 = fadd double %11, 1.000000e-15
  %13 = fcmp ogt double %12, 1.000000e+00
  %14 = select i1 %13, double %12, double 1.000000e+00
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 2
  %17 = load float, ptr %16, align 8, !tbaa !64
  %18 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %19 = load float, ptr %18, align 4, !tbaa !57
  %20 = fmul float %17, %19
  %21 = fmul float %20, %15
  %22 = fcmp ogt float %21, 5.000000e-01
  br i1 %22, label %25, label %23

23:                                               ; preds = %7
  %24 = load i32, ptr %1, align 8, !tbaa !98
  br label %25

25:                                               ; preds = %7, %23
  %26 = phi i32 [ %24, %23 ], [ 1, %7 ]
  %27 = tail call i32 @SetImageStorageClass(ptr noundef %2, i32 noundef %26) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58
  tail call void @InheritException(ptr noundef %6, ptr noundef nonnull %30) #21
  br label %581

31:                                               ; preds = %25
  %32 = fcmp olt float %21, 5.000000e-01
  %33 = select i1 %32, float 5.000000e-01, float %21
  %34 = fpext float %33 to double
  %35 = tail call double @llvm.fmuladd.f64(double %34, double 2.000000e+00, double 3.000000e+00)
  %36 = fptoui double %35 to i64
  %37 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %38 = tail call ptr @AcquireQuantumMemory(i64 noundef %37, i64 noundef 8) #26
  %39 = icmp eq ptr %38, null
  br i1 %39, label %68, label %40

40:                                               ; preds = %31
  %41 = shl i64 %37, 3
  %42 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %38, i32 noundef 0, i64 noundef %41) #21
  %43 = icmp sgt i64 %37, 0
  br i1 %43, label %47, label %68

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %37
  br i1 %46, label %68, label %47, !llvm.loop !114

47:                                               ; preds = %40, %44
  %48 = phi i64 [ %45, %44 ], [ 0, %40 ]
  %49 = tail call ptr @AcquireAlignedMemory(i64 noundef %36, i64 noundef 16) #26
  %50 = getelementptr inbounds ptr, ptr %38, i64 %48
  store ptr %49, ptr %50, align 8, !tbaa !80
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %44

52:                                               ; preds = %47
  %53 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52, %62
  %56 = phi i64 [ %63, %62 ], [ 0, %52 ]
  %57 = getelementptr inbounds ptr, ptr %38, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %58) #21
  store ptr %61, ptr %57, align 8, !tbaa !80
  br label %62

62:                                               ; preds = %60, %55
  %63 = add nuw nsw i64 %56, 1
  %64 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %55, label %66, !llvm.loop !115

66:                                               ; preds = %62, %52
  %67 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %38) #21
  br label %68

68:                                               ; preds = %44, %31, %40, %66
  %69 = phi ptr [ %67, %66 ], [ null, %31 ], [ %38, %40 ], [ %38, %44 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %73 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2750, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %72) #21
  br label %581

74:                                               ; preds = %68
  %75 = call ptr @ResetMagickMemory(ptr noundef nonnull %9, i32 noundef 0, i64 noundef 56) #21
  %76 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %6) #21
  %77 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef %6) #21
  %78 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %79 = load i64, ptr %78, align 8, !tbaa !87
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %562

81:                                               ; preds = %74
  %82 = select i1 %32, float 1.000000e+00, float %15
  %83 = fcmp olt float %82, 0.000000e+00
  %84 = select i1 %83, double -1.000000e+00, double 1.000000e+00
  %85 = fpext float %82 to double
  %86 = fmul double %84, %85
  %87 = fcmp ult double %86, 1.000000e-15
  %88 = fdiv double %84, 1.000000e-15
  %89 = fdiv double 1.000000e+00, %85
  %90 = select i1 %87, double %88, double %89
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 8
  %93 = fpext float %91 to double
  %94 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %95 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 1
  %96 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %97 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 7
  %98 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %99 = getelementptr inbounds i8, ptr %9, i64 32
  %100 = getelementptr inbounds i8, ptr %9, i64 36
  %101 = getelementptr inbounds i8, ptr %9, i64 40
  %102 = getelementptr inbounds i8, ptr %9, i64 44
  %103 = getelementptr inbounds i8, ptr %9, i64 48
  %104 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 6
  %105 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %106 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %107 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 1
  %108 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 1
  %109 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 47
  %110 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %111 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 48
  br label %112

112:                                              ; preds = %81, %557
  %113 = phi i32 [ 1, %81 ], [ %558, %557 ]
  %114 = phi i64 [ 0, %81 ], [ %559, %557 ]
  %115 = icmp eq i32 %113, 0
  br i1 %115, label %557, label %116

116:                                              ; preds = %112
  %117 = sitofp i64 %114 to double
  %118 = fadd double %117, 5.000000e-01
  %119 = fptrunc double %118 to float
  %120 = fdiv float %119, %3
  %121 = fpext float %120 to double
  %122 = fadd double %121, 1.000000e-15
  %123 = fptrunc double %122 to float
  %124 = fsub float %123, %33
  %125 = fpext float %124 to double
  %126 = fadd double %125, 5.000000e-01
  %127 = fcmp ogt double %126, 0.000000e+00
  %128 = select i1 %127, double %126, double 0.000000e+00
  %129 = fptosi double %128 to i64
  %130 = fadd float %33, %123
  %131 = fpext float %130 to double
  %132 = fadd double %131, 5.000000e-01
  %133 = load i64, ptr %92, align 8, !tbaa !87
  %134 = uitofp i64 %133 to double
  %135 = fcmp olt double %132, %134
  %136 = select i1 %135, double %132, double %134
  %137 = fptosi double %136 to i64
  %138 = load ptr, ptr %69, align 8, !tbaa !80
  %139 = sub nsw i64 %137, %129
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %116, %166
  %142 = phi i64 [ %172, %166 ], [ 0, %116 ]
  %143 = phi float [ %171, %166 ], [ 0.000000e+00, %116 ]
  %144 = add nsw i64 %142, %129
  %145 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %142
  %146 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %142, i32 1
  store i64 %144, ptr %146, align 8, !tbaa !116
  %147 = sitofp i64 %144 to float
  %148 = fsub float %147, %123
  %149 = fpext float %148 to double
  %150 = fadd double %149, 5.000000e-01
  %151 = fmul double %150, %93
  %152 = fptrunc double %151 to float
  %153 = call float @llvm.fabs.f32(float %152)
  %154 = load float, ptr %18, align 4, !tbaa !57
  %155 = fdiv float %153, %154
  %156 = load float, ptr %94, align 4, !tbaa !77
  %157 = fpext float %156 to double
  %158 = fcmp olt double %157, 1.000000e-15
  br i1 %158, label %166, label %159

159:                                              ; preds = %141
  %160 = load ptr, ptr %95, align 8, !tbaa !67
  %161 = icmp eq ptr %160, @Box
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load float, ptr %96, align 8, !tbaa !70
  %164 = fmul float %155, %163
  %165 = call float %160(float noundef %164, ptr noundef %0) #21
  br label %166

166:                                              ; preds = %141, %159, %162
  %167 = phi float [ %165, %162 ], [ 1.000000e+00, %159 ], [ 1.000000e+00, %141 ]
  %168 = load ptr, ptr %0, align 8, !tbaa !62
  %169 = call float %168(float noundef %155, ptr noundef nonnull %0) #21
  %170 = fmul float %167, %169
  store float %170, ptr %145, align 8, !tbaa !118
  %171 = fadd float %143, %170
  %172 = add nuw nsw i64 %142, 1
  %173 = icmp eq i64 %172, %139
  br i1 %173, label %174, label %141, !llvm.loop !132

174:                                              ; preds = %166, %116
  %175 = phi float [ 0.000000e+00, %116 ], [ %171, %166 ]
  %176 = phi i64 [ 0, %116 ], [ %172, %166 ]
  %177 = fcmp une float %175, 0.000000e+00
  %178 = fcmp une float %175, 1.000000e+00
  %179 = and i1 %177, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %174
  %181 = fpext float %175 to double
  %182 = fcmp olt float %175, 0.000000e+00
  %183 = select i1 %182, double -1.000000e+00, double 1.000000e+00
  %184 = fmul double %183, %181
  %185 = fcmp ult double %184, 1.000000e-15
  %186 = fdiv double 1.000000e+00, %181
  %187 = fdiv double %183, 1.000000e-15
  %188 = select i1 %185, double %187, double %186
  %189 = fptrunc double %188 to float
  %190 = icmp eq i64 %176, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %180, %191
  %192 = phi i64 [ %196, %191 ], [ 0, %180 ]
  %193 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %192
  %194 = load float, ptr %193, align 8, !tbaa !118
  %195 = fmul float %194, %189
  store float %195, ptr %193, align 8, !tbaa !118
  %196 = add nuw nsw i64 %192, 1
  %197 = icmp eq i64 %196, %176
  br i1 %197, label %198, label %191, !llvm.loop !133

198:                                              ; preds = %191, %180, %174
  %199 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 0, i32 1
  %200 = load i64, ptr %199, align 8, !tbaa !116
  %201 = load i64, ptr %97, align 8, !tbaa !86
  %202 = getelementptr %struct._ContributionInfo, ptr %138, i64 %176
  %203 = getelementptr %struct._ContributionInfo, ptr %202, i64 -1, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !116
  %205 = sub i64 %204, %200
  %206 = add i64 %205, 1
  %207 = call ptr @GetCacheViewVirtualPixels(ptr noundef %76, i64 noundef 0, i64 noundef %200, i64 noundef %201, i64 noundef %206, ptr noundef %6) #25
  %208 = load i64, ptr %98, align 8, !tbaa !86
  %209 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %77, i64 noundef 0, i64 noundef %114, i64 noundef %208, i64 noundef 1, ptr noundef %6) #25
  %210 = icmp eq ptr %207, null
  %211 = icmp eq ptr %209, null
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %557, label %213

213:                                              ; preds = %198
  %214 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %76) #21
  %215 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %77) #21
  %216 = load i64, ptr %98, align 8, !tbaa !86
  %217 = icmp sgt i64 %216, 0
  br i1 %217, label %218, label %542

218:                                              ; preds = %213
  %219 = load i32, ptr %104, align 8, !tbaa !108
  %220 = icmp eq i32 %219, 0
  %221 = icmp eq i64 %176, 0
  %222 = icmp eq i64 %176, 0
  %223 = icmp eq ptr %214, null
  %224 = icmp eq ptr %215, null
  %225 = icmp eq i64 %176, 0
  %226 = icmp eq i64 %176, 0
  %227 = icmp eq ptr %215, null
  %228 = load i32, ptr %2, align 8, !tbaa !98
  %229 = icmp eq i32 %228, 2
  %230 = icmp eq ptr %215, null
  %231 = fpext float %123 to double
  %232 = sitofp i64 %129 to double
  %233 = fcmp ogt double %231, %232
  %234 = select i1 %233, double %231, double %232
  %235 = sitofp i64 %137 to double
  %236 = fadd double %235, -1.000000e+00
  %237 = fcmp olt double %234, %236
  %238 = select i1 %237, double %234, double %236
  %239 = fadd double %238, 5.000000e-01
  %240 = fptosi double %239 to i64
  %241 = sub nsw i64 %240, %129
  %242 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %241, i32 1
  br label %243

243:                                              ; preds = %218, %538
  %244 = phi i64 [ 0, %218 ], [ %540, %538 ]
  %245 = phi ptr [ %209, %218 ], [ %539, %538 ]
  %246 = load float, ptr %99, align 8, !tbaa.struct !121
  %247 = load float, ptr %100, align 4, !tbaa.struct !122
  %248 = load float, ptr %101, align 8, !tbaa.struct !123
  %249 = load float, ptr %102, align 4, !tbaa.struct !124
  %250 = load float, ptr %103, align 8, !tbaa.struct !125
  br i1 %220, label %255, label %251

251:                                              ; preds = %243
  br i1 %221, label %412, label %252

252:                                              ; preds = %251
  %253 = load i64, ptr %199, align 8, !tbaa !116
  %254 = load i64, ptr %97, align 8, !tbaa !86
  br label %372

255:                                              ; preds = %243
  br i1 %225, label %290, label %256

256:                                              ; preds = %255
  %257 = load i64, ptr %199, align 8, !tbaa !116
  %258 = load i64, ptr %97, align 8, !tbaa !86
  br label %259

259:                                              ; preds = %256, %259
  %260 = phi i64 [ 0, %256 ], [ %288, %259 ]
  %261 = phi float [ %246, %256 ], [ %276, %259 ]
  %262 = phi float [ %247, %256 ], [ %280, %259 ]
  %263 = phi float [ %248, %256 ], [ %283, %259 ]
  %264 = phi float [ %249, %256 ], [ %287, %259 ]
  %265 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %260
  %266 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %260, i32 1
  %267 = load i64, ptr %266, align 8, !tbaa !116
  %268 = sub nsw i64 %267, %257
  %269 = mul i64 %268, %258
  %270 = load float, ptr %265, align 8, !tbaa !118
  %271 = getelementptr %struct._PixelPacket, ptr %207, i64 %269
  %272 = getelementptr %struct._PixelPacket, ptr %271, i64 %244
  %273 = getelementptr %struct._PixelPacket, ptr %271, i64 %244, i32 2
  %274 = load i16, ptr %273, align 2, !tbaa !90
  %275 = uitofp i16 %274 to float
  %276 = call float @llvm.fmuladd.f32(float %270, float %275, float %261)
  %277 = getelementptr %struct._PixelPacket, ptr %271, i64 %244, i32 1
  %278 = load i16, ptr %277, align 2, !tbaa !92
  %279 = uitofp i16 %278 to float
  %280 = call float @llvm.fmuladd.f32(float %270, float %279, float %262)
  %281 = load i16, ptr %272, align 2, !tbaa !94
  %282 = uitofp i16 %281 to float
  %283 = call float @llvm.fmuladd.f32(float %270, float %282, float %263)
  %284 = getelementptr %struct._PixelPacket, ptr %271, i64 %244, i32 3
  %285 = load i16, ptr %284, align 2, !tbaa !96
  %286 = uitofp i16 %285 to float
  %287 = call float @llvm.fmuladd.f32(float %270, float %286, float %264)
  %288 = add nuw nsw i64 %260, 1
  %289 = icmp eq i64 %288, %176
  br i1 %289, label %290, label %259, !llvm.loop !134

290:                                              ; preds = %259, %255
  %291 = phi float [ %249, %255 ], [ %287, %259 ]
  %292 = phi float [ %248, %255 ], [ %283, %259 ]
  %293 = phi float [ %247, %255 ], [ %280, %259 ]
  %294 = phi float [ %246, %255 ], [ %276, %259 ]
  %295 = fcmp ugt float %294, 0.000000e+00
  br i1 %295, label %296, label %301

296:                                              ; preds = %290
  %297 = fcmp ult float %294, 6.553500e+04
  br i1 %297, label %298, label %301

298:                                              ; preds = %296
  %299 = fadd float %294, 5.000000e-01
  %300 = fptoui float %299 to i16
  br label %301

301:                                              ; preds = %290, %296, %298
  %302 = phi i16 [ %300, %298 ], [ 0, %290 ], [ -1, %296 ]
  %303 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 2
  store i16 %302, ptr %303, align 2, !tbaa !90
  %304 = fcmp ugt float %293, 0.000000e+00
  br i1 %304, label %305, label %310

305:                                              ; preds = %301
  %306 = fcmp ult float %293, 6.553500e+04
  br i1 %306, label %307, label %310

307:                                              ; preds = %305
  %308 = fadd float %293, 5.000000e-01
  %309 = fptoui float %308 to i16
  br label %310

310:                                              ; preds = %301, %305, %307
  %311 = phi i16 [ %309, %307 ], [ 0, %301 ], [ -1, %305 ]
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 1
  store i16 %311, ptr %312, align 2, !tbaa !92
  %313 = fcmp ugt float %292, 0.000000e+00
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = fcmp ult float %292, 6.553500e+04
  br i1 %315, label %316, label %319

316:                                              ; preds = %314
  %317 = fadd float %292, 5.000000e-01
  %318 = fptoui float %317 to i16
  br label %319

319:                                              ; preds = %310, %314, %316
  %320 = phi i16 [ %318, %316 ], [ 0, %310 ], [ -1, %314 ]
  store i16 %320, ptr %245, align 2, !tbaa !94
  %321 = fcmp ugt float %291, 0.000000e+00
  br i1 %321, label %322, label %327

322:                                              ; preds = %319
  %323 = fcmp ult float %291, 6.553500e+04
  br i1 %323, label %324, label %327

324:                                              ; preds = %322
  %325 = fadd float %291, 5.000000e-01
  %326 = fptoui float %325 to i16
  br label %327

327:                                              ; preds = %319, %322, %324
  %328 = phi i16 [ %326, %324 ], [ 0, %319 ], [ -1, %322 ]
  %329 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 3
  store i16 %328, ptr %329, align 2, !tbaa !96
  %330 = load i32, ptr %107, align 4, !tbaa !97
  %331 = icmp eq i32 %330, 12
  br i1 %331, label %332, label %519

332:                                              ; preds = %327
  %333 = load i32, ptr %108, align 4, !tbaa !97
  %334 = icmp eq i32 %333, 12
  br i1 %334, label %335, label %519

335:                                              ; preds = %332
  %336 = getelementptr i16, ptr %214, i64 %244
  br i1 %226, label %360, label %337

337:                                              ; preds = %335
  %338 = load i64, ptr %199, align 8, !tbaa !116
  %339 = load i64, ptr %97, align 8, !tbaa !86
  br label %340

340:                                              ; preds = %337, %354
  %341 = phi i64 [ 0, %337 ], [ %358, %354 ]
  %342 = phi float [ %250, %337 ], [ %357, %354 ]
  %343 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %341
  %344 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %341, i32 1
  %345 = load i64, ptr %344, align 8, !tbaa !116
  %346 = sub nsw i64 %345, %338
  %347 = mul i64 %346, %339
  %348 = load float, ptr %343, align 8, !tbaa !118
  %349 = getelementptr i16, ptr %336, i64 %347
  %350 = icmp eq ptr %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %340
  %352 = load i16, ptr %349, align 2, !tbaa !100
  %353 = zext i16 %352 to i32
  br label %354

354:                                              ; preds = %340, %351
  %355 = phi i32 [ %353, %351 ], [ 0, %340 ]
  %356 = sitofp i32 %355 to float
  %357 = call float @llvm.fmuladd.f32(float %348, float %356, float %342)
  %358 = add nuw nsw i64 %341, 1
  %359 = icmp eq i64 %358, %176
  br i1 %359, label %360, label %340, !llvm.loop !135

360:                                              ; preds = %354, %335
  %361 = phi float [ %250, %335 ], [ %357, %354 ]
  br i1 %227, label %519, label %362

362:                                              ; preds = %360
  %363 = getelementptr inbounds i16, ptr %215, i64 %244
  %364 = fcmp ugt float %361, 0.000000e+00
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = fcmp ult float %361, 6.553500e+04
  br i1 %366, label %367, label %370

367:                                              ; preds = %365
  %368 = fadd float %361, 5.000000e-01
  %369 = fptoui float %368 to i16
  br label %370

370:                                              ; preds = %362, %365, %367
  %371 = phi i16 [ %369, %367 ], [ 0, %362 ], [ -1, %365 ]
  store i16 %371, ptr %363, align 2, !tbaa !100
  br label %519

372:                                              ; preds = %252, %372
  %373 = phi double [ 0.000000e+00, %252 ], [ %409, %372 ]
  %374 = phi i64 [ 0, %252 ], [ %410, %372 ]
  %375 = phi float [ %246, %252 ], [ %398, %372 ]
  %376 = phi float [ %247, %252 ], [ %402, %372 ]
  %377 = phi float [ %248, %252 ], [ %405, %372 ]
  %378 = phi float [ %249, %252 ], [ %407, %372 ]
  %379 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %374
  %380 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %374, i32 1
  %381 = load i64, ptr %380, align 8, !tbaa !116
  %382 = sub nsw i64 %381, %253
  %383 = mul i64 %382, %254
  %384 = load float, ptr %379, align 8, !tbaa !118
  %385 = fpext float %384 to double
  %386 = fmul double %385, 0x3EF0001000100010
  %387 = getelementptr %struct._PixelPacket, ptr %207, i64 %383
  %388 = getelementptr %struct._PixelPacket, ptr %387, i64 %244
  %389 = getelementptr %struct._PixelPacket, ptr %387, i64 %244, i32 3
  %390 = load i16, ptr %389, align 2, !tbaa !96
  %391 = xor i16 %390, -1
  %392 = uitofp i16 %391 to double
  %393 = fmul double %386, %392
  %394 = fptrunc double %393 to float
  %395 = getelementptr %struct._PixelPacket, ptr %387, i64 %244, i32 2
  %396 = load i16, ptr %395, align 2, !tbaa !90
  %397 = uitofp i16 %396 to float
  %398 = call float @llvm.fmuladd.f32(float %394, float %397, float %375)
  %399 = getelementptr %struct._PixelPacket, ptr %387, i64 %244, i32 1
  %400 = load i16, ptr %399, align 2, !tbaa !92
  %401 = uitofp i16 %400 to float
  %402 = call float @llvm.fmuladd.f32(float %394, float %401, float %376)
  %403 = load i16, ptr %388, align 2, !tbaa !94
  %404 = uitofp i16 %403 to float
  %405 = call float @llvm.fmuladd.f32(float %394, float %404, float %377)
  %406 = uitofp i16 %390 to float
  %407 = call float @llvm.fmuladd.f32(float %384, float %406, float %378)
  %408 = fpext float %394 to double
  %409 = fadd double %373, %408
  %410 = add nuw nsw i64 %374, 1
  %411 = icmp eq i64 %410, %176
  br i1 %411, label %412, label %372, !llvm.loop !136

412:                                              ; preds = %372, %251
  %413 = phi float [ %249, %251 ], [ %407, %372 ]
  %414 = phi float [ %248, %251 ], [ %405, %372 ]
  %415 = phi float [ %247, %251 ], [ %402, %372 ]
  %416 = phi float [ %246, %251 ], [ %398, %372 ]
  %417 = phi double [ 0.000000e+00, %251 ], [ %409, %372 ]
  %418 = fcmp olt double %417, 0.000000e+00
  %419 = select i1 %418, double 0.000000e+00, double %417
  %420 = fcmp ult double %419, 1.000000e-15
  %421 = fdiv double 1.000000e+00, %419
  %422 = select i1 %420, double 0x430C6BF52633FFFF, double %421
  %423 = fpext float %416 to double
  %424 = fmul double %422, %423
  %425 = fptrunc double %424 to float
  %426 = fcmp ugt float %425, 0.000000e+00
  br i1 %426, label %427, label %432

427:                                              ; preds = %412
  %428 = fcmp ult float %425, 6.553500e+04
  br i1 %428, label %429, label %432

429:                                              ; preds = %427
  %430 = fadd float %425, 5.000000e-01
  %431 = fptoui float %430 to i16
  br label %432

432:                                              ; preds = %412, %427, %429
  %433 = phi i16 [ %431, %429 ], [ 0, %412 ], [ -1, %427 ]
  %434 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 2
  store i16 %433, ptr %434, align 2, !tbaa !90
  %435 = fpext float %415 to double
  %436 = fmul double %422, %435
  %437 = fptrunc double %436 to float
  %438 = fcmp ugt float %437, 0.000000e+00
  br i1 %438, label %439, label %444

439:                                              ; preds = %432
  %440 = fcmp ult float %437, 6.553500e+04
  br i1 %440, label %441, label %444

441:                                              ; preds = %439
  %442 = fadd float %437, 5.000000e-01
  %443 = fptoui float %442 to i16
  br label %444

444:                                              ; preds = %432, %439, %441
  %445 = phi i16 [ %443, %441 ], [ 0, %432 ], [ -1, %439 ]
  %446 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 1
  store i16 %445, ptr %446, align 2, !tbaa !92
  %447 = fpext float %414 to double
  %448 = fmul double %422, %447
  %449 = fptrunc double %448 to float
  %450 = fcmp ugt float %449, 0.000000e+00
  br i1 %450, label %451, label %456

451:                                              ; preds = %444
  %452 = fcmp ult float %449, 6.553500e+04
  br i1 %452, label %453, label %456

453:                                              ; preds = %451
  %454 = fadd float %449, 5.000000e-01
  %455 = fptoui float %454 to i16
  br label %456

456:                                              ; preds = %444, %451, %453
  %457 = phi i16 [ %455, %453 ], [ 0, %444 ], [ -1, %451 ]
  store i16 %457, ptr %245, align 2, !tbaa !94
  %458 = fcmp ugt float %413, 0.000000e+00
  br i1 %458, label %459, label %464

459:                                              ; preds = %456
  %460 = fcmp ult float %413, 6.553500e+04
  br i1 %460, label %461, label %464

461:                                              ; preds = %459
  %462 = fadd float %413, 5.000000e-01
  %463 = fptoui float %462 to i16
  br label %464

464:                                              ; preds = %456, %459, %461
  %465 = phi i16 [ %463, %461 ], [ 0, %456 ], [ -1, %459 ]
  %466 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 0, i32 3
  store i16 %465, ptr %466, align 2, !tbaa !96
  %467 = load i32, ptr %105, align 4, !tbaa !97
  %468 = icmp eq i32 %467, 12
  br i1 %468, label %469, label %519

469:                                              ; preds = %464
  %470 = load i32, ptr %106, align 4, !tbaa !97
  %471 = icmp eq i32 %470, 12
  br i1 %471, label %472, label %519

472:                                              ; preds = %469
  br i1 %222, label %504, label %473

473:                                              ; preds = %472
  %474 = load i64, ptr %199, align 8, !tbaa !116
  %475 = load i64, ptr %97, align 8, !tbaa !86
  br label %476

476:                                              ; preds = %473, %498
  %477 = phi i64 [ 0, %473 ], [ %502, %498 ]
  %478 = phi float [ %250, %473 ], [ %501, %498 ]
  %479 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %477
  %480 = getelementptr inbounds %struct._ContributionInfo, ptr %138, i64 %477, i32 1
  %481 = load i64, ptr %480, align 8, !tbaa !116
  %482 = sub nsw i64 %481, %474
  %483 = mul i64 %482, %475
  %484 = add i64 %483, %244
  %485 = load float, ptr %479, align 8, !tbaa !118
  %486 = fpext float %485 to double
  %487 = fmul double %486, 0x3EF0001000100010
  %488 = getelementptr inbounds %struct._PixelPacket, ptr %207, i64 %484, i32 3
  %489 = load i16, ptr %488, align 2, !tbaa !96
  %490 = xor i16 %489, -1
  %491 = uitofp i16 %490 to double
  %492 = fmul double %487, %491
  %493 = fptrunc double %492 to float
  br i1 %223, label %498, label %494

494:                                              ; preds = %476
  %495 = getelementptr inbounds i16, ptr %214, i64 %484
  %496 = load i16, ptr %495, align 2, !tbaa !100
  %497 = zext i16 %496 to i32
  br label %498

498:                                              ; preds = %476, %494
  %499 = phi i32 [ %497, %494 ], [ 0, %476 ]
  %500 = sitofp i32 %499 to float
  %501 = call float @llvm.fmuladd.f32(float %493, float %500, float %478)
  %502 = add nuw nsw i64 %477, 1
  %503 = icmp eq i64 %502, %176
  br i1 %503, label %504, label %476, !llvm.loop !137

504:                                              ; preds = %498, %472
  %505 = phi float [ %250, %472 ], [ %501, %498 ]
  br i1 %224, label %519, label %506

506:                                              ; preds = %504
  %507 = getelementptr inbounds i16, ptr %215, i64 %244
  %508 = fpext float %505 to double
  %509 = fmul double %422, %508
  %510 = fptrunc double %509 to float
  %511 = fcmp ugt float %510, 0.000000e+00
  br i1 %511, label %512, label %517

512:                                              ; preds = %506
  %513 = fcmp ult float %510, 6.553500e+04
  br i1 %513, label %514, label %517

514:                                              ; preds = %512
  %515 = fadd float %510, 5.000000e-01
  %516 = fptoui float %515 to i16
  br label %517

517:                                              ; preds = %506, %512, %514
  %518 = phi i16 [ %516, %514 ], [ 0, %506 ], [ -1, %512 ]
  store i16 %518, ptr %507, align 2, !tbaa !100
  br label %519

519:                                              ; preds = %464, %469, %517, %504, %327, %332, %370, %360
  br i1 %229, label %520, label %538

520:                                              ; preds = %519
  %521 = load i32, ptr %1, align 8, !tbaa !98
  %522 = icmp eq i32 %521, 2
  br i1 %522, label %523, label %538

523:                                              ; preds = %520
  %524 = getelementptr inbounds i16, ptr %215, i64 %244
  br i1 %230, label %538, label %525

525:                                              ; preds = %523
  %526 = load i64, ptr %242, align 8, !tbaa !116
  %527 = load i64, ptr %199, align 8, !tbaa !116
  %528 = sub nsw i64 %526, %527
  %529 = load i64, ptr %97, align 8, !tbaa !86
  %530 = mul i64 %528, %529
  %531 = getelementptr i16, ptr %214, i64 %530
  %532 = getelementptr i16, ptr %531, i64 %244
  %533 = icmp eq ptr %532, null
  br i1 %533, label %536, label %534

534:                                              ; preds = %525
  %535 = load i16, ptr %532, align 2, !tbaa !100
  br label %536

536:                                              ; preds = %525, %534
  %537 = phi i16 [ %535, %534 ], [ 0, %525 ]
  store i16 %537, ptr %524, align 2, !tbaa !100
  br label %538

538:                                              ; preds = %523, %536, %520, %519
  %539 = getelementptr inbounds %struct._PixelPacket, ptr %245, i64 1
  %540 = add nuw nsw i64 %244, 1
  %541 = icmp eq i64 %540, %216
  br i1 %541, label %542, label %243, !llvm.loop !138

542:                                              ; preds = %538, %213
  %543 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %77, ptr noundef %6) #25
  %544 = icmp ne i32 %543, 0
  %545 = zext i1 %544 to i32
  %546 = load ptr, ptr %109, align 8, !tbaa !102
  %547 = icmp eq ptr %546, null
  br i1 %547, label %557, label %548

548:                                              ; preds = %542
  %549 = load i64, ptr %5, align 8, !tbaa !109
  %550 = add nsw i64 %549, 1
  store i64 %550, ptr %5, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %8) #21
  %551 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %8, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.30, ptr noundef nonnull %110) #21
  %552 = load ptr, ptr %109, align 8, !tbaa !102
  %553 = load ptr, ptr %111, align 8, !tbaa !103
  %554 = call i32 %552(ptr noundef nonnull %8, i64 noundef %549, i64 noundef %4, ptr noundef %553) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %8) #21
  %555 = icmp eq i32 %554, 0
  %556 = select i1 %555, i32 0, i32 %545
  br label %557

557:                                              ; preds = %542, %548, %198, %112
  %558 = phi i32 [ 0, %112 ], [ 0, %198 ], [ %556, %548 ], [ %545, %542 ]
  %559 = add nuw nsw i64 %114, 1
  %560 = load i64, ptr %78, align 8, !tbaa !87
  %561 = icmp slt i64 %559, %560
  br i1 %561, label %112, label %562, !llvm.loop !139

562:                                              ; preds = %557, %74
  %563 = phi i32 [ 1, %74 ], [ %558, %557 ]
  %564 = call ptr @DestroyCacheView(ptr noundef %77) #21
  %565 = call ptr @DestroyCacheView(ptr noundef %76) #21
  %566 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %567 = icmp sgt i64 %566, 0
  br i1 %567, label %568, label %579

568:                                              ; preds = %562, %575
  %569 = phi i64 [ %576, %575 ], [ 0, %562 ]
  %570 = getelementptr inbounds ptr, ptr %69, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !80
  %572 = icmp eq ptr %571, null
  br i1 %572, label %575, label %573

573:                                              ; preds = %568
  %574 = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %571) #21
  store ptr %574, ptr %570, align 8, !tbaa !80
  br label %575

575:                                              ; preds = %573, %568
  %576 = add nuw nsw i64 %569, 1
  %577 = call i64 @GetMagickResourceLimit(i32 noundef 6) #21
  %578 = icmp slt i64 %576, %577
  br i1 %578, label %568, label %579, !llvm.loop !115

579:                                              ; preds = %575, %562
  %580 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %69) #21
  br label %581

581:                                              ; preds = %579, %71, %29
  %582 = phi i32 [ 0, %29 ], [ 0, %71 ], [ %563, %579 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #21
  ret i32 %582
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SampleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._GeometryInfo, align 8
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3130, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #21
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq i64 %1, 0
  %15 = icmp eq i64 %2, 0
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %19 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3134, i32 noundef 465, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, ptr noundef nonnull %18) #21
  br label %195

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !86
  %23 = icmp eq i64 %22, %1
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !87
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #21
  br label %195

30:                                               ; preds = %24, %20
  %31 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %195, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @GetImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.35) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  %37 = call i32 @ParseGeometry(ptr noundef nonnull %34, ptr noundef nonnull %6) #21
  %38 = call i32 @ParseGeometry(ptr noundef nonnull %34, ptr noundef nonnull %6) #21
  %39 = load double, ptr %6, align 8, !tbaa !140
  %40 = fdiv double %39, 1.000000e+02
  %41 = fadd double %40, -1.000000e-15
  %42 = and i32 %38, 8
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct._GeometryInfo, ptr %6, i64 0, i32 1
  %45 = load double, ptr %44, align 8
  %46 = fdiv double %45, 1.000000e+02
  %47 = fadd double %46, -1.000000e-15
  %48 = select i1 %43, double %41, double %47
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  br label %49

49:                                               ; preds = %36, %33
  %50 = phi double [ %48, %36 ], [ 0x3FDFFFFFFFFFFFEE, %33 ]
  %51 = phi double [ %41, %36 ], [ 0x3FDFFFFFFFFFFFEE, %33 ]
  %52 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !86
  %54 = call ptr @AcquireQuantumMemory(i64 noundef %53, i64 noundef 8) #26
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i64, ptr %52, align 8, !tbaa !86
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %63, label %78

59:                                               ; preds = %49
  %60 = call ptr @DestroyImage(ptr noundef nonnull %31) #21
  %61 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %62 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3172, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %61) #21
  br label %195

63:                                               ; preds = %56, %63
  %64 = phi i64 [ %76, %63 ], [ %57, %56 ]
  %65 = phi i64 [ %75, %63 ], [ 0, %56 ]
  %66 = sitofp i64 %65 to double
  %67 = fadd double %51, %66
  %68 = load i64, ptr %21, align 8, !tbaa !86
  %69 = uitofp i64 %68 to double
  %70 = fmul double %67, %69
  %71 = uitofp i64 %64 to double
  %72 = fdiv double %70, %71
  %73 = fptosi double %72 to i64
  %74 = getelementptr inbounds i64, ptr %54, i64 %65
  store i64 %73, ptr %74, align 8, !tbaa !142
  %75 = add nuw nsw i64 %65, 1
  %76 = load i64, ptr %52, align 8, !tbaa !86
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %63, label %78, !llvm.loop !143

78:                                               ; preds = %63, %56
  %79 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #21
  %80 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %31, ptr noundef %3) #21
  %81 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !87
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %188

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %88 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %89 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %90

90:                                               ; preds = %84, %172
  %91 = phi i64 [ %82, %84 ], [ %176, %172 ]
  %92 = phi i32 [ 1, %84 ], [ %174, %172 ]
  %93 = phi i64 [ 0, %84 ], [ %173, %172 ]
  %94 = phi i64 [ 0, %84 ], [ %175, %172 ]
  %95 = icmp eq i32 %92, 0
  br i1 %95, label %172, label %96

96:                                               ; preds = %90
  %97 = sitofp i64 %94 to double
  %98 = fadd double %50, %97
  %99 = load i64, ptr %85, align 8, !tbaa !87
  %100 = uitofp i64 %99 to double
  %101 = fmul double %98, %100
  %102 = uitofp i64 %91 to double
  %103 = fdiv double %101, %102
  %104 = fptosi double %103 to i64
  %105 = load i64, ptr %21, align 8, !tbaa !86
  %106 = call ptr @GetCacheViewVirtualPixels(ptr noundef %79, i64 noundef 0, i64 noundef %104, i64 noundef %105, i64 noundef 1, ptr noundef %3) #25
  %107 = load i64, ptr %52, align 8, !tbaa !86
  %108 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %80, i64 noundef 0, i64 noundef %94, i64 noundef %107, i64 noundef 1, ptr noundef %3) #25
  %109 = icmp eq ptr %106, null
  %110 = icmp eq ptr %108, null
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %172, label %112

112:                                              ; preds = %96
  %113 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %79) #21
  %114 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %80) #21
  %115 = load i64, ptr %52, align 8, !tbaa !86
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %112, %117
  %118 = phi i64 [ %125, %117 ], [ 0, %112 ]
  %119 = phi ptr [ %120, %117 ], [ %108, %112 ]
  %120 = getelementptr inbounds %struct._PixelPacket, ptr %119, i64 1
  %121 = getelementptr inbounds i64, ptr %54, i64 %118
  %122 = load i64, ptr %121, align 8, !tbaa !142
  %123 = getelementptr inbounds %struct._PixelPacket, ptr %106, i64 %122
  %124 = load i64, ptr %123, align 2
  store i64 %124, ptr %119, align 2
  %125 = add nuw nsw i64 %118, 1
  %126 = load i64, ptr %52, align 8, !tbaa !86
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %117, label %128, !llvm.loop !144

128:                                              ; preds = %117, %112
  %129 = phi i64 [ %115, %112 ], [ %126, %117 ]
  %130 = load i32, ptr %0, align 8, !tbaa !98
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %86, align 4, !tbaa !97
  %134 = icmp eq i32 %133, 12
  %135 = icmp sgt i64 %129, 0
  %136 = and i1 %134, %135
  br i1 %136, label %139, label %157

137:                                              ; preds = %128
  %138 = icmp sgt i64 %129, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %132, %137
  %140 = icmp eq ptr %114, null
  %141 = icmp eq ptr %113, null
  %142 = call i64 @llvm.smax.i64(i64 %129, i64 1)
  br label %143

143:                                              ; preds = %139, %154
  %144 = phi i64 [ 0, %139 ], [ %155, %154 ]
  %145 = getelementptr inbounds i16, ptr %114, i64 %144
  br i1 %140, label %154, label %146

146:                                              ; preds = %143
  br i1 %141, label %152, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds i64, ptr %54, i64 %144
  %149 = load i64, ptr %148, align 8, !tbaa !142
  %150 = getelementptr inbounds i16, ptr %113, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !100
  br label %152

152:                                              ; preds = %146, %147
  %153 = phi i16 [ %151, %147 ], [ 0, %146 ]
  store i16 %153, ptr %145, align 2, !tbaa !100
  br label %154

154:                                              ; preds = %143, %152
  %155 = add nuw nsw i64 %144, 1
  %156 = icmp eq i64 %155, %142
  br i1 %156, label %157, label %143, !llvm.loop !145

157:                                              ; preds = %154, %137, %132
  %158 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %80, ptr noundef %3) #25
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = load ptr, ptr %87, align 8, !tbaa !102
  %162 = icmp eq ptr %161, null
  br i1 %162, label %172, label %163

163:                                              ; preds = %157
  %164 = add nsw i64 %93, 1
  %165 = load i64, ptr %85, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #21
  %166 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.36, ptr noundef nonnull %88) #21
  %167 = load ptr, ptr %87, align 8, !tbaa !102
  %168 = load ptr, ptr %89, align 8, !tbaa !103
  %169 = call i32 %167(ptr noundef nonnull %5, i64 noundef %93, i64 noundef %165, ptr noundef %168) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #21
  %170 = icmp eq i32 %169, 0
  %171 = select i1 %170, i32 0, i32 %160
  br label %172

172:                                              ; preds = %157, %163, %96, %90
  %173 = phi i64 [ %93, %90 ], [ %93, %96 ], [ %164, %163 ], [ %93, %157 ]
  %174 = phi i32 [ 0, %90 ], [ 0, %96 ], [ %171, %163 ], [ %160, %157 ]
  %175 = add nuw nsw i64 %94, 1
  %176 = load i64, ptr %81, align 8, !tbaa !87
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %90, label %178, !llvm.loop !146

178:                                              ; preds = %172
  %179 = icmp eq i32 %174, 0
  %180 = call ptr @DestroyCacheView(ptr noundef %79) #21
  %181 = call ptr @DestroyCacheView(ptr noundef %80) #21
  %182 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %54) #21
  %183 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %184 = load i32, ptr %183, align 8, !tbaa !111
  %185 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 77
  store i32 %184, ptr %185, align 8, !tbaa !111
  br i1 %179, label %186, label %195

186:                                              ; preds = %178
  %187 = call ptr @DestroyImage(ptr noundef nonnull %31) #21
  br label %195

188:                                              ; preds = %78
  %189 = call ptr @DestroyCacheView(ptr noundef %79) #21
  %190 = call ptr @DestroyCacheView(ptr noundef %80) #21
  %191 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %54) #21
  %192 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %193 = load i32, ptr %192, align 8, !tbaa !111
  %194 = getelementptr inbounds %struct._Image, ptr %31, i64 0, i32 77
  store i32 %193, ptr %194, align 8, !tbaa !111
  br label %195

195:                                              ; preds = %188, %178, %186, %30, %59, %28, %17
  %196 = phi ptr [ null, %17 ], [ %29, %28 ], [ null, %59 ], [ null, %30 ], [ %187, %186 ], [ %31, %178 ], [ %31, %188 ]
  ret ptr %196
}

declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local ptr @ScaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct._MagickPixelPacket, align 8
  %7 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #21
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3331, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #21
  br label %14

14:                                               ; preds = %11, %4
  %15 = icmp eq i64 %1, 0
  %16 = icmp eq i64 %2, 0
  %17 = or i1 %15, %16
  br i1 %17, label %965, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %20 = load i64, ptr %19, align 8, !tbaa !86
  %21 = icmp eq i64 %20, %1
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %24 = load i64, ptr %23, align 8, !tbaa !87
  %25 = icmp eq i64 %24, %2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #21
  br label %965

28:                                               ; preds = %22, %18
  %29 = tail call ptr @CloneImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %965, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %29, i32 noundef 1) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %35) #21
  %36 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #21
  br label %965

37:                                               ; preds = %31
  %38 = load i64, ptr %19, align 8, !tbaa !86
  %39 = tail call ptr @AcquireQuantumMemory(i64 noundef %38, i64 noundef 56) #26
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !87
  %42 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !87
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i64, ptr %19, align 8, !tbaa !86
  %47 = tail call ptr @AcquireQuantumMemory(i64 noundef %46, i64 noundef 56) #26
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %47, %45 ], [ %39, %37 ]
  %50 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 7
  %51 = load i64, ptr %50, align 8, !tbaa !86
  %52 = tail call ptr @AcquireQuantumMemory(i64 noundef %51, i64 noundef 56) #26
  %53 = load i64, ptr %19, align 8, !tbaa !86
  %54 = tail call ptr @AcquireQuantumMemory(i64 noundef %53, i64 noundef 56) #26
  %55 = icmp eq ptr %49, null
  %56 = icmp eq ptr %52, null
  %57 = select i1 %55, i1 true, i1 %56
  %58 = icmp eq ptr %39, null
  %59 = select i1 %57, i1 true, i1 %58
  %60 = icmp eq ptr %54, null
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = tail call ptr @DestroyImage(ptr noundef nonnull %29) #21
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %65 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3366, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %64) #21
  br label %965

66:                                               ; preds = %48
  %67 = load i64, ptr %42, align 8, !tbaa !87
  %68 = load i64, ptr %40, align 8, !tbaa !87
  %69 = load i64, ptr %19, align 8, !tbaa !86
  %70 = mul i64 %69, 56
  %71 = tail call ptr @ResetMagickMemory(ptr noundef %54, i32 noundef 0, i64 noundef %70) #21
  call void @GetMagickPixelPacket(ptr noundef %0, ptr noundef nonnull %6) #21
  %72 = call ptr @ResetMagickMemory(ptr noundef nonnull %7, i32 noundef 0, i64 noundef 56) #21
  %73 = call ptr @AcquireVirtualCacheView(ptr noundef %0, ptr noundef %3) #21
  %74 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %29, ptr noundef %3) #21
  %75 = load i64, ptr %42, align 8, !tbaa !87
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %947

77:                                               ; preds = %66
  %78 = uitofp i64 %67 to double
  %79 = uitofp i64 %68 to double
  %80 = fdiv double %78, %79
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %82 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %83 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %87 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %88 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %89 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %90 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %91 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %93 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %94 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %95 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %96 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %97 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %98 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %99 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %100 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %101 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %102 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %103 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %104 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %106 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %107 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %108 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %109 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %111 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %112 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %113 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %114 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %115 = ptrtoint ptr %52 to i64
  %116 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 5
  %117 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 6
  %118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 7
  %119 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %120 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 8
  %121 = getelementptr inbounds %struct._MagickPixelPacket, ptr %6, i64 0, i32 9
  %122 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %123 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 6
  %124 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %125 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %126 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  br label %131

127:                                              ; preds = %936
  %128 = add nuw nsw i64 %132, 1
  %129 = load i64, ptr %42, align 8, !tbaa !87
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %945, !llvm.loop !147

131:                                              ; preds = %77, %127
  %132 = phi i64 [ 0, %77 ], [ %128, %127 ]
  %133 = phi i64 [ 0, %77 ], [ %942, %127 ]
  %134 = phi i64 [ 0, %77 ], [ %941, %127 ]
  %135 = phi double [ 1.000000e+00, %77 ], [ %940, %127 ]
  %136 = phi double [ %80, %77 ], [ %939, %127 ]
  %137 = phi i32 [ 1, %77 ], [ %938, %127 ]
  %138 = phi i32 [ 1, %77 ], [ %937, %127 ]
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %936, label %140

140:                                              ; preds = %131
  %141 = load i64, ptr %50, align 8, !tbaa !86
  %142 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %74, i64 noundef 0, i64 noundef %132, i64 noundef %141, i64 noundef 1, ptr noundef %3) #25
  %143 = icmp eq ptr %142, null
  br i1 %143, label %936, label %144

144:                                              ; preds = %140
  %145 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %74) #21
  %146 = load i64, ptr %42, align 8, !tbaa !87
  %147 = load i64, ptr %40, align 8, !tbaa !87
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = fcmp olt double %136, %135
  br i1 %150, label %151, label %344

151:                                              ; preds = %149
  %152 = icmp eq ptr %145, null
  br label %209

153:                                              ; preds = %144
  %154 = add nsw i64 %134, 1
  %155 = load i64, ptr %19, align 8, !tbaa !86
  %156 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %134, i64 noundef %155, i64 noundef 1, ptr noundef %3) #25
  %157 = icmp eq ptr %156, null
  br i1 %157, label %936, label %158

158:                                              ; preds = %153
  %159 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #21
  %160 = load i64, ptr %19, align 8, !tbaa !86
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %500

162:                                              ; preds = %158
  %163 = load i32, ptr %93, align 8, !tbaa !108
  %164 = icmp eq i32 %163, 0
  %165 = icmp eq ptr %159, null
  br label %166

166:                                              ; preds = %162, %205
  %167 = phi i64 [ 0, %162 ], [ %207, %205 ]
  %168 = phi ptr [ %156, %162 ], [ %206, %205 ]
  %169 = phi float [ 1.000000e+00, %162 ], [ %178, %205 ]
  br i1 %164, label %177, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 0, i32 3
  %172 = load i16, ptr %171, align 2, !tbaa !96
  %173 = xor i16 %172, -1
  %174 = uitofp i16 %173 to double
  %175 = fmul double %174, 0x3EF0001000100010
  %176 = fptrunc double %175 to float
  br label %177

177:                                              ; preds = %170, %166
  %178 = phi float [ %176, %170 ], [ %169, %166 ]
  %179 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 0, i32 2
  %180 = load i16, ptr %179, align 2, !tbaa !90
  %181 = uitofp i16 %180 to float
  %182 = fmul float %178, %181
  %183 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %167, i32 5
  store float %182, ptr %183, align 8, !tbaa !88
  %184 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 0, i32 1
  %185 = load i16, ptr %184, align 2, !tbaa !92
  %186 = uitofp i16 %185 to float
  %187 = fmul float %178, %186
  %188 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %167, i32 6
  store float %187, ptr %188, align 4, !tbaa !91
  %189 = load i16, ptr %168, align 2, !tbaa !94
  %190 = uitofp i16 %189 to float
  %191 = fmul float %178, %190
  %192 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %167, i32 7
  store float %191, ptr %192, align 8, !tbaa !93
  br i1 %164, label %198, label %193

193:                                              ; preds = %177
  %194 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 0, i32 3
  %195 = load i16, ptr %194, align 2, !tbaa !96
  %196 = uitofp i16 %195 to float
  %197 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %167, i32 8
  store float %196, ptr %197, align 4, !tbaa !95
  br label %198

198:                                              ; preds = %193, %177
  br i1 %165, label %205, label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds i16, ptr %159, i64 %167
  %201 = load i16, ptr %200, align 2, !tbaa !100
  %202 = uitofp i16 %201 to float
  %203 = fmul float %178, %202
  %204 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %167, i32 9
  store float %203, ptr %204, align 8, !tbaa !99
  br label %205

205:                                              ; preds = %199, %198
  %206 = getelementptr inbounds %struct._PixelPacket, ptr %168, i64 1
  %207 = add nuw nsw i64 %167, 1
  %208 = icmp eq i64 %207, %160
  br i1 %208, label %500, label %166, !llvm.loop !148

209:                                              ; preds = %151, %336
  %210 = phi i64 [ %133, %151 ], [ %282, %336 ]
  %211 = phi i64 [ %134, %151 ], [ %281, %336 ]
  %212 = phi double [ %135, %151 ], [ %337, %336 ]
  %213 = phi double [ %136, %151 ], [ %342, %336 ]
  %214 = phi float [ 1.000000e+00, %151 ], [ %280, %336 ]
  %215 = phi i32 [ %138, %151 ], [ 1, %336 ]
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %279, label %217

217:                                              ; preds = %209
  %218 = load i64, ptr %40, align 8, !tbaa !87
  %219 = icmp slt i64 %210, %218
  br i1 %219, label %220, label %279

220:                                              ; preds = %217
  %221 = add nsw i64 %211, 1
  %222 = load i64, ptr %19, align 8, !tbaa !86
  %223 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %211, i64 noundef %222, i64 noundef 1, ptr noundef %3) #25
  %224 = icmp eq ptr %223, null
  br i1 %224, label %344, label %225

225:                                              ; preds = %220
  %226 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #21
  %227 = load i64, ptr %19, align 8, !tbaa !86
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %276

229:                                              ; preds = %225
  %230 = load i32, ptr %81, align 8, !tbaa !108
  %231 = icmp eq i32 %230, 0
  %232 = icmp eq ptr %226, null
  br label %233

233:                                              ; preds = %229, %272
  %234 = phi i64 [ 0, %229 ], [ %274, %272 ]
  %235 = phi ptr [ %223, %229 ], [ %273, %272 ]
  %236 = phi float [ %214, %229 ], [ %245, %272 ]
  br i1 %231, label %244, label %237

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct._PixelPacket, ptr %235, i64 0, i32 3
  %239 = load i16, ptr %238, align 2, !tbaa !96
  %240 = xor i16 %239, -1
  %241 = uitofp i16 %240 to double
  %242 = fmul double %241, 0x3EF0001000100010
  %243 = fptrunc double %242 to float
  br label %244

244:                                              ; preds = %237, %233
  %245 = phi float [ %243, %237 ], [ %236, %233 ]
  %246 = getelementptr inbounds %struct._PixelPacket, ptr %235, i64 0, i32 2
  %247 = load i16, ptr %246, align 2, !tbaa !90
  %248 = uitofp i16 %247 to float
  %249 = fmul float %245, %248
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %234, i32 5
  store float %249, ptr %250, align 8, !tbaa !88
  %251 = getelementptr inbounds %struct._PixelPacket, ptr %235, i64 0, i32 1
  %252 = load i16, ptr %251, align 2, !tbaa !92
  %253 = uitofp i16 %252 to float
  %254 = fmul float %245, %253
  %255 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %234, i32 6
  store float %254, ptr %255, align 4, !tbaa !91
  %256 = load i16, ptr %235, align 2, !tbaa !94
  %257 = uitofp i16 %256 to float
  %258 = fmul float %245, %257
  %259 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %234, i32 7
  store float %258, ptr %259, align 8, !tbaa !93
  br i1 %231, label %265, label %260

260:                                              ; preds = %244
  %261 = getelementptr inbounds %struct._PixelPacket, ptr %235, i64 0, i32 3
  %262 = load i16, ptr %261, align 2, !tbaa !96
  %263 = uitofp i16 %262 to float
  %264 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %234, i32 8
  store float %263, ptr %264, align 4, !tbaa !95
  br label %265

265:                                              ; preds = %260, %244
  br i1 %232, label %272, label %266

266:                                              ; preds = %265
  %267 = getelementptr inbounds i16, ptr %226, i64 %234
  %268 = load i16, ptr %267, align 2, !tbaa !100
  %269 = uitofp i16 %268 to float
  %270 = fmul float %245, %269
  %271 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %234, i32 9
  store float %270, ptr %271, align 8, !tbaa !99
  br label %272

272:                                              ; preds = %266, %265
  %273 = getelementptr inbounds %struct._PixelPacket, ptr %235, i64 1
  %274 = add nuw nsw i64 %234, 1
  %275 = icmp eq i64 %274, %227
  br i1 %275, label %276, label %233, !llvm.loop !149

276:                                              ; preds = %272, %225
  %277 = phi float [ %214, %225 ], [ %245, %272 ]
  %278 = add nsw i64 %210, 1
  br label %279

279:                                              ; preds = %276, %217, %209
  %280 = phi float [ %277, %276 ], [ %214, %217 ], [ %214, %209 ]
  %281 = phi i64 [ %221, %276 ], [ %211, %217 ], [ %211, %209 ]
  %282 = phi i64 [ %278, %276 ], [ %210, %217 ], [ %210, %209 ]
  %283 = load i64, ptr %19, align 8, !tbaa !86
  %284 = icmp sgt i64 %283, 0
  br i1 %284, label %285, label %336

285:                                              ; preds = %279
  %286 = load i32, ptr %82, align 8, !tbaa !108
  %287 = icmp eq i32 %286, 0
  br label %288

288:                                              ; preds = %285, %333
  %289 = phi i64 [ 0, %285 ], [ %334, %333 ]
  %290 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %289, i32 5
  %291 = load float, ptr %290, align 8, !tbaa !88
  %292 = fpext float %291 to double
  %293 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %289, i32 5
  %294 = load float, ptr %293, align 8, !tbaa !88
  %295 = fpext float %294 to double
  %296 = call double @llvm.fmuladd.f64(double %213, double %292, double %295)
  %297 = fptrunc double %296 to float
  store float %297, ptr %293, align 8, !tbaa !88
  %298 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %289, i32 6
  %299 = load float, ptr %298, align 4, !tbaa !91
  %300 = fpext float %299 to double
  %301 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %289, i32 6
  %302 = load float, ptr %301, align 4, !tbaa !91
  %303 = fpext float %302 to double
  %304 = call double @llvm.fmuladd.f64(double %213, double %300, double %303)
  %305 = fptrunc double %304 to float
  store float %305, ptr %301, align 4, !tbaa !91
  %306 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %289, i32 7
  %307 = load float, ptr %306, align 8, !tbaa !93
  %308 = fpext float %307 to double
  %309 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %289, i32 7
  %310 = load float, ptr %309, align 8, !tbaa !93
  %311 = fpext float %310 to double
  %312 = call double @llvm.fmuladd.f64(double %213, double %308, double %311)
  %313 = fptrunc double %312 to float
  store float %313, ptr %309, align 8, !tbaa !93
  br i1 %287, label %323, label %314

314:                                              ; preds = %288
  %315 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %289, i32 8
  %316 = load float, ptr %315, align 4, !tbaa !95
  %317 = fpext float %316 to double
  %318 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %289, i32 8
  %319 = load float, ptr %318, align 4, !tbaa !95
  %320 = fpext float %319 to double
  %321 = call double @llvm.fmuladd.f64(double %213, double %317, double %320)
  %322 = fptrunc double %321 to float
  store float %322, ptr %318, align 4, !tbaa !95
  br label %323

323:                                              ; preds = %314, %288
  br i1 %152, label %333, label %324

324:                                              ; preds = %323
  %325 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %289, i32 9
  %326 = load float, ptr %325, align 8, !tbaa !99
  %327 = fpext float %326 to double
  %328 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %289, i32 9
  %329 = load float, ptr %328, align 8, !tbaa !99
  %330 = fpext float %329 to double
  %331 = call double @llvm.fmuladd.f64(double %213, double %327, double %330)
  %332 = fptrunc double %331 to float
  store float %332, ptr %328, align 8, !tbaa !99
  br label %333

333:                                              ; preds = %323, %324
  %334 = add nuw nsw i64 %289, 1
  %335 = icmp eq i64 %334, %283
  br i1 %335, label %336, label %288, !llvm.loop !150

336:                                              ; preds = %333, %279
  %337 = fsub double %212, %213
  %338 = load i64, ptr %42, align 8, !tbaa !87
  %339 = uitofp i64 %338 to double
  %340 = load i64, ptr %40, align 8, !tbaa !87
  %341 = uitofp i64 %340 to double
  %342 = fdiv double %339, %341
  %343 = fcmp olt double %342, %337
  br i1 %343, label %209, label %344, !llvm.loop !151

344:                                              ; preds = %336, %220, %149
  %345 = phi i32 [ %138, %149 ], [ 1, %220 ], [ 1, %336 ]
  %346 = phi float [ 1.000000e+00, %149 ], [ %280, %336 ], [ %214, %220 ]
  %347 = phi double [ %136, %149 ], [ %342, %336 ], [ %213, %220 ]
  %348 = phi double [ %135, %149 ], [ %337, %336 ], [ %212, %220 ]
  %349 = phi i64 [ %133, %149 ], [ %282, %336 ], [ %210, %220 ]
  %350 = phi i32 [ 1, %149 ], [ 1, %336 ], [ 0, %220 ]
  %351 = phi i64 [ %134, %149 ], [ %281, %336 ], [ %221, %220 ]
  %352 = icmp eq i32 %345, 0
  br i1 %352, label %415, label %353

353:                                              ; preds = %344
  %354 = load i64, ptr %40, align 8, !tbaa !87
  %355 = icmp slt i64 %349, %354
  br i1 %355, label %356, label %415

356:                                              ; preds = %353
  %357 = add nsw i64 %351, 1
  %358 = load i64, ptr %19, align 8, !tbaa !86
  %359 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %351, i64 noundef %358, i64 noundef 1, ptr noundef %3) #25
  %360 = icmp eq ptr %359, null
  br i1 %360, label %936, label %361

361:                                              ; preds = %356
  %362 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #21
  %363 = load i64, ptr %19, align 8, !tbaa !86
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %365, label %412

365:                                              ; preds = %361
  %366 = load i32, ptr %83, align 8, !tbaa !108
  %367 = icmp eq i32 %366, 0
  %368 = icmp eq ptr %362, null
  br label %369

369:                                              ; preds = %365, %408
  %370 = phi i64 [ 0, %365 ], [ %410, %408 ]
  %371 = phi ptr [ %359, %365 ], [ %409, %408 ]
  %372 = phi float [ %346, %365 ], [ %381, %408 ]
  br i1 %367, label %380, label %373

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 3
  %375 = load i16, ptr %374, align 2, !tbaa !96
  %376 = xor i16 %375, -1
  %377 = uitofp i16 %376 to double
  %378 = fmul double %377, 0x3EF0001000100010
  %379 = fptrunc double %378 to float
  br label %380

380:                                              ; preds = %373, %369
  %381 = phi float [ %379, %373 ], [ %372, %369 ]
  %382 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 2
  %383 = load i16, ptr %382, align 2, !tbaa !90
  %384 = uitofp i16 %383 to float
  %385 = fmul float %381, %384
  %386 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %370, i32 5
  store float %385, ptr %386, align 8, !tbaa !88
  %387 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 1
  %388 = load i16, ptr %387, align 2, !tbaa !92
  %389 = uitofp i16 %388 to float
  %390 = fmul float %381, %389
  %391 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %370, i32 6
  store float %390, ptr %391, align 4, !tbaa !91
  %392 = load i16, ptr %371, align 2, !tbaa !94
  %393 = uitofp i16 %392 to float
  %394 = fmul float %381, %393
  %395 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %370, i32 7
  store float %394, ptr %395, align 8, !tbaa !93
  br i1 %367, label %401, label %396

396:                                              ; preds = %380
  %397 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 0, i32 3
  %398 = load i16, ptr %397, align 2, !tbaa !96
  %399 = uitofp i16 %398 to float
  %400 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %370, i32 8
  store float %399, ptr %400, align 4, !tbaa !95
  br label %401

401:                                              ; preds = %396, %380
  br i1 %368, label %408, label %402

402:                                              ; preds = %401
  %403 = getelementptr inbounds i16, ptr %362, i64 %370
  %404 = load i16, ptr %403, align 2, !tbaa !100
  %405 = uitofp i16 %404 to float
  %406 = fmul float %381, %405
  %407 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %370, i32 9
  store float %406, ptr %407, align 8, !tbaa !99
  br label %408

408:                                              ; preds = %402, %401
  %409 = getelementptr inbounds %struct._PixelPacket, ptr %371, i64 1
  %410 = add nuw nsw i64 %370, 1
  %411 = icmp eq i64 %410, %363
  br i1 %411, label %412, label %369, !llvm.loop !152

412:                                              ; preds = %408, %361
  %413 = phi float [ %346, %361 ], [ %381, %408 ]
  %414 = add nsw i64 %349, 1
  br label %415

415:                                              ; preds = %412, %353, %344
  %416 = phi i32 [ 0, %412 ], [ 1, %353 ], [ 0, %344 ]
  %417 = phi float [ %413, %412 ], [ %346, %353 ], [ %346, %344 ]
  %418 = phi i64 [ %357, %412 ], [ %351, %353 ], [ %351, %344 ]
  %419 = phi i64 [ %414, %412 ], [ %349, %353 ], [ %349, %344 ]
  %420 = load i64, ptr %19, align 8, !tbaa !86
  %421 = icmp sgt i64 %420, 0
  br i1 %421, label %422, label %491

422:                                              ; preds = %415
  %423 = icmp eq ptr %145, null
  br label %424

424:                                              ; preds = %422, %486
  %425 = phi i64 [ 0, %422 ], [ %488, %486 ]
  %426 = phi ptr [ %49, %422 ], [ %487, %486 ]
  %427 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %425
  %428 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %425, i32 5
  %429 = load float, ptr %428, align 8, !tbaa !88
  %430 = fpext float %429 to double
  %431 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %425, i32 5
  %432 = load float, ptr %431, align 8, !tbaa !88
  %433 = fpext float %432 to double
  %434 = call double @llvm.fmuladd.f64(double %348, double %433, double %430)
  %435 = fptrunc double %434 to float
  store float %435, ptr %84, align 8, !tbaa !88
  %436 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %425, i32 6
  %437 = load float, ptr %436, align 4, !tbaa !91
  %438 = fpext float %437 to double
  %439 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %425, i32 6
  %440 = load float, ptr %439, align 4, !tbaa !91
  %441 = fpext float %440 to double
  %442 = call double @llvm.fmuladd.f64(double %348, double %441, double %438)
  %443 = fptrunc double %442 to float
  store float %443, ptr %85, align 4, !tbaa !91
  %444 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %425, i32 7
  %445 = load float, ptr %444, align 8, !tbaa !93
  %446 = fpext float %445 to double
  %447 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %425, i32 7
  %448 = load float, ptr %447, align 8, !tbaa !93
  %449 = fpext float %448 to double
  %450 = call double @llvm.fmuladd.f64(double %348, double %449, double %446)
  %451 = fptrunc double %450 to float
  store float %451, ptr %86, align 8, !tbaa !93
  %452 = load i32, ptr %87, align 8, !tbaa !108
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %463, label %454

454:                                              ; preds = %424
  %455 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %425, i32 8
  %456 = load float, ptr %455, align 4, !tbaa !95
  %457 = fpext float %456 to double
  %458 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %425, i32 8
  %459 = load float, ptr %458, align 4, !tbaa !95
  %460 = fpext float %459 to double
  %461 = call double @llvm.fmuladd.f64(double %348, double %460, double %457)
  %462 = fptrunc double %461 to float
  store float %462, ptr %88, align 4, !tbaa !95
  br label %463

463:                                              ; preds = %454, %424
  br i1 %423, label %473, label %464

464:                                              ; preds = %463
  %465 = getelementptr inbounds %struct._MagickPixelPacket, ptr %54, i64 %425, i32 9
  %466 = load float, ptr %465, align 8, !tbaa !99
  %467 = fpext float %466 to double
  %468 = getelementptr inbounds %struct._MagickPixelPacket, ptr %39, i64 %425, i32 9
  %469 = load float, ptr %468, align 8, !tbaa !99
  %470 = fpext float %469 to double
  %471 = call double @llvm.fmuladd.f64(double %348, double %470, double %467)
  %472 = fptrunc double %471 to float
  store float %472, ptr %89, align 8, !tbaa !99
  br label %473

473:                                              ; preds = %464, %463
  %474 = getelementptr inbounds %struct._MagickPixelPacket, ptr %426, i64 0, i32 5
  store float %435, ptr %474, align 8, !tbaa !88
  %475 = getelementptr inbounds %struct._MagickPixelPacket, ptr %426, i64 0, i32 6
  store float %443, ptr %475, align 4, !tbaa !91
  %476 = getelementptr inbounds %struct._MagickPixelPacket, ptr %426, i64 0, i32 7
  store float %451, ptr %476, align 8, !tbaa !93
  %477 = load i32, ptr %90, align 8, !tbaa !108
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %482, label %479

479:                                              ; preds = %473
  %480 = load float, ptr %91, align 4, !tbaa !95
  %481 = getelementptr inbounds %struct._MagickPixelPacket, ptr %426, i64 0, i32 8
  store float %480, ptr %481, align 4, !tbaa !95
  br label %482

482:                                              ; preds = %479, %473
  br i1 %423, label %486, label %483

483:                                              ; preds = %482
  %484 = load float, ptr %92, align 8, !tbaa !99
  %485 = getelementptr inbounds %struct._MagickPixelPacket, ptr %426, i64 0, i32 9
  store float %484, ptr %485, align 8, !tbaa !99
  br label %486

486:                                              ; preds = %483, %482
  %487 = getelementptr inbounds %struct._MagickPixelPacket, ptr %426, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %427, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !153
  %488 = add nuw nsw i64 %425, 1
  %489 = load i64, ptr %19, align 8, !tbaa !86
  %490 = icmp slt i64 %488, %489
  br i1 %490, label %424, label %491, !llvm.loop !154

491:                                              ; preds = %486, %415
  %492 = fsub double %347, %348
  %493 = fcmp ugt double %492, 0.000000e+00
  br i1 %493, label %500, label %494

494:                                              ; preds = %491
  %495 = load i64, ptr %42, align 8, !tbaa !87
  %496 = uitofp i64 %495 to double
  %497 = load i64, ptr %40, align 8, !tbaa !87
  %498 = uitofp i64 %497 to double
  %499 = fdiv double %496, %498
  br label %500

500:                                              ; preds = %205, %158, %491, %494
  %501 = phi i32 [ 1, %494 ], [ %416, %491 ], [ %138, %158 ], [ %138, %205 ]
  %502 = phi i32 [ %350, %494 ], [ %350, %491 ], [ 1, %158 ], [ 1, %205 ]
  %503 = phi float [ %417, %494 ], [ %417, %491 ], [ 1.000000e+00, %158 ], [ %178, %205 ]
  %504 = phi double [ %499, %494 ], [ %492, %491 ], [ %136, %158 ], [ %136, %205 ]
  %505 = phi double [ 1.000000e+00, %494 ], [ 1.000000e+00, %491 ], [ %135, %158 ], [ %135, %205 ]
  %506 = phi i64 [ %418, %494 ], [ %418, %491 ], [ %154, %158 ], [ %154, %205 ]
  %507 = phi i64 [ %419, %494 ], [ %419, %491 ], [ %133, %158 ], [ %133, %205 ]
  %508 = load i64, ptr %50, align 8, !tbaa !86
  %509 = load i64, ptr %19, align 8, !tbaa !86
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %606

511:                                              ; preds = %500
  %512 = icmp sgt i64 %508, 0
  br i1 %512, label %513, label %919

513:                                              ; preds = %511
  %514 = load i32, ptr %123, align 8, !tbaa !108
  %515 = icmp eq i32 %514, 0
  %516 = icmp eq ptr %145, null
  br label %517

517:                                              ; preds = %513, %601
  %518 = phi i64 [ 0, %513 ], [ %604, %601 ]
  %519 = phi ptr [ %142, %513 ], [ %602, %601 ]
  %520 = phi ptr [ %49, %513 ], [ %603, %601 ]
  %521 = phi float [ %503, %513 ], [ %539, %601 ]
  br i1 %515, label %529, label %522

522:                                              ; preds = %517
  %523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %520, i64 0, i32 8
  %524 = load float, ptr %523, align 4, !tbaa !95
  %525 = fsub float 6.553500e+04, %524
  %526 = fpext float %525 to double
  %527 = fmul double %526, 0x3EF0001000100010
  %528 = fptrunc double %527 to float
  br label %529

529:                                              ; preds = %522, %517
  %530 = phi float [ %528, %522 ], [ %521, %517 ]
  %531 = fpext float %530 to double
  %532 = fcmp olt float %530, 0.000000e+00
  %533 = select i1 %532, double -1.000000e+00, double 1.000000e+00
  %534 = fmul double %533, %531
  %535 = fcmp ult double %534, 1.000000e-15
  %536 = fdiv double 1.000000e+00, %531
  %537 = fdiv double %533, 1.000000e-15
  %538 = select i1 %535, double %537, double %536
  %539 = fptrunc double %538 to float
  %540 = getelementptr inbounds %struct._MagickPixelPacket, ptr %520, i64 0, i32 5
  %541 = load float, ptr %540, align 8, !tbaa !88
  %542 = fmul float %541, %539
  %543 = fcmp ugt float %542, 0.000000e+00
  br i1 %543, label %544, label %549

544:                                              ; preds = %529
  %545 = fcmp ult float %542, 6.553500e+04
  br i1 %545, label %546, label %549

546:                                              ; preds = %544
  %547 = fadd float %542, 5.000000e-01
  %548 = fptoui float %547 to i16
  br label %549

549:                                              ; preds = %529, %544, %546
  %550 = phi i16 [ %548, %546 ], [ 0, %529 ], [ -1, %544 ]
  %551 = getelementptr inbounds %struct._PixelPacket, ptr %519, i64 0, i32 2
  store i16 %550, ptr %551, align 2, !tbaa !90
  %552 = getelementptr inbounds %struct._MagickPixelPacket, ptr %520, i64 0, i32 6
  %553 = load float, ptr %552, align 4, !tbaa !91
  %554 = fmul float %553, %539
  %555 = fcmp ugt float %554, 0.000000e+00
  br i1 %555, label %556, label %561

556:                                              ; preds = %549
  %557 = fcmp ult float %554, 6.553500e+04
  br i1 %557, label %558, label %561

558:                                              ; preds = %556
  %559 = fadd float %554, 5.000000e-01
  %560 = fptoui float %559 to i16
  br label %561

561:                                              ; preds = %549, %556, %558
  %562 = phi i16 [ %560, %558 ], [ 0, %549 ], [ -1, %556 ]
  %563 = getelementptr inbounds %struct._PixelPacket, ptr %519, i64 0, i32 1
  store i16 %562, ptr %563, align 2, !tbaa !92
  %564 = getelementptr inbounds %struct._MagickPixelPacket, ptr %520, i64 0, i32 7
  %565 = load float, ptr %564, align 8, !tbaa !93
  %566 = fmul float %565, %539
  %567 = fcmp ugt float %566, 0.000000e+00
  br i1 %567, label %568, label %573

568:                                              ; preds = %561
  %569 = fcmp ult float %566, 6.553500e+04
  br i1 %569, label %570, label %573

570:                                              ; preds = %568
  %571 = fadd float %566, 5.000000e-01
  %572 = fptoui float %571 to i16
  br label %573

573:                                              ; preds = %561, %568, %570
  %574 = phi i16 [ %572, %570 ], [ 0, %561 ], [ -1, %568 ]
  store i16 %574, ptr %519, align 2, !tbaa !94
  br i1 %515, label %587, label %575

575:                                              ; preds = %573
  %576 = getelementptr inbounds %struct._MagickPixelPacket, ptr %520, i64 0, i32 8
  %577 = load float, ptr %576, align 4, !tbaa !95
  %578 = fcmp ugt float %577, 0.000000e+00
  br i1 %578, label %579, label %584

579:                                              ; preds = %575
  %580 = fcmp ult float %577, 6.553500e+04
  br i1 %580, label %581, label %584

581:                                              ; preds = %579
  %582 = fadd float %577, 5.000000e-01
  %583 = fptoui float %582 to i16
  br label %584

584:                                              ; preds = %575, %579, %581
  %585 = phi i16 [ %583, %581 ], [ 0, %575 ], [ -1, %579 ]
  %586 = getelementptr inbounds %struct._PixelPacket, ptr %519, i64 0, i32 3
  store i16 %585, ptr %586, align 2, !tbaa !96
  br label %587

587:                                              ; preds = %584, %573
  br i1 %516, label %601, label %588

588:                                              ; preds = %587
  %589 = getelementptr inbounds i16, ptr %145, i64 %518
  %590 = getelementptr inbounds %struct._MagickPixelPacket, ptr %520, i64 0, i32 9
  %591 = load float, ptr %590, align 8, !tbaa !99
  %592 = fmul float %591, %539
  %593 = fcmp ugt float %592, 0.000000e+00
  br i1 %593, label %594, label %599

594:                                              ; preds = %588
  %595 = fcmp ult float %592, 6.553500e+04
  br i1 %595, label %596, label %599

596:                                              ; preds = %594
  %597 = fadd float %592, 5.000000e-01
  %598 = fptoui float %597 to i16
  br label %599

599:                                              ; preds = %588, %594, %596
  %600 = phi i16 [ %598, %596 ], [ 0, %588 ], [ -1, %594 ]
  store i16 %600, ptr %589, align 2, !tbaa !100
  br label %601

601:                                              ; preds = %599, %587
  %602 = getelementptr inbounds %struct._PixelPacket, ptr %519, i64 1
  %603 = getelementptr inbounds %struct._MagickPixelPacket, ptr %520, i64 1
  %604 = add nuw nsw i64 %518, 1
  %605 = icmp eq i64 %604, %508
  br i1 %605, label %919, label %517, !llvm.loop !155

606:                                              ; preds = %500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !153
  %607 = icmp sgt i64 %509, 0
  br i1 %607, label %608, label %750

608:                                              ; preds = %606
  %609 = uitofp i64 %509 to double
  %610 = icmp eq ptr %145, null
  %611 = icmp eq ptr %145, null
  br label %612

612:                                              ; preds = %608, %743
  %613 = phi i64 [ 0, %608 ], [ %748, %743 ]
  %614 = phi ptr [ %52, %608 ], [ %746, %743 ]
  %615 = phi ptr [ %49, %608 ], [ %747, %743 ]
  %616 = phi double [ 1.000000e+00, %608 ], [ %745, %743 ]
  %617 = phi i32 [ 0, %608 ], [ %744, %743 ]
  %618 = load i64, ptr %50, align 8, !tbaa !86
  %619 = uitofp i64 %618 to double
  %620 = fdiv double %619, %609
  %621 = fcmp ult double %620, %616
  br i1 %621, label %689, label %622

622:                                              ; preds = %612
  %623 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 5
  %624 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 6
  %625 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 7
  %626 = load i32, ptr %97, align 8, !tbaa !108
  %627 = icmp eq i32 %626, 0
  %628 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 8
  %629 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 9
  br label %630

630:                                              ; preds = %622, %686
  %631 = phi ptr [ %614, %622 ], [ %639, %686 ]
  %632 = phi double [ %616, %622 ], [ 1.000000e+00, %686 ]
  %633 = phi double [ %620, %622 ], [ %687, %686 ]
  %634 = phi i32 [ %617, %622 ], [ 1, %686 ]
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %638, label %636

636:                                              ; preds = %630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !153
  %637 = getelementptr inbounds %struct._MagickPixelPacket, ptr %631, i64 1
  br label %638

638:                                              ; preds = %636, %630
  %639 = phi ptr [ %637, %636 ], [ %631, %630 ]
  %640 = load float, ptr %623, align 8, !tbaa !88
  %641 = fpext float %640 to double
  %642 = load float, ptr %94, align 8, !tbaa !88
  %643 = fpext float %642 to double
  %644 = call double @llvm.fmuladd.f64(double %632, double %641, double %643)
  %645 = fptrunc double %644 to float
  store float %645, ptr %94, align 8, !tbaa !88
  %646 = load float, ptr %624, align 4, !tbaa !91
  %647 = fpext float %646 to double
  %648 = load float, ptr %95, align 4, !tbaa !91
  %649 = fpext float %648 to double
  %650 = call double @llvm.fmuladd.f64(double %632, double %647, double %649)
  %651 = fptrunc double %650 to float
  store float %651, ptr %95, align 4, !tbaa !91
  %652 = load float, ptr %625, align 8, !tbaa !93
  %653 = fpext float %652 to double
  %654 = load float, ptr %96, align 8, !tbaa !93
  %655 = fpext float %654 to double
  %656 = call double @llvm.fmuladd.f64(double %632, double %653, double %655)
  %657 = fptrunc double %656 to float
  store float %657, ptr %96, align 8, !tbaa !93
  br i1 %627, label %665, label %658

658:                                              ; preds = %638
  %659 = load float, ptr %628, align 4, !tbaa !95
  %660 = fpext float %659 to double
  %661 = load float, ptr %98, align 4, !tbaa !95
  %662 = fpext float %661 to double
  %663 = call double @llvm.fmuladd.f64(double %632, double %660, double %662)
  %664 = fptrunc double %663 to float
  store float %664, ptr %98, align 4, !tbaa !95
  br label %665

665:                                              ; preds = %658, %638
  br i1 %610, label %673, label %666

666:                                              ; preds = %665
  %667 = load float, ptr %629, align 8, !tbaa !99
  %668 = fpext float %667 to double
  %669 = load float, ptr %99, align 8, !tbaa !99
  %670 = fpext float %669 to double
  %671 = call double @llvm.fmuladd.f64(double %632, double %668, double %670)
  %672 = fptrunc double %671 to float
  store float %672, ptr %99, align 8, !tbaa !99
  br label %673

673:                                              ; preds = %666, %665
  %674 = getelementptr inbounds %struct._MagickPixelPacket, ptr %639, i64 0, i32 5
  store float %645, ptr %674, align 8, !tbaa !88
  %675 = getelementptr inbounds %struct._MagickPixelPacket, ptr %639, i64 0, i32 6
  store float %651, ptr %675, align 4, !tbaa !91
  %676 = getelementptr inbounds %struct._MagickPixelPacket, ptr %639, i64 0, i32 7
  store float %657, ptr %676, align 8, !tbaa !93
  %677 = load i32, ptr %100, align 8, !tbaa !108
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %682, label %679

679:                                              ; preds = %673
  %680 = load float, ptr %101, align 4, !tbaa !95
  %681 = getelementptr inbounds %struct._MagickPixelPacket, ptr %639, i64 0, i32 8
  store float %680, ptr %681, align 4, !tbaa !95
  br label %682

682:                                              ; preds = %679, %673
  br i1 %610, label %686, label %683

683:                                              ; preds = %682
  %684 = load float, ptr %102, align 8, !tbaa !99
  %685 = getelementptr inbounds %struct._MagickPixelPacket, ptr %639, i64 0, i32 9
  store float %684, ptr %685, align 8, !tbaa !99
  br label %686

686:                                              ; preds = %683, %682
  %687 = fsub double %633, %632
  %688 = fcmp ult double %687, 1.000000e+00
  br i1 %688, label %689, label %630, !llvm.loop !156

689:                                              ; preds = %686, %612
  %690 = phi i32 [ %617, %612 ], [ 1, %686 ]
  %691 = phi double [ %620, %612 ], [ %687, %686 ]
  %692 = phi double [ %616, %612 ], [ 1.000000e+00, %686 ]
  %693 = phi ptr [ %614, %612 ], [ %639, %686 ]
  %694 = fcmp ogt double %691, 0.000000e+00
  br i1 %694, label %695, label %743

695:                                              ; preds = %689
  %696 = icmp eq i32 %690, 0
  br i1 %696, label %699, label %697

697:                                              ; preds = %695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false), !tbaa.struct !153
  %698 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 1
  br label %699

699:                                              ; preds = %697, %695
  %700 = phi ptr [ %698, %697 ], [ %693, %695 ]
  %701 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 5
  %702 = load float, ptr %701, align 8, !tbaa !88
  %703 = fpext float %702 to double
  %704 = load float, ptr %103, align 8, !tbaa !88
  %705 = fpext float %704 to double
  %706 = call double @llvm.fmuladd.f64(double %691, double %703, double %705)
  %707 = fptrunc double %706 to float
  store float %707, ptr %103, align 8, !tbaa !88
  %708 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 6
  %709 = load float, ptr %708, align 4, !tbaa !91
  %710 = fpext float %709 to double
  %711 = load float, ptr %104, align 4, !tbaa !91
  %712 = fpext float %711 to double
  %713 = call double @llvm.fmuladd.f64(double %691, double %710, double %712)
  %714 = fptrunc double %713 to float
  store float %714, ptr %104, align 4, !tbaa !91
  %715 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 7
  %716 = load float, ptr %715, align 8, !tbaa !93
  %717 = fpext float %716 to double
  %718 = load float, ptr %105, align 8, !tbaa !93
  %719 = fpext float %718 to double
  %720 = call double @llvm.fmuladd.f64(double %691, double %717, double %719)
  %721 = fptrunc double %720 to float
  store float %721, ptr %105, align 8, !tbaa !93
  %722 = load i32, ptr %106, align 8, !tbaa !108
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %732, label %724

724:                                              ; preds = %699
  %725 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 8
  %726 = load float, ptr %725, align 4, !tbaa !95
  %727 = fpext float %726 to double
  %728 = load float, ptr %107, align 4, !tbaa !95
  %729 = fpext float %728 to double
  %730 = call double @llvm.fmuladd.f64(double %691, double %727, double %729)
  %731 = fptrunc double %730 to float
  store float %731, ptr %107, align 4, !tbaa !95
  br label %732

732:                                              ; preds = %724, %699
  br i1 %611, label %741, label %733

733:                                              ; preds = %732
  %734 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 0, i32 9
  %735 = load float, ptr %734, align 8, !tbaa !99
  %736 = fpext float %735 to double
  %737 = load float, ptr %108, align 8, !tbaa !99
  %738 = fpext float %737 to double
  %739 = call double @llvm.fmuladd.f64(double %691, double %736, double %738)
  %740 = fptrunc double %739 to float
  store float %740, ptr %108, align 8, !tbaa !99
  br label %741

741:                                              ; preds = %733, %732
  %742 = fsub double %692, %691
  br label %743

743:                                              ; preds = %741, %689
  %744 = phi i32 [ 0, %741 ], [ %690, %689 ]
  %745 = phi double [ %742, %741 ], [ %692, %689 ]
  %746 = phi ptr [ %700, %741 ], [ %693, %689 ]
  %747 = getelementptr inbounds %struct._MagickPixelPacket, ptr %615, i64 1
  %748 = add nuw nsw i64 %613, 1
  %749 = icmp eq i64 %748, %509
  br i1 %749, label %750, label %612, !llvm.loop !157

750:                                              ; preds = %743, %606
  %751 = phi i32 [ 0, %606 ], [ %744, %743 ]
  %752 = phi double [ 1.000000e+00, %606 ], [ %745, %743 ]
  %753 = phi ptr [ %49, %606 ], [ %747, %743 ]
  %754 = phi ptr [ %52, %606 ], [ %746, %743 ]
  %755 = fcmp ogt double %752, 0.000000e+00
  br i1 %755, label %756, label %798

756:                                              ; preds = %750
  %757 = getelementptr %struct._MagickPixelPacket, ptr %753, i64 -1, i32 5
  %758 = load float, ptr %757, align 8, !tbaa !88
  %759 = fpext float %758 to double
  %760 = load float, ptr %109, align 8, !tbaa !88
  %761 = fpext float %760 to double
  %762 = call double @llvm.fmuladd.f64(double %752, double %759, double %761)
  %763 = fptrunc double %762 to float
  store float %763, ptr %109, align 8, !tbaa !88
  %764 = getelementptr %struct._MagickPixelPacket, ptr %753, i64 -1, i32 6
  %765 = load float, ptr %764, align 4, !tbaa !91
  %766 = fpext float %765 to double
  %767 = load float, ptr %110, align 4, !tbaa !91
  %768 = fpext float %767 to double
  %769 = call double @llvm.fmuladd.f64(double %752, double %766, double %768)
  %770 = fptrunc double %769 to float
  store float %770, ptr %110, align 4, !tbaa !91
  %771 = getelementptr %struct._MagickPixelPacket, ptr %753, i64 -1, i32 7
  %772 = load float, ptr %771, align 8, !tbaa !93
  %773 = fpext float %772 to double
  %774 = load float, ptr %111, align 8, !tbaa !93
  %775 = fpext float %774 to double
  %776 = call double @llvm.fmuladd.f64(double %752, double %773, double %775)
  %777 = fptrunc double %776 to float
  store float %777, ptr %111, align 8, !tbaa !93
  %778 = load i32, ptr %112, align 8, !tbaa !108
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %788, label %780

780:                                              ; preds = %756
  %781 = getelementptr %struct._MagickPixelPacket, ptr %753, i64 -1, i32 8
  %782 = load float, ptr %781, align 4, !tbaa !95
  %783 = fpext float %782 to double
  %784 = load float, ptr %113, align 4, !tbaa !95
  %785 = fpext float %784 to double
  %786 = call double @llvm.fmuladd.f64(double %752, double %783, double %785)
  %787 = fptrunc double %786 to float
  store float %787, ptr %113, align 4, !tbaa !95
  br label %788

788:                                              ; preds = %780, %756
  %789 = icmp eq ptr %145, null
  br i1 %789, label %798, label %790

790:                                              ; preds = %788
  %791 = getelementptr %struct._MagickPixelPacket, ptr %753, i64 -1, i32 9
  %792 = load float, ptr %791, align 8, !tbaa !99
  %793 = fpext float %792 to double
  %794 = load float, ptr %114, align 8, !tbaa !99
  %795 = fpext float %794 to double
  %796 = call double @llvm.fmuladd.f64(double %752, double %793, double %795)
  %797 = fptrunc double %796 to float
  store float %797, ptr %114, align 8, !tbaa !99
  br label %798

798:                                              ; preds = %788, %790, %750
  %799 = icmp eq i32 %751, 0
  br i1 %799, label %800, label %823

800:                                              ; preds = %798
  %801 = ptrtoint ptr %754 to i64
  %802 = sub i64 %801, %115
  %803 = sdiv exact i64 %802, 56
  %804 = load i64, ptr %50, align 8, !tbaa !86
  %805 = icmp slt i64 %803, %804
  br i1 %805, label %806, label %823

806:                                              ; preds = %800
  %807 = load float, ptr %116, align 8, !tbaa !88
  %808 = getelementptr inbounds %struct._MagickPixelPacket, ptr %754, i64 0, i32 5
  store float %807, ptr %808, align 8, !tbaa !88
  %809 = load float, ptr %117, align 4, !tbaa !91
  %810 = getelementptr inbounds %struct._MagickPixelPacket, ptr %754, i64 0, i32 6
  store float %809, ptr %810, align 4, !tbaa !91
  %811 = load float, ptr %118, align 8, !tbaa !93
  %812 = getelementptr inbounds %struct._MagickPixelPacket, ptr %754, i64 0, i32 7
  store float %811, ptr %812, align 8, !tbaa !93
  %813 = load i32, ptr %119, align 8, !tbaa !108
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %818, label %815

815:                                              ; preds = %806
  %816 = load float, ptr %120, align 4, !tbaa !95
  %817 = getelementptr inbounds %struct._MagickPixelPacket, ptr %754, i64 0, i32 8
  store float %816, ptr %817, align 4, !tbaa !95
  br label %818

818:                                              ; preds = %815, %806
  %819 = icmp eq ptr %145, null
  br i1 %819, label %823, label %820

820:                                              ; preds = %818
  %821 = load float, ptr %121, align 8, !tbaa !99
  %822 = getelementptr inbounds %struct._MagickPixelPacket, ptr %754, i64 0, i32 9
  store float %821, ptr %822, align 8, !tbaa !99
  br label %823

823:                                              ; preds = %818, %820, %800, %798
  %824 = load i64, ptr %50, align 8, !tbaa !86
  %825 = icmp sgt i64 %824, 0
  br i1 %825, label %826, label %919

826:                                              ; preds = %823
  %827 = load i32, ptr %122, align 8, !tbaa !108
  %828 = icmp eq i32 %827, 0
  %829 = icmp eq ptr %145, null
  br label %830

830:                                              ; preds = %826, %914
  %831 = phi i64 [ 0, %826 ], [ %917, %914 ]
  %832 = phi ptr [ %142, %826 ], [ %916, %914 ]
  %833 = phi ptr [ %52, %826 ], [ %915, %914 ]
  %834 = phi float [ %503, %826 ], [ %852, %914 ]
  br i1 %828, label %842, label %835

835:                                              ; preds = %830
  %836 = getelementptr inbounds %struct._MagickPixelPacket, ptr %833, i64 0, i32 8
  %837 = load float, ptr %836, align 4, !tbaa !95
  %838 = fsub float 6.553500e+04, %837
  %839 = fpext float %838 to double
  %840 = fmul double %839, 0x3EF0001000100010
  %841 = fptrunc double %840 to float
  br label %842

842:                                              ; preds = %835, %830
  %843 = phi float [ %841, %835 ], [ %834, %830 ]
  %844 = fpext float %843 to double
  %845 = fcmp olt float %843, 0.000000e+00
  %846 = select i1 %845, double -1.000000e+00, double 1.000000e+00
  %847 = fmul double %846, %844
  %848 = fcmp ult double %847, 1.000000e-15
  %849 = fdiv double 1.000000e+00, %844
  %850 = fdiv double %846, 1.000000e-15
  %851 = select i1 %848, double %850, double %849
  %852 = fptrunc double %851 to float
  %853 = getelementptr inbounds %struct._MagickPixelPacket, ptr %833, i64 0, i32 5
  %854 = load float, ptr %853, align 8, !tbaa !88
  %855 = fmul float %854, %852
  %856 = fcmp ugt float %855, 0.000000e+00
  br i1 %856, label %857, label %862

857:                                              ; preds = %842
  %858 = fcmp ult float %855, 6.553500e+04
  br i1 %858, label %859, label %862

859:                                              ; preds = %857
  %860 = fadd float %855, 5.000000e-01
  %861 = fptoui float %860 to i16
  br label %862

862:                                              ; preds = %842, %857, %859
  %863 = phi i16 [ %861, %859 ], [ 0, %842 ], [ -1, %857 ]
  %864 = getelementptr inbounds %struct._PixelPacket, ptr %832, i64 0, i32 2
  store i16 %863, ptr %864, align 2, !tbaa !90
  %865 = getelementptr inbounds %struct._MagickPixelPacket, ptr %833, i64 0, i32 6
  %866 = load float, ptr %865, align 4, !tbaa !91
  %867 = fmul float %866, %852
  %868 = fcmp ugt float %867, 0.000000e+00
  br i1 %868, label %869, label %874

869:                                              ; preds = %862
  %870 = fcmp ult float %867, 6.553500e+04
  br i1 %870, label %871, label %874

871:                                              ; preds = %869
  %872 = fadd float %867, 5.000000e-01
  %873 = fptoui float %872 to i16
  br label %874

874:                                              ; preds = %862, %869, %871
  %875 = phi i16 [ %873, %871 ], [ 0, %862 ], [ -1, %869 ]
  %876 = getelementptr inbounds %struct._PixelPacket, ptr %832, i64 0, i32 1
  store i16 %875, ptr %876, align 2, !tbaa !92
  %877 = getelementptr inbounds %struct._MagickPixelPacket, ptr %833, i64 0, i32 7
  %878 = load float, ptr %877, align 8, !tbaa !93
  %879 = fmul float %878, %852
  %880 = fcmp ugt float %879, 0.000000e+00
  br i1 %880, label %881, label %886

881:                                              ; preds = %874
  %882 = fcmp ult float %879, 6.553500e+04
  br i1 %882, label %883, label %886

883:                                              ; preds = %881
  %884 = fadd float %879, 5.000000e-01
  %885 = fptoui float %884 to i16
  br label %886

886:                                              ; preds = %874, %881, %883
  %887 = phi i16 [ %885, %883 ], [ 0, %874 ], [ -1, %881 ]
  store i16 %887, ptr %832, align 2, !tbaa !94
  br i1 %828, label %900, label %888

888:                                              ; preds = %886
  %889 = getelementptr inbounds %struct._MagickPixelPacket, ptr %833, i64 0, i32 8
  %890 = load float, ptr %889, align 4, !tbaa !95
  %891 = fcmp ugt float %890, 0.000000e+00
  br i1 %891, label %892, label %897

892:                                              ; preds = %888
  %893 = fcmp ult float %890, 6.553500e+04
  br i1 %893, label %894, label %897

894:                                              ; preds = %892
  %895 = fadd float %890, 5.000000e-01
  %896 = fptoui float %895 to i16
  br label %897

897:                                              ; preds = %888, %892, %894
  %898 = phi i16 [ %896, %894 ], [ 0, %888 ], [ -1, %892 ]
  %899 = getelementptr inbounds %struct._PixelPacket, ptr %832, i64 0, i32 3
  store i16 %898, ptr %899, align 2, !tbaa !96
  br label %900

900:                                              ; preds = %897, %886
  br i1 %829, label %914, label %901

901:                                              ; preds = %900
  %902 = getelementptr inbounds i16, ptr %145, i64 %831
  %903 = getelementptr inbounds %struct._MagickPixelPacket, ptr %833, i64 0, i32 9
  %904 = load float, ptr %903, align 8, !tbaa !99
  %905 = fmul float %904, %852
  %906 = fcmp ugt float %905, 0.000000e+00
  br i1 %906, label %907, label %912

907:                                              ; preds = %901
  %908 = fcmp ult float %905, 6.553500e+04
  br i1 %908, label %909, label %912

909:                                              ; preds = %907
  %910 = fadd float %905, 5.000000e-01
  %911 = fptoui float %910 to i16
  br label %912

912:                                              ; preds = %901, %907, %909
  %913 = phi i16 [ %911, %909 ], [ 0, %901 ], [ -1, %907 ]
  store i16 %913, ptr %902, align 2, !tbaa !100
  br label %914

914:                                              ; preds = %912, %900
  %915 = getelementptr inbounds %struct._MagickPixelPacket, ptr %833, i64 1
  %916 = getelementptr inbounds %struct._PixelPacket, ptr %832, i64 1
  %917 = add nuw nsw i64 %831, 1
  %918 = icmp eq i64 %917, %824
  br i1 %918, label %919, label %830, !llvm.loop !158

919:                                              ; preds = %914, %601, %823, %511
  %920 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %74, ptr noundef %3) #25
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %936, label %922

922:                                              ; preds = %919
  %923 = load i64, ptr %40, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #21
  %924 = load ptr, ptr %124, align 8, !tbaa !102
  %925 = icmp eq ptr %924, null
  br i1 %925, label %931, label %926

926:                                              ; preds = %922
  %927 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.37, ptr noundef nonnull %125) #21
  %928 = load ptr, ptr %124, align 8, !tbaa !102
  %929 = load ptr, ptr %126, align 8, !tbaa !103
  %930 = call i32 %928(ptr noundef nonnull %5, i64 noundef %132, i64 noundef %923, ptr noundef %929) #21
  br label %931

931:                                              ; preds = %922, %926
  %932 = phi i32 [ %930, %926 ], [ 1, %922 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #21
  %933 = icmp eq i32 %932, 0
  %934 = select i1 %933, i32 0, i32 %502
  %935 = select i1 %933, i32 2, i32 0
  br label %936

936:                                              ; preds = %931, %919, %356, %153, %140, %131
  %937 = phi i32 [ %138, %131 ], [ %138, %140 ], [ %138, %153 ], [ 1, %356 ], [ %501, %919 ], [ %501, %931 ]
  %938 = phi i32 [ 0, %131 ], [ 0, %140 ], [ 0, %153 ], [ 0, %356 ], [ 0, %919 ], [ %934, %931 ]
  %939 = phi double [ %136, %131 ], [ %136, %140 ], [ %136, %153 ], [ %347, %356 ], [ %504, %919 ], [ %504, %931 ]
  %940 = phi double [ %135, %131 ], [ %135, %140 ], [ %135, %153 ], [ %348, %356 ], [ %505, %919 ], [ %505, %931 ]
  %941 = phi i64 [ %134, %131 ], [ %134, %140 ], [ %154, %153 ], [ %357, %356 ], [ %506, %919 ], [ %506, %931 ]
  %942 = phi i64 [ %133, %131 ], [ %133, %140 ], [ %133, %153 ], [ %349, %356 ], [ %507, %919 ], [ %507, %931 ]
  %943 = phi i32 [ 2, %131 ], [ 2, %140 ], [ 2, %153 ], [ 2, %356 ], [ 2, %919 ], [ %935, %931 ]
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %127, label %945

945:                                              ; preds = %936, %127
  %946 = icmp eq i32 %938, 0
  br label %947

947:                                              ; preds = %945, %66
  %948 = phi i1 [ false, %66 ], [ %946, %945 ]
  %949 = call ptr @DestroyCacheView(ptr noundef %74) #21
  %950 = call ptr @DestroyCacheView(ptr noundef %73) #21
  %951 = call ptr @RelinquishMagickMemory(ptr noundef %54) #21
  %952 = call ptr @RelinquishMagickMemory(ptr noundef %52) #21
  %953 = load i64, ptr %42, align 8, !tbaa !87
  %954 = load i64, ptr %40, align 8, !tbaa !87
  %955 = icmp eq i64 %953, %954
  br i1 %955, label %958, label %956

956:                                              ; preds = %947
  %957 = call ptr @RelinquishMagickMemory(ptr noundef %49) #21
  br label %958

958:                                              ; preds = %956, %947
  %959 = call ptr @RelinquishMagickMemory(ptr noundef %39) #21
  %960 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %961 = load i32, ptr %960, align 8, !tbaa !111
  %962 = getelementptr inbounds %struct._Image, ptr %29, i64 0, i32 77
  store i32 %961, ptr %962, align 8, !tbaa !111
  br i1 %948, label %963, label %965

963:                                              ; preds = %958
  %964 = call ptr @DestroyImage(ptr noundef nonnull %29) #21
  br label %965

965:                                              ; preds = %958, %963, %28, %14, %62, %34, %26
  %966 = phi ptr [ %27, %26 ], [ null, %34 ], [ null, %62 ], [ null, %14 ], [ null, %28 ], [ %964, %963 ], [ %29, %958 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #21
  ret ptr %966
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ThumbnailImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #21
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3759, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #21
  br label %14

14:                                               ; preds = %11, %4
  %15 = uitofp i64 %1 to float
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !86
  %18 = uitofp i64 %17 to float
  %19 = fdiv float %15, %18
  %20 = uitofp i64 %2 to float
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !87
  %23 = uitofp i64 %22 to float
  %24 = fdiv float %20, %23
  %25 = fmul float %19, %24
  %26 = fpext float %25 to double
  %27 = fcmp ogt double %26, 1.000000e-01
  br i1 %27, label %46, label %28

28:                                               ; preds = %14
  %29 = mul i64 %1, 5
  %30 = icmp ult i64 %29, 128
  br i1 %30, label %46, label %31

31:                                               ; preds = %28
  %32 = mul i64 %2, 5
  %33 = icmp ult i64 %32, 128
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @SampleImage(ptr noundef %0, i64 noundef %29, i64 noundef %32, ptr noundef %3)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %39 = load i32, ptr %38, align 8, !tbaa !159
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %41 = load double, ptr %40, align 8, !tbaa !160
  %42 = tail call ptr @ResizeImage(ptr noundef nonnull %35, i64 noundef %1, i64 noundef %2, i32 noundef %39, double noundef %41, ptr noundef %3)
  %43 = tail call ptr @DestroyImage(ptr noundef nonnull %35) #21
  br label %44

44:                                               ; preds = %34, %37
  %45 = phi ptr [ %42, %37 ], [ undef, %34 ]
  br i1 %36, label %128, label %52

46:                                               ; preds = %28, %31, %14
  %47 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %48 = load i32, ptr %47, align 8, !tbaa !159
  %49 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %50 = load double, ptr %49, align 8, !tbaa !160
  %51 = tail call ptr @ResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %48, double noundef %50, ptr noundef %3)
  br label %52

52:                                               ; preds = %46, %44
  %53 = phi ptr [ %45, %44 ], [ %51, %46 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %128, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 26
  %57 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.38, ptr noundef nonnull %56) #21
  %58 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 6
  %59 = load i32, ptr %58, align 8, !tbaa !108
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = tail call i32 @SetImageAlphaChannel(ptr noundef %53, i32 noundef 6) #21
  br label %63

63:                                               ; preds = %61, %55
  %64 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 9
  store i64 8, ptr %64, align 8, !tbaa !161
  %65 = getelementptr inbounds %struct._Image, ptr %53, i64 0, i32 33
  store i32 1, ptr %65, align 4, !tbaa !162
  tail call void @ResetImageProfileIterator(ptr noundef %53) #21
  %66 = tail call ptr @GetNextImageProfile(ptr noundef %53) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %63, %77
  %69 = phi ptr [ %78, %77 ], [ %66, %63 ]
  %70 = tail call i32 @LocaleCompare(ptr noundef nonnull %69, ptr noundef nonnull @.str.39) #21
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = tail call i32 @LocaleCompare(ptr noundef nonnull %69, ptr noundef nonnull @.str.40) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call i32 @DeleteImageProfile(ptr noundef %53, ptr noundef nonnull %69) #21
  tail call void @ResetImageProfileIterator(ptr noundef %53) #21
  br label %77

77:                                               ; preds = %75, %72, %68
  %78 = tail call ptr @GetNextImageProfile(ptr noundef %53) #21
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %68, !llvm.loop !163

80:                                               ; preds = %77, %63
  %81 = tail call i32 @DeleteImageProperty(ptr noundef %53, ptr noundef nonnull @.str.41) #21
  %82 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %83 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %82, i64 noundef 4096) #21
  %84 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %82, ptr noundef nonnull dereferenceable(1) @.str.42) #27
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.43, ptr noundef nonnull %82) #21
  br label %88

88:                                               ; preds = %86, %80
  %89 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.44, ptr noundef nonnull %5) #21
  %90 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %82, i64 noundef 4096) #21
  %91 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %92 = call i32 @GetPathAttributes(ptr noundef nonnull %91, ptr noundef nonnull %7) #21
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 12
  %96 = load i64, ptr %95, align 8, !tbaa !164
  %97 = sitofp i64 %96 to double
  %98 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %97) #21
  %99 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.46, ptr noundef nonnull %5) #21
  br label %100

100:                                              ; preds = %94, %88
  %101 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 12
  %102 = load i64, ptr %101, align 8, !tbaa !164
  %103 = sitofp i64 %102 to double
  %104 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %103) #21
  %105 = call i64 @GetBlobSize(ptr noundef %0) #21
  %106 = call i64 @FormatMagickSize(i64 noundef %105, i32 noundef 0, ptr noundef nonnull %5) #21
  %107 = call i64 @ConcatenateMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.47, i64 noundef 4096) #21
  %108 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.48, ptr noundef nonnull %5) #21
  %109 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %110 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.49, ptr noundef nonnull %109) #21
  call void @LocaleLower(ptr noundef nonnull %5) #21
  %111 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.50, ptr noundef nonnull %5) #21
  %112 = call ptr @GetMagickVersion(ptr noundef nonnull %6) #21
  %113 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.51, ptr noundef %112) #21
  %114 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %115 = load i64, ptr %114, align 8, !tbaa !167
  %116 = uitofp i64 %115 to double
  %117 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %116) #21
  %118 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #21
  %119 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %120 = load i64, ptr %119, align 8, !tbaa !168
  %121 = uitofp i64 %120 to double
  %122 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %121) #21
  %123 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.53, ptr noundef nonnull %5) #21
  %124 = call i64 @GetImageListLength(ptr noundef %0) #21
  %125 = uitofp i64 %124 to double
  %126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %125) #21
  %127 = call i32 @SetImageProperty(ptr noundef %53, ptr noundef nonnull @.str.54, ptr noundef nonnull %5) #21
  br label %128

128:                                              ; preds = %52, %44, %100
  %129 = phi ptr [ %53, %100 ], [ null, %44 ], [ null, %52 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #21
  ret ptr %129
}

declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #9

declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #9

declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @DeleteImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #17

declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #9

declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #9

declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #9

declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @LocaleLower(ptr noundef) local_unnamed_addr #9

declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #9

declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #18

declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #19

declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #9

; Function Attrs: allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #16

declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { hot "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind willreturn memory(none) }
attributes #24 = { noreturn nounwind }
attributes #25 = { hot nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind willreturn memory(read) }

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
!54 = !{!55, !36, i64 0}
!55 = !{!"", !36, i64 0, !36, i64 4}
!56 = !{!55, !36, i64 4}
!57 = !{!58, !59, i64 28}
!58 = !{!"_ResizeFilter", !40, i64 0, !40, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !37, i64 32, !36, i64 60, !36, i64 64, !39, i64 72}
!59 = !{!"float", !37, i64 0}
!60 = !{!61, !40, i64 0}
!61 = !{!"", !40, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !36, i64 40}
!62 = !{!58, !40, i64 0}
!63 = !{!61, !43, i64 8}
!64 = !{!58, !59, i64 16}
!65 = !{!61, !36, i64 40}
!66 = !{!58, !36, i64 60}
!67 = !{!58, !40, i64 8}
!68 = !{!58, !36, i64 64}
!69 = !{!61, !43, i64 16}
!70 = !{!58, !59, i64 24}
!71 = !{!58, !39, i64 72}
!72 = !{!59, !59, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!43, !43, i64 0}
!77 = !{!58, !59, i64 20}
!78 = !{!61, !43, i64 24}
!79 = !{!61, !43, i64 32}
!80 = !{!40, !40, i64 0}
!81 = distinct !{!81, !74, !75}
!82 = distinct !{!82, !74, !75}
!83 = distinct !{!83, !74, !75}
!84 = distinct !{!84, !74, !75}
!85 = distinct !{!85, !74, !75}
!86 = !{!35, !39, i64 40}
!87 = !{!35, !39, i64 48}
!88 = !{!89, !59, i64 32}
!89 = !{!"_MagickPixelPacket", !36, i64 0, !36, i64 4, !36, i64 8, !43, i64 16, !39, i64 24, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48}
!90 = !{!41, !42, i64 4}
!91 = !{!89, !59, i64 36}
!92 = !{!41, !42, i64 2}
!93 = !{!89, !59, i64 40}
!94 = !{!41, !42, i64 0}
!95 = !{!89, !59, i64 44}
!96 = !{!41, !42, i64 6}
!97 = !{!35, !36, i64 4}
!98 = !{!35, !36, i64 0}
!99 = !{!89, !59, i64 48}
!100 = !{!42, !42, i64 0}
!101 = distinct !{!101, !74, !75}
!102 = !{!35, !40, i64 568}
!103 = !{!35, !40, i64 576}
!104 = distinct !{!104, !74, !75}
!105 = distinct !{!105, !74, !75}
!106 = distinct !{!106, !74, !75}
!107 = distinct !{!107, !74, !75}
!108 = !{!35, !36, i64 32}
!109 = !{!52, !52, i64 0}
!110 = !{i32 0, i32 2}
!111 = !{!35, !36, i64 13184}
!112 = !{!35, !43, i64 264}
!113 = !{!35, !43, i64 272}
!114 = distinct !{!114, !74, !75}
!115 = distinct !{!115, !74, !75}
!116 = !{!117, !39, i64 8}
!117 = !{!"_ContributionInfo", !59, i64 0, !39, i64 8}
!118 = !{!117, !59, i64 0}
!119 = distinct !{!119, !74, !75}
!120 = distinct !{!120, !74, !75}
!121 = !{i64 0, i64 4, !72, i64 4, i64 4, !72, i64 8, i64 4, !72, i64 12, i64 4, !72, i64 16, i64 4, !72}
!122 = !{i64 0, i64 4, !72, i64 4, i64 4, !72, i64 8, i64 4, !72, i64 12, i64 4, !72}
!123 = !{i64 0, i64 4, !72, i64 4, i64 4, !72, i64 8, i64 4, !72}
!124 = !{i64 0, i64 4, !72, i64 4, i64 4, !72}
!125 = !{i64 0, i64 4, !72}
!126 = distinct !{!126, !74, !75}
!127 = distinct !{!127, !74, !75}
!128 = distinct !{!128, !74, !75}
!129 = distinct !{!129, !74, !75}
!130 = distinct !{!130, !74, !75}
!131 = distinct !{!131, !74, !75}
!132 = distinct !{!132, !74, !75}
!133 = distinct !{!133, !74, !75}
!134 = distinct !{!134, !74, !75}
!135 = distinct !{!135, !74, !75}
!136 = distinct !{!136, !74, !75}
!137 = distinct !{!137, !74, !75}
!138 = distinct !{!138, !74, !75}
!139 = distinct !{!139, !74, !75}
!140 = !{!141, !43, i64 0}
!141 = !{!"_GeometryInfo", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32}
!142 = !{!39, !39, i64 0}
!143 = distinct !{!143, !74, !75}
!144 = distinct !{!144, !74, !75}
!145 = distinct !{!145, !74, !75}
!146 = distinct !{!146, !74, !75}
!147 = distinct !{!147, !74, !75}
!148 = distinct !{!148, !74, !75}
!149 = distinct !{!149, !74, !75}
!150 = distinct !{!150, !74, !75}
!151 = distinct !{!151, !74, !75}
!152 = distinct !{!152, !74, !75}
!153 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53, i64 16, i64 8, !76, i64 24, i64 8, !142, i64 32, i64 4, !72, i64 36, i64 4, !72, i64 40, i64 4, !72, i64 44, i64 4, !72, i64 48, i64 4, !72}
!154 = distinct !{!154, !74, !75}
!155 = distinct !{!155, !74, !75}
!156 = distinct !{!156, !74, !75}
!157 = distinct !{!157, !74, !75}
!158 = distinct !{!158, !74, !75}
!159 = !{!35, !36, i64 400}
!160 = !{!35, !43, i64 384}
!161 = !{!35, !39, i64 56}
!162 = !{!35, !36, i64 404}
!163 = distinct !{!163, !74, !75}
!164 = !{!165, !39, i64 88}
!165 = !{!"stat", !39, i64 0, !39, i64 8, !39, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !166, i64 72, !166, i64 88, !166, i64 104, !37, i64 120}
!166 = !{!"timespec", !39, i64 0, !39, i64 8}
!167 = !{!35, !39, i64 12904}
!168 = !{!35, !39, i64 12912}
