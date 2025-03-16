; ModuleID = 'newmdct.c'
source_filename = "newmdct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }

@mdct_sub48.init = internal unnamed_addr global i32 0, align 4
@sb_sample = internal global [2 x [2 x [18 x [32 x double]]]] zeroinitializer, align 16
@win = internal unnamed_addr global [4 x [36 x double]] zeroinitializer, align 16
@ca = internal unnamed_addr global [8 x double] zeroinitializer, align 16
@cs = internal unnamed_addr global [8 x double] zeroinitializer, align 16
@mdct_init48.c = internal unnamed_addr constant [8 x double] [double -6.000000e-01, double -5.350000e-01, double -3.300000e-01, double -1.850000e-01, double -9.500000e-02, double -4.100000e-02, double -1.420000e-02, double -3.700000e-03], align 16
@cos_l = internal unnamed_addr global [244 x double] zeroinitializer, align 16
@mdct_init48.d3 = internal unnamed_addr constant [4 x i32] [i32 1, i32 7, i32 10, i32 16], align 16
@mdct_init48.d9 = internal unnamed_addr constant [2 x i32] [i32 4, i32 13], align 4
@all = internal unnamed_addr constant [12 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 8, i32 9, i32 11, i32 12, i32 14, i32 15, i32 17], align 16
@enwindow = internal unnamed_addr global [256 x double] [double 0x3FA251E002C5BE4C, double 0x3F924E1FFC2760F6, double 0x3F69ADFFBE4CE877, double 0x3F642100110318CA, double 9.713170e-04, double 2.188680e-04, double 1.015660e-04, double 1.382800e-05, double 0x3FA24EFFFE8EA200, double 0x3F6BDDFFD89B6AB3, double 9.837150e-04, double 9.918200e-05, double -4.770000e-07, double 1.039510e-04, double 0x3F4F3FFF520DC771, double 0x3F67470033705EA7, double 1.239800e-05, double 1.912120e-04, double 0x3F62B3FFD4EA8624, double 0x3F9166FFFA87D736, double 0x3F9334FFF82E8B95, double 0x3F658D0036BA2EEE, double 2.474780e-04, double 1.478200e-05, double 0x3FA2467FFD4C82A1, double 0x3F6DD8000F4D029B, double 0x3F503FFFB08B08EE, double 9.632100e-05, double -4.770000e-07, double 1.058580e-04, double 0x3F4E7FFFB6FC4D65, double 0x3F64A8000EC3923C, double 1.144400e-05, double 1.654620e-04, double 0x3F6148FFC594EC83, double 0x3F907FDFF8E84D76, double 0x3F941B0002FC8112, double 0x3F66F7002FAE4C0C, double 2.770420e-04, double 1.668900e-05, double 0x3FA2385FFEFF602E, double 0x3F6F9BFFD8F150EE, double 9.951590e-04, double 9.346000e-05, double -4.770000e-07, double 1.072880e-04, double 9.026530e-04, double 0x3F61D0FFD9B6E277, double 1.001400e-05, double 1.401900e-04, double 0x3F5FBDFF99419ECB, double 0x3F8F32C00A8B630F, double 0x3F94FFC002FEA6D3, double 0x3F685CFFCF1C771E, double 3.075600e-04, double 1.812000e-05, double 3.543520e-02, double 0x3F7095FFF5DDD6FA, double 9.942050e-04, double 9.059900e-05, double -4.770000e-07, double 1.082420e-04, double 8.687970e-04, double 0x3F5D7FFFE1EF6B2A, double 0x3EE3000CEB1FF411, double 1.163480e-04, double 0x3F5CF2005A6548A7, double 0x3F8D680010E953B9, double 0x3F95E29FFB661AF0, double 3.141880e-03, double 3.390310e-04, double 1.955000e-05, double 0x3FA20B4002AD0C1B, double 4.215240e-03, double 9.894370e-04, double 8.726100e-05, double -4.770000e-07, double 1.087190e-04, double 0x3F4B2C0063FE014D, double 0x3F56EDFFEFB14AB3, double 8.106000e-06, double 9.393700e-05, double 0x3F5A2DFFA8D35995, double 0x3F8BA03FF357727A, double 0x3F96C320035E36F6, double 0x3F6B17002A4FE853, double 3.714560e-04, double 2.145800e-05, double 3.500700e-02, double 0x3F71D9800E83258F, double 9.808540e-04, double 8.392300e-05, double -4.770000e-07, double 1.087190e-04, double 7.839200e-04, double 9.713170e-04, double 7.629000e-06, double 7.295600e-05, double 0x3F577800309639AD, double 0x3F89DC800CEF6B77, double 0x3F97A0BFFE8830BC, double 0x3F6C6700031EDD2A, double 4.043580e-04, double 2.336500e-05, double 0x3FA1C82FFC6969F3, double 0x3F72567FFA9D50C4, double 9.689330e-04, double 8.058500e-05, double -9.540000e-07, double 1.082420e-04, double 7.319450e-04, double 5.159380e-04, double 6.676000e-06, double 5.292900e-05, double 0x3F54CDFF9F2972E2, double 0x3F881D80076614A1, double 0x3F987B2006DB9161, double 0x3F6DAD000EFFB365, double 4.382130e-04, double 2.527200e-05, double 0x3FA19E90011D1416, double 0x3F72BBFFFE860AFA, double 0x3F4F43FFAB93B97D, double 7.677100e-05, double -9.540000e-07, double 1.068120e-04, double 6.742480e-04, double 3.337900e-05, double 6.199000e-06, double 3.433200e-05, double 0x3F52340073D47447, double 0x3F86643FF91CEA7A, double 0x3F99519FFD2D5F2B, double 0x3F6EE6000ACDF57D, double 4.725460e-04, double 2.765700e-05, double 0x3FA16FC0016255B6, double 0x3F730AFFEBE6A112, double 9.355550e-04, double 0x3F13400155732CA6, double -9.540000e-07, double 1.053810e-04, double 6.103520e-04, double -4.758830e-04, double 5.245000e-06, double 1.716600e-05, double 9.565350e-04, double 0x3F84B1400FA0C315, double 2.552700e-02, double 0x3F70087FF0141377, double 5.073550e-04, double 3.004100e-05, double 0x3FA13BE000055E64, double 0x3F734380077742AD, double 0x3F4DFC010F4107FF, double 7.009500e-05, double -9.540000e-07, double 1.025200e-04, double 5.393030e-04, double 0xBF5093FF8462AE54, double 4.768000e-06, double 9.540000e-07, double 8.068080e-04, double 0x3F83057FFA3ED383, double 0x3F9AF14004E3FBA4, double 0x3F70957FEAAD18B9, double 5.421640e-04, double 3.242500e-05, double 0x3FA102EFFD062E20, double 0x3F73677FF48A898F, double 8.916850e-04, double 6.628000e-05, double -1.431000e-06, double 9.918200e-05, double 4.625320e-04, double 0xBF59C80067E27000, double 4.292000e-06, double -1.382800e-05, double 6.618500e-04, double 0x3F8161C00E7868C7, double 0x3F9BB93FFD1B1E3F, double 0x3F71197FEA014C42, double 5.769730e-04, double 3.480900e-05, double 0x3FA0C53FFF633BD3, double 0x3F7376FFF7D8A559, double 8.664130e-04, double 6.294300e-05, double -1.431000e-06, double 9.536700e-05, double 3.786090e-04, double 0xBF61B500163F206B, double 3.815000e-06, double -2.718000e-05, double 5.221370e-04, double 0x3F7F8D7FEC04B1A7, double 0x3F9C7BA000DE43BA, double 0x3F7193001136A2EE, double 6.117820e-04, double 3.767000e-05, double 0x3FA082CFFE85818A, double 0x3F73737FEE3BA130, double 0x3F4B7C00F1307329, double 5.960500e-05, double -1.907000e-06, double 9.012200e-05, double 2.884860e-04, double 0xBF66BA0038D75965, double 3.338000e-06, double -3.957700e-05, double 3.881450e-04, double 0x3F7C6A00018B2312, double 0x3F9D37C002307E44, double 0x3F72018010642EDC, double 6.465910e-04, double 4.053100e-05, double 0x3FA03BE000055E64, double 0x3F735DFFEE14F995, double 0x3F4A87FEF0132B89, double 5.579000e-05, double -1.907000e-06, double 8.440000e-05, double 1.916890e-04, double 0xBF6BF1FFFBE8072A, double 3.338000e-06, double -5.054500e-05, double 2.598760e-04, double 0x3F7959FFEA754312, double 0x3F9DED20070F1B84, double 0x3F72640015E0A32A, double 6.809230e-04, double 4.339200e-05, double 0x3F9FE13FFEFC278C, double 0x3F73370002956CCA, double 7.791520e-04, double 5.292900e-05, double -2.384000e-06, double 7.772400e-05, double 8.821500e-05, double 0xBF70ADFFE940063C, double 2.861000e-06, double -6.055800e-05, double 1.373290e-04, double 5.462170e-03, double 0x3F9E9B7FF8B3B071, double 0x3F72B87FF4E906D0, double 7.143020e-04, double 4.625300e-05, double 0x3F9F425FFF77A281, double 0x3F72FF7FFD6647B3, double 7.472040e-04, double 4.959100e-05, double 0x3F737B8017D72606, double 2.145800e-05, double 0xBF123FFC220291DE, double 2.384000e-06], align 16
@mm = internal unnamed_addr global [16 x [31 x double]] zeroinitializer, align 16
@cos_s = internal unnamed_addr global [6 x [6 x double]] zeroinitializer, align 16

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @mdct_sub48(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = load i32, ptr @mdct_sub48.init, align 4, !tbaa !5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  tail call void @mdct_init48()
  %9 = load i32, ptr @mdct_sub48.init, align 4, !tbaa !5
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @mdct_sub48.init, align 4, !tbaa !5
  br label %11

11:                                               ; preds = %8, %5
  %12 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 46
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %504

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 45
  %17 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 59
  %18 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 58
  %19 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 57
  %20 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 53
  %21 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 54
  %22 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 55
  %23 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 56
  %24 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 57
  %25 = getelementptr inbounds %struct.lame_global_flags, ptr %0, i64 0, i32 58
  br label %26

26:                                               ; preds = %15, %499
  %27 = phi i64 [ 0, %15 ], [ %500, %499 ]
  %28 = phi ptr [ %1, %15 ], [ %2, %499 ]
  %29 = load i32, ptr %16, align 8, !tbaa !14
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %493

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %4, i64 0, i64 %27, i32 0, i32 6
  br label %33

33:                                               ; preds = %31, %488
  %34 = phi i64 [ 0, %31 ], [ %489, %488 ]
  %35 = phi ptr [ %28, %31 ], [ %54, %488 ]
  %36 = sub nsw i64 1, %34
  %37 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36
  br label %38

38:                                               ; preds = %33, %52
  %39 = phi i32 [ 0, %33 ], [ %55, %52 ]
  %40 = phi ptr [ %35, %33 ], [ %54, %52 ]
  %41 = phi ptr [ %37, %33 ], [ %53, %52 ]
  tail call fastcc void @window_subband(ptr noundef %40, ptr noundef nonnull %41)
  %42 = getelementptr inbounds i16, ptr %40, i64 32
  %43 = getelementptr inbounds double, ptr %41, i64 32
  tail call fastcc void @window_subband(ptr noundef nonnull %42, ptr noundef nonnull %43)
  br label %44

44:                                               ; preds = %38, %44
  %45 = phi i64 [ 1, %38 ], [ %50, %44 ]
  %46 = or disjoint i64 %45, 32
  %47 = getelementptr inbounds double, ptr %41, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !15
  %49 = fneg double %48
  store double %49, ptr %47, align 8, !tbaa !15
  %50 = add nuw nsw i64 %45, 2
  %51 = icmp ult i64 %45, 30
  br i1 %51, label %44, label %52, !llvm.loop !17

52:                                               ; preds = %44
  %53 = getelementptr inbounds double, ptr %41, i64 64
  %54 = getelementptr inbounds i16, ptr %40, i64 64
  %55 = add nuw nsw i32 %39, 1
  %56 = icmp eq i32 %55, 9
  br i1 %56, label %57, label %38, !llvm.loop !19

57:                                               ; preds = %52
  %58 = getelementptr inbounds [2 x [576 x double]], ptr %3, i64 %34, i64 %27
  %59 = load i32, ptr %17, align 8, !tbaa !20
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %122

61:                                               ; preds = %57
  %62 = load i32, ptr %18, align 4, !tbaa !21
  %63 = add nsw i32 %62, 1
  %64 = load i32, ptr %19, align 8, !tbaa !22
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %122

66:                                               ; preds = %61
  %67 = sext i32 %62 to i64
  %68 = add nsw i64 %67, 1
  br label %69

69:                                               ; preds = %66, %117
  %70 = phi i64 [ %68, %66 ], [ %118, %117 ]
  %71 = trunc i64 %70 to i32
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %72, 3.100000e+01
  %74 = load float, ptr %20, align 8, !tbaa !23
  %75 = fpext float %74 to double
  %76 = fcmp ogt double %73, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %69
  %78 = load float, ptr %21, align 4, !tbaa !24
  %79 = fpext float %78 to double
  %80 = fcmp olt double %73, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = fsub double %75, %73
  %83 = fmul double %82, 0x3FF921FB54442D18
  %84 = fsub float %78, %74
  %85 = fpext float %84 to double
  %86 = fdiv double %83, %85
  %87 = tail call double @cos(double noundef %86) #7
  br label %88

88:                                               ; preds = %81, %88
  %89 = phi i64 [ 0, %81 ], [ %93, %88 ]
  %90 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %89, i64 %70
  %91 = load double, ptr %90, align 8, !tbaa !15
  %92 = fmul double %87, %91
  store double %92, ptr %90, align 8, !tbaa !15
  %93 = add nuw nsw i64 %89, 1
  %94 = icmp eq i64 %93, 18
  br i1 %94, label %95, label %88, !llvm.loop !25

95:                                               ; preds = %88, %77, %69
  %96 = load float, ptr %22, align 8, !tbaa !26
  %97 = fpext float %96 to double
  %98 = fcmp ogt double %73, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %95
  %100 = load float, ptr %23, align 4, !tbaa !27
  %101 = fpext float %100 to double
  %102 = fcmp olt double %73, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = fsub double %101, %73
  %105 = fmul double %104, 0x3FF921FB54442D18
  %106 = fsub float %100, %96
  %107 = fpext float %106 to double
  %108 = fdiv double %105, %107
  %109 = tail call double @cos(double noundef %108) #7
  br label %110

110:                                              ; preds = %103, %110
  %111 = phi i64 [ 0, %103 ], [ %115, %110 ]
  %112 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %111, i64 %70
  %113 = load double, ptr %112, align 8, !tbaa !15
  %114 = fmul double %109, %113
  store double %114, ptr %112, align 8, !tbaa !15
  %115 = add nuw nsw i64 %111, 1
  %116 = icmp eq i64 %115, 18
  br i1 %116, label %117, label %110, !llvm.loop !28

117:                                              ; preds = %110, %95, %99
  %118 = add nsw i64 %70, 1
  %119 = load i32, ptr %19, align 8, !tbaa !22
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %69, label %122, !llvm.loop !29

122:                                              ; preds = %117, %61, %57
  %123 = getelementptr inbounds %struct.III_side_info_t, ptr %32, i64 0, i32 4, i64 %34
  br label %124

124:                                              ; preds = %122, %484
  %125 = phi i64 [ 0, %122 ], [ %485, %484 ]
  %126 = phi ptr [ %58, %122 ], [ %486, %484 ]
  %127 = load i32, ptr %123, align 8, !tbaa !30
  %128 = load i32, ptr %24, align 8, !tbaa !22
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %125, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, ptr %25, align 4, !tbaa !21
  %133 = sext i32 %132 to i64
  %134 = icmp sgt i64 %125, %133
  br i1 %134, label %136, label %135

135:                                              ; preds = %131, %124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %126, i8 0, i64 144, i1 false)
  br label %462

