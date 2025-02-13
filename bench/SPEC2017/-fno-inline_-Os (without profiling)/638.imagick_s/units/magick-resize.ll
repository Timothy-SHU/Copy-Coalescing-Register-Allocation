; ModuleID = 'magick/resize.c'
source_filename = "magick/resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { ptr, double, double, double, double, i32 }
%struct.ident_t = type { i32, i32, i32, i32, ptr }
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
%struct._PointInfo = type { double, double }
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
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
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
@J1.Pone = internal unnamed_addr constant [9 x double] [double 0x443F81C2E523683D, double 0xC40CEF86BDED9999, double 0x43C012D008C7BCEA, double 0xC35FE006C30BA161, double 0x42F088DAAD7AF759, double 0xC273407F5DC0C206, double 0x41E96E3A40C9A788, double 0xC151E9B261F60E0A, double 0x40A51A3ED3F64AC9], align 16
@J1.Qone = internal unnamed_addr constant [9 x double] [double 0x444F81C2E523683D, double 0x43E491E139AE7522, double 0x436B0DDF388A59F6, double 0x42E7AA6E7871A918, double 0x425E85BCB84A30F5, double 0x41CE372A2D2DE908, double 0x4136EA619851D3CA, double 0x40991BB9EE66133E, double 1.000000e+00], align 16
@P1.Pone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EEA4DB0C43C658, double 0x40DE9E7DA39BF79D, double 0x40B3797BB3646E7F, double 0x406A64E4B4E35797, double 0x3FF41D6010A865E8], align 16
@P1.Qone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EE9CCB1A4A81E9, double 0x40DE821A02293EF4, double 0x40B34265806168F6, double 0x4069627B08F1C66B, double 1.000000e+00], align 16
@Q1.Pone = internal unnamed_addr constant [6 x double] [double 0x4075F2CD95877EA5, double 0x408688503DDC68E8, double 0x407A9FCBFC4E8E2C, double 0x4054CC274093A456, double 0x401245CEC89DC00C, double 0x3FA2169069C535FB], align 16
@Q1.Qone = internal unnamed_addr constant [6 x double] [double 0x40BD43BCC75F5387, double 0x40CE1B16B30D93F2, double 0x40C1E01DA86532F5, double 0x409C4CBF2E6DF9FA, double 0x4059F4668A3ED3A5, double 1.000000e+00], align 16
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@.gomp_critical_user_MagickCore_InterpolativeResizeImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.30 = private unnamed_addr constant [13 x i8] c"Resize/Image\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"`%s' (LQR)\00", align 1
@.gomp_critical_user_MagickCore_MagnifyImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.34 = private unnamed_addr constant [14 x i8] c"Magnify/Image\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"NegativeOrZeroImageSize\00", align 1
@.gomp_critical_user_MagickCore_HorizontalFilter.var = common global [8 x i32] zeroinitializer, align 8
@.gomp_critical_user_MagickCore_VerticalFilter.var = common global [8 x i32] zeroinitializer, align 8
@.str.36 = private unnamed_addr constant [14 x i8] c"sample:offset\00", align 1
@.gomp_critical_user_MagickCore_SampleImage.var = common global [8 x i32] zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [13 x i8] c"Sample/Image\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"Scale/Image\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"file://%s\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Thumb::URI\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Thumb::MTime\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"Thumb::Size\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"image/%s\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"Thumb::Mimetype\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"Thumb::Image::Width\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"Thumb::Image::Height\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"Thumb::Document::Pages\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @AcquireResizeFilter(ptr noundef %0, i32 noundef %1, float noundef %2, i32 noundef %3, ptr nocapture readnone %4) local_unnamed_addr #0 {
  %6 = alloca %struct._ExceptionInfo, align 8
  %7 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 902, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #29
  br label %14

14:                                               ; preds = %11, %5
  %15 = tail call dereferenceable_or_null(80) ptr @AcquireMagickMemory(i64 noundef 80) #30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  call void @GetExceptionInfo(ptr noundef nonnull %6) #29
  %18 = tail call ptr @__errno_location() #31
  %19 = load i32, ptr %18, align 4, !tbaa !25
  %20 = call ptr @GetExceptionMessage(i32 noundef %19) #29
  %21 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 909, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %20) #29
  %22 = call ptr @DestroyString(ptr noundef %20) #29
  call void @CatchException(ptr noundef nonnull %6) #29
  %23 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %6) #29
  call void @MagickCoreTerminus() #29
  call void @_exit(i32 noundef 1) #32
  unreachable

24:                                               ; preds = %14
  %25 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %15, i32 noundef 0, i64 noundef 80) #29
  %26 = zext i32 %1 to i64
  %27 = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %26
  %28 = load i32, ptr %27, align 8, !tbaa !26
  %29 = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %26, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !28
  %31 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 5
  store float %2, ptr %31, align 4, !tbaa !29
  %32 = icmp ne i32 %3, 0
  %33 = icmp eq i32 %28, 15
  %34 = select i1 %32, i1 %33, i1 false
  %35 = icmp ne i32 %1, 15
  %36 = and i1 %35, %34
  %37 = select i1 %36, i32 13, i32 %28
  %38 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #29
  %39 = icmp eq ptr %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %24
  %41 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %38) #29
  %42 = add i64 %41, -1
  %43 = icmp ult i64 %42, 30
  %44 = trunc i64 %41 to i32
  %45 = select i1 %43, i32 2, i32 %30
  %46 = select i1 %43, i32 %44, i32 %37
  %47 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %66, label %49

49:                                               ; preds = %40
  %50 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %47) #29
  %51 = add i64 %50, -1
  %52 = icmp ult i64 %51, 30
  %53 = trunc i64 %50 to i32
  %54 = select i1 %52, i32 %53, i32 %45
  br label %66

55:                                               ; preds = %24
  %56 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #29
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %56) #29
  %60 = add i64 %59, -1
  %61 = icmp ult i64 %60, 30
  %62 = select i1 %32, i32 13, i32 15
  %63 = trunc i64 %59 to i32
  %64 = select i1 %61, i32 %63, i32 %30
  %65 = select i1 %61, i32 %62, i32 %37
  br label %66

66:                                               ; preds = %49, %40, %55, %58
  %67 = phi i32 [ %64, %58 ], [ %30, %55 ], [ %45, %40 ], [ %54, %49 ]
  %68 = phi i32 [ %65, %58 ], [ %37, %55 ], [ %46, %40 ], [ %46, %49 ]
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 16, !tbaa !32
  store ptr %71, ptr %15, align 8, !tbaa !34
  %72 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %69, i32 1
  %73 = load double, ptr %72, align 8, !tbaa !35
  %74 = fptrunc double %73 to float
  %75 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 2
  store float %74, ptr %75, align 8, !tbaa !36
  %76 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %69, i32 5
  %77 = load i32, ptr %76, align 8, !tbaa !37
  %78 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 7
  store i32 %77, ptr %78, align 4, !tbaa !38
  %79 = zext i32 %67 to i64
  %80 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %79
  %81 = load ptr, ptr %80, align 16, !tbaa !32
  %82 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !39
  %83 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %79, i32 5
  %84 = load i32, ptr %83, align 8, !tbaa !37
  %85 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 8
  store i32 %84, ptr %85, align 8, !tbaa !40
  %86 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %79, i32 2
  %87 = load double, ptr %86, align 16, !tbaa !41
  %88 = fptrunc double %87 to float
  %89 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 4
  store float %88, ptr %89, align 8, !tbaa !42
  %90 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 9
  store i64 2880220587, ptr %90, align 8, !tbaa !43
  br i1 %32, label %91, label %94

91:                                               ; preds = %66
  switch i32 %68, label %103 [
    i32 2, label %92
    i32 22, label %93
    i32 23, label %93
    i32 24, label %93
    i32 25, label %93
    i32 30, label %93
  ]

92:                                               ; preds = %91
  store float 0x3FE6A09E60000000, ptr %75, align 8, !tbaa !36
  br label %103

93:                                               ; preds = %91, %91, %91, %91, %91
  store ptr @Jinc, ptr %15, align 8, !tbaa !34
  store ptr @Jinc, ptr %82, align 8, !tbaa !39
  store float 0x3FF383C4A0000000, ptr %89, align 8, !tbaa !42
  br label %94

94:                                               ; preds = %93, %66
  %95 = phi ptr [ @Jinc, %93 ], [ %81, %66 ]
  %96 = phi ptr [ @Jinc, %93 ], [ %71, %66 ]
  switch i32 %68, label %103 [
    i32 23, label %97
    i32 25, label %100
  ]

97:                                               ; preds = %94
  %98 = load float, ptr %31, align 4, !tbaa !29
  %99 = fmul float %98, 0x3FEF6667A0000000
  store float %99, ptr %31, align 4, !tbaa !29
  br label %103

100:                                              ; preds = %94
  %101 = load float, ptr %31, align 4, !tbaa !29
  %102 = fmul float %101, 0x3FEE8F5480000000
  store float %102, ptr %31, align 4, !tbaa !29
  br label %103

103:                                              ; preds = %92, %91, %94, %100, %97
  %104 = phi ptr [ %81, %92 ], [ %81, %91 ], [ %95, %94 ], [ %95, %100 ], [ %95, %97 ]
  %105 = phi ptr [ %71, %92 ], [ %71, %91 ], [ %96, %94 ], [ %96, %100 ], [ %96, %97 ]
  %106 = icmp eq ptr %105, @Gaussian
  %107 = icmp eq ptr %104, @Gaussian
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #29
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = tail call fastcc double @StringToDouble(ptr noundef nonnull %110) #33
  %114 = fptrunc double %113 to float
  br label %115

115:                                              ; preds = %112, %109
  %116 = phi float [ %114, %112 ], [ 5.000000e-01, %109 ]
  %117 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6
  store float %116, ptr %117, align 8, !tbaa !44
  %118 = fpext float %116 to double
  %119 = fmul double %118, 2.000000e+00
  %120 = fmul double %119, %118
  %121 = tail call fastcc double @PerceptibleReciprocal(double noundef %120) #33
  %122 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6, i64 1
  %123 = fmul double %118, 0x401921FB54442D18
  %124 = fmul double %123, %118
  %125 = tail call fastcc double @PerceptibleReciprocal(double noundef %124) #33
  %126 = insertelement <2 x double> poison, double %121, i64 0
  %127 = insertelement <2 x double> %126, double %125, i64 1
  %128 = fptrunc <2 x double> %127 to <2 x float>
  store <2 x float> %128, ptr %122, align 4, !tbaa !44
  %129 = fcmp ogt float %116, 5.000000e-01
  br i1 %129, label %130, label %135

130:                                              ; preds = %115
  %131 = load float, ptr %75, align 8, !tbaa !36
  %132 = fpext float %131 to double
  %133 = fmul double %119, %132
  %134 = fptrunc double %133 to float
  store float %134, ptr %75, align 8, !tbaa !36
  br label %135

135:                                              ; preds = %130, %115
  %136 = load ptr, ptr %15, align 8, !tbaa !34
  br label %137

137:                                              ; preds = %103, %135
  %138 = phi ptr [ %136, %135 ], [ %105, %103 ]
  %139 = icmp eq ptr %138, @Kaiser
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %82, align 8, !tbaa !39
  %142 = icmp eq ptr %141, @Kaiser
  br i1 %142, label %143, label %172

143:                                              ; preds = %140, %137
  %144 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #29
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = tail call fastcc double @StringToDouble(ptr noundef nonnull %144) #33
  %148 = fptrunc double %147 to float
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi float [ %148, %146 ], [ 6.500000e+00, %143 ]
  %151 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #29
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %149
  %154 = tail call fastcc double @StringToDouble(ptr noundef nonnull %151) #33
  %155 = fptrunc double %154 to float
  br label %156

156:                                              ; preds = %153, %149
  %157 = phi float [ %155, %153 ], [ %150, %149 ]
  %158 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #29
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = tail call fastcc double @StringToDouble(ptr noundef nonnull %158) #33
  %162 = fmul double %161, 0x400921FB54442D18
  %163 = fptrunc double %162 to float
  br label %164

164:                                              ; preds = %160, %156
  %165 = phi float [ %163, %160 ], [ %157, %156 ]
  %166 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6
  store float %165, ptr %166, align 8, !tbaa !44
  %167 = tail call fastcc float @I0(float noundef %165) #33
  %168 = fpext float %167 to double
  %169 = tail call fastcc double @PerceptibleReciprocal(double noundef %168) #33
  %170 = fptrunc double %169 to float
  %171 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6, i64 1
  store float %170, ptr %171, align 4, !tbaa !44
  br label %172

172:                                              ; preds = %164, %140
  %173 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #29
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %172
  %176 = tail call fastcc i64 @StringToLong(ptr noundef nonnull %173) #33
  %177 = tail call i64 @llvm.smax.i64(i64 %176, i64 1)
  %178 = sitofp i64 %177 to float
  store float %178, ptr %75, align 8, !tbaa !36
  br label %179

179:                                              ; preds = %175, %172
  %180 = load ptr, ptr %15, align 8, !tbaa !34
  %181 = icmp eq ptr %180, @Jinc
  br i1 %181, label %182, label %202

182:                                              ; preds = %179
  %183 = load float, ptr %75, align 8, !tbaa !36
  %184 = fcmp ogt float %183, 1.600000e+01
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = fptosi float %183 to i64
  %187 = add nsw i64 %186, -1
  %188 = getelementptr inbounds [16 x double], ptr @AcquireResizeFilter.jinc_zeros, i64 0, i64 %187
  %189 = load double, ptr %188, align 8, !tbaa !45
  %190 = fptrunc double %189 to float
  br label %191

191:                                              ; preds = %182, %185
  %192 = phi float [ %190, %185 ], [ 0x40303F66C0000000, %182 ]
  store float %192, ptr %75, align 8, !tbaa !36
  %193 = icmp eq i32 %68, 30
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = fpext float %192 to double
  %196 = tail call double @llvm.floor.f64(double %195)
  %197 = fdiv double %196, %195
  %198 = load float, ptr %31, align 4, !tbaa !29
  %199 = fpext float %198 to double
  %200 = fmul double %197, %199
  %201 = fptrunc double %200 to float
  store float %201, ptr %31, align 4, !tbaa !29
  br label %202

202:                                              ; preds = %191, %194, %179
  %203 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #29
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load float, ptr %31, align 4, !tbaa !29
  br label %213

207:                                              ; preds = %202
  %208 = tail call fastcc double @StringToDouble(ptr noundef nonnull %203) #33
  %209 = load float, ptr %31, align 4, !tbaa !29
  %210 = fpext float %209 to double
  %211 = fmul double %208, %210
  %212 = fptrunc double %211 to float
  store float %212, ptr %31, align 4, !tbaa !29
  br label %213

213:                                              ; preds = %205, %207
  %214 = phi float [ %206, %205 ], [ %212, %207 ]
  %215 = fpext float %214 to double
  %216 = fcmp olt double %215, 1.000000e-15
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store float 0x3CD203AFA0000000, ptr %31, align 4, !tbaa !29
  br label %218

218:                                              ; preds = %217, %213
  %219 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.13) #29
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %218
  %222 = load float, ptr %75, align 8, !tbaa !36
  br label %227

223:                                              ; preds = %218
  %224 = tail call fastcc double @StringToDouble(ptr noundef nonnull %219) #33
  %225 = fptrunc double %224 to float
  %226 = tail call float @llvm.fabs.f32(float %225)
  store float %226, ptr %75, align 8, !tbaa !36
  br label %227

227:                                              ; preds = %221, %223
  %228 = phi float [ %222, %221 ], [ %226, %223 ]
  %229 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 3
  store float %228, ptr %229, align 4, !tbaa !46
  %230 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #29
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load float, ptr %229, align 4, !tbaa !46
  br label %238

234:                                              ; preds = %227
  %235 = tail call fastcc double @StringToDouble(ptr noundef nonnull %230) #33
  %236 = fptrunc double %235 to float
  %237 = tail call float @llvm.fabs.f32(float %236)
  store float %237, ptr %229, align 4, !tbaa !46
  br label %238

238:                                              ; preds = %232, %234
  %239 = phi float [ %233, %232 ], [ %237, %234 ]
  %240 = load float, ptr %89, align 8, !tbaa !42
  %241 = fdiv float %240, %239
  store float %241, ptr %89, align 8, !tbaa !42
  %242 = load ptr, ptr %15, align 8, !tbaa !34
  %243 = icmp eq ptr %242, @CubicBC
  br i1 %243, label %247, label %244

244:                                              ; preds = %238
  %245 = load ptr, ptr %82, align 8, !tbaa !39
  %246 = icmp eq ptr %245, @CubicBC
  br i1 %246, label %247, label %311

247:                                              ; preds = %244, %238
  %248 = icmp eq ptr %81, @CubicBC
  %249 = select i1 %248, i64 %79, i64 %69
  %250 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %249, i32 3
  %251 = load double, ptr %250, align 8, !tbaa !47
  %252 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %249, i32 4
  %253 = load double, ptr %252, align 16, !tbaa !48
  %254 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #29
  %255 = icmp eq ptr %254, null
  br i1 %255, label %268, label %256

256:                                              ; preds = %247
  %257 = tail call fastcc double @StringToDouble(ptr noundef nonnull %254) #33
  %258 = fptrunc double %257 to float
  %259 = fpext float %258 to double
  %260 = fsub double 1.000000e+00, %259
  %261 = fmul double %260, 5.000000e-01
  %262 = fptrunc double %261 to float
  %263 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #29
  %264 = icmp eq ptr %263, null
  br i1 %264, label %279, label %265

265:                                              ; preds = %256
  %266 = tail call fastcc double @StringToDouble(ptr noundef nonnull %263) #33
  %267 = fptrunc double %266 to float
  br label %279

268:                                              ; preds = %247
  %269 = fptrunc double %251 to float
  %270 = fptrunc double %253 to float
  %271 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #29
  %272 = icmp eq ptr %271, null
  br i1 %272, label %279, label %273

273:                                              ; preds = %268
  %274 = tail call fastcc double @StringToDouble(ptr noundef nonnull %271) #33
  %275 = fptrunc double %274 to float
  %276 = fpext float %275 to double
  %277 = tail call double @llvm.fmuladd.f64(double %276, double -2.000000e+00, double 1.000000e+00)
  %278 = fptrunc double %277 to float
  br label %279

279:                                              ; preds = %268, %273, %256, %265
  %280 = phi float [ %267, %265 ], [ %262, %256 ], [ %275, %273 ], [ %270, %268 ]
  %281 = phi float [ %258, %265 ], [ %258, %256 ], [ %278, %273 ], [ %269, %268 ]
  %282 = fadd float %281, %281
  %283 = fpext float %282 to double
  %284 = fpext float %281 to double
  %285 = tail call double @llvm.fmuladd.f64(double %284, double 0xBFD5555555555555, double 1.000000e+00)
  %286 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6
  %287 = fadd double %283, -3.000000e+00
  %288 = fpext float %280 to double
  %289 = fadd double %287, %288
  %290 = tail call double @llvm.fmuladd.f64(double %284, double -1.500000e+00, double 2.000000e+00)
  %291 = fsub double %290, %288
  %292 = fmul double %288, 4.000000e+00
  %293 = tail call double @llvm.fmuladd.f64(double %284, double 0x3FF5555555555555, double %292)
  %294 = insertelement <4 x double> poison, double %285, i64 0
  %295 = insertelement <4 x double> %294, double %289, i64 1
  %296 = insertelement <4 x double> %295, double %291, i64 2
  %297 = insertelement <4 x double> %296, double %293, i64 3
  %298 = fptrunc <4 x double> %297 to <4 x float>
  store <4 x float> %298, ptr %286, align 8, !tbaa !44
  %299 = fneg double %283
  %300 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6, i64 4
  %301 = insertelement <2 x double> poison, double %288, i64 0
  %302 = shufflevector <2 x double> %301, <2 x double> poison, <2 x i32> zeroinitializer
  %303 = insertelement <2 x double> poison, double %299, i64 0
  %304 = insertelement <2 x double> %303, double %284, i64 1
  %305 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %302, <2 x double> <double -8.000000e+00, double 5.000000e+00>, <2 x double> %304)
  %306 = fptrunc <2 x double> %305 to <2 x float>
  store <2 x float> %306, ptr %300, align 8, !tbaa !44
  %307 = fneg double %288
  %308 = tail call double @llvm.fmuladd.f64(double %284, double 0xBFC5555555555555, double %307)
  %309 = fptrunc double %308 to float
  %310 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6, i64 6
  store float %309, ptr %310, align 8, !tbaa !44
  br label %311

311:                                              ; preds = %279, %244
  %312 = phi double [ %288, %279 ], [ 0.000000e+00, %244 ]
  %313 = phi double [ %284, %279 ], [ 0.000000e+00, %244 ]
  %314 = tail call i32 @__kmpc_master(ptr nonnull @1, i32 %7)
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %423, label %316

316:                                              ; preds = %311
  %317 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #29
  %318 = tail call i32 @IsMagickTrue(ptr noundef %317) #29
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %421, label %320

320:                                              ; preds = %316
  %321 = load ptr, ptr %15, align 8, !tbaa !34
  %322 = icmp eq ptr %321, @Box
  %323 = select i1 %322, i32 2, i32 %68
  %324 = icmp eq ptr %321, @Sinc
  %325 = select i1 %324, i32 14, i32 %323
  %326 = icmp eq ptr %321, @SincFast
  %327 = select i1 %326, i32 15, i32 %325
  %328 = icmp eq ptr %321, @Jinc
  %329 = select i1 %328, i32 13, i32 %327
  %330 = icmp eq ptr %321, @CubicBC
  %331 = select i1 %330, i32 10, i32 %329
  %332 = load ptr, ptr %82, align 8, !tbaa !39
  %333 = icmp eq ptr %332, @Box
  %334 = select i1 %333, i32 2, i32 %67
  %335 = icmp eq ptr %332, @Sinc
  %336 = select i1 %335, i32 14, i32 %334
  %337 = icmp eq ptr %332, @SincFast
  %338 = select i1 %337, i32 15, i32 %336
  %339 = icmp eq ptr %332, @Jinc
  %340 = select i1 %339, i32 13, i32 %338
  %341 = icmp eq ptr %332, @CubicBC
  %342 = select i1 %341, i32 10, i32 %340
  %343 = tail call float @GetResizeFilterSupport(ptr noundef nonnull %15) #33
  %344 = fpext float %343 to double
  %345 = load ptr, ptr @stdout, align 8, !tbaa !49
  %346 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %345, ptr noundef nonnull @.str.18) #29
  %347 = load ptr, ptr @stdout, align 8, !tbaa !49
  %348 = zext i32 %331 to i64
  %349 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %348) #29
  %350 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %347, ptr noundef nonnull @.str.19, ptr noundef %349) #29
  %351 = load ptr, ptr @stdout, align 8, !tbaa !49
  %352 = zext i32 %342 to i64
  %353 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %352) #29
  %354 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %351, ptr noundef nonnull @.str.20, ptr noundef %353) #29
  %355 = load ptr, ptr @stdout, align 8, !tbaa !49
  %356 = tail call i32 @GetMagickPrecision() #29
  %357 = load float, ptr %75, align 8, !tbaa !36
  %358 = fpext float %357 to double
  %359 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %355, ptr noundef nonnull @.str.21, i32 noundef %356, double noundef %358) #29
  %360 = load ptr, ptr @stdout, align 8, !tbaa !49
  %361 = tail call i32 @GetMagickPrecision() #29
  %362 = load float, ptr %229, align 4, !tbaa !46
  %363 = fpext float %362 to double
  %364 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %360, ptr noundef nonnull @.str.22, i32 noundef %361, double noundef %363) #29
  %365 = load ptr, ptr @stdout, align 8, !tbaa !49
  %366 = tail call i32 @GetMagickPrecision() #29
  %367 = load float, ptr %31, align 4, !tbaa !29
  %368 = fpext float %367 to double
  %369 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %365, ptr noundef nonnull @.str.23, i32 noundef %366, double noundef %368) #29
  %370 = icmp eq i32 %331, 8
  %371 = icmp eq i32 %342, 8
  %372 = or i1 %370, %371
  br i1 %372, label %373, label %380

373:                                              ; preds = %320
  %374 = load ptr, ptr @stdout, align 8, !tbaa !49
  %375 = tail call i32 @GetMagickPrecision() #29
  %376 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6
  %377 = load float, ptr %376, align 8, !tbaa !44
  %378 = fpext float %377 to double
  %379 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %374, ptr noundef nonnull @.str.24, i32 noundef %375, double noundef %378) #29
  br label %380

380:                                              ; preds = %320, %373
  %381 = icmp eq i32 %331, 16
  %382 = icmp eq i32 %342, 16
  %383 = or i1 %381, %382
  br i1 %383, label %384, label %391

384:                                              ; preds = %380
  %385 = load ptr, ptr @stdout, align 8, !tbaa !49
  %386 = tail call i32 @GetMagickPrecision() #29
  %387 = getelementptr inbounds %struct._ResizeFilter, ptr %15, i64 0, i32 6
  %388 = load float, ptr %387, align 8, !tbaa !44
  %389 = fpext float %388 to double
  %390 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %385, ptr noundef nonnull @.str.25, i32 noundef %386, double noundef %389) #29
  br label %391

391:                                              ; preds = %380, %384
  %392 = load ptr, ptr @stdout, align 8, !tbaa !49
  %393 = tail call i32 @GetMagickPrecision() #29
  %394 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %392, ptr noundef nonnull @.str.26, i32 noundef %393, double noundef %344) #29
  %395 = icmp eq i32 %331, 10
  %396 = icmp eq i32 %342, 10
  %397 = or i1 %395, %396
  br i1 %397, label %398, label %403

398:                                              ; preds = %391
  %399 = load ptr, ptr @stdout, align 8, !tbaa !49
  %400 = tail call i32 @GetMagickPrecision() #29
  %401 = tail call i32 @GetMagickPrecision() #29
  %402 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %399, ptr noundef nonnull @.str.27, i32 noundef %400, double noundef %313, i32 noundef %401, double noundef %312) #29
  br label %403

403:                                              ; preds = %391, %398
  %404 = load ptr, ptr @stdout, align 8, !tbaa !49
  %405 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %404, ptr noundef nonnull @.str.28) #29
  %406 = fcmp ult float %343, 0.000000e+00
  br i1 %406, label %417, label %407

407:                                              ; preds = %403, %407
  %408 = phi double [ %415, %407 ], [ 0.000000e+00, %403 ]
  %409 = load ptr, ptr @stdout, align 8, !tbaa !49
  %410 = tail call i32 @GetMagickPrecision() #29
  %411 = fptrunc double %408 to float
  %412 = tail call float @GetResizeFilterWeight(ptr noundef nonnull %15, float noundef %411) #33
  %413 = fpext float %412 to double
  %414 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %409, ptr noundef nonnull @.str.29, double noundef %408, i32 noundef %410, double noundef %413) #29
  %415 = fadd double %408, 0x3F847AE140000000
  %416 = fcmp ugt double %415, %344
  br i1 %416, label %417, label %407, !llvm.loop !50

417:                                              ; preds = %407, %403
  %418 = load ptr, ptr @stdout, align 8, !tbaa !49
  %419 = tail call i32 @GetMagickPrecision() #29
  %420 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %418, ptr noundef nonnull @.str.29, double noundef %344, i32 noundef %419, double noundef 0.000000e+00) #29
  br label %421

421:                                              ; preds = %417, %316
  %422 = tail call i32 @DeleteImageArtifact(ptr noundef %0, ptr noundef nonnull @.str.17) #29
  tail call void @__kmpc_end_master(ptr nonnull @1, i32 %7)
  br label %423

423:                                              ; preds = %421, %311
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @Box(float %0, ptr nocapture readnone %1) #2 {
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @Triangle(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fcmp olt float %0, 1.000000e+00
  %4 = fsub float 1.000000e+00, %0
  %5 = select i1 %3, float %4, float 0.000000e+00
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal float @CubicBC(float noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = fcmp olt float %0, 1.000000e+00
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6
  %6 = load float, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 2
  %10 = load float, ptr %9, align 8, !tbaa !44
  %11 = tail call float @llvm.fmuladd.f32(float %0, float %10, float %8)
  %12 = fmul float %11, %0
  %13 = tail call float @llvm.fmuladd.f32(float %0, float %12, float %6)
  br label %28

14:                                               ; preds = %2
  %15 = fcmp olt float %0, 2.000000e+00
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 3
  %18 = load float, ptr %17, align 4, !tbaa !44
  %19 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 4
  %20 = load float, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 5
  %22 = load float, ptr %21, align 4, !tbaa !44
  %23 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 6
  %24 = load float, ptr %23, align 8, !tbaa !44
  %25 = tail call float @llvm.fmuladd.f32(float %0, float %24, float %22)
  %26 = tail call float @llvm.fmuladd.f32(float %0, float %25, float %20)
  %27 = tail call float @llvm.fmuladd.f32(float %0, float %26, float %18)
  br label %28

28:                                               ; preds = %14, %16, %4
  %29 = phi float [ %13, %4 ], [ %27, %16 ], [ 0.000000e+00, %14 ]
  ret float %29
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Hanning(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #29
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 5.000000e-01, double 5.000000e-01)
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Hamming(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #29
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 4.600000e-01, double 5.400000e-01)
  %9 = fptrunc double %8 to float
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Blackman(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #29
  %6 = fptrunc double %5 to float
  %7 = fpext float %6 to double
  %8 = tail call double @llvm.fmuladd.f64(double %7, double 1.600000e-01, double 5.000000e-01)
  %9 = tail call double @llvm.fmuladd.f64(double %7, double %8, double 3.400000e-01)
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal float @Gaussian(float noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !44
  %5 = fneg float %4
  %6 = fmul float %5, %0
  %7 = fmul float %6, %0
  %8 = fpext float %7 to double
  %9 = tail call double @exp(double noundef %8) #29
  %10 = fptrunc double %9 to float
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
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

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal float @Jinc(float noundef %0, ptr nocapture readnone %1) #6 {
  %3 = fcmp oeq float %0, 0.000000e+00
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = fmul float %0, 0x400921FB60000000
  %6 = tail call fastcc float @BesselOrderOne(float noundef %5) #33
  %7 = fdiv float %6, %0
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi float [ %7, %4 ], [ 0x3FF921FB60000000, %2 ]
  ret float %9
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Sinc(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fcmp une float %0, 0.000000e+00
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = fpext float %0 to double
  %6 = fmul double %5, 0x400921FB54442D18
  %7 = fptrunc double %6 to float
  %8 = fpext float %7 to double
  %9 = tail call double @sin(double noundef %8) #29
  %10 = fdiv double %9, %8
  %11 = fptrunc double %10 to float
  br label %12

12:                                               ; preds = %2, %4
  %13 = phi float [ %11, %4 ], [ 1.000000e+00, %2 ]
  ret float %13
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @SincFast(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fcmp ogt float %0, 4.000000e+00
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = fpext float %0 to double
  %6 = fmul double %5, 0x400921FB54442D18
  %7 = fptrunc double %6 to float
  %8 = fpext float %7 to double
  %9 = tail call double @sin(double noundef %8) #29
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

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal float @Kaiser(float noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 6, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !44
  %6 = load float, ptr %3, align 8, !tbaa !44
  %7 = fpext float %6 to double
  %8 = fmul float %0, %0
  %9 = fpext float %8 to double
  %10 = fsub double 1.000000e+00, %9
  %11 = tail call double @sqrt(double noundef %10) #29
  %12 = fmul double %11, %7
  %13 = fptrunc double %12 to float
  %14 = tail call fastcc float @I0(float noundef %13) #33
  %15 = fmul float %5, %14
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef float @Welsh(float noundef %0, ptr nocapture readnone %1) #2 {
  %3 = fcmp olt float %0, 1.000000e+00
  %4 = fmul float %0, %0
  %5 = fsub float 1.000000e+00, %4
  %6 = select i1 %3, float %5, float 0.000000e+00
  ret float %6
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Bohman(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x400921FB54442D18
  %5 = tail call double @cos(double noundef %4) #29
  %6 = fneg double %5
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %5, double 1.000000e+00)
  %8 = tail call double @sqrt(double noundef %7) #29
  %9 = fsub double 1.000000e+00, %3
  %10 = fmul double %8, 0x3FD45F306DC9C883
  %11 = tail call double @llvm.fmuladd.f64(double %9, double %5, double %10)
  %12 = fptrunc double %11 to float
  ret float %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal float @Lagrange(float noundef %0, ptr nocapture noundef readonly %1) #8 {
  %3 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !36
  %5 = fcmp olt float %4, %0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %1, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !46
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
  br i1 %28, label %29, label %15, !llvm.loop !52

29:                                               ; preds = %25, %6, %2
  %30 = phi float [ 0.000000e+00, %2 ], [ 1.000000e+00, %6 ], [ %26, %25 ]
  ret float %30
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal float @Cosine(float noundef %0, ptr nocapture readnone %1) #4 {
  %3 = fpext float %0 to double
  %4 = fmul double %3, 0x3FF921FB54442D18
  %5 = tail call double @cos(double noundef %4) #29
  %6 = fptrunc double %5 to float
  ret float %6
}

; Function Attrs: optsize
declare i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize allocsize(0)
declare ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @GetExceptionInfo(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: optsize
declare i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyString(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @CatchException(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @MagickCoreTerminus() local_unnamed_addr #9

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @StringToDouble(ptr noalias noundef %0) unnamed_addr #0 {
  %2 = tail call double @InterpretLocaleValue(ptr noundef %0, ptr noundef null) #29
  ret double %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @PerceptibleReciprocal(double noundef %0) unnamed_addr #2 {
  %2 = fcmp olt double %0, 0.000000e+00
  %3 = select i1 %2, double -1.000000e+00, double 1.000000e+00
  %4 = fmul double %3, %0
  %5 = fcmp ult double %4, 1.000000e-15
  %6 = fdiv double 1.000000e+00, %0
  %7 = fdiv double %3, 1.000000e-15
  %8 = select i1 %5, double %7, double %6
  ret double %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @I0(float noundef %0) unnamed_addr #13 {
  %2 = fmul float %0, %0
  %3 = fmul float %2, 2.500000e-01
  %4 = fpext float %3 to double
  %5 = fcmp ogt double %4, 1.000000e-15
  br i1 %5, label %6, label %18

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %15, %6 ], [ 2, %1 ]
  %8 = phi float [ %10, %6 ], [ 1.000000e+00, %1 ]
  %9 = phi float [ %14, %6 ], [ %3, %1 ]
  %10 = fadd float %9, %8
  %11 = sitofp i64 %7 to float
  %12 = fmul float %11, %11
  %13 = fdiv float %3, %12
  %14 = fmul float %9, %13
  %15 = add nuw nsw i64 %7, 1
  %16 = fpext float %14 to double
  %17 = fcmp ogt double %16, 1.000000e-15
  br i1 %17, label %6, label %18, !llvm.loop !53

18:                                               ; preds = %6, %1
  %19 = phi float [ 1.000000e+00, %1 ], [ %10, %6 ]
  ret float %19
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define internal fastcc i64 @StringToLong(ptr noalias nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10) #29
  ret i64 %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @__kmpc_master(ptr, i32) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @__kmpc_end_master(ptr, i32) local_unnamed_addr #16

; Function Attrs: optsize
declare i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !29
  %6 = fmul float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @GetMagickPrecision() local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @GetResizeFilterWeight(ptr noundef %0, float noundef %1) local_unnamed_addr #0 {
  %3 = tail call float @llvm.fabs.f32(float %1)
  %4 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %5 = load float, ptr %4, align 4, !tbaa !29
  %6 = fdiv float %3, %5
  %7 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fpext float %8 to double
  %10 = fcmp olt double %9, 1.000000e-15
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = icmp eq ptr %13, @Box
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %17 = load float, ptr %16, align 8, !tbaa !42
  %18 = fmul float %6, %17
  %19 = tail call float %13(float noundef %18, ptr noundef nonnull %0) #29
  br label %20

20:                                               ; preds = %2, %11, %15
  %21 = phi float [ %19, %15 ], [ 1.000000e+00, %11 ], [ 1.000000e+00, %2 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = tail call float %22(float noundef %6, ptr noundef nonnull %0) #29
  %24 = fmul float %21, %23
  ret float %24
}

; Function Attrs: optsize
declare i32 @DeleteImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline nounwind optsize memory(write) uwtable
define internal fastcc float @BesselOrderOne(float noundef %0) unnamed_addr #6 {
  %2 = fcmp oeq float %0, 0.000000e+00
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = fcmp olt float %0, 0.000000e+00
  %5 = fneg float %0
  %6 = select i1 %4, float %5, float %0
  %7 = fcmp olt float %6, 8.000000e+00
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call fastcc float @J1(float noundef %6) #33
  %10 = fmul float %9, %0
  br label %36

11:                                               ; preds = %3
  %12 = fpext float %6 to double
  %13 = fmul double %12, 0x400921FB54442D18
  %14 = fdiv double 2.000000e+00, %13
  %15 = tail call double @sqrt(double noundef %14) #29
  %16 = tail call fastcc float @P1(float noundef %6) #33
  %17 = fpext float %16 to double
  %18 = tail call double @sin(double noundef %12) #29
  %19 = tail call double @cos(double noundef %12) #29
  %20 = fsub double %18, %19
  %21 = fmul double %20, 0x3FE6A09E667F3BCC
  %22 = tail call fastcc float @Q1(float noundef %6) #33
  %23 = fpext float %22 to double
  %24 = tail call double @sin(double noundef %12) #29
  %25 = tail call double @cos(double noundef %12) #29
  %26 = fadd double %24, %25
  %27 = fmul double %26, 0xBFE6A09E667F3BCC
  %28 = fdiv double -8.000000e+00, %12
  %29 = fmul double %28, %23
  %30 = fmul double %29, %27
  %31 = tail call double @llvm.fmuladd.f64(double %17, double %21, double %30)
  %32 = fmul double %15, %31
  %33 = fptrunc double %32 to float
  %34 = fneg float %33
  %35 = select i1 %4, float %34, float %33
  br label %36

36:                                               ; preds = %1, %11, %8
  %37 = phi float [ %10, %8 ], [ %35, %11 ], [ 0.000000e+00, %1 ]
  ret float %37
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @J1(float noundef %0) unnamed_addr #13 {
  %2 = insertelement <2 x float> poison, float %0, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 7, %1 ], [ %18, %4 ]
  %6 = phi <2 x float> [ <float 1.000000e+00, float 0x40A51A3EE0000000>, %1 ], [ %17, %4 ]
  %7 = fmul <2 x float> %6, %3
  %8 = getelementptr inbounds [9 x double], ptr @J1.Pone, i64 0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds [9 x double], ptr @J1.Qone, i64 0, i64 %5
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = fmul <2 x float> %7, %3
  %13 = fpext <2 x float> %12 to <2 x double>
  %14 = insertelement <2 x double> poison, double %11, i64 0
  %15 = insertelement <2 x double> %14, double %9, i64 1
  %16 = fadd <2 x double> %15, %13
  %17 = fptrunc <2 x double> %16 to <2 x float>
  %18 = add nsw i64 %5, -1
  %19 = icmp eq i64 %5, 0
  br i1 %19, label %20, label %4, !llvm.loop !54

20:                                               ; preds = %4
  %21 = extractelement <2 x float> %17, i64 0
  %22 = extractelement <2 x float> %17, i64 1
  %23 = fdiv float %22, %21
  ret float %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @P1(float noundef %0) unnamed_addr #13 {
  %2 = fpext float %0 to double
  %3 = fdiv double 8.000000e+00, %2
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 4, %1 ], [ %19, %6 ]
  %8 = phi <2 x float> [ <float 1.000000e+00, float 0x3FF41D6020000000>, %1 ], [ %18, %6 ]
  %9 = fpext <2 x float> %8 to <2 x double>
  %10 = getelementptr inbounds [6 x double], ptr @P1.Pone, i64 0, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds [6 x double], ptr @P1.Qone, i64 0, i64 %7
  %13 = load double, ptr %12, align 8, !tbaa !45
  %14 = fmul <2 x double> %5, %9
  %15 = insertelement <2 x double> poison, double %13, i64 0
  %16 = insertelement <2 x double> %15, double %11, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %5, <2 x double> %16)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = add nsw i64 %7, -1
  %20 = icmp eq i64 %7, 0
  br i1 %20, label %21, label %6, !llvm.loop !55

21:                                               ; preds = %6
  %22 = extractelement <2 x float> %18, i64 0
  %23 = extractelement <2 x float> %18, i64 1
  %24 = fdiv float %23, %22
  ret float %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #17

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc float @Q1(float noundef %0) unnamed_addr #13 {
  %2 = fpext float %0 to double
  %3 = fdiv double 8.000000e+00, %2
  %4 = insertelement <2 x double> poison, double %3, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 4, %1 ], [ %19, %6 ]
  %8 = phi <2 x float> [ <float 1.000000e+00, float 0x3FA2169060000000>, %1 ], [ %18, %6 ]
  %9 = fpext <2 x float> %8 to <2 x double>
  %10 = getelementptr inbounds [6 x double], ptr @Q1.Pone, i64 0, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds [6 x double], ptr @Q1.Qone, i64 0, i64 %7
  %13 = load double, ptr %12, align 8, !tbaa !45
  %14 = fmul <2 x double> %5, %9
  %15 = insertelement <2 x double> poison, double %13, i64 0
  %16 = insertelement <2 x double> %15, double %11, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %5, <2 x double> %16)
  %18 = fptrunc <2 x double> %17 to <2 x float>
  %19 = add nsw i64 %7, -1
  %20 = icmp eq i64 %7, 0
  br i1 %20, label %21, label %6, !llvm.loop !56

21:                                               ; preds = %6
  %22 = extractelement <2 x float> %18, i64 0
  %23 = extractelement <2 x float> %18, i64 1
  %24 = fdiv float %23, %22
  ret float %24
}

; Function Attrs: optsize
declare double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @AdaptiveResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @InterpolativeResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 6, ptr noundef %3) #33
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @InterpolativeResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct._PointInfo, align 16
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %0, ptr %6, align 8, !tbaa !49
  store i32 %3, ptr %7, align 4, !tbaa !25
  store ptr %4, ptr %8, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #16
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1701, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #29
  br label %22

22:                                               ; preds = %19, %5
  %23 = icmp eq i64 %1, 0
  %24 = icmp eq i64 %2, 0
  %25 = or i1 %23, %24
  br i1 %25, label %82, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %28 = load i64, ptr %27, align 8, !tbaa !57
  %29 = icmp eq i64 %28, %1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %32 = load i64, ptr %31, align 8, !tbaa !58
  %33 = icmp eq i64 %32, %2
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %4) #29
  br label %82

36:                                               ; preds = %30, %26
  %37 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %4) #29
  store ptr %37, ptr %11, align 8, !tbaa !49
  %38 = icmp eq ptr %37, null
  br i1 %38, label %82, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %37, i32 noundef 1) #29
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 58
  tail call void @InheritException(ptr noundef %4, ptr noundef nonnull %43) #29
  %44 = tail call ptr @DestroyImage(ptr noundef nonnull %37) #29
  br label %82

45:                                               ; preds = %39
  store i32 1, ptr %12, align 4, !tbaa !25
  store i64 0, ptr %13, align 8, !tbaa !59
  %46 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %4) #29
  store ptr %46, ptr %9, align 8, !tbaa !49
  %47 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %37, ptr noundef %4) #29
  store ptr %47, ptr %10, align 8, !tbaa !49
  %48 = getelementptr inbounds %struct._Image, ptr %37, i64 0, i32 7
  %49 = load <2 x i64>, ptr %27, align 8, !tbaa !60
  %50 = uitofp <2 x i64> %49 to <2 x double>
  %51 = load <2 x i64>, ptr %48, align 8, !tbaa !60
  %52 = uitofp <2 x i64> %51 to <2 x double>
  %53 = fdiv <2 x double> %50, %52
  store <2 x double> %53, ptr %14, align 16, !tbaa !45
  %54 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %55 = shl i64 %54, 5
  %56 = extractelement <2 x i64> %51, i64 1
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #29
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %37) #29
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  br label %70

66:                                               ; preds = %61, %58, %45
  %67 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %68 = icmp ult i64 %67, 2
  %69 = select i1 %68, i64 1, i64 2
  br label %70

70:                                               ; preds = %66, %64
  %71 = phi i64 [ %65, %64 ], [ %69, %66 ]
  %72 = trunc i64 %71 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %15, i32 %72)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 9, ptr nonnull @InterpolativeResizeImage.omp_outlined, ptr nonnull %11, ptr nonnull %12, ptr nonnull %10, ptr nonnull %8, ptr nonnull %6, ptr nonnull %14, ptr nonnull %9, ptr nonnull %7, ptr nonnull %13)
  %73 = load ptr, ptr %10, align 8, !tbaa !49
  %74 = call ptr @DestroyCacheView(ptr noundef %73) #29
  store ptr %74, ptr %10, align 8, !tbaa !49
  %75 = load ptr, ptr %9, align 8, !tbaa !49
  %76 = call ptr @DestroyCacheView(ptr noundef %75) #29
  store ptr %76, ptr %9, align 8, !tbaa !49
  %77 = load i32, ptr %12, align 4, !tbaa !25
  %78 = icmp eq i32 %77, 0
  %79 = load ptr, ptr %11, align 8, !tbaa !49
  br i1 %78, label %80, label %82

80:                                               ; preds = %70
  %81 = call ptr @DestroyImage(ptr noundef %79) #29
  br label %82

82:                                               ; preds = %70, %80, %36, %22, %42, %34
  %83 = phi ptr [ %35, %34 ], [ null, %42 ], [ null, %22 ], [ null, %36 ], [ %81, %80 ], [ %79, %70 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret ptr %83
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DestroyResizeFilter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 9
  store i64 -2880220588, ptr %2, align 8, !tbaa !43
  %3 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #29
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local nonnull ptr @GetResizeFilterCoefficient(ptr noundef readnone %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterBlur(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 5
  %3 = load float, ptr %2, align 4, !tbaa !29
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterScale(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 4
  %3 = load float, ptr %2, align 8, !tbaa !42
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local float @GetResizeFilterWindowSupport(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !46
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GetResizeFilterWeightingType(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !38
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @GetResizeFilterWindowWeightingType(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._ResizeFilter, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !40
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @DestroyImage(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @InterpolativeResizeImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #19 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._MagickPixelPacket, align 8
  %17 = load ptr, ptr %2, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct._Image, ptr %17, i64 0, i32 8
  %19 = load i64, ptr %18, align 8, !tbaa !58
  %20 = add nsw i64 %19, -1
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store i64 0, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  store i64 %20, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  store i64 1, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  store i32 0, ptr %15, align 4, !tbaa !25
  %23 = load i32, ptr %0, align 4, !tbaa !25
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %23, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %24 = load i64, ptr %13, align 8
  %25 = call i64 @llvm.smin.i64(i64 %24, i64 %20)
  store i64 %25, ptr %13, align 8, !tbaa !60
  %26 = load i64, ptr %12, align 8, !tbaa !60
  %27 = icmp sgt i64 %26, %25
  br i1 %27, label %113, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._PointInfo, ptr %7, i64 0, i32 1
  br label %30

30:                                               ; preds = %28, %105
  %31 = phi i64 [ %25, %28 ], [ %111, %105 ]
  %32 = phi i64 [ %26, %28 ], [ %109, %105 ]
  %33 = icmp sgt i64 %32, %31
  br i1 %33, label %105, label %34

34:                                               ; preds = %30, %99
  %35 = phi i64 [ %100, %99 ], [ %32, %30 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #16
  %36 = load i32, ptr %3, align 4, !tbaa !25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %99, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 8, !tbaa !49
  %40 = load ptr, ptr %2, align 8, !tbaa !49
  %41 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %42 = load i64, ptr %41, align 8, !tbaa !57
  %43 = load ptr, ptr %5, align 8, !tbaa !49
  %44 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %39, i64 noundef 0, i64 noundef %35, i64 noundef %42, i64 noundef 1, ptr noundef %43) #34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %99, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %4, align 8, !tbaa !49
  %48 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %47) #29
  %49 = load ptr, ptr %6, align 8, !tbaa !49
  call void @GetMagickPixelPacket(ptr noundef %49, ptr noundef nonnull %16) #29
  %50 = sitofp i64 %35 to float
  %51 = fpext float %50 to double
  %52 = fadd double %51, 5.000000e-01
  %53 = load double, ptr %29, align 8, !tbaa !61
  %54 = call double @llvm.fmuladd.f64(double %52, double %53, double -5.000000e-01)
  %55 = load ptr, ptr %2, align 8, !tbaa !49
  %56 = getelementptr inbounds %struct._Image, ptr %55, i64 0, i32 7
  %57 = load i64, ptr %56, align 8, !tbaa !57
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %46, %59
  %60 = phi i64 [ %75, %59 ], [ 0, %46 ]
  %61 = phi ptr [ %74, %59 ], [ %44, %46 ]
  %62 = sitofp i64 %60 to float
  %63 = fpext float %62 to double
  %64 = fadd double %63, 5.000000e-01
  %65 = load double, ptr %7, align 8, !tbaa !63
  %66 = call double @llvm.fmuladd.f64(double %64, double %65, double -5.000000e-01)
  %67 = load ptr, ptr %6, align 8, !tbaa !49
  %68 = load ptr, ptr %8, align 8, !tbaa !49
  %69 = load i32, ptr %9, align 4, !tbaa !25
  %70 = load ptr, ptr %5, align 8, !tbaa !49
  %71 = call i32 @InterpolateMagickPixelPacket(ptr noundef %67, ptr noundef %68, i32 noundef %69, double noundef %66, double noundef %54, ptr noundef nonnull %16, ptr noundef %70) #29
  %72 = load ptr, ptr %2, align 8, !tbaa !49
  %73 = getelementptr inbounds i16, ptr %48, i64 %60
  call fastcc void @SetPixelPacket(ptr noundef %72, ptr noundef nonnull %16, ptr noundef nonnull %61, ptr noundef %73) #33
  %74 = getelementptr inbounds %struct._PixelPacket, ptr %61, i64 1
  %75 = add nuw nsw i64 %60, 1
  %76 = load ptr, ptr %2, align 8, !tbaa !49
  %77 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 7
  %78 = load i64, ptr %77, align 8, !tbaa !57
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %59, label %80, !llvm.loop !64

80:                                               ; preds = %59, %46
  %81 = load ptr, ptr %4, align 8, !tbaa !49
  %82 = load ptr, ptr %5, align 8, !tbaa !49
  %83 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %81, ptr noundef %82) #34
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %6, align 8, !tbaa !49
  %87 = getelementptr inbounds %struct._Image, ptr %86, i64 0, i32 47
  %88 = load ptr, ptr %87, align 8, !tbaa !65
  %89 = icmp eq ptr %88, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  call void @__kmpc_critical(ptr nonnull @1, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_InterpolativeResizeImage.var)
  %91 = load ptr, ptr %6, align 8, !tbaa !49
  %92 = load i64, ptr %10, align 8, !tbaa !59
  %93 = add nsw i64 %92, 1
  store i64 %93, ptr %10, align 8, !tbaa !59
  %94 = getelementptr inbounds %struct._Image, ptr %91, i64 0, i32 8
  %95 = load i64, ptr %94, align 8, !tbaa !58
  %96 = call fastcc i32 @SetImageProgress(ptr noundef %91, ptr noundef nonnull @.str.30, i64 noundef %92, i64 noundef %95) #33
  call void @__kmpc_end_critical(ptr nonnull @1, i32 %23, ptr nonnull @.gomp_critical_user_MagickCore_InterpolativeResizeImage.var)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %99

99:                                               ; preds = %85, %98, %90, %80, %38, %34
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #16
  %100 = add nsw i64 %35, 1
  %101 = load i64, ptr %13, align 8, !tbaa !60
  %102 = icmp slt i64 %35, %101
  br i1 %102, label %34, label %103

103:                                              ; preds = %99
  %104 = load i64, ptr %12, align 8, !tbaa !60
  br label %105

105:                                              ; preds = %103, %30
  %106 = phi i64 [ %32, %30 ], [ %104, %103 ]
  %107 = phi i64 [ %31, %30 ], [ %101, %103 ]
  %108 = load i64, ptr %14, align 8, !tbaa !60
  %109 = add nsw i64 %108, %106
  store i64 %109, ptr %12, align 8, !tbaa !60
  %110 = add nsw i64 %108, %107
  %111 = call i64 @llvm.smin.i64(i64 %110, i64 %20)
  store i64 %111, ptr %13, align 8, !tbaa !60
  %112 = icmp sgt i64 %109, %111
  br i1 %112, label %113, label %30

113:                                              ; preds = %105, %22
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %114

114:                                              ; preds = %113, %11
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #16

; Function Attrs: hot optsize
declare ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @SetPixelPacket(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #21 {
  %5 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 5
  %6 = load float, ptr %5, align 8, !tbaa !66
  %7 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %6) #33
  %8 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 2
  store i16 %7, ptr %8, align 2, !tbaa !68
  %9 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !69
  %11 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %10) #33
  %12 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 1
  store i16 %11, ptr %12, align 2, !tbaa !70
  %13 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 7
  %14 = load float, ptr %13, align 8, !tbaa !71
  %15 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %14) #33
  store i16 %15, ptr %2, align 2, !tbaa !72
  %16 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !73
  %18 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %17) #33
  %19 = getelementptr inbounds %struct._PixelPacket, ptr %2, i64 0, i32 3
  store i16 %18, ptr %19, align 2, !tbaa !74
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !75
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %28, label %23

23:                                               ; preds = %4
  %24 = load i32, ptr %0, align 8, !tbaa !76
  %25 = icmp eq i32 %24, 2
  %26 = icmp ne ptr %3, null
  %27 = and i1 %26, %25
  br i1 %27, label %30, label %34

28:                                               ; preds = %4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23, %28
  %31 = getelementptr inbounds %struct._MagickPixelPacket, ptr %1, i64 0, i32 9
  %32 = load float, ptr %31, align 8, !tbaa !77
  %33 = tail call fastcc zeroext i16 @ClampToQuantum(float noundef %32) #33
  store i16 %33, ptr %3, align 2, !tbaa !78
  br label %34

34:                                               ; preds = %28, %30, %23
  ret void
}

; Function Attrs: hot optsize
declare i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #22

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #22

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 47
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %11 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.31, ptr noundef %1, ptr noundef nonnull %10) #29
  %12 = load ptr, ptr %6, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = call i32 %12(ptr noundef nonnull %5, i64 noundef %2, i64 noundef %3, ptr noundef %14) #29
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i32 [ %15, %9 ], [ 1, %4 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  ret i32 %17
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #16

; Function Attrs: optsize
declare i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @GetImagePixelCacheType(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #16

; Function Attrs: nounwind
declare !callback !80 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i16 @ClampToQuantum(float noundef %0) unnamed_addr #2 {
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

; Function Attrs: optsize
declare i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @LiquidRescaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1992, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #29
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1995, i32 noundef 420, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull %14) #29
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MagnifyImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %0, ptr %3, align 8, !tbaa !49
  store ptr %1, ptr %4, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %12 = load i32, ptr %11, align 8, !tbaa !6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %16 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2052, ptr noundef nonnull @.str.2, ptr noundef nonnull %15) #29
  br label %17

17:                                               ; preds = %14, %2
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = shl i64 %19, 1
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !58
  %23 = shl i64 %22, 1
  %24 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %20, i64 noundef %23, i32 noundef 1, ptr noundef %1) #29
  store ptr %24, ptr %7, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %17
  store i32 1, ptr %8, align 4, !tbaa !25
  store i64 0, ptr %9, align 8, !tbaa !59
  %27 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %1) #29
  store ptr %27, ptr %5, align 8, !tbaa !49
  %28 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %24, ptr noundef %1) #29
  store ptr %28, ptr %6, align 8, !tbaa !49
  %29 = load i64, ptr %21, align 8, !tbaa !58
  %30 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %31 = shl i64 %30, 5
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #29
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @GetImagePixelCacheType(ptr noundef nonnull %24) #29
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  br label %45

41:                                               ; preds = %36, %33, %26
  %42 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %43 = icmp ult i64 %42, 2
  %44 = select i1 %43, i64 1, i64 2
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i64 [ %40, %39 ], [ %44, %41 ]
  %47 = trunc i64 %46 to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %10, i32 %47)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 7, ptr nonnull @MagnifyImage.omp_outlined, ptr nonnull %3, ptr nonnull %8, ptr nonnull %6, ptr nonnull %7, ptr nonnull %4, ptr nonnull %5, ptr nonnull %9)
  %48 = load ptr, ptr %6, align 8, !tbaa !49
  %49 = call ptr @DestroyCacheView(ptr noundef %48) #29
  store ptr %49, ptr %6, align 8, !tbaa !49
  %50 = load ptr, ptr %5, align 8, !tbaa !49
  %51 = call ptr @DestroyCacheView(ptr noundef %50) #29
  store ptr %51, ptr %5, align 8, !tbaa !49
  %52 = load i32, ptr %8, align 4, !tbaa !25
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr %7, align 8, !tbaa !49
  br i1 %53, label %55, label %57

55:                                               ; preds = %45
  %56 = call ptr @DestroyImage(ptr noundef %54) #29
  br label %57

57:                                               ; preds = %45, %55, %17
  %58 = phi ptr [ null, %17 ], [ %56, %55 ], [ %54, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret ptr %58
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @MagnifyImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8) #19 {
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [9 x float], align 16
  %15 = load ptr, ptr %2, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct._Image, ptr %15, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !58
  %18 = add nsw i64 %17, -1
  %19 = icmp sgt i64 %17, 0
  br i1 %19, label %20, label %255

20:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store i64 %18, ptr %11, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store i64 1, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  store i32 0, ptr %13, align 4, !tbaa !25
  %21 = load i32, ptr %0, align 4, !tbaa !25
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %21, i32 33, ptr nonnull %13, ptr nonnull %10, ptr nonnull %11, ptr nonnull %12, i64 1, i64 4)
  %22 = load i64, ptr %11, align 8
  %23 = call i64 @llvm.smin.i64(i64 %22, i64 %18)
  store i64 %23, ptr %11, align 8, !tbaa !60
  %24 = load i64, ptr %10, align 8, !tbaa !60
  %25 = icmp sgt i64 %24, %23
  br i1 %25, label %254, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds [9 x float], ptr %14, i64 0, i64 1
  %28 = getelementptr inbounds [9 x float], ptr %14, i64 0, i64 7
  %29 = getelementptr inbounds [9 x float], ptr %14, i64 0, i64 3
  %30 = getelementptr inbounds [9 x float], ptr %14, i64 0, i64 5
  br label %31

31:                                               ; preds = %26, %246
  %32 = phi i64 [ %23, %26 ], [ %252, %246 ]
  %33 = phi i64 [ %24, %26 ], [ %250, %246 ]
  %34 = icmp sgt i64 %33, %32
  br i1 %34, label %246, label %35

35:                                               ; preds = %31, %240
  %36 = phi i64 [ %241, %240 ], [ %33, %31 ]
  %37 = load i32, ptr %3, align 4, !tbaa !25
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %240, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8, !tbaa !49
  %41 = shl nsw i64 %36, 1
  %42 = load ptr, ptr %5, align 8, !tbaa !49
  %43 = getelementptr inbounds %struct._Image, ptr %42, i64 0, i32 7
  %44 = load i64, ptr %43, align 8, !tbaa !57
  %45 = load ptr, ptr %6, align 8, !tbaa !49
  %46 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %40, i64 noundef 0, i64 noundef %41, i64 noundef %44, i64 noundef 2, ptr noundef %45) #34
  %47 = icmp eq ptr %46, null
  br i1 %47, label %239, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %4, align 8, !tbaa !49
  %50 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %49) #29
  %51 = load ptr, ptr %2, align 8, !tbaa !49
  %52 = getelementptr inbounds %struct._Image, ptr %51, i64 0, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !57
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %220

55:                                               ; preds = %48
  %56 = add nsw i64 %36, -1
  br label %57

57:                                               ; preds = %55, %212
  %58 = phi ptr [ %50, %55 ], [ %214, %212 ]
  %59 = phi ptr [ %46, %55 ], [ %213, %212 ]
  %60 = phi i64 [ 0, %55 ], [ %215, %212 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #16
  %61 = load ptr, ptr %7, align 8, !tbaa !49
  %62 = add nsw i64 %60, -1
  %63 = load ptr, ptr %6, align 8, !tbaa !49
  %64 = call ptr @GetCacheViewVirtualPixels(ptr noundef %61, i64 noundef %62, i64 noundef %56, i64 noundef 3, i64 noundef 3, ptr noundef %63) #34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %212

67:                                               ; preds = %57
  %68 = load ptr, ptr %7, align 8, !tbaa !49
  %69 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %68) #29
  br label %70

70:                                               ; preds = %67, %70
  %71 = phi i64 [ 0, %67 ], [ %76, %70 ]
  %72 = load ptr, ptr %2, align 8, !tbaa !49
  %73 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 %71
  %74 = call float @GetPixelIntensity(ptr noundef %72, ptr noundef nonnull %73) #34
  %75 = getelementptr inbounds [9 x float], ptr %14, i64 0, i64 %71
  store float %74, ptr %75, align 4, !tbaa !44
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, 9
  br i1 %77, label %78, label %70, !llvm.loop !82

78:                                               ; preds = %70
  %79 = load float, ptr %27, align 4, !tbaa !44
  %80 = load float, ptr %28, align 4, !tbaa !44
  %81 = fsub float %79, %80
  %82 = call float @llvm.fabs.f32(float %81)
  %83 = fpext float %82 to double
  %84 = fcmp olt double %83, 1.000000e-15
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load float, ptr %29, align 4, !tbaa !44
  %87 = load float, ptr %30, align 4, !tbaa !44
  %88 = fsub float %86, %87
  %89 = call float @llvm.fabs.f32(float %88)
  %90 = fpext float %89 to double
  %91 = fcmp olt double %90, 1.000000e-15
  br i1 %91, label %92, label %102

92:                                               ; preds = %85, %78
  %93 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 4
  %94 = load i64, ptr %93, align 2
  store i64 %94, ptr %59, align 2
  %95 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 1
  %96 = load i64, ptr %93, align 2
  store i64 %96, ptr %95, align 2
  %97 = load ptr, ptr %5, align 8, !tbaa !49
  %98 = getelementptr inbounds %struct._Image, ptr %97, i64 0, i32 7
  %99 = load i64, ptr %98, align 8, !tbaa !57
  %100 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 %99
  %101 = load i64, ptr %93, align 2
  store i64 %101, ptr %100, align 2
  br label %140

102:                                              ; preds = %85
  %103 = fsub float %79, %86
  %104 = call float @llvm.fabs.f32(float %103)
  %105 = fpext float %104 to double
  %106 = fcmp olt double %105, 1.000000e-15
  %107 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 3
  %108 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 4
  %109 = select i1 %106, ptr %107, ptr %108
  %110 = load i64, ptr %109, align 2
  store i64 %110, ptr %59, align 2
  %111 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 1
  %112 = load float, ptr %27, align 4, !tbaa !44
  %113 = load float, ptr %30, align 4, !tbaa !44
  %114 = fsub float %112, %113
  %115 = call float @llvm.fabs.f32(float %114)
  %116 = fpext float %115 to double
  %117 = fcmp olt double %116, 1.000000e-15
  %118 = getelementptr inbounds %struct._PixelPacket, ptr %64, i64 5
  %119 = select i1 %117, ptr %118, ptr %108
  %120 = load i64, ptr %119, align 2
  store i64 %120, ptr %111, align 2
  %121 = load ptr, ptr %5, align 8, !tbaa !49
  %122 = getelementptr inbounds %struct._Image, ptr %121, i64 0, i32 7
  %123 = load i64, ptr %122, align 8, !tbaa !57
  %124 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 %123
  %125 = load float, ptr %29, align 4, !tbaa !44
  %126 = load float, ptr %28, align 4, !tbaa !44
  %127 = fsub float %125, %126
  %128 = call float @llvm.fabs.f32(float %127)
  %129 = fpext float %128 to double
  %130 = fcmp olt double %129, 1.000000e-15
  %131 = select i1 %130, ptr %107, ptr %108
  %132 = load i64, ptr %131, align 2
  store i64 %132, ptr %124, align 2
  %133 = load float, ptr %30, align 4, !tbaa !44
  %134 = load float, ptr %28, align 4, !tbaa !44
  %135 = fsub float %133, %134
  %136 = call float @llvm.fabs.f32(float %135)
  %137 = fpext float %136 to double
  %138 = fcmp olt double %137, 1.000000e-15
  %139 = select i1 %138, ptr %118, ptr %108
  br label %140

140:                                              ; preds = %102, %92
  %141 = phi ptr [ %93, %92 ], [ %139, %102 ]
  %142 = phi i64 [ %99, %92 ], [ %123, %102 ]
  %143 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 %142
  %144 = getelementptr inbounds %struct._PixelPacket, ptr %143, i64 1
  %145 = load i64, ptr %141, align 2
  store i64 %145, ptr %144, align 2
  %146 = icmp eq ptr %69, null
  br i1 %146, label %209, label %147

147:                                              ; preds = %140
  %148 = load float, ptr %27, align 4, !tbaa !44
  %149 = load float, ptr %28, align 4, !tbaa !44
  %150 = fsub float %148, %149
  %151 = call float @llvm.fabs.f32(float %150)
  %152 = fpext float %151 to double
  %153 = fcmp olt double %152, 1.000000e-15
  br i1 %153, label %161, label %154

154:                                              ; preds = %147
  %155 = load float, ptr %29, align 4, !tbaa !44
  %156 = load float, ptr %30, align 4, !tbaa !44
  %157 = fsub float %155, %156
  %158 = call float @llvm.fabs.f32(float %157)
  %159 = fpext float %158 to double
  %160 = fcmp olt double %159, 1.000000e-15
  br i1 %160, label %161, label %171

161:                                              ; preds = %154, %147
  %162 = getelementptr inbounds i16, ptr %69, i64 4
  %163 = load i16, ptr %162, align 2, !tbaa !78
  store i16 %163, ptr %58, align 2, !tbaa !78
  %164 = getelementptr inbounds i16, ptr %58, i64 1
  store i16 %163, ptr %164, align 2, !tbaa !78
  %165 = load ptr, ptr %5, align 8, !tbaa !49
  %166 = getelementptr inbounds %struct._Image, ptr %165, i64 0, i32 7
  %167 = load i64, ptr %166, align 8, !tbaa !57
  %168 = getelementptr inbounds i16, ptr %58, i64 %167
  %169 = load i16, ptr %162, align 2, !tbaa !78
  store i16 %169, ptr %168, align 2, !tbaa !78
  %170 = getelementptr inbounds i16, ptr %168, i64 1
  store i16 %169, ptr %170, align 2, !tbaa !78
  br label %207

171:                                              ; preds = %154
  %172 = insertelement <4 x float> poison, float %156, i64 0
  %173 = insertelement <4 x float> %172, float %155, i64 1
  %174 = insertelement <4 x float> %173, float %148, i64 2
  %175 = shufflevector <4 x float> %174, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %176 = insertelement <4 x float> poison, float %149, i64 0
  %177 = insertelement <4 x float> %176, float %156, i64 2
  %178 = insertelement <4 x float> %177, float %155, i64 3
  %179 = shufflevector <4 x float> %178, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %180 = fsub <4 x float> %175, %179
  %181 = getelementptr inbounds i16, ptr %69, i64 4
  %182 = getelementptr inbounds i16, ptr %69, i64 3
  %183 = getelementptr inbounds i16, ptr %58, i64 1
  %184 = getelementptr inbounds i16, ptr %69, i64 5
  %185 = load ptr, ptr %5, align 8, !tbaa !49
  %186 = getelementptr inbounds %struct._Image, ptr %185, i64 0, i32 7
  %187 = load i64, ptr %186, align 8, !tbaa !57
  %188 = getelementptr inbounds i16, ptr %58, i64 %187
  %189 = getelementptr inbounds i16, ptr %188, i64 1
  %190 = call <4 x float> @llvm.fabs.v4f32(<4 x float> %180)
  %191 = fpext <4 x float> %190 to <4 x double>
  %192 = fcmp olt <4 x double> %191, <double 1.000000e-15, double 1.000000e-15, double 1.000000e-15, double 1.000000e-15>
  %193 = extractelement <4 x i1> %192, i64 3
  %194 = select i1 %193, ptr %182, ptr %181
  %195 = load i16, ptr %194, align 2, !tbaa !78
  store i16 %195, ptr %58, align 2, !tbaa !78
  %196 = extractelement <4 x i1> %192, i64 2
  %197 = select i1 %196, ptr %184, ptr %181
  %198 = load i16, ptr %197, align 2, !tbaa !78
  store i16 %198, ptr %183, align 2, !tbaa !78
  %199 = extractelement <4 x i1> %192, i64 1
  %200 = select i1 %199, ptr %182, ptr %181
  %201 = load i16, ptr %200, align 2, !tbaa !78
  store i16 %201, ptr %188, align 2, !tbaa !78
  %202 = extractelement <4 x i1> %192, i64 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %171
  %204 = load i16, ptr %184, align 2, !tbaa !78
  store i16 %204, ptr %189, align 2, !tbaa !78
  br label %207

205:                                              ; preds = %171
  %206 = load i16, ptr %181, align 2, !tbaa !78
  store i16 %206, ptr %189, align 2, !tbaa !78
  br label %207

207:                                              ; preds = %203, %205, %161
  %208 = getelementptr inbounds i16, ptr %58, i64 2
  br label %209

209:                                              ; preds = %207, %140
  %210 = phi ptr [ %208, %207 ], [ %58, %140 ]
  %211 = getelementptr inbounds %struct._PixelPacket, ptr %59, i64 2
  br label %212

212:                                              ; preds = %209, %66
  %213 = phi ptr [ %59, %66 ], [ %211, %209 ]
  %214 = phi ptr [ %58, %66 ], [ %210, %209 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #16
  %215 = add nuw nsw i64 %60, 1
  %216 = load ptr, ptr %2, align 8, !tbaa !49
  %217 = getelementptr inbounds %struct._Image, ptr %216, i64 0, i32 7
  %218 = load i64, ptr %217, align 8, !tbaa !57
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %57, label %220, !llvm.loop !83

220:                                              ; preds = %212, %48
  %221 = load ptr, ptr %4, align 8, !tbaa !49
  %222 = load ptr, ptr %6, align 8, !tbaa !49
  %223 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %221, ptr noundef %222) #34
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %226

226:                                              ; preds = %225, %220
  %227 = load ptr, ptr %2, align 8, !tbaa !49
  %228 = getelementptr inbounds %struct._Image, ptr %227, i64 0, i32 47
  %229 = load ptr, ptr %228, align 8, !tbaa !65
  %230 = icmp eq ptr %229, null
  br i1 %230, label %240, label %231

231:                                              ; preds = %226
  call void @__kmpc_critical(ptr nonnull @1, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_MagnifyImage.var)
  %232 = load ptr, ptr %2, align 8, !tbaa !49
  %233 = load i64, ptr %8, align 8, !tbaa !59
  %234 = add nsw i64 %233, 1
  store i64 %234, ptr %8, align 8, !tbaa !59
  %235 = getelementptr inbounds %struct._Image, ptr %232, i64 0, i32 8
  %236 = load i64, ptr %235, align 8, !tbaa !58
  %237 = call fastcc i32 @SetImageProgress(ptr noundef %232, ptr noundef nonnull @.str.34, i64 noundef %233, i64 noundef %236) #33
  call void @__kmpc_end_critical(ptr nonnull @1, i32 %21, ptr nonnull @.gomp_critical_user_MagickCore_MagnifyImage.var)
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231, %39
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %240

240:                                              ; preds = %239, %226, %231, %35
  %241 = add nsw i64 %36, 1
  %242 = load i64, ptr %11, align 8, !tbaa !60
  %243 = icmp slt i64 %36, %242
  br i1 %243, label %35, label %244

244:                                              ; preds = %240
  %245 = load i64, ptr %10, align 8, !tbaa !60
  br label %246

246:                                              ; preds = %244, %31
  %247 = phi i64 [ %33, %31 ], [ %245, %244 ]
  %248 = phi i64 [ %32, %31 ], [ %242, %244 ]
  %249 = load i64, ptr %12, align 8, !tbaa !60
  %250 = add nsw i64 %249, %247
  store i64 %250, ptr %10, align 8, !tbaa !60
  %251 = add nsw i64 %249, %248
  %252 = call i64 @llvm.smin.i64(i64 %251, i64 %18)
  store i64 %252, ptr %11, align 8, !tbaa !60
  %253 = icmp sgt i64 %250, %252
  br i1 %253, label %254, label %31

254:                                              ; preds = %246, %20
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %255

255:                                              ; preds = %254, %9
  ret void
}

; Function Attrs: hot optsize
declare ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #9

; Function Attrs: hot optsize
declare float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @MinifyImage(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %4 = load i32, ptr %3, align 8, !tbaa !6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %8 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2267, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #29
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !57
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !58
  %15 = lshr i64 %14, 1
  %16 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %12, i64 noundef %15, i32 noundef 29, double noundef 1.000000e+00, ptr noundef %1) #33
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ResizeImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2980, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #29
  br label %14

14:                                               ; preds = %11, %6
  %15 = icmp eq i64 %1, 0
  %16 = icmp eq i64 %2, 0
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %20 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2984, i32 noundef 465, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %19) #29
  br label %111

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !57
  %24 = icmp eq i64 %23, %1
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !58
  br i1 %24, label %27, label %35

27:                                               ; preds = %21
  %28 = icmp eq i64 %26, %2
  %29 = icmp eq i32 %3, 0
  %30 = and i1 %29, %28
  %31 = fcmp oeq double %4, 1.000000e+00
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %5) #29
  br label %111

35:                                               ; preds = %21, %27
  %36 = uitofp i64 %1 to float
  %37 = uitofp i64 %23 to float
  %38 = fdiv float %36, %37
  %39 = uitofp i64 %2 to float
  %40 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %41 = uitofp i64 %26 to float
  %42 = fdiv float %39, %41
  %43 = icmp eq i32 %3, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = fcmp oeq float %38, 1.000000e+00
  %46 = fcmp oeq float %42, 1.000000e+00
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %0, align 8, !tbaa !76
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !84
  %54 = icmp ne i32 %53, 0
  %55 = fmul float %38, %42
  %56 = fcmp ogt float %55, 1.000000e+00
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %48
  br label %59

59:                                               ; preds = %51, %44, %35, %58
  %60 = phi i32 [ 12, %58 ], [ %3, %35 ], [ 1, %44 ], [ 22, %51 ]
  %61 = fptrunc double %4 to float
  %62 = tail call ptr @AcquireResizeFilter(ptr noundef nonnull %0, i32 noundef %60, float noundef %61, i32 noundef 0, ptr poison) #33
  %63 = tail call ptr @AccelerateResizeImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %62, ptr noundef %5) #29
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = tail call ptr @DestroyResizeFilter(ptr noundef %62) #33
  br label %111

67:                                               ; preds = %59
  %68 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %5) #29
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = tail call ptr @DestroyResizeFilter(ptr noundef %62) #33
  br label %111

72:                                               ; preds = %67
  %73 = fcmp ogt float %38, %42
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = load i64, ptr %40, align 8, !tbaa !58
  %76 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %75, i32 noundef 1, ptr noundef %5) #29
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %85

78:                                               ; preds = %72
  %79 = load i64, ptr %22, align 8, !tbaa !57
  %80 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %79, i64 noundef %2, i32 noundef 1, ptr noundef %5) #29
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %78, %74
  %83 = tail call ptr @DestroyResizeFilter(ptr noundef %62) #33
  %84 = tail call ptr @DestroyImage(ptr noundef nonnull %68) #29
  br label %111

85:                                               ; preds = %74
  store i64 0, ptr %7, align 8, !tbaa !59
  %86 = getelementptr inbounds %struct._Image, ptr %76, i64 0, i32 7
  %87 = load i64, ptr %86, align 8, !tbaa !57
  %88 = add i64 %87, %2
  %89 = call fastcc i32 @HorizontalFilter(ptr noundef %62, ptr noundef nonnull %0, ptr noundef nonnull %76, float noundef %38, i64 noundef %88, ptr noundef nonnull %7, ptr noundef %5) #33
  %90 = call fastcc i32 @VerticalFilter(ptr noundef %62, ptr noundef nonnull %76, ptr noundef nonnull %68, float noundef %42, i64 noundef %88, ptr noundef nonnull %7, ptr noundef %5) #33
  %91 = and i32 %90, %89
  br label %99

92:                                               ; preds = %78
  store i64 0, ptr %7, align 8, !tbaa !59
  %93 = getelementptr inbounds %struct._Image, ptr %80, i64 0, i32 8
  %94 = load i64, ptr %93, align 8, !tbaa !58
  %95 = add i64 %94, %1
  %96 = call fastcc i32 @VerticalFilter(ptr noundef %62, ptr noundef nonnull %0, ptr noundef nonnull %80, float noundef %42, i64 noundef %95, ptr noundef nonnull %7, ptr noundef %5) #33
  %97 = call fastcc i32 @HorizontalFilter(ptr noundef %62, ptr noundef nonnull %80, ptr noundef nonnull %68, float noundef %38, i64 noundef %95, ptr noundef nonnull %7, ptr noundef %5) #33
  %98 = and i32 %97, %96
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi ptr [ %76, %85 ], [ %80, %92 ]
  %101 = phi i32 [ %91, %85 ], [ %98, %92 ]
  %102 = call ptr @DestroyImage(ptr noundef nonnull %100) #29
  %103 = call ptr @DestroyResizeFilter(ptr noundef %62) #33
  %104 = icmp eq i32 %101, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call ptr @DestroyImage(ptr noundef nonnull %68) #29
  br label %111

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %109 = load i32, ptr %108, align 8, !tbaa !85
  %110 = getelementptr inbounds %struct._Image, ptr %68, i64 0, i32 77
  store i32 %109, ptr %110, align 8, !tbaa !85
  br label %111

111:                                              ; preds = %107, %105, %82, %70, %65, %33, %18
  %112 = phi ptr [ null, %18 ], [ %34, %33 ], [ %63, %65 ], [ null, %70 ], [ %84, %82 ], [ null, %105 ], [ %68, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret ptr %112
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ResampleImage(ptr noundef %0, double noundef %1, double noundef %2, i32 noundef %3, double noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2328, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #29
  br label %13

13:                                               ; preds = %10, %6
  %14 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %15 = load i64, ptr %14, align 8, !tbaa !57
  %16 = uitofp i64 %15 to double
  %17 = fmul double %16, %1
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 24
  %19 = load double, ptr %18, align 8, !tbaa !86
  %20 = fcmp oeq double %19, 0.000000e+00
  %21 = select i1 %20, double 7.200000e+01, double %19
  %22 = fdiv double %17, %21
  %23 = fadd double %22, 5.000000e-01
  %24 = fptoui double %23 to i64
  %25 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %26 = load i64, ptr %25, align 8, !tbaa !58
  %27 = uitofp i64 %26 to double
  %28 = fmul double %27, %2
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 25
  %30 = load double, ptr %29, align 8, !tbaa !87
  %31 = fcmp oeq double %30, 0.000000e+00
  %32 = select i1 %31, double 7.200000e+01, double %30
  %33 = fdiv double %28, %32
  %34 = fadd double %33, 5.000000e-01
  %35 = fptoui double %34 to i64
  %36 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %24, i64 noundef %35, i32 noundef %3, double noundef %4, ptr noundef %5) #33
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 24
  store double %1, ptr %39, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct._Image, ptr %36, i64 0, i32 25
  store double %2, ptr %40, align 8, !tbaa !87
  br label %41

41:                                               ; preds = %38, %13
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @AccelerateResizeImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @HorizontalFilter(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %0, ptr %8, align 8, !tbaa !49
  store ptr %1, ptr %9, align 8, !tbaa !49
  store ptr %2, ptr %10, align 8, !tbaa !49
  store float %3, ptr %11, align 4, !tbaa !44
  store i64 %4, ptr %12, align 8, !tbaa !59
  store ptr %5, ptr %13, align 8, !tbaa !49
  store ptr %6, ptr %14, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #16
  %23 = fpext float %3 to double
  %24 = fdiv double 1.000000e+00, %23
  %25 = fadd double %24, 1.000000e-15
  %26 = tail call fastcc double @MagickMax(double noundef %25, double noundef 1.000000e+00) #33
  %27 = fptrunc double %26 to float
  %28 = tail call float @GetResizeFilterSupport(ptr noundef %0) #33
  %29 = fmul float %28, %27
  store float %29, ptr %21, align 4, !tbaa !44
  %30 = fcmp ogt float %29, 5.000000e-01
  br i1 %30, label %33, label %31

31:                                               ; preds = %7
  %32 = load i32, ptr %1, align 8, !tbaa !76
  br label %33

33:                                               ; preds = %7, %31
  %34 = phi i32 [ %32, %31 ], [ 1, %7 ]
  %35 = tail call i32 @SetImageStorageClass(ptr noundef %2, i32 noundef %34) #29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58
  tail call void @InheritException(ptr noundef %6, ptr noundef nonnull %38) #29
  br label %87

39:                                               ; preds = %33
  %40 = fcmp olt float %29, 5.000000e-01
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store float 5.000000e-01, ptr %21, align 4, !tbaa !44
  store float 1.000000e+00, ptr %20, align 4, !tbaa !44
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi float [ 1.000000e+00, %41 ], [ %27, %39 ]
  %44 = phi float [ 5.000000e-01, %41 ], [ %29, %39 ]
  %45 = fpext float %44 to double
  %46 = tail call double @llvm.fmuladd.f64(double %45, double 2.000000e+00, double 3.000000e+00)
  %47 = fptoui double %46 to i64
  %48 = tail call fastcc ptr @AcquireContributionThreadSet(i64 noundef %47) #33
  store ptr %48, ptr %17, align 8, !tbaa !49
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %52 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2504, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %51) #29
  br label %87

53:                                               ; preds = %42
  store i32 1, ptr %18, align 4, !tbaa !25
  %54 = fpext float %43 to double
  %55 = tail call fastcc double @PerceptibleReciprocal(double noundef %54) #33
  %56 = fptrunc double %55 to float
  store float %56, ptr %20, align 4, !tbaa !44
  %57 = call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 56) #29
  %58 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %6) #29
  store ptr %58, ptr %15, align 8, !tbaa !49
  %59 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef %6) #29
  store ptr %59, ptr %16, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 7
  %61 = load i64, ptr %60, align 8, !tbaa !57
  %62 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %63 = shl i64 %62, 5
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = call i32 @GetImagePixelCacheType(ptr noundef %1) #29
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %2) #29
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  br label %77

73:                                               ; preds = %68, %65, %53
  %74 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %75 = icmp ult i64 %74, 2
  %76 = select i1 %75, i64 1, i64 2
  br label %77

77:                                               ; preds = %73, %71
  %78 = phi i64 [ %72, %71 ], [ %76, %73 ]
  %79 = trunc i64 %78 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %22, i32 %79)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 14, ptr nonnull @HorizontalFilter.omp_outlined, ptr nonnull %10, ptr nonnull %18, ptr nonnull %11, ptr nonnull %21, ptr nonnull %9, ptr nonnull %17, ptr nonnull %8, ptr nonnull %20, ptr nonnull %15, ptr nonnull %14, ptr nonnull %16, ptr nonnull %19, ptr nonnull %13, ptr nonnull %12)
  %80 = load ptr, ptr %16, align 8, !tbaa !49
  %81 = call ptr @DestroyCacheView(ptr noundef %80) #29
  store ptr %81, ptr %16, align 8, !tbaa !49
  %82 = load ptr, ptr %15, align 8, !tbaa !49
  %83 = call ptr @DestroyCacheView(ptr noundef %82) #29
  store ptr %83, ptr %15, align 8, !tbaa !49
  %84 = load ptr, ptr %17, align 8, !tbaa !49
  %85 = call fastcc ptr @DestroyContributionThreadSet(ptr noundef %84) #33
  %86 = load i32, ptr %18, align 4, !tbaa !25
  br label %87

87:                                               ; preds = %77, %50, %37
  %88 = phi i32 [ 0, %37 ], [ 0, %50 ], [ %86, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  ret i32 %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @VerticalFilter(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._MagickPixelPacket, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %0, ptr %8, align 8, !tbaa !49
  store ptr %1, ptr %9, align 8, !tbaa !49
  store ptr %2, ptr %10, align 8, !tbaa !49
  store float %3, ptr %11, align 4, !tbaa !44
  store i64 %4, ptr %12, align 8, !tbaa !59
  store ptr %5, ptr %13, align 8, !tbaa !49
  store ptr %6, ptr %14, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #16
  %23 = fpext float %3 to double
  %24 = fdiv double 1.000000e+00, %23
  %25 = fadd double %24, 1.000000e-15
  %26 = tail call fastcc double @MagickMax(double noundef %25, double noundef 1.000000e+00) #33
  %27 = fptrunc double %26 to float
  %28 = tail call float @GetResizeFilterSupport(ptr noundef %0) #33
  %29 = fmul float %28, %27
  store float %29, ptr %21, align 4, !tbaa !44
  %30 = fcmp ogt float %29, 5.000000e-01
  br i1 %30, label %33, label %31

31:                                               ; preds = %7
  %32 = load i32, ptr %1, align 8, !tbaa !76
  br label %33

33:                                               ; preds = %7, %31
  %34 = phi i32 [ %32, %31 ], [ 1, %7 ]
  %35 = tail call i32 @SetImageStorageClass(ptr noundef %2, i32 noundef %34) #29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 58
  tail call void @InheritException(ptr noundef %6, ptr noundef nonnull %38) #29
  br label %87

39:                                               ; preds = %33
  %40 = fcmp olt float %29, 5.000000e-01
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store float 5.000000e-01, ptr %21, align 4, !tbaa !44
  store float 1.000000e+00, ptr %20, align 4, !tbaa !44
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi float [ 1.000000e+00, %41 ], [ %27, %39 ]
  %44 = phi float [ 5.000000e-01, %41 ], [ %29, %39 ]
  %45 = fpext float %44 to double
  %46 = tail call double @llvm.fmuladd.f64(double %45, double 2.000000e+00, double 3.000000e+00)
  %47 = fptoui double %46 to i64
  %48 = tail call fastcc ptr @AcquireContributionThreadSet(i64 noundef %47) #33
  store ptr %48, ptr %17, align 8, !tbaa !49
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct._Image, ptr %1, i64 0, i32 53
  %52 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2750, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %51) #29
  br label %87

53:                                               ; preds = %42
  store i32 1, ptr %18, align 4, !tbaa !25
  %54 = fpext float %43 to double
  %55 = tail call fastcc double @PerceptibleReciprocal(double noundef %54) #33
  %56 = fptrunc double %55 to float
  store float %56, ptr %20, align 4, !tbaa !44
  %57 = call ptr @ResetMagickMemory(ptr noundef nonnull %19, i32 noundef 0, i64 noundef 56) #29
  %58 = call ptr @AcquireVirtualCacheView(ptr noundef %1, ptr noundef %6) #29
  store ptr %58, ptr %15, align 8, !tbaa !49
  %59 = call ptr @AcquireAuthenticCacheView(ptr noundef %2, ptr noundef %6) #29
  store ptr %59, ptr %16, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct._Image, ptr %2, i64 0, i32 8
  %61 = load i64, ptr %60, align 8, !tbaa !58
  %62 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %63 = shl i64 %62, 5
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = call i32 @GetImagePixelCacheType(ptr noundef %1) #29
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %2) #29
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  br label %77

73:                                               ; preds = %68, %65, %53
  %74 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %75 = icmp ult i64 %74, 2
  %76 = select i1 %75, i64 1, i64 2
  br label %77

77:                                               ; preds = %73, %71
  %78 = phi i64 [ %72, %71 ], [ %76, %73 ]
  %79 = trunc i64 %78 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %22, i32 %79)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 14, ptr nonnull @VerticalFilter.omp_outlined, ptr nonnull %10, ptr nonnull %18, ptr nonnull %11, ptr nonnull %21, ptr nonnull %9, ptr nonnull %17, ptr nonnull %8, ptr nonnull %20, ptr nonnull %15, ptr nonnull %14, ptr nonnull %16, ptr nonnull %19, ptr nonnull %13, ptr nonnull %12)
  %80 = load ptr, ptr %16, align 8, !tbaa !49
  %81 = call ptr @DestroyCacheView(ptr noundef %80) #29
  store ptr %81, ptr %16, align 8, !tbaa !49
  %82 = load ptr, ptr %15, align 8, !tbaa !49
  %83 = call ptr @DestroyCacheView(ptr noundef %82) #29
  store ptr %83, ptr %15, align 8, !tbaa !49
  %84 = load ptr, ptr %17, align 8, !tbaa !49
  %85 = call fastcc ptr @DestroyContributionThreadSet(ptr noundef %84) #33
  %86 = load i32, ptr %18, align 4, !tbaa !25
  br label %87

87:                                               ; preds = %77, %50, %37
  %88 = phi i32 [ 0, %37 ], [ 0, %50 ], [ %86, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  ret i32 %88
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMax(double noundef %0, double noundef %1) unnamed_addr #2 {
  %3 = fcmp ogt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @AcquireContributionThreadSet(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %3 = tail call ptr @AcquireQuantumMemory(i64 noundef %2, i64 noundef 8) #35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = shl i64 %2, 3
  %7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %3, i32 noundef 0, i64 noundef %6) #29
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %12, label %19

9:                                                ; preds = %12
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, %2
  br i1 %11, label %19, label %12, !llvm.loop !88

12:                                               ; preds = %5, %9
  %13 = phi i64 [ %10, %9 ], [ 0, %5 ]
  %14 = tail call ptr @AcquireAlignedMemory(i64 noundef %0, i64 noundef 16) #35
  %15 = getelementptr inbounds ptr, ptr %3, i64 %13
  store ptr %14, ptr %15, align 8, !tbaa !49
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %12
  %18 = tail call fastcc ptr @DestroyContributionThreadSet(ptr noundef nonnull %3) #33
  br label %19

19:                                               ; preds = %9, %5, %1, %17
  %20 = phi ptr [ %18, %17 ], [ null, %1 ], [ %3, %5 ], [ %3, %9 ]
  ret ptr %20
}

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @HorizontalFilter.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %13, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %14, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %15) #19 {
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = load ptr, ptr %2, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !57
  %24 = add nsw i64 %23, -1
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %411

26:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  store i64 0, ptr %17, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  store i64 %24, ptr %18, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  store i64 1, ptr %19, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #16
  store i32 0, ptr %20, align 4, !tbaa !25
  %27 = load i32, ptr %0, align 4, !tbaa !25
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %27, i32 33, ptr nonnull %20, ptr nonnull %17, ptr nonnull %18, ptr nonnull %19, i64 1, i64 4)
  %28 = load i64, ptr %18, align 8
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 %24)
  store i64 %29, ptr %18, align 8, !tbaa !60
  %30 = load i64, ptr %17, align 8, !tbaa !60
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %410, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %13, i64 32
  %34 = getelementptr inbounds i8, ptr %13, i64 48
  br label %35

35:                                               ; preds = %32, %402
  %36 = phi i64 [ %29, %32 ], [ %408, %402 ]
  %37 = phi i64 [ %30, %32 ], [ %406, %402 ]
  %38 = icmp sgt i64 %37, %36
  br i1 %38, label %402, label %39

39:                                               ; preds = %35, %396
  %40 = phi i64 [ %397, %396 ], [ %37, %35 ]
  %41 = call fastcc i32 @GetOpenMPThreadId() #33
  %42 = load i32, ptr %3, align 4, !tbaa !25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %396, label %44

44:                                               ; preds = %39
  %45 = sitofp i64 %40 to double
  %46 = fadd double %45, 5.000000e-01
  %47 = fptrunc double %46 to float
  %48 = load float, ptr %4, align 4, !tbaa !44
  %49 = fdiv float %47, %48
  %50 = fpext float %49 to double
  %51 = fadd double %50, 1.000000e-15
  %52 = fptrunc double %51 to float
  %53 = load float, ptr %5, align 4, !tbaa !44
  %54 = fsub float %52, %53
  %55 = fpext float %54 to double
  %56 = fadd double %55, 5.000000e-01
  %57 = call fastcc double @MagickMax(double noundef %56, double noundef 0.000000e+00) #33
  %58 = fptosi double %57 to i64
  %59 = fadd float %53, %52
  %60 = fpext float %59 to double
  %61 = fadd double %60, 5.000000e-01
  %62 = load ptr, ptr %6, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 7
  %64 = load i64, ptr %63, align 8, !tbaa !57
  %65 = uitofp i64 %64 to double
  %66 = call fastcc double @MagickMin(double noundef %61, double noundef %65) #33
  %67 = fptosi double %66 to i64
  %68 = load ptr, ptr %7, align 8, !tbaa !49
  %69 = sext i32 %41 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = sub nsw i64 %67, %58
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %44, %74
  %75 = phi float [ %90, %74 ], [ 0.000000e+00, %44 ]
  %76 = phi i64 [ %91, %74 ], [ 0, %44 ]
  %77 = add nsw i64 %76, %58
  %78 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %76
  %79 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %76, i32 1
  store i64 %77, ptr %79, align 8, !tbaa !89
  %80 = load ptr, ptr %8, align 8, !tbaa !49
  %81 = load float, ptr %9, align 4, !tbaa !44
  %82 = fpext float %81 to double
  %83 = sitofp i64 %77 to float
  %84 = fsub float %83, %52
  %85 = fpext float %84 to double
  %86 = fadd double %85, 5.000000e-01
  %87 = fmul double %86, %82
  %88 = fptrunc double %87 to float
  %89 = call float @GetResizeFilterWeight(ptr noundef %80, float noundef %88) #33
  store float %89, ptr %78, align 8, !tbaa !91
  %90 = fadd float %75, %89
  %91 = add nuw nsw i64 %76, 1
  %92 = icmp eq i64 %91, %72
  br i1 %92, label %93, label %74, !llvm.loop !92

93:                                               ; preds = %74
  %94 = fcmp une float %90, 0.000000e+00
  %95 = fcmp une float %90, 1.000000e+00
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = fpext float %90 to double
  %99 = call fastcc double @PerceptibleReciprocal(double noundef %98) #33
  %100 = fptrunc double %99 to float
  br label %101

101:                                              ; preds = %97, %101
  %102 = phi i64 [ %106, %101 ], [ 0, %97 ]
  %103 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %102
  %104 = load float, ptr %103, align 8, !tbaa !91
  %105 = fmul float %104, %100
  store float %105, ptr %103, align 8, !tbaa !91
  %106 = add nuw nsw i64 %102, 1
  %107 = icmp eq i64 %106, %72
  br i1 %107, label %108, label %101, !llvm.loop !93

108:                                              ; preds = %101, %44, %93
  %109 = phi i64 [ %72, %93 ], [ 0, %44 ], [ %72, %101 ]
  %110 = load ptr, ptr %10, align 8, !tbaa !49
  %111 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !89
  %113 = getelementptr %struct._ContributionInfo, ptr %71, i64 %109
  %114 = getelementptr %struct._ContributionInfo, ptr %113, i64 -1, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !89
  %116 = sub i64 %115, %112
  %117 = add i64 %116, 1
  %118 = load ptr, ptr %6, align 8, !tbaa !49
  %119 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 8
  %120 = load i64, ptr %119, align 8, !tbaa !58
  %121 = load ptr, ptr %11, align 8, !tbaa !49
  %122 = call ptr @GetCacheViewVirtualPixels(ptr noundef %110, i64 noundef %112, i64 noundef 0, i64 noundef %117, i64 noundef %120, ptr noundef %121) #34
  %123 = load ptr, ptr %12, align 8, !tbaa !49
  %124 = load ptr, ptr %2, align 8, !tbaa !49
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 8
  %126 = load i64, ptr %125, align 8, !tbaa !58
  %127 = load ptr, ptr %11, align 8, !tbaa !49
  %128 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %123, i64 noundef %40, i64 noundef 0, i64 noundef 1, i64 noundef %126, ptr noundef %127) #34
  %129 = icmp eq ptr %122, null
  %130 = icmp eq ptr %128, null
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %395, label %132

132:                                              ; preds = %108
  %133 = load ptr, ptr %10, align 8, !tbaa !49
  %134 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %133) #29
  %135 = load ptr, ptr %12, align 8, !tbaa !49
  %136 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %135) #29
  %137 = load ptr, ptr %2, align 8, !tbaa !49
  %138 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 8
  %139 = load i64, ptr %138, align 8, !tbaa !58
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %376

141:                                              ; preds = %132
  %142 = load ptr, ptr %6, align 8, !tbaa !49
  %143 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 6
  %144 = load i32, ptr %143, align 8, !tbaa !84
  %145 = icmp eq i32 %144, 0
  %146 = icmp eq i64 %109, 0
  %147 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 1
  %148 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 1
  %149 = icmp eq ptr %134, null
  %150 = icmp eq ptr %136, null
  %151 = load i32, ptr %137, align 8, !tbaa !76
  %152 = icmp eq i32 %151, 2
  %153 = fpext float %52 to double
  %154 = sitofp i64 %58 to double
  %155 = sitofp i64 %67 to double
  %156 = fadd double %155, -1.000000e+00
  br label %157

157:                                              ; preds = %141, %372
  %158 = phi ptr [ %128, %141 ], [ %373, %372 ]
  %159 = phi i64 [ 0, %141 ], [ %374, %372 ]
  %160 = load <4 x float>, ptr %33, align 8
  %161 = load float, ptr %34, align 8, !tbaa.struct !94
  br i1 %145, label %170, label %162

162:                                              ; preds = %157
  br i1 %146, label %270, label %163

163:                                              ; preds = %162
  %164 = load i64, ptr %114, align 8, !tbaa !89
  %165 = load i64, ptr %111, align 8, !tbaa !89
  %166 = add i64 %164, 1
  %167 = sub i64 %166, %165
  %168 = mul nsw i64 %167, %159
  %169 = getelementptr %struct._PixelPacket, ptr %122, i64 %168
  br label %242

170:                                              ; preds = %157
  br i1 %146, label %195, label %171

171:                                              ; preds = %170
  %172 = load i64, ptr %114, align 8, !tbaa !89
  %173 = load i64, ptr %111, align 8, !tbaa !89
  %174 = add i64 %172, 1
  %175 = sub i64 %174, %173
  %176 = mul nsw i64 %175, %159
  %177 = getelementptr %struct._PixelPacket, ptr %122, i64 %176
  br label %178

178:                                              ; preds = %171, %178
  %179 = phi i64 [ 0, %171 ], [ %193, %178 ]
  %180 = phi <4 x float> [ %160, %171 ], [ %192, %178 ]
  %181 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %179
  %182 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %179, i32 1
  %183 = load i64, ptr %182, align 8, !tbaa !89
  %184 = sub nsw i64 %183, %173
  %185 = load float, ptr %181, align 8, !tbaa !91
  %186 = getelementptr %struct._PixelPacket, ptr %177, i64 %184
  %187 = load <4 x i16>, ptr %186, align 2, !tbaa !78
  %188 = uitofp <4 x i16> %187 to <4 x float>
  %189 = shufflevector <4 x float> %188, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %190 = insertelement <4 x float> poison, float %185, i64 0
  %191 = shufflevector <4 x float> %190, <4 x float> poison, <4 x i32> zeroinitializer
  %192 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %191, <4 x float> %189, <4 x float> %180)
  %193 = add nuw nsw i64 %179, 1
  %194 = icmp eq i64 %193, %109
  br i1 %194, label %195, label %178, !llvm.loop !95

195:                                              ; preds = %178, %170
  %196 = phi <4 x float> [ %160, %170 ], [ %192, %178 ]
  %197 = extractelement <4 x float> %196, i64 0
  %198 = call fastcc zeroext i16 @ClampToQuantum(float noundef %197) #33
  %199 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 2
  store i16 %198, ptr %199, align 2, !tbaa !68
  %200 = extractelement <4 x float> %196, i64 1
  %201 = call fastcc zeroext i16 @ClampToQuantum(float noundef %200) #33
  %202 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 1
  store i16 %201, ptr %202, align 2, !tbaa !70
  %203 = extractelement <4 x float> %196, i64 2
  %204 = call fastcc zeroext i16 @ClampToQuantum(float noundef %203) #33
  store i16 %204, ptr %158, align 2, !tbaa !72
  %205 = extractelement <4 x float> %196, i64 3
  %206 = call fastcc zeroext i16 @ClampToQuantum(float noundef %205) #33
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 3
  store i16 %206, ptr %207, align 2, !tbaa !74
  %208 = load i32, ptr %147, align 4, !tbaa !75
  %209 = icmp eq i32 %208, 12
  br i1 %209, label %210, label %345

210:                                              ; preds = %195
  %211 = load i32, ptr %148, align 4, !tbaa !75
  %212 = icmp eq i32 %211, 12
  br i1 %212, label %213, label %345

213:                                              ; preds = %210
  br i1 %146, label %240, label %214

214:                                              ; preds = %213
  %215 = load i64, ptr %114, align 8, !tbaa !89
  %216 = load i64, ptr %111, align 8, !tbaa !89
  %217 = add i64 %215, 1
  %218 = sub i64 %217, %216
  %219 = mul nsw i64 %218, %159
  %220 = getelementptr i16, ptr %134, i64 %219
  br label %221

221:                                              ; preds = %214, %234
  %222 = phi i64 [ 0, %214 ], [ %238, %234 ]
  %223 = phi float [ %161, %214 ], [ %237, %234 ]
  %224 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %222
  %225 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %222, i32 1
  %226 = load i64, ptr %225, align 8, !tbaa !89
  %227 = sub nsw i64 %226, %216
  %228 = load float, ptr %224, align 8, !tbaa !91
  %229 = getelementptr i16, ptr %220, i64 %227
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231

231:                                              ; preds = %221
  %232 = load i16, ptr %229, align 2, !tbaa !78
  %233 = zext i16 %232 to i32
  br label %234

234:                                              ; preds = %221, %231
  %235 = phi i32 [ %233, %231 ], [ 0, %221 ]
  %236 = sitofp i32 %235 to float
  %237 = call float @llvm.fmuladd.f32(float %228, float %236, float %223)
  %238 = add nuw nsw i64 %222, 1
  %239 = icmp eq i64 %238, %109
  br i1 %239, label %240, label %221, !llvm.loop !96

240:                                              ; preds = %234, %213
  %241 = phi float [ %161, %213 ], [ %237, %234 ]
  br i1 %150, label %345, label %341

242:                                              ; preds = %163, %242
  %243 = phi double [ 0.000000e+00, %163 ], [ %267, %242 ]
  %244 = phi i64 [ 0, %163 ], [ %268, %242 ]
  %245 = phi <4 x float> [ %160, %163 ], [ %265, %242 ]
  %246 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %244
  %247 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %244, i32 1
  %248 = load i64, ptr %247, align 8, !tbaa !89
  %249 = sub nsw i64 %248, %165
  %250 = load float, ptr %246, align 8, !tbaa !91
  %251 = fpext float %250 to double
  %252 = fmul double %251, 0x3EF0001000100010
  %253 = getelementptr %struct._PixelPacket, ptr %169, i64 %249
  %254 = load <4 x i16>, ptr %253, align 2, !tbaa !78
  %255 = extractelement <4 x i16> %254, i64 3
  %256 = xor i16 %255, -1
  %257 = uitofp i16 %256 to double
  %258 = fmul double %252, %257
  %259 = fptrunc double %258 to float
  %260 = uitofp <4 x i16> %254 to <4 x float>
  %261 = shufflevector <4 x float> %260, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %262 = insertelement <4 x float> poison, float %250, i64 0
  %263 = insertelement <4 x float> %262, float %259, i64 1
  %264 = shufflevector <4 x float> %263, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %265 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %264, <4 x float> %261, <4 x float> %245)
  %266 = fpext float %259 to double
  %267 = fadd double %243, %266
  %268 = add nuw nsw i64 %244, 1
  %269 = icmp eq i64 %268, %109
  br i1 %269, label %270, label %242, !llvm.loop !97

270:                                              ; preds = %242, %162
  %271 = phi double [ 0.000000e+00, %162 ], [ %267, %242 ]
  %272 = phi <4 x float> [ %160, %162 ], [ %265, %242 ]
  %273 = fcmp olt double %271, 0.000000e+00
  %274 = select i1 %273, double 0.000000e+00, double %271
  %275 = call fastcc double @PerceptibleReciprocal(double noundef %274) #33
  %276 = extractelement <4 x float> %272, i64 0
  %277 = fpext float %276 to double
  %278 = fmul double %275, %277
  %279 = fptrunc double %278 to float
  %280 = call fastcc zeroext i16 @ClampToQuantum(float noundef %279) #33
  %281 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 2
  store i16 %280, ptr %281, align 2, !tbaa !68
  %282 = extractelement <4 x float> %272, i64 1
  %283 = fpext float %282 to double
  %284 = fmul double %275, %283
  %285 = fptrunc double %284 to float
  %286 = call fastcc zeroext i16 @ClampToQuantum(float noundef %285) #33
  %287 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 1
  store i16 %286, ptr %287, align 2, !tbaa !70
  %288 = extractelement <4 x float> %272, i64 2
  %289 = fpext float %288 to double
  %290 = fmul double %275, %289
  %291 = fptrunc double %290 to float
  %292 = call fastcc zeroext i16 @ClampToQuantum(float noundef %291) #33
  store i16 %292, ptr %158, align 2, !tbaa !72
  %293 = extractelement <4 x float> %272, i64 3
  %294 = call fastcc zeroext i16 @ClampToQuantum(float noundef %293) #33
  %295 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 0, i32 3
  store i16 %294, ptr %295, align 2, !tbaa !74
  %296 = load i32, ptr %147, align 4, !tbaa !75
  %297 = icmp eq i32 %296, 12
  br i1 %297, label %298, label %345

298:                                              ; preds = %270
  %299 = load i32, ptr %148, align 4, !tbaa !75
  %300 = icmp eq i32 %299, 12
  br i1 %300, label %301, label %345

301:                                              ; preds = %298
  br i1 %146, label %335, label %302

302:                                              ; preds = %301
  %303 = load i64, ptr %114, align 8, !tbaa !89
  %304 = load i64, ptr %111, align 8, !tbaa !89
  %305 = add i64 %303, 1
  %306 = sub i64 %305, %304
  %307 = mul nsw i64 %306, %159
  br label %308

308:                                              ; preds = %302, %329
  %309 = phi i64 [ 0, %302 ], [ %333, %329 ]
  %310 = phi float [ %161, %302 ], [ %332, %329 ]
  %311 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %309
  %312 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %309, i32 1
  %313 = load i64, ptr %312, align 8, !tbaa !89
  %314 = sub nsw i64 %313, %304
  %315 = add nsw i64 %307, %314
  %316 = load float, ptr %311, align 8, !tbaa !91
  %317 = fpext float %316 to double
  %318 = fmul double %317, 0x3EF0001000100010
  %319 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 %315, i32 3
  %320 = load i16, ptr %319, align 2, !tbaa !74
  %321 = xor i16 %320, -1
  %322 = uitofp i16 %321 to double
  %323 = fmul double %318, %322
  %324 = fptrunc double %323 to float
  br i1 %149, label %329, label %325

325:                                              ; preds = %308
  %326 = getelementptr inbounds i16, ptr %134, i64 %315
  %327 = load i16, ptr %326, align 2, !tbaa !78
  %328 = zext i16 %327 to i32
  br label %329

329:                                              ; preds = %308, %325
  %330 = phi i32 [ %328, %325 ], [ 0, %308 ]
  %331 = sitofp i32 %330 to float
  %332 = call float @llvm.fmuladd.f32(float %324, float %331, float %310)
  %333 = add nuw nsw i64 %309, 1
  %334 = icmp eq i64 %333, %109
  br i1 %334, label %335, label %308, !llvm.loop !98

335:                                              ; preds = %329, %301
  %336 = phi float [ %161, %301 ], [ %332, %329 ]
  br i1 %150, label %345, label %337

337:                                              ; preds = %335
  %338 = fpext float %336 to double
  %339 = fmul double %275, %338
  %340 = fptrunc double %339 to float
  br label %341

341:                                              ; preds = %240, %337
  %342 = phi float [ %340, %337 ], [ %241, %240 ]
  %343 = getelementptr inbounds i16, ptr %136, i64 %159
  %344 = call fastcc zeroext i16 @ClampToQuantum(float noundef %342) #33
  store i16 %344, ptr %343, align 2, !tbaa !78
  br label %345

345:                                              ; preds = %341, %270, %298, %335, %195, %210, %240
  br i1 %152, label %346, label %372

346:                                              ; preds = %345
  %347 = load i32, ptr %142, align 8, !tbaa !76
  %348 = icmp eq i32 %347, 2
  br i1 %348, label %349, label %372

349:                                              ; preds = %346
  %350 = getelementptr inbounds i16, ptr %136, i64 %159
  br i1 %150, label %372, label %351

351:                                              ; preds = %349
  %352 = call fastcc double @MagickMax(double noundef %153, double noundef %154) #33
  %353 = call fastcc double @MagickMin(double noundef %352, double noundef %156) #33
  %354 = load i64, ptr %114, align 8, !tbaa !89
  %355 = load i64, ptr %111, align 8, !tbaa !89
  %356 = add i64 %354, 1
  %357 = sub i64 %356, %355
  %358 = mul nsw i64 %357, %159
  %359 = fadd double %353, 5.000000e-01
  %360 = fptosi double %359 to i64
  %361 = sub nsw i64 %360, %58
  %362 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %361, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !89
  %364 = sub nsw i64 %363, %355
  %365 = getelementptr i16, ptr %134, i64 %358
  %366 = getelementptr i16, ptr %365, i64 %364
  %367 = icmp eq ptr %366, null
  br i1 %367, label %370, label %368

368:                                              ; preds = %351
  %369 = load i16, ptr %366, align 2, !tbaa !78
  br label %370

370:                                              ; preds = %351, %368
  %371 = phi i16 [ %369, %368 ], [ 0, %351 ]
  store i16 %371, ptr %350, align 2, !tbaa !78
  br label %372

372:                                              ; preds = %349, %370, %346, %345
  %373 = getelementptr inbounds %struct._PixelPacket, ptr %158, i64 1
  %374 = add nuw nsw i64 %159, 1
  %375 = icmp eq i64 %374, %139
  br i1 %375, label %376, label %157, !llvm.loop !99

376:                                              ; preds = %372, %132
  %377 = load ptr, ptr %12, align 8, !tbaa !49
  %378 = load ptr, ptr %11, align 8, !tbaa !49
  %379 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %377, ptr noundef %378) #34
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %376
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %382

382:                                              ; preds = %381, %376
  %383 = load ptr, ptr %6, align 8, !tbaa !49
  %384 = getelementptr inbounds %struct._Image, ptr %383, i64 0, i32 47
  %385 = load ptr, ptr %384, align 8, !tbaa !65
  %386 = icmp eq ptr %385, null
  br i1 %386, label %396, label %387

387:                                              ; preds = %382
  call void @__kmpc_critical(ptr nonnull @1, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_HorizontalFilter.var)
  %388 = load ptr, ptr %6, align 8, !tbaa !49
  %389 = load ptr, ptr %14, align 8, !tbaa !49
  %390 = load i64, ptr %389, align 8, !tbaa !59
  %391 = add nsw i64 %390, 1
  store i64 %391, ptr %389, align 8, !tbaa !59
  %392 = load i64, ptr %15, align 8, !tbaa !59
  %393 = call fastcc i32 @SetImageProgress(ptr noundef %388, ptr noundef nonnull @.str.30, i64 noundef %390, i64 noundef %392) #33
  call void @__kmpc_end_critical(ptr nonnull @1, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_HorizontalFilter.var)
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %387, %108
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %396

396:                                              ; preds = %395, %382, %387, %39
  %397 = add nsw i64 %40, 1
  %398 = load i64, ptr %18, align 8, !tbaa !60
  %399 = icmp slt i64 %40, %398
  br i1 %399, label %39, label %400

400:                                              ; preds = %396
  %401 = load i64, ptr %17, align 8, !tbaa !60
  br label %402

402:                                              ; preds = %400, %35
  %403 = phi i64 [ %37, %35 ], [ %401, %400 ]
  %404 = phi i64 [ %36, %35 ], [ %398, %400 ]
  %405 = load i64, ptr %19, align 8, !tbaa !60
  %406 = add nsw i64 %405, %403
  store i64 %406, ptr %17, align 8, !tbaa !60
  %407 = add nsw i64 %405, %404
  %408 = call i64 @llvm.smin.i64(i64 %407, i64 %24)
  store i64 %408, ptr %18, align 8, !tbaa !60
  %409 = icmp sgt i64 %406, %408
  br i1 %409, label %410, label %35

410:                                              ; preds = %402, %26
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  br label %411

411:                                              ; preds = %410, %16
  ret void
}

; Function Attrs: noinline norecurse nounwind optsize uwtable
define internal fastcc i32 @GetOpenMPThreadId() unnamed_addr #24 {
  %1 = tail call i32 @omp_get_thread_num() #33
  ret i32 %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @MagickMin(double noundef %0, double noundef %1) unnamed_addr #2 {
  %3 = fcmp olt double %0, %1
  %4 = select i1 %3, double %0, double %1
  ret double %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @DestroyContributionThreadSet(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %11
  %5 = phi i64 [ %12, %11 ], [ 0, %1 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %7) #29
  store ptr %10, ptr %6, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %4, %9
  %12 = add nuw nsw i64 %5, 1
  %13 = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %4, label %15, !llvm.loop !100

15:                                               ; preds = %11, %1
  %16 = tail call ptr @RelinquishMagickMemory(ptr noundef %0) #29
  ret ptr %16
}

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: optsize allocsize(0,1)
declare ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize
declare i32 @omp_get_thread_num() local_unnamed_addr #26

; Function Attrs: optsize
declare ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @VerticalFilter.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %4, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %9, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %10, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %11, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %12, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %13, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %14, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %15) #19 {
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = load ptr, ptr %2, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct._Image, ptr %21, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !58
  %24 = add nsw i64 %23, -1
  %25 = icmp sgt i64 %23, 0
  br i1 %25, label %26, label %402

26:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  store i64 0, ptr %17, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  store i64 %24, ptr %18, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  store i64 1, ptr %19, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #16
  store i32 0, ptr %20, align 4, !tbaa !25
  %27 = load i32, ptr %0, align 4, !tbaa !25
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %27, i32 33, ptr nonnull %20, ptr nonnull %17, ptr nonnull %18, ptr nonnull %19, i64 1, i64 4)
  %28 = load i64, ptr %18, align 8
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 %24)
  store i64 %29, ptr %18, align 8, !tbaa !60
  %30 = load i64, ptr %17, align 8, !tbaa !60
  %31 = icmp sgt i64 %30, %29
  br i1 %31, label %401, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %13, i64 32
  %34 = getelementptr inbounds i8, ptr %13, i64 48
  br label %35

35:                                               ; preds = %32, %393
  %36 = phi i64 [ %29, %32 ], [ %399, %393 ]
  %37 = phi i64 [ %30, %32 ], [ %397, %393 ]
  %38 = icmp sgt i64 %37, %36
  br i1 %38, label %393, label %39

39:                                               ; preds = %35, %387
  %40 = phi i64 [ %388, %387 ], [ %37, %35 ]
  %41 = call fastcc i32 @GetOpenMPThreadId() #33
  %42 = load i32, ptr %3, align 4, !tbaa !25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %387, label %44

44:                                               ; preds = %39
  %45 = sitofp i64 %40 to double
  %46 = fadd double %45, 5.000000e-01
  %47 = fptrunc double %46 to float
  %48 = load float, ptr %4, align 4, !tbaa !44
  %49 = fdiv float %47, %48
  %50 = fpext float %49 to double
  %51 = fadd double %50, 1.000000e-15
  %52 = fptrunc double %51 to float
  %53 = load float, ptr %5, align 4, !tbaa !44
  %54 = fsub float %52, %53
  %55 = fpext float %54 to double
  %56 = fadd double %55, 5.000000e-01
  %57 = call fastcc double @MagickMax(double noundef %56, double noundef 0.000000e+00) #33
  %58 = fptosi double %57 to i64
  %59 = fadd float %53, %52
  %60 = fpext float %59 to double
  %61 = fadd double %60, 5.000000e-01
  %62 = load ptr, ptr %6, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct._Image, ptr %62, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !58
  %65 = uitofp i64 %64 to double
  %66 = call fastcc double @MagickMin(double noundef %61, double noundef %65) #33
  %67 = fptosi double %66 to i64
  %68 = load ptr, ptr %7, align 8, !tbaa !49
  %69 = sext i32 %41 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = sub nsw i64 %67, %58
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %108

74:                                               ; preds = %44, %74
  %75 = phi float [ %90, %74 ], [ 0.000000e+00, %44 ]
  %76 = phi i64 [ %91, %74 ], [ 0, %44 ]
  %77 = add nsw i64 %76, %58
  %78 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %76
  %79 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %76, i32 1
  store i64 %77, ptr %79, align 8, !tbaa !89
  %80 = load ptr, ptr %8, align 8, !tbaa !49
  %81 = load float, ptr %9, align 4, !tbaa !44
  %82 = fpext float %81 to double
  %83 = sitofp i64 %77 to float
  %84 = fsub float %83, %52
  %85 = fpext float %84 to double
  %86 = fadd double %85, 5.000000e-01
  %87 = fmul double %86, %82
  %88 = fptrunc double %87 to float
  %89 = call float @GetResizeFilterWeight(ptr noundef %80, float noundef %88) #33
  store float %89, ptr %78, align 8, !tbaa !91
  %90 = fadd float %75, %89
  %91 = add nuw nsw i64 %76, 1
  %92 = icmp eq i64 %91, %72
  br i1 %92, label %93, label %74, !llvm.loop !101

93:                                               ; preds = %74
  %94 = fcmp une float %90, 0.000000e+00
  %95 = fcmp une float %90, 1.000000e+00
  %96 = and i1 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = fpext float %90 to double
  %99 = call fastcc double @PerceptibleReciprocal(double noundef %98) #33
  %100 = fptrunc double %99 to float
  br label %101

101:                                              ; preds = %97, %101
  %102 = phi i64 [ %106, %101 ], [ 0, %97 ]
  %103 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %102
  %104 = load float, ptr %103, align 8, !tbaa !91
  %105 = fmul float %104, %100
  store float %105, ptr %103, align 8, !tbaa !91
  %106 = add nuw nsw i64 %102, 1
  %107 = icmp eq i64 %106, %72
  br i1 %107, label %108, label %101, !llvm.loop !102

108:                                              ; preds = %101, %44, %93
  %109 = phi i64 [ %72, %93 ], [ 0, %44 ], [ %72, %101 ]
  %110 = load ptr, ptr %10, align 8, !tbaa !49
  %111 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !89
  %113 = load ptr, ptr %6, align 8, !tbaa !49
  %114 = getelementptr inbounds %struct._Image, ptr %113, i64 0, i32 7
  %115 = load i64, ptr %114, align 8, !tbaa !57
  %116 = getelementptr %struct._ContributionInfo, ptr %71, i64 %109
  %117 = getelementptr %struct._ContributionInfo, ptr %116, i64 -1, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !89
  %119 = sub i64 %118, %112
  %120 = add i64 %119, 1
  %121 = load ptr, ptr %11, align 8, !tbaa !49
  %122 = call ptr @GetCacheViewVirtualPixels(ptr noundef %110, i64 noundef 0, i64 noundef %112, i64 noundef %115, i64 noundef %120, ptr noundef %121) #34
  %123 = load ptr, ptr %12, align 8, !tbaa !49
  %124 = load ptr, ptr %2, align 8, !tbaa !49
  %125 = getelementptr inbounds %struct._Image, ptr %124, i64 0, i32 7
  %126 = load i64, ptr %125, align 8, !tbaa !57
  %127 = load ptr, ptr %11, align 8, !tbaa !49
  %128 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %123, i64 noundef 0, i64 noundef %40, i64 noundef %126, i64 noundef 1, ptr noundef %127) #34
  %129 = icmp eq ptr %122, null
  %130 = icmp eq ptr %128, null
  %131 = select i1 %129, i1 true, i1 %130
  br i1 %131, label %386, label %132

132:                                              ; preds = %108
  %133 = load ptr, ptr %10, align 8, !tbaa !49
  %134 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %133) #29
  %135 = load ptr, ptr %12, align 8, !tbaa !49
  %136 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %135) #29
  %137 = load ptr, ptr %2, align 8, !tbaa !49
  %138 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 7
  %139 = load i64, ptr %138, align 8, !tbaa !57
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %367

141:                                              ; preds = %132
  %142 = load ptr, ptr %6, align 8, !tbaa !49
  %143 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 6
  %144 = load i32, ptr %143, align 8, !tbaa !84
  %145 = icmp eq i32 %144, 0
  %146 = icmp eq i64 %109, 0
  %147 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 7
  %148 = getelementptr inbounds %struct._Image, ptr %142, i64 0, i32 1
  %149 = getelementptr inbounds %struct._Image, ptr %137, i64 0, i32 1
  %150 = icmp eq ptr %134, null
  %151 = icmp eq ptr %136, null
  %152 = load i32, ptr %137, align 8, !tbaa !76
  %153 = icmp eq i32 %152, 2
  %154 = fpext float %52 to double
  %155 = sitofp i64 %58 to double
  %156 = sitofp i64 %67 to double
  %157 = fadd double %156, -1.000000e+00
  br label %158

158:                                              ; preds = %141, %363
  %159 = phi ptr [ %128, %141 ], [ %364, %363 ]
  %160 = phi i64 [ 0, %141 ], [ %365, %363 ]
  %161 = load <4 x float>, ptr %33, align 8
  %162 = load float, ptr %34, align 8, !tbaa.struct !94
  br i1 %145, label %168, label %163

163:                                              ; preds = %158
  br i1 %146, label %265, label %164

164:                                              ; preds = %163
  %165 = load i64, ptr %111, align 8, !tbaa !89
  %166 = load i64, ptr %147, align 8, !tbaa !57
  %167 = getelementptr %struct._PixelPacket, ptr %122, i64 %160
  br label %236

168:                                              ; preds = %158
  br i1 %146, label %191, label %169

169:                                              ; preds = %168
  %170 = load i64, ptr %111, align 8, !tbaa !89
  %171 = load i64, ptr %147, align 8, !tbaa !57
  %172 = getelementptr %struct._PixelPacket, ptr %122, i64 %160
  br label %173

173:                                              ; preds = %169, %173
  %174 = phi i64 [ 0, %169 ], [ %189, %173 ]
  %175 = phi <4 x float> [ %161, %169 ], [ %188, %173 ]
  %176 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %174
  %177 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %174, i32 1
  %178 = load i64, ptr %177, align 8, !tbaa !89
  %179 = sub nsw i64 %178, %170
  %180 = mul i64 %179, %171
  %181 = load float, ptr %176, align 8, !tbaa !91
  %182 = getelementptr %struct._PixelPacket, ptr %172, i64 %180
  %183 = load <4 x i16>, ptr %182, align 2, !tbaa !78
  %184 = uitofp <4 x i16> %183 to <4 x float>
  %185 = shufflevector <4 x float> %184, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %186 = insertelement <4 x float> poison, float %181, i64 0
  %187 = shufflevector <4 x float> %186, <4 x float> poison, <4 x i32> zeroinitializer
  %188 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %187, <4 x float> %185, <4 x float> %175)
  %189 = add nuw nsw i64 %174, 1
  %190 = icmp eq i64 %189, %109
  br i1 %190, label %191, label %173, !llvm.loop !103

191:                                              ; preds = %173, %168
  %192 = phi <4 x float> [ %161, %168 ], [ %188, %173 ]
  %193 = extractelement <4 x float> %192, i64 0
  %194 = call fastcc zeroext i16 @ClampToQuantum(float noundef %193) #33
  %195 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 2
  store i16 %194, ptr %195, align 2, !tbaa !68
  %196 = extractelement <4 x float> %192, i64 1
  %197 = call fastcc zeroext i16 @ClampToQuantum(float noundef %196) #33
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 1
  store i16 %197, ptr %198, align 2, !tbaa !70
  %199 = extractelement <4 x float> %192, i64 2
  %200 = call fastcc zeroext i16 @ClampToQuantum(float noundef %199) #33
  store i16 %200, ptr %159, align 2, !tbaa !72
  %201 = extractelement <4 x float> %192, i64 3
  %202 = call fastcc zeroext i16 @ClampToQuantum(float noundef %201) #33
  %203 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 3
  store i16 %202, ptr %203, align 2, !tbaa !74
  %204 = load i32, ptr %148, align 4, !tbaa !75
  %205 = icmp eq i32 %204, 12
  br i1 %205, label %206, label %338

206:                                              ; preds = %191
  %207 = load i32, ptr %149, align 4, !tbaa !75
  %208 = icmp eq i32 %207, 12
  br i1 %208, label %209, label %338

209:                                              ; preds = %206
  %210 = getelementptr i16, ptr %134, i64 %160
  br i1 %146, label %234, label %211

211:                                              ; preds = %209
  %212 = load i64, ptr %111, align 8, !tbaa !89
  %213 = load i64, ptr %147, align 8, !tbaa !57
  br label %214

214:                                              ; preds = %211, %228
  %215 = phi i64 [ 0, %211 ], [ %232, %228 ]
  %216 = phi float [ %162, %211 ], [ %231, %228 ]
  %217 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %215
  %218 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %215, i32 1
  %219 = load i64, ptr %218, align 8, !tbaa !89
  %220 = sub nsw i64 %219, %212
  %221 = mul i64 %220, %213
  %222 = load float, ptr %217, align 8, !tbaa !91
  %223 = getelementptr i16, ptr %210, i64 %221
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %214
  %226 = load i16, ptr %223, align 2, !tbaa !78
  %227 = zext i16 %226 to i32
  br label %228

228:                                              ; preds = %214, %225
  %229 = phi i32 [ %227, %225 ], [ 0, %214 ]
  %230 = sitofp i32 %229 to float
  %231 = call float @llvm.fmuladd.f32(float %222, float %230, float %216)
  %232 = add nuw nsw i64 %215, 1
  %233 = icmp eq i64 %232, %109
  br i1 %233, label %234, label %214, !llvm.loop !104

234:                                              ; preds = %228, %209
  %235 = phi float [ %162, %209 ], [ %231, %228 ]
  br i1 %151, label %338, label %334

236:                                              ; preds = %164, %236
  %237 = phi double [ 0.000000e+00, %164 ], [ %262, %236 ]
  %238 = phi i64 [ 0, %164 ], [ %263, %236 ]
  %239 = phi <4 x float> [ %161, %164 ], [ %260, %236 ]
  %240 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %238
  %241 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %238, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !89
  %243 = sub nsw i64 %242, %165
  %244 = mul i64 %243, %166
  %245 = load float, ptr %240, align 8, !tbaa !91
  %246 = fpext float %245 to double
  %247 = fmul double %246, 0x3EF0001000100010
  %248 = getelementptr %struct._PixelPacket, ptr %167, i64 %244
  %249 = load <4 x i16>, ptr %248, align 2, !tbaa !78
  %250 = extractelement <4 x i16> %249, i64 3
  %251 = xor i16 %250, -1
  %252 = uitofp i16 %251 to double
  %253 = fmul double %247, %252
  %254 = fptrunc double %253 to float
  %255 = uitofp <4 x i16> %249 to <4 x float>
  %256 = shufflevector <4 x float> %255, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %257 = insertelement <4 x float> poison, float %245, i64 0
  %258 = insertelement <4 x float> %257, float %254, i64 1
  %259 = shufflevector <4 x float> %258, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %260 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %259, <4 x float> %256, <4 x float> %239)
  %261 = fpext float %254 to double
  %262 = fadd double %237, %261
  %263 = add nuw nsw i64 %238, 1
  %264 = icmp eq i64 %263, %109
  br i1 %264, label %265, label %236, !llvm.loop !105

265:                                              ; preds = %236, %163
  %266 = phi double [ 0.000000e+00, %163 ], [ %262, %236 ]
  %267 = phi <4 x float> [ %161, %163 ], [ %260, %236 ]
  %268 = fcmp olt double %266, 0.000000e+00
  %269 = select i1 %268, double 0.000000e+00, double %266
  %270 = call fastcc double @PerceptibleReciprocal(double noundef %269) #33
  %271 = extractelement <4 x float> %267, i64 0
  %272 = fpext float %271 to double
  %273 = fmul double %270, %272
  %274 = fptrunc double %273 to float
  %275 = call fastcc zeroext i16 @ClampToQuantum(float noundef %274) #33
  %276 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 2
  store i16 %275, ptr %276, align 2, !tbaa !68
  %277 = extractelement <4 x float> %267, i64 1
  %278 = fpext float %277 to double
  %279 = fmul double %270, %278
  %280 = fptrunc double %279 to float
  %281 = call fastcc zeroext i16 @ClampToQuantum(float noundef %280) #33
  %282 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 1
  store i16 %281, ptr %282, align 2, !tbaa !70
  %283 = extractelement <4 x float> %267, i64 2
  %284 = fpext float %283 to double
  %285 = fmul double %270, %284
  %286 = fptrunc double %285 to float
  %287 = call fastcc zeroext i16 @ClampToQuantum(float noundef %286) #33
  store i16 %287, ptr %159, align 2, !tbaa !72
  %288 = extractelement <4 x float> %267, i64 3
  %289 = call fastcc zeroext i16 @ClampToQuantum(float noundef %288) #33
  %290 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 0, i32 3
  store i16 %289, ptr %290, align 2, !tbaa !74
  %291 = load i32, ptr %148, align 4, !tbaa !75
  %292 = icmp eq i32 %291, 12
  br i1 %292, label %293, label %338

293:                                              ; preds = %265
  %294 = load i32, ptr %149, align 4, !tbaa !75
  %295 = icmp eq i32 %294, 12
  br i1 %295, label %296, label %338

296:                                              ; preds = %293
  br i1 %146, label %328, label %297

297:                                              ; preds = %296
  %298 = load i64, ptr %111, align 8, !tbaa !89
  %299 = load i64, ptr %147, align 8, !tbaa !57
  br label %300

300:                                              ; preds = %297, %322
  %301 = phi i64 [ 0, %297 ], [ %326, %322 ]
  %302 = phi float [ %162, %297 ], [ %325, %322 ]
  %303 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %301
  %304 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %301, i32 1
  %305 = load i64, ptr %304, align 8, !tbaa !89
  %306 = sub nsw i64 %305, %298
  %307 = mul i64 %306, %299
  %308 = add i64 %307, %160
  %309 = load float, ptr %303, align 8, !tbaa !91
  %310 = fpext float %309 to double
  %311 = fmul double %310, 0x3EF0001000100010
  %312 = getelementptr inbounds %struct._PixelPacket, ptr %122, i64 %308, i32 3
  %313 = load i16, ptr %312, align 2, !tbaa !74
  %314 = xor i16 %313, -1
  %315 = uitofp i16 %314 to double
  %316 = fmul double %311, %315
  %317 = fptrunc double %316 to float
  br i1 %150, label %322, label %318

318:                                              ; preds = %300
  %319 = getelementptr inbounds i16, ptr %134, i64 %308
  %320 = load i16, ptr %319, align 2, !tbaa !78
  %321 = zext i16 %320 to i32
  br label %322

322:                                              ; preds = %300, %318
  %323 = phi i32 [ %321, %318 ], [ 0, %300 ]
  %324 = sitofp i32 %323 to float
  %325 = call float @llvm.fmuladd.f32(float %317, float %324, float %302)
  %326 = add nuw nsw i64 %301, 1
  %327 = icmp eq i64 %326, %109
  br i1 %327, label %328, label %300, !llvm.loop !106

328:                                              ; preds = %322, %296
  %329 = phi float [ %162, %296 ], [ %325, %322 ]
  br i1 %151, label %338, label %330

330:                                              ; preds = %328
  %331 = fpext float %329 to double
  %332 = fmul double %270, %331
  %333 = fptrunc double %332 to float
  br label %334

334:                                              ; preds = %234, %330
  %335 = phi float [ %333, %330 ], [ %235, %234 ]
  %336 = getelementptr inbounds i16, ptr %136, i64 %160
  %337 = call fastcc zeroext i16 @ClampToQuantum(float noundef %335) #33
  store i16 %337, ptr %336, align 2, !tbaa !78
  br label %338

338:                                              ; preds = %334, %265, %293, %328, %191, %206, %234
  br i1 %153, label %339, label %363

339:                                              ; preds = %338
  %340 = load i32, ptr %142, align 8, !tbaa !76
  %341 = icmp eq i32 %340, 2
  br i1 %341, label %342, label %363

342:                                              ; preds = %339
  %343 = getelementptr inbounds i16, ptr %136, i64 %160
  br i1 %151, label %363, label %344

344:                                              ; preds = %342
  %345 = call fastcc double @MagickMax(double noundef %154, double noundef %155) #33
  %346 = call fastcc double @MagickMin(double noundef %345, double noundef %157) #33
  %347 = fadd double %346, 5.000000e-01
  %348 = fptosi double %347 to i64
  %349 = sub nsw i64 %348, %58
  %350 = getelementptr inbounds %struct._ContributionInfo, ptr %71, i64 %349, i32 1
  %351 = load i64, ptr %350, align 8, !tbaa !89
  %352 = load i64, ptr %111, align 8, !tbaa !89
  %353 = sub nsw i64 %351, %352
  %354 = load i64, ptr %147, align 8, !tbaa !57
  %355 = mul i64 %353, %354
  %356 = getelementptr i16, ptr %134, i64 %355
  %357 = getelementptr i16, ptr %356, i64 %160
  %358 = icmp eq ptr %357, null
  br i1 %358, label %361, label %359

359:                                              ; preds = %344
  %360 = load i16, ptr %357, align 2, !tbaa !78
  br label %361

361:                                              ; preds = %344, %359
  %362 = phi i16 [ %360, %359 ], [ 0, %344 ]
  store i16 %362, ptr %343, align 2, !tbaa !78
  br label %363

363:                                              ; preds = %342, %361, %339, %338
  %364 = getelementptr inbounds %struct._PixelPacket, ptr %159, i64 1
  %365 = add nuw nsw i64 %160, 1
  %366 = icmp eq i64 %365, %139
  br i1 %366, label %367, label %158, !llvm.loop !107

367:                                              ; preds = %363, %132
  %368 = load ptr, ptr %12, align 8, !tbaa !49
  %369 = load ptr, ptr %11, align 8, !tbaa !49
  %370 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %368, ptr noundef %369) #34
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %367
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %373

373:                                              ; preds = %372, %367
  %374 = load ptr, ptr %6, align 8, !tbaa !49
  %375 = getelementptr inbounds %struct._Image, ptr %374, i64 0, i32 47
  %376 = load ptr, ptr %375, align 8, !tbaa !65
  %377 = icmp eq ptr %376, null
  br i1 %377, label %387, label %378

378:                                              ; preds = %373
  call void @__kmpc_critical(ptr nonnull @1, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_VerticalFilter.var)
  %379 = load ptr, ptr %6, align 8, !tbaa !49
  %380 = load ptr, ptr %14, align 8, !tbaa !49
  %381 = load i64, ptr %380, align 8, !tbaa !59
  %382 = add nsw i64 %381, 1
  store i64 %382, ptr %380, align 8, !tbaa !59
  %383 = load i64, ptr %15, align 8, !tbaa !59
  %384 = call fastcc i32 @SetImageProgress(ptr noundef %379, ptr noundef nonnull @.str.30, i64 noundef %381, i64 noundef %383) #33
  call void @__kmpc_end_critical(ptr nonnull @1, i32 %27, ptr nonnull @.gomp_critical_user_MagickCore_VerticalFilter.var)
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %378, %108
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %387

387:                                              ; preds = %386, %373, %378, %39
  %388 = add nsw i64 %40, 1
  %389 = load i64, ptr %18, align 8, !tbaa !60
  %390 = icmp slt i64 %40, %389
  br i1 %390, label %39, label %391

391:                                              ; preds = %387
  %392 = load i64, ptr %17, align 8, !tbaa !60
  br label %393

393:                                              ; preds = %391, %35
  %394 = phi i64 [ %37, %35 ], [ %392, %391 ]
  %395 = phi i64 [ %36, %35 ], [ %389, %391 ]
  %396 = load i64, ptr %19, align 8, !tbaa !60
  %397 = add nsw i64 %396, %394
  store i64 %397, ptr %17, align 8, !tbaa !60
  %398 = add nsw i64 %396, %395
  %399 = call i64 @llvm.smin.i64(i64 %398, i64 %24)
  store i64 %399, ptr %18, align 8, !tbaa !60
  %400 = icmp sgt i64 %397, %399
  br i1 %400, label %401, label %35

401:                                              ; preds = %393, %26
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  br label %402

402:                                              ; preds = %401, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @SampleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct._PointInfo, align 16
  %14 = alloca %struct._GeometryInfo, align 8
  %15 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store ptr %0, ptr %5, align 8, !tbaa !49
  store ptr %3, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #16
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %17 = load i32, ptr %16, align 8, !tbaa !6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %21 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3130, ptr noundef nonnull @.str.2, ptr noundef nonnull %20) #29
  br label %22

22:                                               ; preds = %19, %4
  %23 = icmp eq i64 %1, 0
  %24 = icmp eq i64 %2, 0
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %28 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3134, i32 noundef 465, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.4, ptr noundef nonnull %27) #29
  br label %124

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %31 = load i64, ptr %30, align 8, !tbaa !57
  %32 = icmp eq i64 %31, %1
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !58
  %36 = icmp eq i64 %35, %2
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #29
  br label %124

39:                                               ; preds = %33, %29
  %40 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3) #29
  store ptr %40, ptr %9, align 8, !tbaa !49
  %41 = icmp eq ptr %40, null
  br i1 %41, label %124, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._PointInfo, ptr %13, i64 0, i32 1
  store <2 x double> <double 0x3FDFFFFFFFFFFFEE, double 0x3FDFFFFFFFFFFFEE>, ptr %13, align 16, !tbaa !45
  %44 = tail call ptr @GetImageArtifact(ptr noundef nonnull %0, ptr noundef nonnull @.str.36) #29
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #16
  %47 = call i32 @ParseGeometry(ptr noundef nonnull %44, ptr noundef nonnull %14) #29
  %48 = call i32 @ParseGeometry(ptr noundef nonnull %44, ptr noundef nonnull %14) #29
  %49 = load double, ptr %14, align 8, !tbaa !108
  %50 = fdiv double %49, 1.000000e+02
  %51 = fadd double %50, -1.000000e-15
  store double %51, ptr %43, align 8, !tbaa !61
  store double %51, ptr %13, align 16, !tbaa !63
  %52 = and i32 %48, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct._GeometryInfo, ptr %14, i64 0, i32 1
  %56 = load double, ptr %55, align 8, !tbaa !110
  %57 = fdiv double %56, 1.000000e+02
  %58 = fadd double %57, -1.000000e-15
  store double %58, ptr %43, align 8, !tbaa !61
  br label %59

59:                                               ; preds = %54, %46
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #16
  br label %60

60:                                               ; preds = %59, %42
  %61 = phi double [ %51, %59 ], [ 0x3FDFFFFFFFFFFFEE, %42 ]
  %62 = getelementptr inbounds %struct._Image, ptr %40, i64 0, i32 7
  %63 = load i64, ptr %62, align 8, !tbaa !57
  %64 = call ptr @AcquireQuantumMemory(i64 noundef %63, i64 noundef 8) #35
  store ptr %64, ptr %12, align 8, !tbaa !49
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i64, ptr %62, align 8, !tbaa !57
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %73, label %88

69:                                               ; preds = %60
  %70 = call ptr @DestroyImage(ptr noundef nonnull %40) #29
  %71 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %72 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3172, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %71) #29
  br label %124

73:                                               ; preds = %66, %73
  %74 = phi i64 [ %86, %73 ], [ %67, %66 ]
  %75 = phi i64 [ %85, %73 ], [ 0, %66 ]
  %76 = sitofp i64 %75 to double
  %77 = fadd double %61, %76
  %78 = load i64, ptr %30, align 8, !tbaa !57
  %79 = uitofp i64 %78 to double
  %80 = fmul double %77, %79
  %81 = uitofp i64 %74 to double
  %82 = fdiv double %80, %81
  %83 = fptosi double %82 to i64
  %84 = getelementptr inbounds i64, ptr %64, i64 %75
  store i64 %83, ptr %84, align 8, !tbaa !60
  %85 = add nuw nsw i64 %75, 1
  %86 = load i64, ptr %62, align 8, !tbaa !57
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %73, label %88, !llvm.loop !111

88:                                               ; preds = %73, %66
  store i32 1, ptr %10, align 4, !tbaa !25
  store i64 0, ptr %11, align 8, !tbaa !59
  %89 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #29
  store ptr %89, ptr %7, align 8, !tbaa !49
  %90 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %40, ptr noundef %3) #29
  store ptr %90, ptr %8, align 8, !tbaa !49
  %91 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %92 = and i64 %91, 576460752303423487
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %0) #29
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = call i32 @GetImagePixelCacheType(ptr noundef nonnull %40) #29
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  br label %106

102:                                              ; preds = %97, %94, %88
  %103 = call i64 @GetMagickResourceLimit(i32 noundef 6) #29
  %104 = icmp ult i64 %103, 2
  %105 = select i1 %104, i64 1, i64 2
  br label %106

106:                                              ; preds = %102, %100
  %107 = phi i64 [ %101, %100 ], [ %105, %102 ]
  %108 = trunc i64 %107 to i32
  call void @__kmpc_push_num_threads(ptr nonnull @1, i32 %15, i32 %108)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @1, i32 9, ptr nonnull @SampleImage.omp_outlined, ptr nonnull %9, ptr nonnull %10, ptr nonnull %13, ptr nonnull %5, ptr nonnull %7, ptr nonnull %6, ptr nonnull %8, ptr nonnull %12, ptr nonnull %11)
  %109 = load ptr, ptr %7, align 8, !tbaa !49
  %110 = call ptr @DestroyCacheView(ptr noundef %109) #29
  store ptr %110, ptr %7, align 8, !tbaa !49
  %111 = load ptr, ptr %8, align 8, !tbaa !49
  %112 = call ptr @DestroyCacheView(ptr noundef %111) #29
  store ptr %112, ptr %8, align 8, !tbaa !49
  %113 = load ptr, ptr %12, align 8, !tbaa !49
  %114 = call ptr @RelinquishMagickMemory(ptr noundef %113) #29
  store ptr %114, ptr %12, align 8, !tbaa !49
  %115 = load ptr, ptr %5, align 8, !tbaa !49
  %116 = getelementptr inbounds %struct._Image, ptr %115, i64 0, i32 77
  %117 = load i32, ptr %116, align 8, !tbaa !85
  %118 = load ptr, ptr %9, align 8, !tbaa !49
  %119 = getelementptr inbounds %struct._Image, ptr %118, i64 0, i32 77
  store i32 %117, ptr %119, align 8, !tbaa !85
  %120 = load i32, ptr %10, align 4, !tbaa !25
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %106
  %123 = call ptr @DestroyImage(ptr noundef nonnull %118) #29
  br label %124

124:                                              ; preds = %106, %122, %39, %69, %37, %26
  %125 = phi ptr [ null, %26 ], [ %38, %37 ], [ null, %69 ], [ null, %39 ], [ %123, %122 ], [ %118, %106 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret ptr %125
}

; Function Attrs: optsize
declare i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind optsize uwtable
define internal void @SampleImage.omp_outlined(ptr noalias nocapture noundef readonly %0, ptr noalias nocapture readnone %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %4, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %5, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %6, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %7, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %8, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %9, ptr nocapture noundef nonnull align 8 dereferenceable(8) %10) #19 {
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = load ptr, ptr %2, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct._Image, ptr %16, i64 0, i32 8
  %18 = load i64, ptr %17, align 8, !tbaa !58
  %19 = add nsw i64 %18, -1
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %21, label %155

21:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store i64 0, ptr %12, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  store i64 %19, ptr %13, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  store i64 1, ptr %14, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  store i32 0, ptr %15, align 4, !tbaa !25
  %22 = load i32, ptr %0, align 4, !tbaa !25
  call void @__kmpc_for_static_init_8(ptr nonnull @2, i32 %22, i32 33, ptr nonnull %15, ptr nonnull %12, ptr nonnull %13, ptr nonnull %14, i64 1, i64 4)
  %23 = load i64, ptr %13, align 8
  %24 = call i64 @llvm.smin.i64(i64 %23, i64 %19)
  store i64 %24, ptr %13, align 8, !tbaa !60
  %25 = load i64, ptr %12, align 8, !tbaa !60
  %26 = icmp sgt i64 %25, %24
  br i1 %26, label %154, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct._PointInfo, ptr %4, i64 0, i32 1
  br label %29

29:                                               ; preds = %27, %146
  %30 = phi i64 [ %24, %27 ], [ %152, %146 ]
  %31 = phi i64 [ %25, %27 ], [ %150, %146 ]
  %32 = icmp sgt i64 %31, %30
  br i1 %32, label %146, label %33

33:                                               ; preds = %29, %140
  %34 = phi i64 [ %141, %140 ], [ %31, %29 ]
  %35 = load i32, ptr %3, align 4, !tbaa !25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %140, label %37

37:                                               ; preds = %33
  %38 = sitofp i64 %34 to double
  %39 = load double, ptr %28, align 8, !tbaa !61
  %40 = fadd double %39, %38
  %41 = load ptr, ptr %5, align 8, !tbaa !49
  %42 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 8
  %43 = load i64, ptr %42, align 8, !tbaa !58
  %44 = uitofp i64 %43 to double
  %45 = fmul double %40, %44
  %46 = load ptr, ptr %2, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct._Image, ptr %46, i64 0, i32 8
  %48 = load i64, ptr %47, align 8, !tbaa !58
  %49 = uitofp i64 %48 to double
  %50 = fdiv double %45, %49
  %51 = fptosi double %50 to i64
  %52 = load ptr, ptr %6, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct._Image, ptr %41, i64 0, i32 7
  %54 = load i64, ptr %53, align 8, !tbaa !57
  %55 = load ptr, ptr %7, align 8, !tbaa !49
  %56 = call ptr @GetCacheViewVirtualPixels(ptr noundef %52, i64 noundef 0, i64 noundef %51, i64 noundef %54, i64 noundef 1, ptr noundef %55) #34
  %57 = load ptr, ptr %8, align 8, !tbaa !49
  %58 = load ptr, ptr %2, align 8, !tbaa !49
  %59 = getelementptr inbounds %struct._Image, ptr %58, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !57
  %61 = load ptr, ptr %7, align 8, !tbaa !49
  %62 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %57, i64 noundef 0, i64 noundef %34, i64 noundef %60, i64 noundef 1, ptr noundef %61) #34
  %63 = icmp eq ptr %56, null
  %64 = icmp eq ptr %62, null
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %139, label %66

66:                                               ; preds = %37
  %67 = load ptr, ptr %6, align 8, !tbaa !49
  %68 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %67) #29
  %69 = load ptr, ptr %8, align 8, !tbaa !49
  %70 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %69) #29
  %71 = load ptr, ptr %2, align 8, !tbaa !49
  %72 = getelementptr inbounds %struct._Image, ptr %71, i64 0, i32 7
  %73 = load i64, ptr %72, align 8, !tbaa !57
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %66, %75
  %76 = phi ptr [ %78, %75 ], [ %62, %66 ]
  %77 = phi i64 [ %84, %75 ], [ 0, %66 ]
  %78 = getelementptr inbounds %struct._PixelPacket, ptr %76, i64 1
  %79 = load ptr, ptr %9, align 8, !tbaa !49
  %80 = getelementptr inbounds i64, ptr %79, i64 %77
  %81 = load i64, ptr %80, align 8, !tbaa !60
  %82 = getelementptr inbounds %struct._PixelPacket, ptr %56, i64 %81
  %83 = load i64, ptr %82, align 2
  store i64 %83, ptr %76, align 2
  %84 = add nuw nsw i64 %77, 1
  %85 = load ptr, ptr %2, align 8, !tbaa !49
  %86 = getelementptr inbounds %struct._Image, ptr %85, i64 0, i32 7
  %87 = load i64, ptr %86, align 8, !tbaa !57
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %75, label %89, !llvm.loop !112

89:                                               ; preds = %75, %66
  %90 = phi i64 [ %73, %66 ], [ %87, %75 ]
  %91 = load ptr, ptr %5, align 8, !tbaa !49
  %92 = load i32, ptr %91, align 8, !tbaa !76
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct._Image, ptr %91, i64 0, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !75
  %97 = icmp eq i32 %96, 12
  %98 = icmp sgt i64 %90, 0
  %99 = and i1 %97, %98
  br i1 %99, label %102, label %120

100:                                              ; preds = %89
  %101 = icmp sgt i64 %90, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %94, %100
  %103 = icmp eq ptr %70, null
  %104 = icmp eq ptr %68, null
  %105 = load ptr, ptr %9, align 8
  br label %106

106:                                              ; preds = %102, %117
  %107 = phi i64 [ 0, %102 ], [ %118, %117 ]
  %108 = getelementptr inbounds i16, ptr %70, i64 %107
  br i1 %103, label %117, label %109

109:                                              ; preds = %106
  br i1 %104, label %115, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds i64, ptr %105, i64 %107
  %112 = load i64, ptr %111, align 8, !tbaa !60
  %113 = getelementptr inbounds i16, ptr %68, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !78
  br label %115

115:                                              ; preds = %109, %110
  %116 = phi i16 [ %114, %110 ], [ 0, %109 ]
  store i16 %116, ptr %108, align 2, !tbaa !78
  br label %117

117:                                              ; preds = %106, %115
  %118 = add nuw nsw i64 %107, 1
  %119 = icmp eq i64 %118, %90
  br i1 %119, label %120, label %106, !llvm.loop !113

120:                                              ; preds = %117, %100, %94
  %121 = load ptr, ptr %8, align 8, !tbaa !49
  %122 = load ptr, ptr %7, align 8, !tbaa !49
  %123 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %121, ptr noundef %122) #34
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %126

126:                                              ; preds = %125, %120
  %127 = load ptr, ptr %5, align 8, !tbaa !49
  %128 = getelementptr inbounds %struct._Image, ptr %127, i64 0, i32 47
  %129 = load ptr, ptr %128, align 8, !tbaa !65
  %130 = icmp eq ptr %129, null
  br i1 %130, label %140, label %131

131:                                              ; preds = %126
  call void @__kmpc_critical(ptr nonnull @1, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_SampleImage.var)
  %132 = load ptr, ptr %5, align 8, !tbaa !49
  %133 = load i64, ptr %10, align 8, !tbaa !59
  %134 = add nsw i64 %133, 1
  store i64 %134, ptr %10, align 8, !tbaa !59
  %135 = getelementptr inbounds %struct._Image, ptr %132, i64 0, i32 8
  %136 = load i64, ptr %135, align 8, !tbaa !58
  %137 = call fastcc i32 @SetImageProgress(ptr noundef %132, ptr noundef nonnull @.str.37, i64 noundef %133, i64 noundef %136) #33
  call void @__kmpc_end_critical(ptr nonnull @1, i32 %22, ptr nonnull @.gomp_critical_user_MagickCore_SampleImage.var)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131, %37
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %140

140:                                              ; preds = %139, %126, %131, %33
  %141 = add nsw i64 %34, 1
  %142 = load i64, ptr %13, align 8, !tbaa !60
  %143 = icmp slt i64 %34, %142
  br i1 %143, label %33, label %144

144:                                              ; preds = %140
  %145 = load i64, ptr %12, align 8, !tbaa !60
  br label %146

146:                                              ; preds = %144, %29
  %147 = phi i64 [ %31, %29 ], [ %145, %144 ]
  %148 = phi i64 [ %30, %29 ], [ %142, %144 ]
  %149 = load i64, ptr %14, align 8, !tbaa !60
  %150 = add nsw i64 %149, %147
  store i64 %150, ptr %12, align 8, !tbaa !60
  %151 = add nsw i64 %149, %148
  %152 = call i64 @llvm.smin.i64(i64 %151, i64 %19)
  store i64 %152, ptr %13, align 8, !tbaa !60
  %153 = icmp sgt i64 %150, %152
  br i1 %153, label %154, label %29

154:                                              ; preds = %146, %21
  call void @__kmpc_for_static_fini(ptr nonnull @2, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %155

155:                                              ; preds = %154, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ScaleImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct._MagickPixelPacket, align 8
  %6 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %8 = load i32, ptr %7, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %12 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3331, ptr noundef nonnull @.str.2, ptr noundef nonnull %11) #29
  br label %13

13:                                               ; preds = %10, %4
  %14 = icmp eq i64 %1, 0
  %15 = icmp eq i64 %2, 0
  %16 = or i1 %14, %15
  br i1 %16, label %799, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !57
  %20 = icmp eq i64 %19, %1
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %23 = load i64, ptr %22, align 8, !tbaa !58
  %24 = icmp eq i64 %23, %2
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %3) #29
  br label %799

27:                                               ; preds = %21, %17
  %28 = tail call ptr @CloneImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, ptr noundef %3) #29
  %29 = icmp eq ptr %28, null
  br i1 %29, label %799, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %28, i32 noundef 1) #29
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 58
  tail call void @InheritException(ptr noundef %3, ptr noundef nonnull %34) #29
  %35 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #29
  br label %799

36:                                               ; preds = %30
  %37 = load i64, ptr %18, align 8, !tbaa !57
  %38 = tail call ptr @AcquireQuantumMemory(i64 noundef %37, i64 noundef 56) #35
  %39 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 8
  %42 = load i64, ptr %41, align 8, !tbaa !58
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i64, ptr %18, align 8, !tbaa !57
  %46 = tail call ptr @AcquireQuantumMemory(i64 noundef %45, i64 noundef 56) #35
  br label %47

47:                                               ; preds = %44, %36
  %48 = phi ptr [ %46, %44 ], [ %38, %36 ]
  %49 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 7
  %50 = load i64, ptr %49, align 8, !tbaa !57
  %51 = tail call ptr @AcquireQuantumMemory(i64 noundef %50, i64 noundef 56) #35
  %52 = load i64, ptr %18, align 8, !tbaa !57
  %53 = tail call ptr @AcquireQuantumMemory(i64 noundef %52, i64 noundef 56) #35
  %54 = insertelement <4 x ptr> poison, ptr %51, i64 0
  %55 = insertelement <4 x ptr> %54, ptr %48, i64 1
  %56 = insertelement <4 x ptr> %55, ptr %38, i64 2
  %57 = insertelement <4 x ptr> %56, ptr %53, i64 3
  %58 = freeze <4 x ptr> %57
  %59 = icmp eq <4 x ptr> %58, zeroinitializer
  %60 = bitcast <4 x i1> %59 to i4
  %61 = icmp eq i4 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %47
  %63 = tail call ptr @DestroyImage(ptr noundef nonnull %28) #29
  %64 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %65 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3366, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %64) #29
  br label %799

66:                                               ; preds = %47
  %67 = load i64, ptr %41, align 8, !tbaa !58
  %68 = load i64, ptr %39, align 8, !tbaa !58
  %69 = load i64, ptr %18, align 8, !tbaa !57
  %70 = mul i64 %69, 56
  %71 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %53, i32 noundef 0, i64 noundef %70) #29
  call void @GetMagickPixelPacket(ptr noundef nonnull %0, ptr noundef nonnull %5) #29
  %72 = call ptr @ResetMagickMemory(ptr noundef nonnull %6, i32 noundef 0, i64 noundef 56) #29
  %73 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %0, ptr noundef %3) #29
  %74 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %28, ptr noundef %3) #29
  %75 = load i64, ptr %41, align 8, !tbaa !58
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %781

77:                                               ; preds = %66
  %78 = uitofp i64 %67 to double
  %79 = uitofp i64 %68 to double
  %80 = fdiv double %78, %79
  %81 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 6
  %82 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 6
  %83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 5
  %84 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 7
  %85 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 8
  %86 = getelementptr inbounds %struct._MagickPixelPacket, ptr %5, i64 0, i32 9
  %87 = ptrtoint ptr %51 to i64
  br label %92

88:                                               ; preds = %774
  %89 = add nuw nsw i64 %93, 1
  %90 = load i64, ptr %41, align 8, !tbaa !58
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %778, !llvm.loop !114

92:                                               ; preds = %77, %88
  %93 = phi i64 [ 0, %77 ], [ %89, %88 ]
  %94 = phi i64 [ 0, %77 ], [ %457, %88 ]
  %95 = phi i64 [ 0, %77 ], [ %456, %88 ]
  %96 = phi double [ %80, %77 ], [ %455, %88 ]
  %97 = phi i32 [ 1, %77 ], [ %453, %88 ]
  %98 = phi i32 [ 1, %77 ], [ %452, %88 ]
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %778, label %100

100:                                              ; preds = %92
  %101 = load i64, ptr %49, align 8, !tbaa !57
  %102 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %74, i64 noundef 0, i64 noundef %93, i64 noundef %101, i64 noundef 1, ptr noundef %3) #34
  %103 = icmp eq ptr %102, null
  br i1 %103, label %778, label %104

104:                                              ; preds = %100
  %105 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %74) #29
  %106 = load i64, ptr %41, align 8, !tbaa !58
  %107 = load i64, ptr %39, align 8, !tbaa !58
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = fcmp olt double %96, 1.000000e+00
  br i1 %110, label %111, label %296

111:                                              ; preds = %109
  %112 = icmp eq ptr %105, null
  br label %167

113:                                              ; preds = %104
  %114 = add nsw i64 %95, 1
  %115 = load i64, ptr %18, align 8, !tbaa !57
  %116 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %95, i64 noundef %115, i64 noundef 1, ptr noundef %3) #34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %778, label %118

118:                                              ; preds = %113
  %119 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #29
  %120 = load i64, ptr %18, align 8, !tbaa !57
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %450

122:                                              ; preds = %118
  %123 = load i32, ptr %81, align 8, !tbaa !84
  %124 = icmp eq i32 %123, 0
  %125 = icmp eq ptr %119, null
  br label %126

126:                                              ; preds = %122, %163
  %127 = phi i64 [ 0, %122 ], [ %165, %163 ]
  %128 = phi ptr [ %116, %122 ], [ %164, %163 ]
  %129 = phi float [ 1.000000e+00, %122 ], [ %138, %163 ]
  br i1 %124, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 3
  %132 = load i16, ptr %131, align 2, !tbaa !74
  %133 = xor i16 %132, -1
  %134 = uitofp i16 %133 to double
  %135 = fmul double %134, 0x3EF0001000100010
  %136 = fptrunc double %135 to float
  br label %137

137:                                              ; preds = %130, %126
  %138 = phi float [ %136, %130 ], [ %129, %126 ]
  %139 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 5
  %140 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 1
  %141 = load <2 x i16>, ptr %140, align 2, !tbaa !78
  %142 = uitofp <2 x i16> %141 to <2 x float>
  %143 = insertelement <2 x float> poison, float %138, i64 0
  %144 = shufflevector <2 x float> %143, <2 x float> poison, <2 x i32> zeroinitializer
  %145 = fmul <2 x float> %144, %142
  %146 = shufflevector <2 x float> %145, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %146, ptr %139, align 8, !tbaa !44
  %147 = load i16, ptr %128, align 2, !tbaa !72
  %148 = uitofp i16 %147 to float
  %149 = fmul float %138, %148
  %150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 7
  store float %149, ptr %150, align 8, !tbaa !71
  br i1 %124, label %156, label %151

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 0, i32 3
  %153 = load i16, ptr %152, align 2, !tbaa !74
  %154 = uitofp i16 %153 to float
  %155 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 8
  store float %154, ptr %155, align 4, !tbaa !73
  br label %156

156:                                              ; preds = %151, %137
  br i1 %125, label %163, label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds i16, ptr %119, i64 %127
  %159 = load i16, ptr %158, align 2, !tbaa !78
  %160 = uitofp i16 %159 to float
  %161 = fmul float %138, %160
  %162 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %127, i32 9
  store float %161, ptr %162, align 8, !tbaa !77
  br label %163

163:                                              ; preds = %157, %156
  %164 = getelementptr inbounds %struct._PixelPacket, ptr %128, i64 1
  %165 = add nuw nsw i64 %127, 1
  %166 = icmp eq i64 %165, %120
  br i1 %166, label %450, label %126, !llvm.loop !115

167:                                              ; preds = %111, %288
  %168 = phi i64 [ %107, %111 ], [ %292, %288 ]
  %169 = phi i64 [ %94, %111 ], [ %241, %288 ]
  %170 = phi i64 [ %95, %111 ], [ %240, %288 ]
  %171 = phi double [ 1.000000e+00, %111 ], [ %289, %288 ]
  %172 = phi double [ %96, %111 ], [ %294, %288 ]
  %173 = phi float [ 1.000000e+00, %111 ], [ %239, %288 ]
  %174 = phi i32 [ %98, %111 ], [ 1, %288 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i64, ptr %18, align 8, !tbaa !57
  br label %237

178:                                              ; preds = %167
  %179 = icmp slt i64 %169, %168
  %180 = load i64, ptr %18, align 8, !tbaa !57
  br i1 %179, label %181, label %237

181:                                              ; preds = %178
  %182 = add nsw i64 %170, 1
  %183 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %170, i64 noundef %180, i64 noundef 1, ptr noundef %3) #34
  %184 = icmp eq ptr %183, null
  br i1 %184, label %299, label %185

185:                                              ; preds = %181
  %186 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #29
  %187 = load i64, ptr %18, align 8, !tbaa !57
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %234

189:                                              ; preds = %185
  %190 = load i32, ptr %81, align 8, !tbaa !84
  %191 = icmp eq i32 %190, 0
  %192 = icmp eq ptr %186, null
  br label %193

193:                                              ; preds = %189, %230
  %194 = phi i64 [ 0, %189 ], [ %232, %230 ]
  %195 = phi ptr [ %183, %189 ], [ %231, %230 ]
  %196 = phi float [ %173, %189 ], [ %205, %230 ]
  br i1 %191, label %204, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 0, i32 3
  %199 = load i16, ptr %198, align 2, !tbaa !74
  %200 = xor i16 %199, -1
  %201 = uitofp i16 %200 to double
  %202 = fmul double %201, 0x3EF0001000100010
  %203 = fptrunc double %202 to float
  br label %204

204:                                              ; preds = %197, %193
  %205 = phi float [ %203, %197 ], [ %196, %193 ]
  %206 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 5
  %207 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 0, i32 1
  %208 = load <2 x i16>, ptr %207, align 2, !tbaa !78
  %209 = uitofp <2 x i16> %208 to <2 x float>
  %210 = insertelement <2 x float> poison, float %205, i64 0
  %211 = shufflevector <2 x float> %210, <2 x float> poison, <2 x i32> zeroinitializer
  %212 = fmul <2 x float> %211, %209
  %213 = shufflevector <2 x float> %212, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %213, ptr %206, align 8, !tbaa !44
  %214 = load i16, ptr %195, align 2, !tbaa !72
  %215 = uitofp i16 %214 to float
  %216 = fmul float %205, %215
  %217 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 7
  store float %216, ptr %217, align 8, !tbaa !71
  br i1 %191, label %223, label %218

218:                                              ; preds = %204
  %219 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 0, i32 3
  %220 = load i16, ptr %219, align 2, !tbaa !74
  %221 = uitofp i16 %220 to float
  %222 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 8
  store float %221, ptr %222, align 4, !tbaa !73
  br label %223

223:                                              ; preds = %218, %204
  br i1 %192, label %230, label %224

224:                                              ; preds = %223
  %225 = getelementptr inbounds i16, ptr %186, i64 %194
  %226 = load i16, ptr %225, align 2, !tbaa !78
  %227 = uitofp i16 %226 to float
  %228 = fmul float %205, %227
  %229 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %194, i32 9
  store float %228, ptr %229, align 8, !tbaa !77
  br label %230

230:                                              ; preds = %224, %223
  %231 = getelementptr inbounds %struct._PixelPacket, ptr %195, i64 1
  %232 = add nuw nsw i64 %194, 1
  %233 = icmp eq i64 %232, %187
  br i1 %233, label %234, label %193, !llvm.loop !116

234:                                              ; preds = %230, %185
  %235 = phi float [ %173, %185 ], [ %205, %230 ]
  %236 = add nsw i64 %169, 1
  br label %237

237:                                              ; preds = %176, %234, %178
  %238 = phi i64 [ %187, %234 ], [ %180, %178 ], [ %177, %176 ]
  %239 = phi float [ %235, %234 ], [ %173, %178 ], [ %173, %176 ]
  %240 = phi i64 [ %182, %234 ], [ %170, %178 ], [ %170, %176 ]
  %241 = phi i64 [ %236, %234 ], [ %169, %178 ], [ %169, %176 ]
  %242 = icmp sgt i64 %238, 0
  br i1 %242, label %243, label %288

243:                                              ; preds = %237
  %244 = load i32, ptr %82, align 8, !tbaa !84
  %245 = icmp eq i32 %244, 0
  %246 = insertelement <2 x double> poison, double %172, i64 0
  %247 = shufflevector <2 x double> %246, <2 x double> poison, <2 x i32> zeroinitializer
  br label %248

248:                                              ; preds = %243, %285
  %249 = phi i64 [ 0, %243 ], [ %286, %285 ]
  %250 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 5
  %251 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 5
  %252 = load <2 x float>, ptr %250, align 8, !tbaa !44
  %253 = fpext <2 x float> %252 to <2 x double>
  %254 = load <2 x float>, ptr %251, align 8, !tbaa !44
  %255 = fpext <2 x float> %254 to <2 x double>
  %256 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %247, <2 x double> %253, <2 x double> %255)
  %257 = fptrunc <2 x double> %256 to <2 x float>
  store <2 x float> %257, ptr %251, align 8, !tbaa !44
  %258 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 7
  %259 = load float, ptr %258, align 8, !tbaa !71
  %260 = fpext float %259 to double
  %261 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 7
  %262 = load float, ptr %261, align 8, !tbaa !71
  %263 = fpext float %262 to double
  %264 = call double @llvm.fmuladd.f64(double %172, double %260, double %263)
  %265 = fptrunc double %264 to float
  store float %265, ptr %261, align 8, !tbaa !71
  br i1 %245, label %275, label %266

266:                                              ; preds = %248
  %267 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 8
  %268 = load float, ptr %267, align 4, !tbaa !73
  %269 = fpext float %268 to double
  %270 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 8
  %271 = load float, ptr %270, align 4, !tbaa !73
  %272 = fpext float %271 to double
  %273 = call double @llvm.fmuladd.f64(double %172, double %269, double %272)
  %274 = fptrunc double %273 to float
  store float %274, ptr %270, align 4, !tbaa !73
  br label %275

275:                                              ; preds = %266, %248
  br i1 %112, label %285, label %276

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %249, i32 9
  %278 = load float, ptr %277, align 8, !tbaa !77
  %279 = fpext float %278 to double
  %280 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %249, i32 9
  %281 = load float, ptr %280, align 8, !tbaa !77
  %282 = fpext float %281 to double
  %283 = call double @llvm.fmuladd.f64(double %172, double %279, double %282)
  %284 = fptrunc double %283 to float
  store float %284, ptr %280, align 8, !tbaa !77
  br label %285

285:                                              ; preds = %275, %276
  %286 = add nuw nsw i64 %249, 1
  %287 = icmp eq i64 %286, %238
  br i1 %287, label %288, label %248, !llvm.loop !117

288:                                              ; preds = %285, %237
  %289 = fsub double %171, %172
  %290 = load i64, ptr %41, align 8, !tbaa !58
  %291 = uitofp i64 %290 to double
  %292 = load i64, ptr %39, align 8, !tbaa !58
  %293 = uitofp i64 %292 to double
  %294 = fdiv double %291, %293
  %295 = fcmp olt double %294, %289
  br i1 %295, label %167, label %302, !llvm.loop !118

296:                                              ; preds = %109
  %297 = load i64, ptr %18, align 8, !tbaa !57
  %298 = icmp eq i32 %98, 0
  br i1 %298, label %368, label %302

299:                                              ; preds = %181
  %300 = load i64, ptr %39, align 8, !tbaa !58
  %301 = load i64, ptr %18, align 8, !tbaa !57
  br label %302

302:                                              ; preds = %288, %299, %296
  %303 = phi i64 [ %297, %296 ], [ %301, %299 ], [ %238, %288 ]
  %304 = phi i64 [ %107, %296 ], [ %300, %299 ], [ %292, %288 ]
  %305 = phi float [ 1.000000e+00, %296 ], [ %173, %299 ], [ %239, %288 ]
  %306 = phi double [ %96, %296 ], [ %172, %299 ], [ %294, %288 ]
  %307 = phi double [ 1.000000e+00, %296 ], [ %171, %299 ], [ %289, %288 ]
  %308 = phi i64 [ %94, %296 ], [ %169, %299 ], [ %241, %288 ]
  %309 = phi i64 [ %95, %296 ], [ %182, %299 ], [ %240, %288 ]
  %310 = phi i32 [ 1, %296 ], [ 0, %299 ], [ 1, %288 ]
  %311 = icmp slt i64 %308, %304
  br i1 %311, label %312, label %368

312:                                              ; preds = %302
  %313 = add nsw i64 %309, 1
  %314 = call ptr @GetCacheViewVirtualPixels(ptr noundef %73, i64 noundef 0, i64 noundef %309, i64 noundef %303, i64 noundef 1, ptr noundef %3) #34
  %315 = icmp eq ptr %314, null
  br i1 %315, label %778, label %316

316:                                              ; preds = %312
  %317 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %73) #29
  %318 = load i64, ptr %18, align 8, !tbaa !57
  %319 = icmp sgt i64 %318, 0
  br i1 %319, label %320, label %365

320:                                              ; preds = %316
  %321 = load i32, ptr %81, align 8, !tbaa !84
  %322 = icmp eq i32 %321, 0
  %323 = icmp eq ptr %317, null
  br label %324

324:                                              ; preds = %320, %361
  %325 = phi i64 [ 0, %320 ], [ %363, %361 ]
  %326 = phi ptr [ %314, %320 ], [ %362, %361 ]
  %327 = phi float [ %305, %320 ], [ %336, %361 ]
  br i1 %322, label %335, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 3
  %330 = load i16, ptr %329, align 2, !tbaa !74
  %331 = xor i16 %330, -1
  %332 = uitofp i16 %331 to double
  %333 = fmul double %332, 0x3EF0001000100010
  %334 = fptrunc double %333 to float
  br label %335

335:                                              ; preds = %328, %324
  %336 = phi float [ %334, %328 ], [ %327, %324 ]
  %337 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 5
  %338 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 1
  %339 = load <2 x i16>, ptr %338, align 2, !tbaa !78
  %340 = uitofp <2 x i16> %339 to <2 x float>
  %341 = insertelement <2 x float> poison, float %336, i64 0
  %342 = shufflevector <2 x float> %341, <2 x float> poison, <2 x i32> zeroinitializer
  %343 = fmul <2 x float> %342, %340
  %344 = shufflevector <2 x float> %343, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %344, ptr %337, align 8, !tbaa !44
  %345 = load i16, ptr %326, align 2, !tbaa !72
  %346 = uitofp i16 %345 to float
  %347 = fmul float %336, %346
  %348 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 7
  store float %347, ptr %348, align 8, !tbaa !71
  br i1 %322, label %354, label %349

349:                                              ; preds = %335
  %350 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 0, i32 3
  %351 = load i16, ptr %350, align 2, !tbaa !74
  %352 = uitofp i16 %351 to float
  %353 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 8
  store float %352, ptr %353, align 4, !tbaa !73
  br label %354

354:                                              ; preds = %349, %335
  br i1 %323, label %361, label %355

355:                                              ; preds = %354
  %356 = getelementptr inbounds i16, ptr %317, i64 %325
  %357 = load i16, ptr %356, align 2, !tbaa !78
  %358 = uitofp i16 %357 to float
  %359 = fmul float %336, %358
  %360 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %325, i32 9
  store float %359, ptr %360, align 8, !tbaa !77
  br label %361

361:                                              ; preds = %355, %354
  %362 = getelementptr inbounds %struct._PixelPacket, ptr %326, i64 1
  %363 = add nuw nsw i64 %325, 1
  %364 = icmp eq i64 %363, %318
  br i1 %364, label %365, label %324, !llvm.loop !119

365:                                              ; preds = %361, %316
  %366 = phi float [ %305, %316 ], [ %336, %361 ]
  %367 = add nsw i64 %308, 1
  br label %368

368:                                              ; preds = %296, %365, %302
  %369 = phi i64 [ %318, %365 ], [ %303, %302 ], [ %297, %296 ]
  %370 = phi double [ %306, %365 ], [ %306, %302 ], [ %96, %296 ]
  %371 = phi double [ %307, %365 ], [ %307, %302 ], [ 1.000000e+00, %296 ]
  %372 = phi i32 [ %310, %365 ], [ %310, %302 ], [ 1, %296 ]
  %373 = phi i32 [ 0, %365 ], [ 1, %302 ], [ 0, %296 ]
  %374 = phi float [ %366, %365 ], [ %305, %302 ], [ 1.000000e+00, %296 ]
  %375 = phi i64 [ %313, %365 ], [ %309, %302 ], [ %95, %296 ]
  %376 = phi i64 [ %367, %365 ], [ %308, %302 ], [ %94, %296 ]
  %377 = icmp sgt i64 %369, 0
  br i1 %377, label %378, label %440

378:                                              ; preds = %368
  %379 = icmp eq ptr %105, null
  %380 = insertelement <2 x double> poison, double %371, i64 0
  %381 = shufflevector <2 x double> %380, <2 x double> poison, <2 x i32> zeroinitializer
  br label %382

382:                                              ; preds = %378, %435
  %383 = phi i64 [ 0, %378 ], [ %437, %435 ]
  %384 = phi ptr [ %48, %378 ], [ %436, %435 ]
  %385 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383
  %386 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 5
  %387 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 5
  %388 = load <2 x float>, ptr %386, align 8, !tbaa !44
  %389 = fpext <2 x float> %388 to <2 x double>
  %390 = load <2 x float>, ptr %387, align 8, !tbaa !44
  %391 = fpext <2 x float> %390 to <2 x double>
  %392 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %381, <2 x double> %391, <2 x double> %389)
  %393 = fptrunc <2 x double> %392 to <2 x float>
  store <2 x float> %393, ptr %83, align 8, !tbaa !44
  %394 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 7
  %395 = load float, ptr %394, align 8, !tbaa !71
  %396 = fpext float %395 to double
  %397 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 7
  %398 = load float, ptr %397, align 8, !tbaa !71
  %399 = fpext float %398 to double
  %400 = call double @llvm.fmuladd.f64(double %371, double %399, double %396)
  %401 = fptrunc double %400 to float
  store float %401, ptr %84, align 8, !tbaa !71
  %402 = load i32, ptr %81, align 8, !tbaa !84
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %413, label %404

404:                                              ; preds = %382
  %405 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 8
  %406 = load float, ptr %405, align 4, !tbaa !73
  %407 = fpext float %406 to double
  %408 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 8
  %409 = load float, ptr %408, align 4, !tbaa !73
  %410 = fpext float %409 to double
  %411 = call double @llvm.fmuladd.f64(double %371, double %410, double %407)
  %412 = fptrunc double %411 to float
  store float %412, ptr %85, align 4, !tbaa !73
  br label %413

413:                                              ; preds = %404, %382
  br i1 %379, label %423, label %414

414:                                              ; preds = %413
  %415 = getelementptr inbounds %struct._MagickPixelPacket, ptr %53, i64 %383, i32 9
  %416 = load float, ptr %415, align 8, !tbaa !77
  %417 = fpext float %416 to double
  %418 = getelementptr inbounds %struct._MagickPixelPacket, ptr %38, i64 %383, i32 9
  %419 = load float, ptr %418, align 8, !tbaa !77
  %420 = fpext float %419 to double
  %421 = call double @llvm.fmuladd.f64(double %371, double %420, double %417)
  %422 = fptrunc double %421 to float
  store float %422, ptr %86, align 8, !tbaa !77
  br label %423

423:                                              ; preds = %414, %413
  %424 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 5
  store <2 x float> %393, ptr %424, align 8, !tbaa !44
  %425 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 7
  store float %401, ptr %425, align 8, !tbaa !71
  %426 = load i32, ptr %82, align 8, !tbaa !84
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %423
  %429 = load float, ptr %85, align 4, !tbaa !73
  %430 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 8
  store float %429, ptr %430, align 4, !tbaa !73
  br label %431

431:                                              ; preds = %428, %423
  br i1 %379, label %435, label %432

432:                                              ; preds = %431
  %433 = load float, ptr %86, align 8, !tbaa !77
  %434 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 0, i32 9
  store float %433, ptr %434, align 8, !tbaa !77
  br label %435

435:                                              ; preds = %432, %431
  %436 = getelementptr inbounds %struct._MagickPixelPacket, ptr %384, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %385, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !120
  %437 = add nuw nsw i64 %383, 1
  %438 = load i64, ptr %18, align 8, !tbaa !57
  %439 = icmp slt i64 %437, %438
  br i1 %439, label %382, label %440, !llvm.loop !121

440:                                              ; preds = %435, %368
  %441 = phi i64 [ %369, %368 ], [ %438, %435 ]
  %442 = fsub double %370, %371
  %443 = fcmp ugt double %442, 0.000000e+00
  br i1 %443, label %450, label %444

444:                                              ; preds = %440
  %445 = load i64, ptr %41, align 8, !tbaa !58
  %446 = uitofp i64 %445 to double
  %447 = load i64, ptr %39, align 8, !tbaa !58
  %448 = uitofp i64 %447 to double
  %449 = fdiv double %446, %448
  br label %450

450:                                              ; preds = %163, %118, %440, %444
  %451 = phi i64 [ %441, %444 ], [ %441, %440 ], [ %120, %118 ], [ %120, %163 ]
  %452 = phi i32 [ 1, %444 ], [ %373, %440 ], [ %98, %118 ], [ %98, %163 ]
  %453 = phi i32 [ %372, %444 ], [ %372, %440 ], [ 1, %118 ], [ 1, %163 ]
  %454 = phi float [ %374, %444 ], [ %374, %440 ], [ 1.000000e+00, %118 ], [ %138, %163 ]
  %455 = phi double [ %449, %444 ], [ %442, %440 ], [ %96, %118 ], [ %96, %163 ]
  %456 = phi i64 [ %375, %444 ], [ %375, %440 ], [ %114, %118 ], [ %114, %163 ]
  %457 = phi i64 [ %376, %444 ], [ %376, %440 ], [ %94, %118 ], [ %94, %163 ]
  %458 = load i64, ptr %49, align 8, !tbaa !57
  %459 = icmp eq i64 %458, %451
  br i1 %459, label %460, label %514

460:                                              ; preds = %450
  %461 = icmp sgt i64 %451, 0
  br i1 %461, label %462, label %771

462:                                              ; preds = %460
  %463 = load i32, ptr %82, align 8, !tbaa !84
  %464 = icmp eq i32 %463, 0
  %465 = icmp eq ptr %105, null
  br label %466

466:                                              ; preds = %462, %509
  %467 = phi i64 [ 0, %462 ], [ %512, %509 ]
  %468 = phi ptr [ %102, %462 ], [ %510, %509 ]
  %469 = phi ptr [ %48, %462 ], [ %511, %509 ]
  %470 = phi float [ %454, %462 ], [ %482, %509 ]
  br i1 %464, label %478, label %471

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 8
  %473 = load float, ptr %472, align 4, !tbaa !73
  %474 = fsub float 6.553500e+04, %473
  %475 = fpext float %474 to double
  %476 = fmul double %475, 0x3EF0001000100010
  %477 = fptrunc double %476 to float
  br label %478

478:                                              ; preds = %471, %466
  %479 = phi float [ %477, %471 ], [ %470, %466 ]
  %480 = fpext float %479 to double
  %481 = call fastcc double @PerceptibleReciprocal(double noundef %480) #33
  %482 = fptrunc double %481 to float
  %483 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 5
  %484 = load float, ptr %483, align 8, !tbaa !66
  %485 = fmul float %484, %482
  %486 = call fastcc zeroext i16 @ClampToQuantum(float noundef %485) #33
  %487 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 0, i32 2
  store i16 %486, ptr %487, align 2, !tbaa !68
  %488 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 6
  %489 = load float, ptr %488, align 4, !tbaa !69
  %490 = fmul float %489, %482
  %491 = call fastcc zeroext i16 @ClampToQuantum(float noundef %490) #33
  %492 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 0, i32 1
  store i16 %491, ptr %492, align 2, !tbaa !70
  %493 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 7
  %494 = load float, ptr %493, align 8, !tbaa !71
  %495 = fmul float %494, %482
  %496 = call fastcc zeroext i16 @ClampToQuantum(float noundef %495) #33
  store i16 %496, ptr %468, align 2, !tbaa !72
  br i1 %464, label %502, label %497

497:                                              ; preds = %478
  %498 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 8
  %499 = load float, ptr %498, align 4, !tbaa !73
  %500 = call fastcc zeroext i16 @ClampToQuantum(float noundef %499) #33
  %501 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 0, i32 3
  store i16 %500, ptr %501, align 2, !tbaa !74
  br label %502

502:                                              ; preds = %497, %478
  br i1 %465, label %509, label %503

503:                                              ; preds = %502
  %504 = getelementptr inbounds i16, ptr %105, i64 %467
  %505 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 0, i32 9
  %506 = load float, ptr %505, align 8, !tbaa !77
  %507 = fmul float %506, %482
  %508 = call fastcc zeroext i16 @ClampToQuantum(float noundef %507) #33
  store i16 %508, ptr %504, align 2, !tbaa !78
  br label %509

509:                                              ; preds = %503, %502
  %510 = getelementptr inbounds %struct._PixelPacket, ptr %468, i64 1
  %511 = getelementptr inbounds %struct._MagickPixelPacket, ptr %469, i64 1
  %512 = add nuw nsw i64 %467, 1
  %513 = icmp eq i64 %512, %451
  br i1 %513, label %771, label %466, !llvm.loop !122

514:                                              ; preds = %450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !120
  %515 = icmp sgt i64 %451, 0
  br i1 %515, label %516, label %651

516:                                              ; preds = %514
  %517 = uitofp i64 %451 to double
  %518 = icmp eq ptr %105, null
  br label %519

519:                                              ; preds = %516, %642
  %520 = phi i64 [ 0, %516 ], [ %647, %642 ]
  %521 = phi ptr [ %51, %516 ], [ %645, %642 ]
  %522 = phi ptr [ %48, %516 ], [ %646, %642 ]
  %523 = phi double [ 1.000000e+00, %516 ], [ %644, %642 ]
  %524 = phi i32 [ 0, %516 ], [ %643, %642 ]
  %525 = load i64, ptr %49, align 8, !tbaa !57
  %526 = uitofp i64 %525 to double
  %527 = fdiv double %526, %517
  %528 = fcmp ult double %527, %523
  br i1 %528, label %590, label %529

529:                                              ; preds = %519
  %530 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 5
  %531 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 7
  %532 = load i32, ptr %81, align 8, !tbaa !84
  %533 = icmp eq i32 %532, 0
  %534 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 8
  %535 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 9
  br label %536

536:                                              ; preds = %529, %587
  %537 = phi ptr [ %521, %529 ], [ %545, %587 ]
  %538 = phi double [ %523, %529 ], [ 1.000000e+00, %587 ]
  %539 = phi double [ %527, %529 ], [ %588, %587 ]
  %540 = phi i32 [ %524, %529 ], [ 1, %587 ]
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %544, label %542

542:                                              ; preds = %536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !120
  %543 = getelementptr inbounds %struct._MagickPixelPacket, ptr %537, i64 1
  br label %544

544:                                              ; preds = %542, %536
  %545 = phi ptr [ %543, %542 ], [ %537, %536 ]
  %546 = load <2 x float>, ptr %530, align 8, !tbaa !44
  %547 = fpext <2 x float> %546 to <2 x double>
  %548 = load <2 x float>, ptr %83, align 8, !tbaa !44
  %549 = fpext <2 x float> %548 to <2 x double>
  %550 = insertelement <2 x double> poison, double %538, i64 0
  %551 = shufflevector <2 x double> %550, <2 x double> poison, <2 x i32> zeroinitializer
  %552 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %551, <2 x double> %547, <2 x double> %549)
  %553 = fptrunc <2 x double> %552 to <2 x float>
  store <2 x float> %553, ptr %83, align 8, !tbaa !44
  %554 = load float, ptr %531, align 8, !tbaa !71
  %555 = fpext float %554 to double
  %556 = load float, ptr %84, align 8, !tbaa !71
  %557 = fpext float %556 to double
  %558 = call double @llvm.fmuladd.f64(double %538, double %555, double %557)
  %559 = fptrunc double %558 to float
  store float %559, ptr %84, align 8, !tbaa !71
  br i1 %533, label %567, label %560

560:                                              ; preds = %544
  %561 = load float, ptr %534, align 4, !tbaa !73
  %562 = fpext float %561 to double
  %563 = load float, ptr %85, align 4, !tbaa !73
  %564 = fpext float %563 to double
  %565 = call double @llvm.fmuladd.f64(double %538, double %562, double %564)
  %566 = fptrunc double %565 to float
  store float %566, ptr %85, align 4, !tbaa !73
  br label %567

567:                                              ; preds = %560, %544
  br i1 %518, label %575, label %568

568:                                              ; preds = %567
  %569 = load float, ptr %535, align 8, !tbaa !77
  %570 = fpext float %569 to double
  %571 = load float, ptr %86, align 8, !tbaa !77
  %572 = fpext float %571 to double
  %573 = call double @llvm.fmuladd.f64(double %538, double %570, double %572)
  %574 = fptrunc double %573 to float
  store float %574, ptr %86, align 8, !tbaa !77
  br label %575

575:                                              ; preds = %568, %567
  %576 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 5
  store <2 x float> %553, ptr %576, align 8, !tbaa !44
  %577 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 7
  store float %559, ptr %577, align 8, !tbaa !71
  %578 = load i32, ptr %82, align 8, !tbaa !84
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %583, label %580

580:                                              ; preds = %575
  %581 = load float, ptr %85, align 4, !tbaa !73
  %582 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 8
  store float %581, ptr %582, align 4, !tbaa !73
  br label %583

583:                                              ; preds = %580, %575
  br i1 %518, label %587, label %584

584:                                              ; preds = %583
  %585 = load float, ptr %86, align 8, !tbaa !77
  %586 = getelementptr inbounds %struct._MagickPixelPacket, ptr %545, i64 0, i32 9
  store float %585, ptr %586, align 8, !tbaa !77
  br label %587

587:                                              ; preds = %584, %583
  %588 = fsub double %539, %538
  %589 = fcmp ult double %588, 1.000000e+00
  br i1 %589, label %592, label %536, !llvm.loop !123

590:                                              ; preds = %519
  %591 = fcmp ogt double %527, 0.000000e+00
  br i1 %591, label %594, label %642

592:                                              ; preds = %587
  %593 = fcmp ogt double %588, 0.000000e+00
  br i1 %593, label %596, label %642

594:                                              ; preds = %590
  %595 = icmp eq i32 %524, 0
  br i1 %595, label %601, label %596

596:                                              ; preds = %592, %594
  %597 = phi double [ %527, %594 ], [ %588, %592 ]
  %598 = phi double [ %523, %594 ], [ 1.000000e+00, %592 ]
  %599 = phi ptr [ %521, %594 ], [ %545, %592 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false), !tbaa.struct !120
  %600 = getelementptr inbounds %struct._MagickPixelPacket, ptr %599, i64 1
  br label %601

601:                                              ; preds = %596, %594
  %602 = phi double [ %597, %596 ], [ %527, %594 ]
  %603 = phi double [ %598, %596 ], [ %523, %594 ]
  %604 = phi ptr [ %600, %596 ], [ %521, %594 ]
  %605 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 5
  %606 = load <2 x float>, ptr %605, align 8, !tbaa !44
  %607 = fpext <2 x float> %606 to <2 x double>
  %608 = load <2 x float>, ptr %83, align 8, !tbaa !44
  %609 = fpext <2 x float> %608 to <2 x double>
  %610 = insertelement <2 x double> poison, double %602, i64 0
  %611 = shufflevector <2 x double> %610, <2 x double> poison, <2 x i32> zeroinitializer
  %612 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %611, <2 x double> %607, <2 x double> %609)
  %613 = fptrunc <2 x double> %612 to <2 x float>
  store <2 x float> %613, ptr %83, align 8, !tbaa !44
  %614 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 7
  %615 = load float, ptr %614, align 8, !tbaa !71
  %616 = fpext float %615 to double
  %617 = load float, ptr %84, align 8, !tbaa !71
  %618 = fpext float %617 to double
  %619 = call double @llvm.fmuladd.f64(double %602, double %616, double %618)
  %620 = fptrunc double %619 to float
  store float %620, ptr %84, align 8, !tbaa !71
  %621 = load i32, ptr %82, align 8, !tbaa !84
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %631, label %623

623:                                              ; preds = %601
  %624 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 8
  %625 = load float, ptr %624, align 4, !tbaa !73
  %626 = fpext float %625 to double
  %627 = load float, ptr %85, align 4, !tbaa !73
  %628 = fpext float %627 to double
  %629 = call double @llvm.fmuladd.f64(double %602, double %626, double %628)
  %630 = fptrunc double %629 to float
  store float %630, ptr %85, align 4, !tbaa !73
  br label %631

631:                                              ; preds = %623, %601
  br i1 %518, label %640, label %632

632:                                              ; preds = %631
  %633 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 0, i32 9
  %634 = load float, ptr %633, align 8, !tbaa !77
  %635 = fpext float %634 to double
  %636 = load float, ptr %86, align 8, !tbaa !77
  %637 = fpext float %636 to double
  %638 = call double @llvm.fmuladd.f64(double %602, double %635, double %637)
  %639 = fptrunc double %638 to float
  store float %639, ptr %86, align 8, !tbaa !77
  br label %640

640:                                              ; preds = %632, %631
  %641 = fsub double %603, %602
  br label %642

642:                                              ; preds = %592, %640, %590
  %643 = phi i32 [ 0, %640 ], [ %524, %590 ], [ 1, %592 ]
  %644 = phi double [ %641, %640 ], [ %523, %590 ], [ 1.000000e+00, %592 ]
  %645 = phi ptr [ %604, %640 ], [ %521, %590 ], [ %545, %592 ]
  %646 = getelementptr inbounds %struct._MagickPixelPacket, ptr %522, i64 1
  %647 = add nuw nsw i64 %520, 1
  %648 = icmp eq i64 %647, %451
  br i1 %648, label %649, label %519, !llvm.loop !124

649:                                              ; preds = %642
  %650 = fcmp ogt double %644, 0.000000e+00
  br i1 %650, label %651, label %692

651:                                              ; preds = %514, %649
  %652 = phi ptr [ %645, %649 ], [ %51, %514 ]
  %653 = phi ptr [ %646, %649 ], [ %48, %514 ]
  %654 = phi double [ %644, %649 ], [ 1.000000e+00, %514 ]
  %655 = phi i32 [ %643, %649 ], [ 0, %514 ]
  %656 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 5
  %657 = load <2 x float>, ptr %656, align 8, !tbaa !44
  %658 = fpext <2 x float> %657 to <2 x double>
  %659 = load <2 x float>, ptr %83, align 8, !tbaa !44
  %660 = fpext <2 x float> %659 to <2 x double>
  %661 = insertelement <2 x double> poison, double %654, i64 0
  %662 = shufflevector <2 x double> %661, <2 x double> poison, <2 x i32> zeroinitializer
  %663 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %662, <2 x double> %658, <2 x double> %660)
  %664 = fptrunc <2 x double> %663 to <2 x float>
  store <2 x float> %664, ptr %83, align 8, !tbaa !44
  %665 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 7
  %666 = load float, ptr %665, align 8, !tbaa !71
  %667 = fpext float %666 to double
  %668 = load float, ptr %84, align 8, !tbaa !71
  %669 = fpext float %668 to double
  %670 = call double @llvm.fmuladd.f64(double %654, double %667, double %669)
  %671 = fptrunc double %670 to float
  store float %671, ptr %84, align 8, !tbaa !71
  %672 = load i32, ptr %82, align 8, !tbaa !84
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %682, label %674

674:                                              ; preds = %651
  %675 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 8
  %676 = load float, ptr %675, align 4, !tbaa !73
  %677 = fpext float %676 to double
  %678 = load float, ptr %85, align 4, !tbaa !73
  %679 = fpext float %678 to double
  %680 = call double @llvm.fmuladd.f64(double %654, double %677, double %679)
  %681 = fptrunc double %680 to float
  store float %681, ptr %85, align 4, !tbaa !73
  br label %682

682:                                              ; preds = %674, %651
  %683 = icmp eq ptr %105, null
  br i1 %683, label %692, label %684

684:                                              ; preds = %682
  %685 = getelementptr %struct._MagickPixelPacket, ptr %653, i64 -1, i32 9
  %686 = load float, ptr %685, align 8, !tbaa !77
  %687 = fpext float %686 to double
  %688 = load float, ptr %86, align 8, !tbaa !77
  %689 = fpext float %688 to double
  %690 = call double @llvm.fmuladd.f64(double %654, double %687, double %689)
  %691 = fptrunc double %690 to float
  store float %691, ptr %86, align 8, !tbaa !77
  br label %692

692:                                              ; preds = %682, %684, %649
  %693 = phi ptr [ %652, %682 ], [ %652, %684 ], [ %645, %649 ]
  %694 = phi i32 [ %655, %682 ], [ %655, %684 ], [ %643, %649 ]
  %695 = icmp eq i32 %694, 0
  %696 = load i64, ptr %49, align 8, !tbaa !57
  br i1 %695, label %697, label %717

697:                                              ; preds = %692
  %698 = ptrtoint ptr %693 to i64
  %699 = sub i64 %698, %87
  %700 = sdiv exact i64 %699, 56
  %701 = icmp slt i64 %700, %696
  br i1 %701, label %702, label %717

702:                                              ; preds = %697
  %703 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 5
  %704 = load <2 x float>, ptr %83, align 8, !tbaa !44
  store <2 x float> %704, ptr %703, align 8, !tbaa !44
  %705 = load float, ptr %84, align 8, !tbaa !71
  %706 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 7
  store float %705, ptr %706, align 8, !tbaa !71
  %707 = load i32, ptr %82, align 8, !tbaa !84
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %712, label %709

709:                                              ; preds = %702
  %710 = load float, ptr %85, align 4, !tbaa !73
  %711 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 8
  store float %710, ptr %711, align 4, !tbaa !73
  br label %712

712:                                              ; preds = %709, %702
  %713 = icmp eq ptr %105, null
  br i1 %713, label %717, label %714

714:                                              ; preds = %712
  %715 = load float, ptr %86, align 8, !tbaa !77
  %716 = getelementptr inbounds %struct._MagickPixelPacket, ptr %693, i64 0, i32 9
  store float %715, ptr %716, align 8, !tbaa !77
  br label %717

717:                                              ; preds = %712, %714, %697, %692
  %718 = icmp sgt i64 %696, 0
  br i1 %718, label %719, label %771

719:                                              ; preds = %717
  %720 = load i32, ptr %82, align 8, !tbaa !84
  %721 = icmp eq i32 %720, 0
  %722 = icmp eq ptr %105, null
  br label %723

723:                                              ; preds = %719, %766
  %724 = phi i64 [ 0, %719 ], [ %769, %766 ]
  %725 = phi ptr [ %102, %719 ], [ %768, %766 ]
  %726 = phi ptr [ %51, %719 ], [ %767, %766 ]
  %727 = phi float [ %454, %719 ], [ %739, %766 ]
  br i1 %721, label %735, label %728

728:                                              ; preds = %723
  %729 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 8
  %730 = load float, ptr %729, align 4, !tbaa !73
  %731 = fsub float 6.553500e+04, %730
  %732 = fpext float %731 to double
  %733 = fmul double %732, 0x3EF0001000100010
  %734 = fptrunc double %733 to float
  br label %735

735:                                              ; preds = %728, %723
  %736 = phi float [ %734, %728 ], [ %727, %723 ]
  %737 = fpext float %736 to double
  %738 = call fastcc double @PerceptibleReciprocal(double noundef %737) #33
  %739 = fptrunc double %738 to float
  %740 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 5
  %741 = load float, ptr %740, align 8, !tbaa !66
  %742 = fmul float %741, %739
  %743 = call fastcc zeroext i16 @ClampToQuantum(float noundef %742) #33
  %744 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 0, i32 2
  store i16 %743, ptr %744, align 2, !tbaa !68
  %745 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 6
  %746 = load float, ptr %745, align 4, !tbaa !69
  %747 = fmul float %746, %739
  %748 = call fastcc zeroext i16 @ClampToQuantum(float noundef %747) #33
  %749 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 0, i32 1
  store i16 %748, ptr %749, align 2, !tbaa !70
  %750 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 7
  %751 = load float, ptr %750, align 8, !tbaa !71
  %752 = fmul float %751, %739
  %753 = call fastcc zeroext i16 @ClampToQuantum(float noundef %752) #33
  store i16 %753, ptr %725, align 2, !tbaa !72
  br i1 %721, label %759, label %754

754:                                              ; preds = %735
  %755 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 8
  %756 = load float, ptr %755, align 4, !tbaa !73
  %757 = call fastcc zeroext i16 @ClampToQuantum(float noundef %756) #33
  %758 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 0, i32 3
  store i16 %757, ptr %758, align 2, !tbaa !74
  br label %759

759:                                              ; preds = %754, %735
  br i1 %722, label %766, label %760

760:                                              ; preds = %759
  %761 = getelementptr inbounds i16, ptr %105, i64 %724
  %762 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 0, i32 9
  %763 = load float, ptr %762, align 8, !tbaa !77
  %764 = fmul float %763, %739
  %765 = call fastcc zeroext i16 @ClampToQuantum(float noundef %764) #33
  store i16 %765, ptr %761, align 2, !tbaa !78
  br label %766

766:                                              ; preds = %760, %759
  %767 = getelementptr inbounds %struct._MagickPixelPacket, ptr %726, i64 1
  %768 = getelementptr inbounds %struct._PixelPacket, ptr %725, i64 1
  %769 = add nuw nsw i64 %724, 1
  %770 = icmp eq i64 %769, %696
  br i1 %770, label %771, label %723, !llvm.loop !125

771:                                              ; preds = %766, %509, %717, %460
  %772 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %74, ptr noundef %3) #34
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %778, label %774

774:                                              ; preds = %771
  %775 = load i64, ptr %39, align 8, !tbaa !58
  %776 = call fastcc i32 @SetImageProgress(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %93, i64 noundef %775) #33
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %778, label %88

778:                                              ; preds = %774, %771, %312, %113, %100, %92, %88
  %779 = phi i32 [ %453, %88 ], [ 0, %92 ], [ 0, %100 ], [ 0, %113 ], [ 0, %312 ], [ 0, %771 ], [ 0, %774 ]
  %780 = icmp eq i32 %779, 0
  br label %781

781:                                              ; preds = %778, %66
  %782 = phi i1 [ false, %66 ], [ %780, %778 ]
  %783 = call ptr @DestroyCacheView(ptr noundef %74) #29
  %784 = call ptr @DestroyCacheView(ptr noundef %73) #29
  %785 = call ptr @RelinquishMagickMemory(ptr noundef %53) #29
  %786 = call ptr @RelinquishMagickMemory(ptr noundef %51) #29
  %787 = load i64, ptr %41, align 8, !tbaa !58
  %788 = load i64, ptr %39, align 8, !tbaa !58
  %789 = icmp eq i64 %787, %788
  br i1 %789, label %792, label %790

790:                                              ; preds = %781
  %791 = call ptr @RelinquishMagickMemory(ptr noundef %48) #29
  br label %792

792:                                              ; preds = %790, %781
  %793 = call ptr @RelinquishMagickMemory(ptr noundef %38) #29
  %794 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 77
  %795 = load i32, ptr %794, align 8, !tbaa !85
  %796 = getelementptr inbounds %struct._Image, ptr %28, i64 0, i32 77
  store i32 %795, ptr %796, align 8, !tbaa !85
  br i1 %782, label %797, label %799

797:                                              ; preds = %792
  %798 = call ptr @DestroyImage(ptr noundef nonnull %28) #29
  br label %799

799:                                              ; preds = %792, %797, %27, %13, %62, %33, %25
  %800 = phi ptr [ %26, %25 ], [ null, %33 ], [ null, %62 ], [ null, %13 ], [ null, %27 ], [ %798, %797 ], [ %28, %792 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret ptr %800
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ThumbnailImage(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 59
  %9 = load i32, ptr %8, align 8, !tbaa !6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %13 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3759, ptr noundef nonnull @.str.2, ptr noundef nonnull %12) #29
  br label %14

14:                                               ; preds = %11, %4
  %15 = uitofp i64 %1 to float
  %16 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 7
  %17 = load i64, ptr %16, align 8, !tbaa !57
  %18 = uitofp i64 %17 to float
  %19 = fdiv float %15, %18
  %20 = uitofp i64 %2 to float
  %21 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !58
  %23 = uitofp i64 %22 to float
  %24 = fdiv float %20, %23
  %25 = fmul float %19, %24
  %26 = fpext float %25 to double
  %27 = fcmp ogt double %26, 1.000000e-01
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %30 = load i32, ptr %29, align 8, !tbaa !126
  %31 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %32 = load double, ptr %31, align 8, !tbaa !127
  %33 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %30, double noundef %32, ptr noundef %3) #33
  br label %56

34:                                               ; preds = %14
  %35 = mul i64 %1, 5
  %36 = icmp ult i64 %35, 128
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = mul i64 %2, 5
  %39 = icmp ult i64 %38, 128
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %42 = load i32, ptr %41, align 8, !tbaa !126
  %43 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %44 = load double, ptr %43, align 8, !tbaa !127
  %45 = tail call ptr @ResizeImage(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %42, double noundef %44, ptr noundef %3) #33
  br label %56

46:                                               ; preds = %37
  %47 = tail call ptr @SampleImage(ptr noundef nonnull %0, i64 noundef %35, i64 noundef %38, ptr noundef %3) #33
  %48 = icmp eq ptr %47, null
  br i1 %48, label %132, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 32
  %51 = load i32, ptr %50, align 8, !tbaa !126
  %52 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 30
  %53 = load double, ptr %52, align 8, !tbaa !127
  %54 = tail call ptr @ResizeImage(ptr noundef nonnull %47, i64 noundef %1, i64 noundef %2, i32 noundef %51, double noundef %53, ptr noundef %3) #33
  %55 = tail call ptr @DestroyImage(ptr noundef nonnull %47) #29
  br label %56

56:                                               ; preds = %49, %40, %28
  %57 = phi ptr [ %33, %28 ], [ %45, %40 ], [ %54, %49 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %132, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 26
  %61 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.39, ptr noundef nonnull %60) #29
  %62 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 6
  %63 = load i32, ptr %62, align 8, !tbaa !84
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %57, i32 noundef 6) #29
  br label %67

67:                                               ; preds = %65, %59
  %68 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 9
  store i64 8, ptr %68, align 8, !tbaa !128
  %69 = getelementptr inbounds %struct._Image, ptr %57, i64 0, i32 33
  store i32 1, ptr %69, align 4, !tbaa !129
  tail call void @ResetImageProfileIterator(ptr noundef nonnull %57) #29
  %70 = tail call ptr @GetNextImageProfile(ptr noundef nonnull %57) #29
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %67, %81
  %73 = phi ptr [ %82, %81 ], [ %70, %67 ]
  %74 = tail call i32 @LocaleCompare(ptr noundef nonnull %73, ptr noundef nonnull @.str.40) #29
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @LocaleCompare(ptr noundef nonnull %73, ptr noundef nonnull @.str.41) #29
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call i32 @DeleteImageProfile(ptr noundef %57, ptr noundef nonnull %73) #29
  tail call void @ResetImageProfileIterator(ptr noundef %57) #29
  br label %81

81:                                               ; preds = %79, %76, %72
  %82 = tail call ptr @GetNextImageProfile(ptr noundef %57) #29
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72, !llvm.loop !130

84:                                               ; preds = %81, %67
  %85 = tail call i32 @DeleteImageProperty(ptr noundef %57, ptr noundef nonnull @.str.42) #29
  %86 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 54
  %87 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %86, i64 noundef 4096) #29
  %88 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %86, ptr noundef nonnull dereferenceable(1) @.str.43) #36
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.44, ptr noundef nonnull %86) #29
  br label %92

92:                                               ; preds = %90, %84
  %93 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.45, ptr noundef nonnull %5) #29
  %94 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %86, i64 noundef 4096) #29
  %95 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 53
  %96 = call i32 @GetPathAttributes(ptr noundef nonnull %95, ptr noundef nonnull %7) #29
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 12
  %100 = load i64, ptr %99, align 8, !tbaa !131
  %101 = sitofp i64 %100 to double
  %102 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %101) #29
  %103 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.47, ptr noundef nonnull %5) #29
  br label %104

104:                                              ; preds = %98, %92
  %105 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 12
  %106 = load i64, ptr %105, align 8, !tbaa !131
  %107 = sitofp i64 %106 to double
  %108 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %107) #29
  %109 = call i64 @GetBlobSize(ptr noundef %0) #29
  %110 = call i64 @FormatMagickSize(i64 noundef %109, i32 noundef 0, ptr noundef nonnull %5) #29
  %111 = call i64 @ConcatenateMagickString(ptr noundef nonnull %5, ptr noundef nonnull @.str.48, i64 noundef 4096) #29
  %112 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.49, ptr noundef nonnull %5) #29
  %113 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 55
  %114 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.50, ptr noundef nonnull %113) #29
  call void @LocaleLower(ptr noundef nonnull %5) #29
  %115 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.51, ptr noundef nonnull %5) #29
  %116 = call ptr @GetMagickVersion(ptr noundef nonnull %6) #29
  %117 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.52, ptr noundef %116) #29
  %118 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 56
  %119 = load i64, ptr %118, align 8, !tbaa !134
  %120 = uitofp i64 %119 to double
  %121 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %120) #29
  %122 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.53, ptr noundef nonnull %5) #29
  %123 = getelementptr inbounds %struct._Image, ptr %0, i64 0, i32 57
  %124 = load i64, ptr %123, align 8, !tbaa !135
  %125 = uitofp i64 %124 to double
  %126 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %125) #29
  %127 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.54, ptr noundef nonnull %5) #29
  %128 = call i64 @GetImageListLength(ptr noundef %0) #29
  %129 = uitofp i64 %128 to double
  %130 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %5, i64 noundef 4096, ptr noundef nonnull @.str.46, double noundef %129) #29
  %131 = call i32 @SetImageProperty(ptr noundef %57, ptr noundef nonnull @.str.55, ptr noundef nonnull %5) #29
  br label %132

132:                                              ; preds = %46, %56, %104
  %133 = phi ptr [ %57, %104 ], [ null, %56 ], [ null, %46 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #16
  ret ptr %133
}

; Function Attrs: optsize
declare i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @DeleteImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: optsize
declare i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @GetBlobSize(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @LocaleLower(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i64 @GetImageListLength(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #28

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { alwaysinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { hot optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { convergent nounwind }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { noinline norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { optsize allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind optsize }
attributes #30 = { nounwind optsize allocsize(0) }
attributes #31 = { nounwind optsize willreturn memory(none) }
attributes #32 = { noreturn nounwind optsize }
attributes #33 = { optsize }
attributes #34 = { hot nounwind optsize }
attributes #35 = { nounwind optsize allocsize(0,1) }
attributes #36 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 12976}
!7 = !{!"_Image", !8, i64 0, !8, i64 4, !8, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !15, i64 104, !16, i64 112, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !11, i64 256, !15, i64 264, !15, i64 272, !18, i64 280, !18, i64 312, !18, i64 344, !15, i64 376, !15, i64 384, !15, i64 392, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !12, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !19, i64 480, !20, i64 504, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !9, i64 616, !9, i64 4712, !9, i64 8808, !11, i64 12904, !11, i64 12912, !22, i64 12920, !8, i64 12976, !11, i64 12984, !12, i64 12992, !23, i64 13000, !23, i64 13032, !12, i64 13064, !11, i64 13072, !11, i64 13080, !12, i64 13088, !12, i64 13096, !12, i64 13104, !8, i64 13112, !8, i64 13116, !13, i64 13120, !12, i64 13128, !18, i64 13136, !12, i64 13168, !12, i64 13176, !8, i64 13184, !8, i64 13188, !24, i64 13192, !8, i64 13200, !11, i64 13208, !11, i64 13216, !8, i64 13224, !11, i64 13232}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"_PixelPacket", !14, i64 0, !14, i64 2, !14, i64 4, !14, i64 6}
!14 = !{!"short", !9, i64 0}
!15 = !{!"double", !9, i64 0}
!16 = !{!"_ChromaticityInfo", !17, i64 0, !17, i64 24, !17, i64 48, !17, i64 72}
!17 = !{!"_PrimaryInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!18 = !{!"_RectangleInfo", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!19 = !{!"_ErrorInfo", !15, i64 0, !15, i64 8, !15, i64 16}
!20 = !{!"_TimerInfo", !21, i64 0, !21, i64 24, !8, i64 48, !11, i64 56}
!21 = !{!"_Timer", !15, i64 0, !15, i64 8, !15, i64 16}
!22 = !{!"_ExceptionInfo", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !12, i64 40, !11, i64 48}
!23 = !{!"_ProfileInfo", !12, i64 0, !11, i64 8, !12, i64 16, !11, i64 24}
!24 = !{!"long long", !9, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!27, !8, i64 0}
!27 = !{!"", !8, i64 0, !8, i64 4}
!28 = !{!27, !8, i64 4}
!29 = !{!30, !31, i64 28}
!30 = !{!"_ResizeFilter", !12, i64 0, !12, i64 8, !31, i64 16, !31, i64 20, !31, i64 24, !31, i64 28, !9, i64 32, !8, i64 60, !8, i64 64, !11, i64 72}
!31 = !{!"float", !9, i64 0}
!32 = !{!33, !12, i64 0}
!33 = !{!"", !12, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !8, i64 40}
!34 = !{!30, !12, i64 0}
!35 = !{!33, !15, i64 8}
!36 = !{!30, !31, i64 16}
!37 = !{!33, !8, i64 40}
!38 = !{!30, !8, i64 60}
!39 = !{!30, !12, i64 8}
!40 = !{!30, !8, i64 64}
!41 = !{!33, !15, i64 16}
!42 = !{!30, !31, i64 24}
!43 = !{!30, !11, i64 72}
!44 = !{!31, !31, i64 0}
!45 = !{!15, !15, i64 0}
!46 = !{!30, !31, i64 20}
!47 = !{!33, !15, i64 24}
!48 = !{!33, !15, i64 32}
!49 = !{!12, !12, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = !{!7, !11, i64 40}
!58 = !{!7, !11, i64 48}
!59 = !{!24, !24, i64 0}
!60 = !{!11, !11, i64 0}
!61 = !{!62, !15, i64 8}
!62 = !{!"_PointInfo", !15, i64 0, !15, i64 8}
!63 = !{!62, !15, i64 0}
!64 = distinct !{!64, !51}
!65 = !{!7, !12, i64 568}
!66 = !{!67, !31, i64 32}
!67 = !{!"_MagickPixelPacket", !8, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !11, i64 24, !31, i64 32, !31, i64 36, !31, i64 40, !31, i64 44, !31, i64 48}
!68 = !{!13, !14, i64 4}
!69 = !{!67, !31, i64 36}
!70 = !{!13, !14, i64 2}
!71 = !{!67, !31, i64 40}
!72 = !{!13, !14, i64 0}
!73 = !{!67, !31, i64 44}
!74 = !{!13, !14, i64 6}
!75 = !{!7, !8, i64 4}
!76 = !{!7, !8, i64 0}
!77 = !{!67, !31, i64 48}
!78 = !{!14, !14, i64 0}
!79 = !{!7, !12, i64 576}
!80 = !{!81}
!81 = !{i64 2, i64 -1, i64 -1, i1 true}
!82 = distinct !{!82, !51}
!83 = distinct !{!83, !51}
!84 = !{!7, !8, i64 32}
!85 = !{!7, !8, i64 13184}
!86 = !{!7, !15, i64 264}
!87 = !{!7, !15, i64 272}
!88 = distinct !{!88, !51}
!89 = !{!90, !11, i64 8}
!90 = !{!"_ContributionInfo", !31, i64 0, !11, i64 8}
!91 = !{!90, !31, i64 0}
!92 = distinct !{!92, !51}
!93 = distinct !{!93, !51}
!94 = !{i64 0, i64 4, !44}
!95 = distinct !{!95, !51}
!96 = distinct !{!96, !51}
!97 = distinct !{!97, !51}
!98 = distinct !{!98, !51}
!99 = distinct !{!99, !51}
!100 = distinct !{!100, !51}
!101 = distinct !{!101, !51}
!102 = distinct !{!102, !51}
!103 = distinct !{!103, !51}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51}
!106 = distinct !{!106, !51}
!107 = distinct !{!107, !51}
!108 = !{!109, !15, i64 0}
!109 = !{!"_GeometryInfo", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!110 = !{!109, !15, i64 8}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
!113 = distinct !{!113, !51}
!114 = distinct !{!114, !51}
!115 = distinct !{!115, !51}
!116 = distinct !{!116, !51}
!117 = distinct !{!117, !51}
!118 = distinct !{!118, !51}
!119 = distinct !{!119, !51}
!120 = !{i64 0, i64 4, !25, i64 4, i64 4, !25, i64 8, i64 4, !25, i64 16, i64 8, !45, i64 24, i64 8, !60, i64 32, i64 4, !44, i64 36, i64 4, !44, i64 40, i64 4, !44, i64 44, i64 4, !44, i64 48, i64 4, !44}
!121 = distinct !{!121, !51}
!122 = distinct !{!122, !51}
!123 = distinct !{!123, !51}
!124 = distinct !{!124, !51}
!125 = distinct !{!125, !51}
!126 = !{!7, !8, i64 400}
!127 = !{!7, !15, i64 384}
!128 = !{!7, !11, i64 56}
!129 = !{!7, !8, i64 404}
!130 = distinct !{!130, !51}
!131 = !{!132, !11, i64 88}
!132 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !133, i64 72, !133, i64 88, !133, i64 104, !9, i64 120}
!133 = !{!"timespec", !11, i64 0, !11, i64 8}
!134 = !{!7, !11, i64 12904}
!135 = !{!7, !11, i64 12912}