136:                                              ; preds = %131
  %137 = icmp eq i32 %127, 2
  br i1 %137, label %140, label %138

138:                                              ; preds = %136
  %139 = sext i32 %127 to i64
  br label %226

140:                                              ; preds = %136, %140
  %141 = phi i64 [ %180, %140 ], [ 2, %136 ]
  %142 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 2, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !15
  %144 = add nuw nsw i64 %141, 6
  %145 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %34, i64 %144, i64 %125
  %146 = load double, ptr %145, align 8, !tbaa !15
  %147 = sub nuw nsw i64 11, %141
  %148 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %34, i64 %147, i64 %125
  %149 = load double, ptr %148, align 8, !tbaa !15
  %150 = fneg double %149
  %151 = tail call double @llvm.fmuladd.f64(double %146, double %143, double %150)
  %152 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %141
  store double %151, ptr %152, align 8, !tbaa !15
  %153 = add nuw nsw i64 %141, 12
  %154 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %34, i64 %153, i64 %125
  %155 = load double, ptr %154, align 8, !tbaa !15
  %156 = sub nuw nsw i64 17, %141
  %157 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %34, i64 %156, i64 %125
  %158 = load double, ptr %157, align 8, !tbaa !15
  %159 = tail call double @llvm.fmuladd.f64(double %158, double %143, double %155)
  %160 = getelementptr double, ptr %152, i64 3
  store double %159, ptr %160, align 8, !tbaa !15
  %161 = fneg double %158
  %162 = tail call double @llvm.fmuladd.f64(double %155, double %143, double %161)
  %163 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %144
  store double %162, ptr %163, align 8, !tbaa !15
  %164 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %141, i64 %125
  %165 = load double, ptr %164, align 8, !tbaa !15
  %166 = sub nuw nsw i64 5, %141
  %167 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %166, i64 %125
  %168 = load double, ptr %167, align 8, !tbaa !15
  %169 = tail call double @llvm.fmuladd.f64(double %168, double %143, double %165)
  %170 = getelementptr double, ptr %152, i64 9
  store double %169, ptr %170, align 8, !tbaa !15
  %171 = fneg double %168
  %172 = tail call double @llvm.fmuladd.f64(double %165, double %143, double %171)
  %173 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %153
  store double %172, ptr %173, align 8, !tbaa !15
  %174 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %144, i64 %125
  %175 = load double, ptr %174, align 8, !tbaa !15
  %176 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %147, i64 %125
  %177 = load double, ptr %176, align 8, !tbaa !15
  %178 = tail call double @llvm.fmuladd.f64(double %177, double %143, double %175)
  %179 = getelementptr double, ptr %152, i64 15
  store double %178, ptr %179, align 8, !tbaa !15
  %180 = add nsw i64 %141, -1
  %181 = icmp eq i64 %141, 0
  br i1 %181, label %182, label %140, !llvm.loop !32

182:                                              ; preds = %140, %223
  %183 = phi i64 [ %224, %223 ], [ 5, %140 ]
  %184 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %183
  %185 = load double, ptr %184, align 16, !tbaa !15
  %186 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %183, i64 1
  %187 = load double, ptr %186, align 8, !tbaa !15
  %188 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %183, i64 2
  %189 = load double, ptr %188, align 16, !tbaa !15
  %190 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %183, i64 3
  %191 = load double, ptr %190, align 8, !tbaa !15
  %192 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %183, i64 4
  %193 = load double, ptr %192, align 16, !tbaa !15
  %194 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %183, i64 5
  %195 = load double, ptr %194, align 8, !tbaa !15
  %196 = mul nuw nsw i64 %183, 3
  %197 = getelementptr double, ptr %126, i64 %196
  br label %198

198:                                              ; preds = %198, %182
  %199 = phi i64 [ 2, %182 ], [ %221, %198 ]
  %200 = mul nuw nsw i64 %199, 6
  %201 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %200
  %202 = load double, ptr %201, align 16, !tbaa !15
  %203 = or disjoint i64 %200, 1
  %204 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !15
  %206 = fmul double %187, %205
  %207 = tail call double @llvm.fmuladd.f64(double %185, double %202, double %206)
  %208 = getelementptr double, ptr %201, i64 2
  %209 = load double, ptr %208, align 16, !tbaa !15
  %210 = tail call double @llvm.fmuladd.f64(double %189, double %209, double %207)
  %211 = getelementptr double, ptr %201, i64 3
  %212 = load double, ptr %211, align 8, !tbaa !15
  %213 = tail call double @llvm.fmuladd.f64(double %191, double %212, double %210)
  %214 = getelementptr double, ptr %201, i64 4
  %215 = load double, ptr %214, align 16, !tbaa !15
  %216 = tail call double @llvm.fmuladd.f64(double %193, double %215, double %213)
  %217 = getelementptr double, ptr %201, i64 5
  %218 = load double, ptr %217, align 8, !tbaa !15
  %219 = tail call double @llvm.fmuladd.f64(double %195, double %218, double %216)
  %220 = getelementptr double, ptr %197, i64 %199
  store double %219, ptr %220, align 8, !tbaa !15
  %221 = add nsw i64 %199, -1
  %222 = icmp eq i64 %199, 0
  br i1 %222, label %223, label %198, !llvm.loop !33

223:                                              ; preds = %198
  %224 = add nsw i64 %183, -1
  %225 = icmp eq i64 %183, 0
  br i1 %225, label %462, label %182, !llvm.loop !34

226:                                              ; preds = %138, %226
  %227 = phi i64 [ 8, %138 ], [ %255, %226 ]
  %228 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %139, i64 %227
  %229 = load double, ptr %228, align 8, !tbaa !15
  %230 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %34, i64 %227, i64 %125
  %231 = load double, ptr %230, align 8, !tbaa !15
  %232 = add nuw nsw i64 %227, 9
  %233 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %139, i64 %232
  %234 = load double, ptr %233, align 8, !tbaa !15
  %235 = sub nuw nsw i64 17, %227
  %236 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %34, i64 %235, i64 %125
  %237 = load double, ptr %236, align 8, !tbaa !15
  %238 = fneg double %234
  %239 = fmul double %237, %238
  %240 = tail call double @llvm.fmuladd.f64(double %229, double %231, double %239)
  %241 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %227
  store double %240, ptr %241, align 8, !tbaa !15
  %242 = add nuw nsw i64 %227, 18
  %243 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %139, i64 %242
  %244 = load double, ptr %243, align 8, !tbaa !15
  %245 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %227, i64 %125
  %246 = load double, ptr %245, align 8, !tbaa !15
  %247 = add nuw nsw i64 %227, 27
  %248 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %139, i64 %247
  %249 = load double, ptr %248, align 8, !tbaa !15
  %250 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 %36, i64 %235, i64 %125
  %251 = load double, ptr %250, align 8, !tbaa !15
  %252 = fmul double %249, %251
  %253 = tail call double @llvm.fmuladd.f64(double %244, double %246, double %252)
  %254 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %232
  store double %253, ptr %254, align 8, !tbaa !15
  %255 = add nsw i64 %227, -1
  %256 = icmp eq i64 %227, 0
  br i1 %256, label %257, label %226, !llvm.loop !35

257:                                              ; preds = %226, %257
  %258 = phi i64 [ %336, %257 ], [ 11, %226 ]
  %259 = phi ptr [ %335, %257 ], [ @cos_l, %226 ]
  %260 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), align 16, !tbaa !15
  %261 = load double, ptr %259, align 8, !tbaa !15
  %262 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 5), align 8, !tbaa !15
  %263 = getelementptr inbounds double, ptr %259, i64 1
  %264 = load double, ptr %263, align 8, !tbaa !15
  %265 = fmul double %262, %264
  %266 = tail call double @llvm.fmuladd.f64(double %260, double %261, double %265)
  %267 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 6), align 16, !tbaa !15
  %268 = getelementptr inbounds double, ptr %259, i64 2
  %269 = load double, ptr %268, align 8, !tbaa !15
  %270 = tail call double @llvm.fmuladd.f64(double %267, double %269, double %266)
  %271 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 7), align 8, !tbaa !15
  %272 = getelementptr inbounds double, ptr %259, i64 3
  %273 = load double, ptr %272, align 8, !tbaa !15
  %274 = tail call double @llvm.fmuladd.f64(double %271, double %273, double %270)
  %275 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 8), align 16, !tbaa !15
  %276 = getelementptr inbounds double, ptr %259, i64 4
  %277 = load double, ptr %276, align 8, !tbaa !15
  %278 = tail call double @llvm.fmuladd.f64(double %275, double %277, double %274)
  %279 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 9), align 8, !tbaa !15
  %280 = getelementptr inbounds double, ptr %259, i64 5
  %281 = load double, ptr %280, align 8, !tbaa !15
  %282 = tail call double @llvm.fmuladd.f64(double %279, double %281, double %278)
  %283 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 10), align 16, !tbaa !15
  %284 = getelementptr inbounds double, ptr %259, i64 6
  %285 = load double, ptr %284, align 8, !tbaa !15
  %286 = tail call double @llvm.fmuladd.f64(double %283, double %285, double %282)
  %287 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 11), align 8, !tbaa !15
  %288 = getelementptr inbounds double, ptr %259, i64 7
  %289 = load double, ptr %288, align 8, !tbaa !15
  %290 = tail call double @llvm.fmuladd.f64(double %287, double %289, double %286)
  %291 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 12), align 16, !tbaa !15
  %292 = getelementptr inbounds double, ptr %259, i64 8
  %293 = load double, ptr %292, align 8, !tbaa !15
  %294 = tail call double @llvm.fmuladd.f64(double %291, double %293, double %290)
  %295 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 13), align 8, !tbaa !15
  %296 = getelementptr inbounds double, ptr %259, i64 9
  %297 = load double, ptr %296, align 8, !tbaa !15
  %298 = tail call double @llvm.fmuladd.f64(double %295, double %297, double %294)
  %299 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 14), align 16, !tbaa !15
  %300 = getelementptr inbounds double, ptr %259, i64 10
  %301 = load double, ptr %300, align 8, !tbaa !15
  %302 = tail call double @llvm.fmuladd.f64(double %299, double %301, double %298)
  %303 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 15), align 8, !tbaa !15
  %304 = getelementptr inbounds double, ptr %259, i64 11
  %305 = load double, ptr %304, align 8, !tbaa !15
  %306 = tail call double @llvm.fmuladd.f64(double %303, double %305, double %302)
  %307 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 16), align 16, !tbaa !15
  %308 = getelementptr inbounds double, ptr %259, i64 12
  %309 = load double, ptr %308, align 8, !tbaa !15
  %310 = tail call double @llvm.fmuladd.f64(double %307, double %309, double %306)
  %311 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 17), align 8, !tbaa !15
  %312 = getelementptr inbounds double, ptr %259, i64 13
  %313 = load double, ptr %312, align 8, !tbaa !15
  %314 = tail call double @llvm.fmuladd.f64(double %311, double %313, double %310)
  %315 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 18), align 16, !tbaa !15
  %316 = getelementptr inbounds double, ptr %259, i64 14
  %317 = load double, ptr %316, align 8, !tbaa !15
  %318 = tail call double @llvm.fmuladd.f64(double %315, double %317, double %314)
  %319 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 19), align 8, !tbaa !15
  %320 = getelementptr inbounds double, ptr %259, i64 15
  %321 = load double, ptr %320, align 8, !tbaa !15
  %322 = tail call double @llvm.fmuladd.f64(double %319, double %321, double %318)
  %323 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 20), align 16, !tbaa !15
  %324 = getelementptr inbounds double, ptr %259, i64 16
  %325 = load double, ptr %324, align 8, !tbaa !15
  %326 = tail call double @llvm.fmuladd.f64(double %323, double %325, double %322)
  %327 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 21), align 8, !tbaa !15
  %328 = getelementptr inbounds double, ptr %259, i64 17
  %329 = load double, ptr %328, align 8, !tbaa !15
  %330 = tail call double @llvm.fmuladd.f64(double %327, double %329, double %326)
  %331 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %258
  %332 = load i32, ptr %331, align 4, !tbaa !5
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds double, ptr %126, i64 %333
  store double %330, ptr %334, align 8, !tbaa !15
  %335 = getelementptr inbounds double, ptr %259, i64 18
  %336 = add nsw i64 %258, -1
  %337 = icmp eq i64 %258, 0
  br i1 %337, label %338, label %257, !llvm.loop !36

338:                                              ; preds = %257
  %339 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), align 16, !tbaa !15
  %340 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 9), align 8, !tbaa !15
  %341 = fadd double %339, %340
  %342 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 19), align 8, !tbaa !15
  %343 = fadd double %341, %342
  %344 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 5), align 8, !tbaa !15
  %345 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 8), align 16, !tbaa !15
  %346 = fadd double %344, %345
  %347 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 20), align 16, !tbaa !15
  %348 = fadd double %346, %347
  %349 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 6), align 16, !tbaa !15
  %350 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 7), align 8, !tbaa !15
  %351 = fadd double %349, %350
  %352 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 21), align 8, !tbaa !15
  %353 = fadd double %351, %352
  %354 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 10), align 16, !tbaa !15
  %355 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 13), align 8, !tbaa !15
  %356 = fsub double %354, %355
  %357 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 18), align 16, !tbaa !15
  %358 = fadd double %356, %357
  %359 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 11), align 8, !tbaa !15
  %360 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 14), align 16, !tbaa !15
  %361 = fsub double %359, %360
  %362 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 17), align 8, !tbaa !15
  %363 = fadd double %361, %362
  %364 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 12), align 16, !tbaa !15
  %365 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 15), align 8, !tbaa !15
  %366 = fsub double %364, %365
  %367 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 16), align 16, !tbaa !15
  %368 = fadd double %366, %367
  %369 = load double, ptr %335, align 8, !tbaa !15
  %370 = getelementptr inbounds double, ptr %259, i64 19
  %371 = load double, ptr %370, align 8, !tbaa !15
  %372 = fmul double %348, %371
  %373 = tail call double @llvm.fmuladd.f64(double %343, double %369, double %372)
  %374 = getelementptr inbounds double, ptr %259, i64 20
  %375 = load double, ptr %374, align 8, !tbaa !15
  %376 = tail call double @llvm.fmuladd.f64(double %353, double %375, double %373)
  %377 = getelementptr inbounds double, ptr %259, i64 21
  %378 = load double, ptr %377, align 8, !tbaa !15
  %379 = tail call double @llvm.fmuladd.f64(double %358, double %378, double %376)
  %380 = getelementptr inbounds double, ptr %259, i64 22
  %381 = load double, ptr %380, align 8, !tbaa !15
  %382 = tail call double @llvm.fmuladd.f64(double %363, double %381, double %379)
  %383 = getelementptr inbounds double, ptr %259, i64 23
  %384 = load double, ptr %383, align 8, !tbaa !15
  %385 = tail call double @llvm.fmuladd.f64(double %368, double %384, double %382)
  %386 = getelementptr inbounds double, ptr %126, i64 16
  store double %385, ptr %386, align 8, !tbaa !15
  %387 = getelementptr inbounds double, ptr %259, i64 24
  %388 = load double, ptr %387, align 8, !tbaa !15
  %389 = getelementptr inbounds double, ptr %259, i64 25
  %390 = load double, ptr %389, align 8, !tbaa !15
  %391 = fmul double %348, %390
  %392 = tail call double @llvm.fmuladd.f64(double %343, double %388, double %391)
  %393 = getelementptr inbounds double, ptr %259, i64 26
  %394 = load double, ptr %393, align 8, !tbaa !15
  %395 = tail call double @llvm.fmuladd.f64(double %353, double %394, double %392)
  %396 = getelementptr inbounds double, ptr %259, i64 27
  %397 = load double, ptr %396, align 8, !tbaa !15
  %398 = tail call double @llvm.fmuladd.f64(double %358, double %397, double %395)
  %399 = getelementptr inbounds double, ptr %259, i64 28
  %400 = load double, ptr %399, align 8, !tbaa !15
  %401 = tail call double @llvm.fmuladd.f64(double %363, double %400, double %398)
  %402 = getelementptr inbounds double, ptr %259, i64 29
  %403 = load double, ptr %402, align 8, !tbaa !15
  %404 = tail call double @llvm.fmuladd.f64(double %368, double %403, double %401)
  %405 = getelementptr inbounds double, ptr %126, i64 10
  store double %404, ptr %405, align 8, !tbaa !15
  %406 = getelementptr inbounds double, ptr %259, i64 30
  %407 = load double, ptr %406, align 8, !tbaa !15
  %408 = getelementptr inbounds double, ptr %259, i64 31
  %409 = load double, ptr %408, align 8, !tbaa !15
  %410 = fmul double %348, %409
  %411 = tail call double @llvm.fmuladd.f64(double %343, double %407, double %410)
  %412 = getelementptr inbounds double, ptr %259, i64 32
  %413 = load double, ptr %412, align 8, !tbaa !15
  %414 = tail call double @llvm.fmuladd.f64(double %353, double %413, double %411)
  %415 = getelementptr inbounds double, ptr %259, i64 33
  %416 = load double, ptr %415, align 8, !tbaa !15
  %417 = tail call double @llvm.fmuladd.f64(double %358, double %416, double %414)
  %418 = getelementptr inbounds double, ptr %259, i64 34
  %419 = load double, ptr %418, align 8, !tbaa !15
  %420 = tail call double @llvm.fmuladd.f64(double %363, double %419, double %417)
  %421 = getelementptr inbounds double, ptr %259, i64 35
  %422 = load double, ptr %421, align 8, !tbaa !15
  %423 = tail call double @llvm.fmuladd.f64(double %368, double %422, double %420)
  %424 = getelementptr inbounds double, ptr %126, i64 7
  store double %423, ptr %424, align 8, !tbaa !15
  %425 = getelementptr inbounds double, ptr %259, i64 36
  %426 = load double, ptr %425, align 8, !tbaa !15
  %427 = getelementptr inbounds double, ptr %259, i64 37
  %428 = load double, ptr %427, align 8, !tbaa !15
  %429 = fmul double %348, %428
  %430 = tail call double @llvm.fmuladd.f64(double %343, double %426, double %429)
  %431 = getelementptr inbounds double, ptr %259, i64 38
  %432 = load double, ptr %431, align 8, !tbaa !15
  %433 = tail call double @llvm.fmuladd.f64(double %353, double %432, double %430)
  %434 = getelementptr inbounds double, ptr %259, i64 39
  %435 = load double, ptr %434, align 8, !tbaa !15
  %436 = tail call double @llvm.fmuladd.f64(double %358, double %435, double %433)
  %437 = getelementptr inbounds double, ptr %259, i64 40
  %438 = load double, ptr %437, align 8, !tbaa !15
  %439 = tail call double @llvm.fmuladd.f64(double %363, double %438, double %436)
  %440 = getelementptr inbounds double, ptr %259, i64 41
  %441 = load double, ptr %440, align 8, !tbaa !15
  %442 = tail call double @llvm.fmuladd.f64(double %368, double %441, double %439)
  %443 = getelementptr inbounds double, ptr %126, i64 1
  store double %442, ptr %443, align 8, !tbaa !15
  %444 = getelementptr inbounds double, ptr %259, i64 42
  %445 = fsub double %343, %348
  %446 = fadd double %445, %368
  %447 = fsub double %353, %358
  %448 = fsub double %447, %363
  %449 = load double, ptr %444, align 8, !tbaa !15
  %450 = getelementptr inbounds double, ptr %259, i64 43
  %451 = load double, ptr %450, align 8, !tbaa !15
  %452 = fmul double %448, %451
  %453 = tail call double @llvm.fmuladd.f64(double %446, double %449, double %452)
  %454 = getelementptr inbounds double, ptr %126, i64 13
  store double %453, ptr %454, align 8, !tbaa !15
  %455 = getelementptr inbounds double, ptr %259, i64 44
  %456 = load double, ptr %455, align 8, !tbaa !15
  %457 = getelementptr inbounds double, ptr %259, i64 45
  %458 = load double, ptr %457, align 8, !tbaa !15
  %459 = fmul double %448, %458
  %460 = tail call double @llvm.fmuladd.f64(double %446, double %456, double %459)
  %461 = getelementptr inbounds double, ptr %126, i64 4
  store double %460, ptr %461, align 8, !tbaa !15
  br label %462

462:                                              ; preds = %223, %338, %135
  %463 = icmp eq i32 %127, 2
  %464 = icmp eq i64 %125, 0
  %465 = or i1 %464, %463
  br i1 %465, label %484, label %466

466:                                              ; preds = %462, %466
  %467 = phi i64 [ %482, %466 ], [ 7, %462 ]
  %468 = getelementptr inbounds double, ptr %126, i64 %467
  %469 = load double, ptr %468, align 8, !tbaa !15
  %470 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %467
  %471 = load double, ptr %470, align 8, !tbaa !15
  %472 = xor i64 %467, -1
  %473 = getelementptr inbounds double, ptr %126, i64 %472
  %474 = load double, ptr %473, align 8, !tbaa !15
  %475 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %467
  %476 = load double, ptr %475, align 8, !tbaa !15
  %477 = fmul double %474, %476
  %478 = tail call double @llvm.fmuladd.f64(double %469, double %471, double %477)
  %479 = fneg double %474
  %480 = fmul double %471, %479
  %481 = tail call double @llvm.fmuladd.f64(double %469, double %476, double %480)
  store double %478, ptr %473, align 8, !tbaa !15
  store double %481, ptr %468, align 8, !tbaa !15
  %482 = add nsw i64 %467, -1
  %483 = icmp eq i64 %467, 0
  br i1 %483, label %484, label %466, !llvm.loop !37

484:                                              ; preds = %466, %462
  %485 = add nuw nsw i64 %125, 1
  %486 = getelementptr inbounds double, ptr %126, i64 18
  %487 = icmp eq i64 %485, 32
  br i1 %487, label %488, label %124, !llvm.loop !38

488:                                              ; preds = %484
  %489 = add nuw nsw i64 %34, 1
  %490 = load i32, ptr %16, align 8, !tbaa !14
  %491 = sext i32 %490 to i64
  %492 = icmp slt i64 %489, %491
  br i1 %492, label %33, label %493, !llvm.loop !39

493:                                              ; preds = %488, %26
  %494 = phi i32 [ %29, %26 ], [ %490, %488 ]
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27
  %498 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %27, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4608) %497, ptr noundef nonnull align 16 dereferenceable(4608) %498, i64 4608, i1 false)
  br label %499

499:                                              ; preds = %493, %496
  %500 = add nuw nsw i64 %27, 1
  %501 = load i32, ptr %12, align 4, !tbaa !9
  %502 = sext i32 %501 to i64
  %503 = icmp slt i64 %500, %502
  br i1 %503, label %26, label %504, !llvm.loop !40

504:                                              ; preds = %499, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @mdct_init48() local_unnamed_addr #0 {
  %1 = alloca [31 x double], align 16
  br label %2

2:                                                ; preds = %0, %2
  %3 = phi i64 [ 0, %0 ], [ %12, %2 ]
  %4 = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !15
  %6 = tail call double @llvm.fmuladd.f64(double %5, double %5, double 1.000000e+00)
  %7 = tail call double @sqrt(double noundef %6) #7
  %8 = fdiv double %5, %7
  %9 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %3
  store double %8, ptr %9, align 8, !tbaa !15
  %10 = fdiv double 1.000000e+00, %7
  %11 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %3
  store double %10, ptr %11, align 8, !tbaa !15
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %14, label %2, !llvm.loop !41

14:                                               ; preds = %2, %14
  %15 = phi i64 [ %22, %14 ], [ 0, %2 ]
  %16 = trunc i64 %15 to i32
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, 5.000000e-01
  %19 = fmul double %18, 0x3FB657184AE74487
  %20 = tail call double @sin(double noundef %19) #7
  %21 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %15
  store double %20, ptr %21, align 8, !tbaa !15
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, 36
  br i1 %23, label %24, label %14, !llvm.loop !42

24:                                               ; preds = %14, %24
  %25 = phi i64 [ %29, %24 ], [ 0, %14 ]
  %26 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %25
  %27 = load double, ptr %26, align 8, !tbaa !15
  %28 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %25
  store double %27, ptr %28, align 8, !tbaa !15
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, 18
  br i1 %30, label %31, label %24, !llvm.loop !43

31:                                               ; preds = %24, %31
  %32 = phi i64 [ %34, %31 ], [ 18, %24 ]
  %33 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %32
  store double 1.000000e+00, ptr %33, align 8, !tbaa !15
  %34 = add nuw nsw i64 %32, 1
  %35 = icmp eq i64 %34, 24
  br i1 %35, label %37, label %31, !llvm.loop !44

36:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1, i64 30), i8 0, i64 48, i1 false), !tbaa !15
  br label %47

37:                                               ; preds = %31, %37
  %38 = phi i64 [ %45, %37 ], [ 24, %31 ]
  %39 = trunc i64 %38 to i32
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, 5.000000e-01
  %42 = fmul double %41, 0x3FD0C152382D7365
  %43 = tail call double @cos(double noundef %42) #7
  %44 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %38
  store double %43, ptr %44, align 8, !tbaa !15
  %45 = add nuw nsw i64 %38, 1
  %46 = icmp eq i64 %45, 30
  br i1 %46, label %36, label %37, !llvm.loop !45

47:                                               ; preds = %36, %47
  %48 = phi i64 [ 0, %36 ], [ %53, %47 ]
  %49 = sub nuw nsw i64 35, %48
  %50 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !15
  %52 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %48
  store double %51, ptr %52, align 8, !tbaa !15
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, 36
  br i1 %54, label %55, label %47, !llvm.loop !46

55:                                               ; preds = %47, %93
  %56 = phi i64 [ %94, %93 ], [ 11, %47 ]
  %57 = phi ptr [ %90, %93 ], [ @cos_l, %47 ]
  %58 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %56
  %59 = load i32, ptr %58, align 4, !tbaa !5
  %60 = shl nsw i32 %59, 1
  %61 = or disjoint i32 %60, 1
  %62 = sitofp i32 %61 to double
  %63 = fmul double %62, 0x3F9657184AE74487
  br label %69

64:                                               ; preds = %69
  %65 = shl nsw i32 %59, 1
  %66 = or disjoint i32 %65, 1
  %67 = sitofp i32 %66 to double
  %68 = fmul double %67, 0x3F9657184AE74487
  br label %81

69:                                               ; preds = %55, %69
  %70 = phi i32 [ 0, %55 ], [ %79, %69 ]
  %71 = phi ptr [ %57, %55 ], [ %78, %69 ]
  %72 = shl nuw nsw i32 %70, 2
  %73 = add nuw nsw i32 %72, 38
  %74 = sitofp i32 %73 to double
  %75 = fmul double %63, %74
  %76 = tail call double @cos(double noundef %75) #7
  %77 = fmul double %76, 0x3FBC71C71C71C71C
  %78 = getelementptr inbounds double, ptr %71, i64 1
  store double %77, ptr %71, align 8, !tbaa !15
  %79 = add nuw nsw i32 %70, 1
  %80 = icmp eq i32 %79, 9
  br i1 %80, label %64, label %69, !llvm.loop !47

81:                                               ; preds = %64, %81
  %82 = phi i32 [ 0, %64 ], [ %91, %81 ]
  %83 = phi ptr [ %78, %64 ], [ %90, %81 ]
  %84 = shl nuw nsw i32 %82, 2
  %85 = add nuw nsw i32 %84, 110
  %86 = sitofp i32 %85 to double
  %87 = fmul double %68, %86
  %88 = tail call double @cos(double noundef %87) #7
  %89 = fmul double %88, 0x3FBC71C71C71C71C
  %90 = getelementptr inbounds double, ptr %83, i64 1
  store double %89, ptr %83, align 8, !tbaa !15
  %91 = add nuw nsw i32 %82, 1
  %92 = icmp eq i32 %91, 9
  br i1 %92, label %93, label %81, !llvm.loop !48

93:                                               ; preds = %81
  %94 = add nsw i64 %56, -1
  %95 = icmp eq i64 %56, 0
  br i1 %95, label %96, label %55, !llvm.loop !49

96:                                               ; preds = %93, %134
  %97 = phi i64 [ %135, %134 ], [ 3, %93 ]
  %98 = phi ptr [ %131, %134 ], [ %90, %93 ]
  %99 = getelementptr inbounds [4 x i32], ptr @mdct_init48.d3, i64 0, i64 %97
  %100 = load i32, ptr %99, align 4, !tbaa !5
  %101 = shl nsw i32 %100, 1
  %102 = or disjoint i32 %101, 1
  %103 = sitofp i32 %102 to double
  %104 = fmul double %103, 0x3F9657184AE74487
  br label %110

105:                                              ; preds = %110
  %106 = shl nsw i32 %100, 1
  %107 = or disjoint i32 %106, 1
  %108 = sitofp i32 %107 to double
  %109 = fmul double %108, 0x3F9657184AE74487
  br label %122

110:                                              ; preds = %96, %110
  %111 = phi i32 [ 0, %96 ], [ %120, %110 ]
  %112 = phi ptr [ %98, %96 ], [ %119, %110 ]
  %113 = shl nuw nsw i32 %111, 2
  %114 = add nuw nsw i32 %113, 38
  %115 = sitofp i32 %114 to double
  %116 = fmul double %104, %115
  %117 = tail call double @cos(double noundef %116) #7
  %118 = fmul double %117, 0x3FBC71C71C71C71C
  %119 = getelementptr inbounds double, ptr %112, i64 1
  store double %118, ptr %112, align 8, !tbaa !15
  %120 = add nuw nsw i32 %111, 1
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %105, label %110, !llvm.loop !50

122:                                              ; preds = %105, %122
  %123 = phi i32 [ 6, %105 ], [ %132, %122 ]
  %124 = phi ptr [ %119, %105 ], [ %131, %122 ]
  %125 = shl nuw nsw i32 %123, 2
  %126 = add nuw nsw i32 %125, 38
  %127 = sitofp i32 %126 to double
  %128 = fmul double %109, %127
  %129 = tail call double @cos(double noundef %128) #7
  %130 = fmul double %129, 0x3FBC71C71C71C71C
  %131 = getelementptr inbounds double, ptr %124, i64 1
  store double %130, ptr %124, align 8, !tbaa !15
  %132 = add nuw nsw i32 %123, 1
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %134, label %122, !llvm.loop !51

134:                                              ; preds = %122
  %135 = add nsw i64 %97, -1
  %136 = icmp eq i64 %97, 0
  br i1 %136, label %137, label %96, !llvm.loop !52

137:                                              ; preds = %134, %137
  %138 = phi i64 [ %154, %137 ], [ 1, %134 ]
  %139 = phi ptr [ %153, %137 ], [ %131, %134 ]
  %140 = getelementptr inbounds [2 x i32], ptr @mdct_init48.d9, i64 0, i64 %138
  %141 = load i32, ptr %140, align 4, !tbaa !5
  %142 = shl nsw i32 %141, 1
  %143 = or disjoint i32 %142, 1
  %144 = sitofp i32 %143 to double
  %145 = fmul double %144, 0x3F9657184AE74487
  %146 = fmul double %145, 3.800000e+01
  %147 = tail call double @cos(double noundef %146) #7
  %148 = fmul double %147, 0x3FBC71C71C71C71C
  %149 = getelementptr inbounds double, ptr %139, i64 1
  store double %148, ptr %139, align 8, !tbaa !15
  %150 = fmul double %145, 4.600000e+01
  %151 = tail call double @cos(double noundef %150) #7
  %152 = fmul double %151, 0x3FBC71C71C71C71C
  %153 = getelementptr inbounds double, ptr %139, i64 2
  store double %152, ptr %149, align 8, !tbaa !15
  %154 = add nsw i64 %138, -1
  %155 = icmp eq i64 %138, 0
  br i1 %155, label %156, label %137, !llvm.loop !53

156:                                              ; preds = %137
  %157 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 248), align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %1) #7
  %158 = load double, ptr @enwindow, align 16, !tbaa !15
  %159 = fdiv double %158, %157
  %160 = getelementptr inbounds [31 x double], ptr %1, i64 0, i64 15
  store double %159, ptr %160, align 8, !tbaa !15
  br label %161

161:                                              ; preds = %156, %161
  %162 = phi i32 [ 0, %156 ], [ %169, %161 ]
  %163 = phi ptr [ @enwindow, %156 ], [ %168, %161 ]
  %164 = phi ptr [ getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 1), %156 ], [ %165, %161 ]
  %165 = getelementptr inbounds double, ptr %164, i64 1
  %166 = load double, ptr %164, align 8, !tbaa !15
  %167 = fdiv double %166, %158
  %168 = getelementptr inbounds double, ptr %163, i64 1
  store double %167, ptr %163, align 8, !tbaa !15
  %169 = add nuw nsw i32 %162, 1
  %170 = icmp eq i32 %169, 7
  br i1 %170, label %171, label %161, !llvm.loop !54

171:                                              ; preds = %161, %191
  %172 = phi i64 [ %192, %191 ], [ 14, %161 ]
  %173 = phi ptr [ %187, %191 ], [ %168, %161 ]
  %174 = phi ptr [ %189, %191 ], [ %165, %161 ]
  %175 = load double, ptr %174, align 8, !tbaa !15
  %176 = fdiv double %175, %157
  %177 = sub nuw nsw i64 30, %172
  %178 = getelementptr inbounds [31 x double], ptr %1, i64 0, i64 %177
  store double %176, ptr %178, align 8, !tbaa !15
  %179 = getelementptr inbounds [31 x double], ptr %1, i64 0, i64 %172
  store double %176, ptr %179, align 8, !tbaa !15
  %180 = getelementptr inbounds double, ptr %174, i64 1
  br label %181

181:                                              ; preds = %171, %181
  %182 = phi ptr [ %180, %171 ], [ %189, %181 ]
  %183 = phi i32 [ 0, %171 ], [ %188, %181 ]
  %184 = phi ptr [ %173, %171 ], [ %187, %181 ]
  %185 = load double, ptr %182, align 8, !tbaa !15
  %186 = fdiv double %185, %175
  %187 = getelementptr inbounds double, ptr %184, i64 1
  store double %186, ptr %184, align 8, !tbaa !15
  %188 = add nuw nsw i32 %183, 1
  %189 = getelementptr inbounds double, ptr %182, i64 1
  %190 = icmp eq i32 %188, 15
  br i1 %190, label %191, label %181, !llvm.loop !55

191:                                              ; preds = %181
  %192 = add nsw i64 %172, -1
  %193 = icmp eq i64 %172, 0
  br i1 %193, label %194, label %171, !llvm.loop !56

194:                                              ; preds = %191, %194
  %195 = phi i32 [ %202, %194 ], [ 0, %191 ]
  %196 = phi ptr [ %201, %194 ], [ %187, %191 ]
  %197 = phi ptr [ %198, %194 ], [ %189, %191 ]
  %198 = getelementptr inbounds double, ptr %197, i64 1
  %199 = load double, ptr %198, align 8, !tbaa !15
  %200 = fdiv double %199, %157
  %201 = getelementptr inbounds double, ptr %196, i64 1
  store double %200, ptr %196, align 8, !tbaa !15
  %202 = add nuw nsw i32 %195, 1
  %203 = icmp eq i32 %202, 7
  br i1 %203, label %204, label %194, !llvm.loop !57

204:                                              ; preds = %194, %225
  %205 = phi i64 [ %226, %225 ], [ 15, %194 ]
  %206 = phi ptr [ %222, %225 ], [ @mm, %194 ]
  %207 = shl nuw nsw i64 %205, 1
  %208 = or disjoint i64 %207, 1
  br label %209

209:                                              ; preds = %204, %209
  %210 = phi i64 [ 1, %204 ], [ %223, %209 ]
  %211 = phi ptr [ %206, %204 ], [ %222, %209 ]
  %212 = mul nuw nsw i64 %210, %208
  %213 = trunc i64 %212 to i32
  %214 = sitofp i32 %213 to double
  %215 = fmul double %214, 0x400921FB54442D18
  %216 = fmul double %215, 1.562500e-02
  %217 = tail call double @cos(double noundef %216) #7
  %218 = add nsw i64 %210, -1
  %219 = getelementptr inbounds [31 x double], ptr %1, i64 0, i64 %218
  %220 = load double, ptr %219, align 8, !tbaa !15
  %221 = fmul double %217, %220
  %222 = getelementptr inbounds double, ptr %211, i64 1
  store double %221, ptr %211, align 8, !tbaa !15
  %223 = add nuw nsw i64 %210, 1
  %224 = icmp eq i64 %223, 32
  br i1 %224, label %225, label %209, !llvm.loop !58

225:                                              ; preds = %209
  %226 = add nsw i64 %205, -1
  %227 = icmp eq i64 %205, 0
  br i1 %227, label %228, label %204, !llvm.loop !59

228:                                              ; preds = %225
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %1) #7
  br label %231

229:                                              ; preds = %231
  %230 = fmul double %157, 0x3F00000000000000
  br label %263

231:                                              ; preds = %228, %231
  %232 = phi i64 [ 0, %228 ], [ %261, %231 ]
  %233 = sub nuw nsw i64 17, %232
  %234 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %233
  %235 = load double, ptr %234, align 8, !tbaa !15
  %236 = add nuw nsw i64 %232, 9
  %237 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %236
  %238 = load double, ptr %237, align 8, !tbaa !15
  store double %238, ptr %234, align 8, !tbaa !15
  store double %235, ptr %237, align 8, !tbaa !15
  %239 = sub nuw nsw i64 35, %232
  %240 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %239
  %241 = load double, ptr %240, align 8, !tbaa !15
  %242 = add nuw nsw i64 %232, 27
  %243 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %242
  %244 = load double, ptr %243, align 8, !tbaa !15
  store double %244, ptr %240, align 8, !tbaa !15
  store double %241, ptr %243, align 8, !tbaa !15
  %245 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %233
  %246 = load double, ptr %245, align 8, !tbaa !15
  %247 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %236
  %248 = load double, ptr %247, align 8, !tbaa !15
  store double %248, ptr %245, align 8, !tbaa !15
  store double %246, ptr %247, align 8, !tbaa !15
  %249 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %239
  %250 = load double, ptr %249, align 8, !tbaa !15
  %251 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %242
  %252 = load double, ptr %251, align 8, !tbaa !15
  store double %252, ptr %249, align 8, !tbaa !15
  store double %250, ptr %251, align 8, !tbaa !15
  %253 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %233
  %254 = load double, ptr %253, align 8, !tbaa !15
  %255 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %236
  %256 = load double, ptr %255, align 8, !tbaa !15
  store double %256, ptr %253, align 8, !tbaa !15
  store double %254, ptr %255, align 8, !tbaa !15
  %257 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %239
  %258 = load double, ptr %257, align 8, !tbaa !15
  %259 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %242
  %260 = load double, ptr %259, align 8, !tbaa !15
  store double %260, ptr %257, align 8, !tbaa !15
  store double %258, ptr %259, align 8, !tbaa !15
  %261 = add nuw nsw i64 %232, 1
  %262 = icmp eq i64 %261, 4
  br i1 %262, label %229, label %231, !llvm.loop !60

263:                                              ; preds = %229, %263
  %264 = phi i64 [ 0, %229 ], [ %274, %263 ]
  %265 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %264
  %266 = load double, ptr %265, align 8, !tbaa !15
  %267 = fmul double %230, %266
  store double %267, ptr %265, align 8, !tbaa !15
  %268 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %264
  %269 = load double, ptr %268, align 8, !tbaa !15
  %270 = fmul double %230, %269
  store double %270, ptr %268, align 8, !tbaa !15
  %271 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %264
  %272 = load double, ptr %271, align 8, !tbaa !15
  %273 = fmul double %230, %272
  store double %273, ptr %271, align 8, !tbaa !15
  %274 = add nuw nsw i64 %264, 1
  %275 = icmp eq i64 %274, 36
  br i1 %275, label %276, label %263, !llvm.loop !61

276:                                              ; preds = %263, %313
  %277 = phi i64 [ %314, %313 ], [ 0, %263 ]
  %278 = trunc i64 %277 to i32
  %279 = sitofp i32 %278 to double
  %280 = fadd double %279, 5.000000e-01
  %281 = fmul double %280, 0x3FD0C152382D7365
  %282 = tail call double @cos(double noundef %281) #7
  %283 = fmul double %157, %282
  %284 = fmul double %283, 0x3F00000000000000
  %285 = fmul double %284, 0x3FD5555555555555
  %286 = tail call double @tan(double noundef %281) #7
  %287 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 2, i64 %277
  store double %286, ptr %287, align 8, !tbaa !15
  %288 = shl nuw nsw i64 %277, 2
  %289 = trunc i64 %288 to i32
  %290 = add i32 %289, 14
  %291 = sitofp i32 %290 to double
  %292 = trunc i64 %288 to i32
  %293 = add i32 %292, 38
  %294 = sitofp i32 %293 to double
  %295 = add nuw nsw i64 %277, 3
  br label %296

296:                                              ; preds = %276, %296
  %297 = phi i64 [ 0, %276 ], [ %311, %296 ]
  %298 = trunc i64 %297 to i32
  %299 = shl i32 %298, 1
  %300 = or disjoint i32 %299, 1
  %301 = sitofp i32 %300 to double
  %302 = fmul double %301, 0x3FB0C152382D7365
  %303 = fmul double %302, %291
  %304 = tail call double @cos(double noundef %303) #7
  %305 = fmul double %285, %304
  %306 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %297, i64 %277
  store double %305, ptr %306, align 8, !tbaa !15
  %307 = fmul double %302, %294
  %308 = tail call double @cos(double noundef %307) #7
  %309 = fmul double %285, %308
  %310 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %297, i64 %295
  store double %309, ptr %310, align 8, !tbaa !15
  %311 = add nuw nsw i64 %297, 1
  %312 = icmp eq i64 %311, 6
  br i1 %312, label %313, label %296, !llvm.loop !62

313:                                              ; preds = %296
  %314 = add nuw nsw i64 %277, 1
  %315 = icmp eq i64 %314, 3
  br i1 %315, label %316, label %276, !llvm.loop !63

316:                                              ; preds = %313
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @window_subband(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds i16, ptr %0, i64 255
  %4 = load i16, ptr %3, align 2, !tbaa !64
  %5 = sitofp i16 %4 to double
  %6 = getelementptr inbounds i16, ptr %0, i64 223
  %7 = load i16, ptr %6, align 2, !tbaa !64
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds i16, ptr %0, i64 287
  %10 = load i16, ptr %9, align 2, !tbaa !64
  %11 = sext i16 %10 to i32
  %12 = sub nsw i32 %8, %11
  %13 = sitofp i32 %12 to double
  %14 = load double, ptr @enwindow, align 16, !tbaa !15
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %14, double %5)
  %16 = getelementptr inbounds i16, ptr %0, i64 191
  %17 = load i16, ptr %16, align 2, !tbaa !64
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds i16, ptr %0, i64 319
  %20 = load i16, ptr %19, align 2, !tbaa !64
  %21 = sext i16 %20 to i32
  %22 = add nsw i32 %21, %18
  %23 = sitofp i32 %22 to double
  %24 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 1), align 8, !tbaa !15
  %25 = tail call double @llvm.fmuladd.f64(double %23, double %24, double %15)
  %26 = getelementptr inbounds i16, ptr %0, i64 159
  %27 = load i16, ptr %26, align 2, !tbaa !64
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds i16, ptr %0, i64 351
  %30 = load i16, ptr %29, align 2, !tbaa !64
  %31 = sext i16 %30 to i32
  %32 = sub nsw i32 %28, %31
  %33 = sitofp i32 %32 to double
  %34 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 2), align 16, !tbaa !15
  %35 = tail call double @llvm.fmuladd.f64(double %33, double %34, double %25)
  %36 = getelementptr inbounds i16, ptr %0, i64 127
  %37 = load i16, ptr %36, align 2, !tbaa !64
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds i16, ptr %0, i64 383
  %40 = load i16, ptr %39, align 2, !tbaa !64
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %41, %38
  %43 = sitofp i32 %42 to double
  %44 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 3), align 8, !tbaa !15
  %45 = tail call double @llvm.fmuladd.f64(double %43, double %44, double %35)
  %46 = getelementptr inbounds i16, ptr %0, i64 95
  %47 = load i16, ptr %46, align 2, !tbaa !64
  %48 = sext i16 %47 to i32
  %49 = getelementptr inbounds i16, ptr %0, i64 415
  %50 = load i16, ptr %49, align 2, !tbaa !64
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %48, %51
  %53 = sitofp i32 %52 to double
  %54 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 4), align 16, !tbaa !15
  %55 = tail call double @llvm.fmuladd.f64(double %53, double %54, double %45)
  %56 = getelementptr inbounds i16, ptr %0, i64 63
  %57 = load i16, ptr %56, align 2, !tbaa !64
  %58 = sext i16 %57 to i32
  %59 = getelementptr inbounds i16, ptr %0, i64 447
  %60 = load i16, ptr %59, align 2, !tbaa !64
  %61 = sext i16 %60 to i32
  %62 = add nsw i32 %61, %58
  %63 = sitofp i32 %62 to double
  %64 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 5), align 8, !tbaa !15
  %65 = tail call double @llvm.fmuladd.f64(double %63, double %64, double %55)
  %66 = getelementptr inbounds i16, ptr %0, i64 31
  %67 = load i16, ptr %66, align 2, !tbaa !64
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds i16, ptr %0, i64 479
  %70 = load i16, ptr %69, align 2, !tbaa !64
  %71 = sext i16 %70 to i32
  %72 = sub nsw i32 %68, %71
  %73 = sitofp i32 %72 to double
  %74 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 6), align 16, !tbaa !15
  %75 = tail call double @llvm.fmuladd.f64(double %73, double %74, double %65)
  store double %75, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 19), align 8, !tbaa !15
  br label %76

76:                                               ; preds = %2, %76
  %77 = phi i64 [ 14, %2 ], [ %249, %76 ]
  %78 = phi ptr [ getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 7), %2 ], [ %235, %76 ]
  %79 = getelementptr inbounds i16, ptr %0, i64 %77
  %80 = sub nsw i64 0, %77
  %81 = getelementptr inbounds i16, ptr %0, i64 %80
  %82 = getelementptr inbounds i16, ptr %81, i64 270
  %83 = load i16, ptr %82, align 2, !tbaa !64
  %84 = sitofp i16 %83 to double
  %85 = getelementptr inbounds i16, ptr %79, i64 240
  %86 = load i16, ptr %85, align 2, !tbaa !64
  %87 = sitofp i16 %86 to double
  %88 = getelementptr inbounds double, ptr %78, i64 1
  %89 = load double, ptr %78, align 8, !tbaa !15
  %90 = getelementptr inbounds i16, ptr %81, i64 334
  %91 = load i16, ptr %90, align 2, !tbaa !64
  %92 = sitofp i16 %91 to double
  %93 = tail call double @llvm.fmuladd.f64(double %92, double %89, double %84)
  %94 = getelementptr inbounds i16, ptr %79, i64 176
  %95 = load i16, ptr %94, align 2, !tbaa !64
  %96 = sitofp i16 %95 to double
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %89, double %87)
  %98 = getelementptr inbounds double, ptr %78, i64 2
  %99 = load double, ptr %88, align 8, !tbaa !15
  %100 = getelementptr inbounds i16, ptr %81, i64 398
  %101 = load i16, ptr %100, align 2, !tbaa !64
  %102 = sitofp i16 %101 to double
  %103 = tail call double @llvm.fmuladd.f64(double %102, double %99, double %93)
  %104 = getelementptr inbounds i16, ptr %79, i64 112
  %105 = load i16, ptr %104, align 2, !tbaa !64
  %106 = sitofp i16 %105 to double
  %107 = tail call double @llvm.fmuladd.f64(double %106, double %99, double %97)
  %108 = getelementptr inbounds double, ptr %78, i64 3
  %109 = load double, ptr %98, align 8, !tbaa !15
  %110 = getelementptr inbounds i16, ptr %81, i64 462
  %111 = load i16, ptr %110, align 2, !tbaa !64
  %112 = sitofp i16 %111 to double
  %113 = tail call double @llvm.fmuladd.f64(double %112, double %109, double %103)
  %114 = getelementptr inbounds i16, ptr %79, i64 48
  %115 = load i16, ptr %114, align 2, !tbaa !64
  %116 = sitofp i16 %115 to double
  %117 = tail call double @llvm.fmuladd.f64(double %116, double %109, double %107)
  %118 = getelementptr inbounds double, ptr %78, i64 4
  %119 = load double, ptr %108, align 8, !tbaa !15
  %120 = getelementptr inbounds i16, ptr %81, i64 14
  %121 = load i16, ptr %120, align 2, !tbaa !64
  %122 = sitofp i16 %121 to double
  %123 = tail call double @llvm.fmuladd.f64(double %122, double %119, double %113)
  %124 = getelementptr inbounds i16, ptr %79, i64 496
  %125 = load i16, ptr %124, align 2, !tbaa !64
  %126 = sitofp i16 %125 to double
  %127 = tail call double @llvm.fmuladd.f64(double %126, double %119, double %117)
  %128 = getelementptr inbounds double, ptr %78, i64 5
  %129 = load double, ptr %118, align 8, !tbaa !15
  %130 = getelementptr inbounds i16, ptr %81, i64 78
  %131 = load i16, ptr %130, align 2, !tbaa !64
  %132 = sitofp i16 %131 to double
  %133 = tail call double @llvm.fmuladd.f64(double %132, double %129, double %123)
  %134 = getelementptr inbounds i16, ptr %79, i64 432
  %135 = load i16, ptr %134, align 2, !tbaa !64
  %136 = sitofp i16 %135 to double
  %137 = tail call double @llvm.fmuladd.f64(double %136, double %129, double %127)
  %138 = getelementptr inbounds double, ptr %78, i64 6
  %139 = load double, ptr %128, align 8, !tbaa !15
  %140 = getelementptr inbounds i16, ptr %81, i64 142
  %141 = load i16, ptr %140, align 2, !tbaa !64
  %142 = sitofp i16 %141 to double
  %143 = tail call double @llvm.fmuladd.f64(double %142, double %139, double %133)
  %144 = getelementptr inbounds i16, ptr %79, i64 368
  %145 = load i16, ptr %144, align 2, !tbaa !64
  %146 = sitofp i16 %145 to double
  %147 = tail call double @llvm.fmuladd.f64(double %146, double %139, double %137)
  %148 = getelementptr inbounds double, ptr %78, i64 7
  %149 = load double, ptr %138, align 8, !tbaa !15
  %150 = getelementptr inbounds i16, ptr %81, i64 206
  %151 = load i16, ptr %150, align 2, !tbaa !64
  %152 = sitofp i16 %151 to double
  %153 = tail call double @llvm.fmuladd.f64(double %152, double %149, double %143)
  %154 = getelementptr inbounds i16, ptr %79, i64 304
  %155 = load i16, ptr %154, align 2, !tbaa !64
  %156 = sitofp i16 %155 to double
  %157 = tail call double @llvm.fmuladd.f64(double %156, double %149, double %147)
  %158 = getelementptr inbounds double, ptr %78, i64 8
  %159 = load double, ptr %148, align 8, !tbaa !15
  %160 = getelementptr inbounds i16, ptr %79, i64 16
  %161 = load i16, ptr %160, align 2, !tbaa !64
  %162 = sitofp i16 %161 to double
  %163 = tail call double @llvm.fmuladd.f64(double %162, double %159, double %153)
  %164 = getelementptr inbounds i16, ptr %81, i64 494
  %165 = load i16, ptr %164, align 2, !tbaa !64
  %166 = sitofp i16 %165 to double
  %167 = fneg double %166
  %168 = tail call double @llvm.fmuladd.f64(double %167, double %159, double %157)
  %169 = getelementptr inbounds double, ptr %78, i64 9
  %170 = load double, ptr %158, align 8, !tbaa !15
  %171 = getelementptr inbounds i16, ptr %79, i64 80
  %172 = load i16, ptr %171, align 2, !tbaa !64
  %173 = sitofp i16 %172 to double
  %174 = tail call double @llvm.fmuladd.f64(double %173, double %170, double %163)
  %175 = getelementptr inbounds i16, ptr %81, i64 430
  %176 = load i16, ptr %175, align 2, !tbaa !64
  %177 = sitofp i16 %176 to double
  %178 = fneg double %177
  %179 = tail call double @llvm.fmuladd.f64(double %178, double %170, double %168)
  %180 = getelementptr inbounds double, ptr %78, i64 10
  %181 = load double, ptr %169, align 8, !tbaa !15
  %182 = getelementptr inbounds i16, ptr %79, i64 144
  %183 = load i16, ptr %182, align 2, !tbaa !64
  %184 = sitofp i16 %183 to double
  %185 = tail call double @llvm.fmuladd.f64(double %184, double %181, double %174)
  %186 = getelementptr inbounds i16, ptr %81, i64 366
  %187 = load i16, ptr %186, align 2, !tbaa !64
  %188 = sitofp i16 %187 to double
  %189 = fneg double %188
  %190 = tail call double @llvm.fmuladd.f64(double %189, double %181, double %179)
  %191 = getelementptr inbounds double, ptr %78, i64 11
  %192 = load double, ptr %180, align 8, !tbaa !15
  %193 = getelementptr inbounds i16, ptr %79, i64 208
  %194 = load i16, ptr %193, align 2, !tbaa !64
  %195 = sitofp i16 %194 to double
  %196 = tail call double @llvm.fmuladd.f64(double %195, double %192, double %185)
  %197 = getelementptr inbounds i16, ptr %81, i64 302
  %198 = load i16, ptr %197, align 2, !tbaa !64
  %199 = sitofp i16 %198 to double
  %200 = fneg double %199
  %201 = tail call double @llvm.fmuladd.f64(double %200, double %192, double %190)
  %202 = getelementptr inbounds double, ptr %78, i64 12
  %203 = load double, ptr %191, align 8, !tbaa !15
  %204 = getelementptr inbounds i16, ptr %79, i64 272
  %205 = load i16, ptr %204, align 2, !tbaa !64
  %206 = sitofp i16 %205 to double
  %207 = fneg double %206
  %208 = tail call double @llvm.fmuladd.f64(double %207, double %203, double %196)
  %209 = getelementptr inbounds i16, ptr %81, i64 238
  %210 = load i16, ptr %209, align 2, !tbaa !64
  %211 = sitofp i16 %210 to double
  %212 = tail call double @llvm.fmuladd.f64(double %211, double %203, double %201)
  %213 = getelementptr inbounds double, ptr %78, i64 13
  %214 = load double, ptr %202, align 8, !tbaa !15
  %215 = getelementptr inbounds i16, ptr %79, i64 336
  %216 = load i16, ptr %215, align 2, !tbaa !64
  %217 = sitofp i16 %216 to double
  %218 = fneg double %217
  %219 = tail call double @llvm.fmuladd.f64(double %218, double %214, double %208)
  %220 = getelementptr inbounds i16, ptr %81, i64 174
  %221 = load i16, ptr %220, align 2, !tbaa !64
  %222 = sitofp i16 %221 to double
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %214, double %212)
  %224 = getelementptr inbounds double, ptr %78, i64 14
  %225 = load double, ptr %213, align 8, !tbaa !15
  %226 = getelementptr inbounds i16, ptr %79, i64 400
  %227 = load i16, ptr %226, align 2, !tbaa !64
  %228 = sitofp i16 %227 to double
  %229 = fneg double %228
  %230 = tail call double @llvm.fmuladd.f64(double %229, double %225, double %219)
  %231 = getelementptr inbounds i16, ptr %81, i64 110
  %232 = load i16, ptr %231, align 2, !tbaa !64
  %233 = sitofp i16 %232 to double
  %234 = tail call double @llvm.fmuladd.f64(double %233, double %225, double %223)
  %235 = getelementptr inbounds double, ptr %78, i64 15
  %236 = load double, ptr %224, align 8, !tbaa !15
  %237 = getelementptr inbounds i16, ptr %79, i64 464
  %238 = load i16, ptr %237, align 2, !tbaa !64
  %239 = sitofp i16 %238 to double
  %240 = fneg double %239
  %241 = tail call double @llvm.fmuladd.f64(double %240, double %236, double %230)
  %242 = getelementptr inbounds i16, ptr %81, i64 46
  %243 = load i16, ptr %242, align 2, !tbaa !64
  %244 = sitofp i16 %243 to double
  %245 = tail call double @llvm.fmuladd.f64(double %244, double %236, double %234)
  %246 = sub nuw nsw i64 30, %77
  %247 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %246
  store double %241, ptr %247, align 8, !tbaa !15
  %248 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %77
  store double %245, ptr %248, align 8, !tbaa !15
  %249 = add nsw i64 %77, -1
  %250 = icmp eq i64 %77, 0
  br i1 %250, label %251, label %76, !llvm.loop !66

251:                                              ; preds = %76
  %252 = getelementptr inbounds i16, ptr %0, i64 239
  %253 = load i16, ptr %252, align 2, !tbaa !64
  %254 = sitofp i16 %253 to double
  %255 = getelementptr inbounds i16, ptr %0, i64 175
  %256 = load i16, ptr %255, align 2, !tbaa !64
  %257 = sitofp i16 %256 to double
  %258 = getelementptr inbounds double, ptr %78, i64 16
  %259 = load double, ptr %235, align 8, !tbaa !15
  %260 = tail call double @llvm.fmuladd.f64(double %257, double %259, double %254)
  %261 = getelementptr inbounds i16, ptr %0, i64 111
  %262 = load i16, ptr %261, align 2, !tbaa !64
  %263 = sitofp i16 %262 to double
  %264 = getelementptr inbounds double, ptr %78, i64 17
  %265 = load double, ptr %258, align 8, !tbaa !15
  %266 = tail call double @llvm.fmuladd.f64(double %263, double %265, double %260)
  %267 = getelementptr inbounds i16, ptr %0, i64 47
  %268 = load i16, ptr %267, align 2, !tbaa !64
  %269 = sitofp i16 %268 to double
  %270 = getelementptr inbounds double, ptr %78, i64 18
  %271 = load double, ptr %264, align 8, !tbaa !15
  %272 = tail call double @llvm.fmuladd.f64(double %269, double %271, double %266)
  %273 = getelementptr inbounds i16, ptr %0, i64 303
  %274 = load i16, ptr %273, align 2, !tbaa !64
  %275 = sitofp i16 %274 to double
  %276 = getelementptr inbounds double, ptr %78, i64 19
  %277 = load double, ptr %270, align 8, !tbaa !15
  %278 = fneg double %275
  %279 = tail call double @llvm.fmuladd.f64(double %278, double %277, double %272)
  %280 = getelementptr inbounds i16, ptr %0, i64 367
  %281 = load i16, ptr %280, align 2, !tbaa !64
  %282 = sitofp i16 %281 to double
  %283 = getelementptr inbounds double, ptr %78, i64 20
  %284 = load double, ptr %276, align 8, !tbaa !15
  %285 = fneg double %282
  %286 = tail call double @llvm.fmuladd.f64(double %285, double %284, double %279)
  %287 = getelementptr inbounds i16, ptr %0, i64 431
  %288 = load i16, ptr %287, align 2, !tbaa !64
  %289 = sitofp i16 %288 to double
  %290 = getelementptr inbounds double, ptr %78, i64 21
  %291 = load double, ptr %283, align 8, !tbaa !15
  %292 = fneg double %289
  %293 = tail call double @llvm.fmuladd.f64(double %292, double %291, double %286)
  %294 = getelementptr inbounds i16, ptr %0, i64 495
  %295 = load i16, ptr %294, align 2, !tbaa !64
  %296 = sitofp i16 %295 to double
  %297 = load double, ptr %290, align 8, !tbaa !15
  %298 = fneg double %296
  %299 = tail call double @llvm.fmuladd.f64(double %298, double %297, double %293)
  br label %300

300:                                              ; preds = %251, %324
  %301 = phi i64 [ 15, %251 ], [ %331, %324 ]
  %302 = phi ptr [ @mm, %251 ], [ %325, %324 ]
  %303 = getelementptr inbounds double, ptr %302, i64 1
  %304 = load double, ptr %302, align 8, !tbaa !15
  %305 = fmul double %245, %304
  br label %306

306:                                              ; preds = %300, %306
  %307 = phi double [ %305, %300 ], [ %321, %306 ]
  %308 = phi double [ %299, %300 ], [ %316, %306 ]
  %309 = phi i32 [ 14, %300 ], [ %322, %306 ]
  %310 = phi ptr [ getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 5), %300 ], [ %319, %306 ]
  %311 = phi ptr [ %303, %300 ], [ %317, %306 ]
  %312 = getelementptr inbounds double, ptr %311, i64 1
  %313 = load double, ptr %311, align 8, !tbaa !15
  %314 = getelementptr inbounds double, ptr %310, i64 1
  %315 = load double, ptr %310, align 8, !tbaa !15
  %316 = tail call double @llvm.fmuladd.f64(double %313, double %315, double %308)
  %317 = getelementptr inbounds double, ptr %311, i64 2
  %318 = load double, ptr %312, align 8, !tbaa !15
  %319 = getelementptr inbounds double, ptr %310, i64 2
  %320 = load double, ptr %314, align 8, !tbaa !15
  %321 = tail call double @llvm.fmuladd.f64(double %318, double %320, double %307)
  %322 = add nsw i32 %309, -1
  %323 = icmp eq i32 %309, 0
  br i1 %323, label %324, label %306, !llvm.loop !67

324:                                              ; preds = %306
  %325 = getelementptr i8, ptr %302, i64 248
  %326 = fadd double %316, %321
  %327 = getelementptr inbounds double, ptr %1, i64 %301
  store double %326, ptr %327, align 8, !tbaa !15
  %328 = fsub double %316, %321
  %329 = sub nuw nsw i64 31, %301
  %330 = getelementptr inbounds double, ptr %1, i64 %329
  store double %328, ptr %330, align 8, !tbaa !15
  %331 = add nsw i64 %301, -1
  %332 = icmp eq i64 %301, 0
  br i1 %332, label %333, label %300, !llvm.loop !68

333:                                              ; preds = %324
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 204}
!10 = !{!"", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !12, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !13, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !11, i64 168, !11, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !13, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!11 = !{!"long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!10, !6, i64 200}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = !{!10, !6, i64 256}
!21 = !{!10, !6, i64 252}
!22 = !{!10, !6, i64 248}
!23 = !{!10, !13, i64 232}
!24 = !{!10, !13, i64 236}
!25 = distinct !{!25, !18}
!26 = !{!10, !13, i64 240}
!27 = !{!10, !13, i64 244}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!31, !6, i64 24}
!31 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !7, i64 104}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !7, i64 0}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18}
