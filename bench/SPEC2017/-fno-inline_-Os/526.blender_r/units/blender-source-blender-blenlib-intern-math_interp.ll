; ModuleID = 'blender/source/blender/blenlib/intern/math_interp.c'
source_filename = "blender/source/blender/blenlib/intern/math_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@EWA_WTS = dso_local local_unnamed_addr constant [256 x float] [float 1.000000e+00, float 0x3FEFB5FC40000000, float 0x3FEF6C8B40000000, float 0x3FEF23AD20000000, float 0x3FEEDB61C0000000, float 0x3FEE93A720000000, float 0x3FEE4C7B00000000, float 0x3FEE05DD80000000, float 0x3FEDBFCEC0000000, float 0x3FED7A4A40000000, float 0x3FED355260000000, float 0x3FECF0E2C0000000, float 0x3FECACFD80000000, float 0x3FEC699EA0000000, float 0x3FEC26C7E0000000, float 0x3FEBE47560000000, float 0x3FEBA2A700000000, float 0x3FEB615EC0000000, float 0x3FEB209680000000, float 0x3FEAE05260000000, float 0x3FEAA08C00000000, float 0x3FEA6147A0000000, float 0x3FEA228140000000, float 0x3FE9E43680000000, float 0x3FE9A66980000000, float 0x3FE9691860000000, float 0x3FE92C42E0000000, float 0x3FE8EFE500000000, float 0x3FE8B402E0000000, float 0x3FE8789620000000, float 0x3FE83DA0E0000000, float 0x3FE8032120000000, float 0x3FE7C916C0000000, float 0x3FE78F7FC0000000, float 0x3FE7565C20000000, float 0x3FE71DABE0000000, float 0x3FE6E56AC0000000, float 0x3FE6AD9D00000000, float 0x3FE6763C40000000, float 0x3FE63F4CC0000000, float 0x3FE608C820000000, float 0x3FE5D2B2C0000000, float 0x3FE59D0A60000000, float 0x3FE567CAE0000000, float 0x3FE532F660000000, float 0x3FE4FE8CC0000000, float 0x3FE4CA8C20000000, float 0x3FE496F220000000, float 0x3FE463BEE0000000, float 0x3FE430F4A0000000, float 0x3FE3FE8EE0000000, float 0x3FE3CC8BC0000000, float 0x3FE39AEF60000000, float 0x3FE369B5A0000000, float 0x3FE338DC60000000, float 0x3FE30867A0000000, float 0x3FE2D85160000000, float 0x3FE2A89DA0000000, float 0x3FE2794860000000, float 0x3FE24A5160000000, float 0x3FE21BB6A0000000, float 0x3FE1ED7C60000000, float 0x3FE1BF9C60000000, float 0x3FE19218A0000000, float 0x3FE164F120000000, float 0x3FE13821A0000000, float 0x3FE10BAE80000000, float 0x3FE0DF9160000000, float 0x3FE0B3CE60000000, float 0x3FE0886380000000, float 0x3FE05D4C80000000, float 0x3FE0328D80000000, float 0x3FE00824A0000000, float 0x3FDFBC1F00000000, float 0x3FDF68A0E0000000, float 0x3FDF15C640000000, float 0x3FDEC39360000000, float 0x3FDE720420000000, float 0x3FDE211440000000, float 0x3FDDD0CC40000000, float 0x3FDD811F40000000, float 0x3FDD321600000000, float 0x3FDCE3A7E0000000, float 0x3FDC95D920000000, float 0x3FDC48A580000000, float 0x3FDBFC0900000000, float 0x3FDBB007A0000000, float 0x3FDB64A160000000, float 0x3FDB19CE00000000, float 0x3FDACF91A0000000, float 0x3FDA85EC40000000, float 0x3FDA3CD580000000, float 0x3FD9F455A0000000, float 0x3FD9AC6480000000, float 0x3FD96501E0000000, float 0x3FD91E2DE0000000, float 0x3FD8D7E880000000, float 0x3FD89231C0000000, float 0x3FD84D0560000000, float 0x3FD8085F40000000, float 0x3FD7C447C0000000, float 0x3FD780B680000000, float 0x3FD73DAB60000000, float 0x3FD6FB2680000000, float 0x3FD6B927E0000000, float 0x3FD677AF60000000, float 0x3FD636B4C0000000, float 0x3FD5F64060000000, float 0x3FD5B649E0000000, float 0x3FD576D540000000, float 0x3FD537DEA0000000, float 0x3FD4F965C0000000, float 0x3FD4BB6AA0000000, float 0x3FD47DED60000000, float 0x3FD440E5A0000000, float 0x3FD4045BA0000000, float 0x3FD3C84B60000000, float 0x3FD38CB080000000, float 0x3FD3518F40000000, float 0x3FD316E380000000, float 0x3FD2DCAD20000000, float 0x3FD2A2EC20000000, float 0x3FD2699C80000000, float 0x3FD230C240000000, float 0x3FD1F85520000000, float 0x3FD1C05D60000000, float 0x3FD188D2A0000000, float 0x3FD151B940000000, float 0x3FD11B0CC0000000, float 0x3FD0E4CD80000000, float 0x3FD0AEFB20000000, float 0x3FD07995E0000000, float 0x3FD0449980000000, float 0x3FD0100A40000000, float 0x3FCFB7BF20000000, float 0x3FCF503B80000000, float 0x3FCEE989A0000000, float 0x3FCE83A960000000, float 0x3FCE1E92A0000000, float 0x3FCDBA3CA0000000, float 0x3FCD56B880000000, float 0x3FCCF3FDA0000000, float 0x3FCC9203A0000000, float 0x3FCC30CAA0000000, float 0x3FCBD05B00000000, float 0x3FCB70A3E0000000, float 0x3FCB11B600000000, float 0x3FCAB380C0000000, float 0x3FCA560420000000, float 0x3FC9F94860000000, float 0x3FC99D4520000000, float 0x3FC941FA80000000, float 0x3FC8E76860000000, float 0x3FC88D8660000000, float 0x3FC83454A0000000, float 0x3FC7DBDB60000000, float 0x3FC7841240000000, float 0x3FC72CF960000000, float 0x3FC6D690A0000000, float 0x3FC680CFA0000000, float 0x3FC62BBEC0000000, float 0x3FC5D755C0000000, float 0x3FC5839480000000, float 0x3FC5307B00000000, float 0x3FC4DE0940000000, float 0x3FC48C3F40000000, float 0x3FC43B14A0000000, float 0x3FC3EA8980000000, float 0x3FC39AA600000000, float 0x3FC34B6200000000, float 0x3FC2FCB500000000, float 0x3FC2AEA740000000, float 0x3FC2613900000000, float 0x3FC2146A20000000, float 0x3FC1C829C0000000, float 0x3FC17C88E0000000, float 0x3FC1317F00000000, float 0x3FC0E70C20000000, float 0x3FC09D3020000000, float 0x3FC053E2E0000000, float 0x3FC00B2C80000000, float 0x3FBF8609A0000000, float 0x3FBEF6D760000000, float 0x3FBE68C260000000, float 0x3FBDDBCAA0000000, float 0x3FBD4FF000000000, float 0x3FBCC532A0000000, float 0x3FBC3B81C0000000, float 0x3FBBB2EE00000000, float 0x3FBB2B66C0000000, float 0x3FBAA4EBE0000000, float 0x3FBA1F7D80000000, float 0x3FB99B1B80000000, float 0x3FB917BF40000000, float 0x3FB8956C00000000, float 0x3FB8141EA0000000, float 0x3FB793D380000000, float 0x3FB7148920000000, float 0x3FB6963DC0000000, float 0x3FB618EE00000000, float 0x3FB59C9A00000000, float 0x3FB5213CA0000000, float 0x3FB4A6D760000000, float 0x3FB42D6740000000, float 0x3FB3B4E8A0000000, float 0x3FB33D5D60000000, float 0x3FB2C6BEA0000000, float 0x3FB2510E00000000, float 0x3FB1DC4A20000000, float 0x3FB1686DA0000000, float 0x3FB0F57A60000000, float 0x3FB0836D00000000, float 0x3FB0124220000000, float 0x3FAF43F6C0000000, float 0x3FAE6527A0000000, float 0x3FAD8816C0000000, float 0x3FACACC0C0000000, float 0x3FABD32260000000, float 0x3FAAFB3820000000, float 0x3FAA24FB60000000, float 0x3FA95068C0000000, float 0x3FA87D83C0000000, float 0x3FA7AC4220000000, float 0x3FA6DCA3E0000000, float 0x3FA60EA5C0000000, float 0x3FA54240E0000000, float 0x3FA47778E0000000, float 0x3FA3AE4380000000, float 0x3FA2E6A0C0000000, float 0x3FA2208D40000000, float 0x3FA15C05C0000000, float 0x3FA09906C0000000, float 0x3F9FAF20E0000000, float 0x3F9E2F3800000000, float 0x3F9CB24C20000000, float 0x3F9B385D40000000, float 0x3F99C15E00000000, float 0x3F984D4E60000000, float 0x3F96DC27C0000000, float 0x3F956DE340000000, float 0x3F940280E0000000, float 0x3F9299ECA0000000, float 0x3F91342D20000000, float 0x3F8FA27780000000, float 0x3F8CE21600000000, float 0x3F8A2735C0000000, float 0x3F8771D6E0000000, float 0x3F84C1DE60000000, float 0x3F82173D80000000, float 0x3F7EE3EE20000000, float 0x3F79A3F860000000, float 0x3F746E7F00000000, float 0x3F6E86E940000000, float 0x3F64457C80000000, float 0x3F543124E0000000, float 0.000000e+00], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bicubic_interpolation_fl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @bicubic_interpolation(ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @bicubic_interpolation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #1 !PGOFuncName !34 {
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #16
  %13 = fpext float %7 to double
  %14 = tail call double @llvm.ceil.f64(double %13)
  %15 = fcmp olt double %14, 0.000000e+00
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = tail call double @llvm.floor.f64(double %13)
  %18 = add nsw i32 %4, -1
  %19 = sitofp i32 %18 to double
  %20 = fcmp ogt double %17, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = fpext float %8 to double
  %23 = tail call double @llvm.ceil.f64(double %22)
  %24 = fcmp olt double %23, 0.000000e+00
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = tail call double @llvm.floor.f64(double %22)
  %27 = add nsw i32 %5, -1
  %28 = sitofp i32 %27 to double
  %29 = fcmp ogt double %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %21, %16, %9
  %31 = icmp eq ptr %3, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %33

33:                                               ; preds = %32, %30
  %34 = icmp eq ptr %2, null
  br i1 %34, label %153, label %35

35:                                               ; preds = %33
  store i32 0, ptr %2, align 1
  br label %153

36:                                               ; preds = %25
  %37 = fptosi double %17 to i32
  %38 = fptosi double %26 to i32
  %39 = sitofp i32 %37 to float
  %40 = sitofp i32 %38 to float
  %41 = fsub float %8, %40
  call fastcc void @zero_v4(ptr noundef nonnull %11) #15
  %42 = fadd float %41, 1.000000e+00
  %43 = tail call fastcc float @P(float noundef %42) #15
  store float %43, ptr %10, align 16, !tbaa !35
  %44 = tail call fastcc float @P(float noundef %41) #15
  %45 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !35
  %46 = fadd float %41, -1.000000e+00
  %47 = tail call fastcc float @P(float noundef %46) #15
  %48 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  store float %47, ptr %48, align 8, !tbaa !35
  %49 = fadd float %41, -2.000000e+00
  %50 = tail call fastcc float @P(float noundef %49) #15
  %51 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  store float %50, ptr %51, align 4, !tbaa !35
  %52 = fsub float %39, %7
  %53 = icmp eq ptr %3, null
  %54 = mul i32 %6, %4
  %55 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 1
  %56 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 1
  %57 = getelementptr inbounds [4 x float], ptr %12, i64 0, i64 3
  %58 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  %59 = load float, ptr %11, align 16, !tbaa !35
  %60 = load <2 x float>, ptr %56, align 4, !tbaa !35
  %61 = load float, ptr %58, align 4, !tbaa !35
  %62 = sext i32 %38 to i64
  %63 = sext i32 %5 to i64
  br label %64

64:                                               ; preds = %36, %121
  %65 = phi i32 [ -1, %36 ], [ %122, %121 ]
  %66 = phi float [ %59, %36 ], [ %104, %121 ]
  %67 = phi float [ %61, %36 ], [ %118, %121 ]
  %68 = phi <2 x float> [ %60, %36 ], [ %119, %121 ]
  %69 = add nsw i32 %65, %37
  %70 = icmp slt i32 %69, 0
  %71 = icmp slt i32 %69, %4
  %72 = select i1 %71, i32 %69, i32 %18
  %73 = select i1 %70, i32 0, i32 %72
  %74 = sitofp i32 %65 to float
  %75 = fadd float %52, %74
  %76 = tail call fastcc float @P(float noundef %75) #15
  %77 = mul nsw i32 %73, %6
  %78 = sext i32 %77 to i64
  %79 = getelementptr float, ptr %1, i64 %78
  %80 = getelementptr i8, ptr %0, i64 %78
  br label %81

81:                                               ; preds = %64, %117
  %82 = phi i64 [ -1, %64 ], [ %92, %117 ]
  %83 = phi float [ %67, %64 ], [ %118, %117 ]
  %84 = phi float [ %66, %64 ], [ %104, %117 ]
  %85 = phi <2 x float> [ %68, %64 ], [ %119, %117 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #16
  %86 = add nsw i64 %82, %62
  %87 = icmp slt i64 %86, 0
  %88 = icmp slt i64 %86, %63
  %89 = trunc i64 %86 to i32
  %90 = select i1 %88, i32 %89, i32 %27
  %91 = select i1 %87, i32 0, i32 %90
  %92 = add nsw i64 %82, 1
  %93 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 %92
  %94 = load float, ptr %93, align 4, !tbaa !35
  %95 = fmul float %76, %94
  %96 = mul i32 %54, %91
  %97 = sext i32 %96 to i64
  br i1 %53, label %100, label %98

98:                                               ; preds = %81
  %99 = getelementptr float, ptr %79, i64 %97
  call fastcc void @vector_from_float(ptr noundef %99, ptr noundef nonnull %12, i32 noundef %6) #15
  br label %102

100:                                              ; preds = %81
  %101 = getelementptr i8, ptr %80, i64 %97
  call fastcc void @vector_from_byte(ptr noundef %101, ptr noundef nonnull %12, i32 noundef %6) #15
  br label %102

102:                                              ; preds = %100, %98
  %103 = load float, ptr %12, align 16, !tbaa !35
  %104 = tail call float @llvm.fmuladd.f32(float %103, float %95, float %84)
  switch i32 %6, label %110 [
    i32 1, label %117
    i32 3, label %105
  ]

105:                                              ; preds = %102
  %106 = load <2 x float>, ptr %55, align 4, !tbaa !35
  %107 = insertelement <2 x float> poison, float %95, i64 0
  %108 = shufflevector <2 x float> %107, <2 x float> poison, <2 x i32> zeroinitializer
  %109 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %106, <2 x float> %108, <2 x float> %85)
  br label %117

110:                                              ; preds = %102
  %111 = load <2 x float>, ptr %55, align 4, !tbaa !35
  %112 = insertelement <2 x float> poison, float %95, i64 0
  %113 = shufflevector <2 x float> %112, <2 x float> poison, <2 x i32> zeroinitializer
  %114 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %111, <2 x float> %113, <2 x float> %85)
  %115 = load float, ptr %57, align 4, !tbaa !35
  %116 = tail call float @llvm.fmuladd.f32(float %115, float %95, float %83)
  br label %117

117:                                              ; preds = %102, %105, %110
  %118 = phi float [ %83, %105 ], [ %116, %110 ], [ %83, %102 ]
  %119 = phi <2 x float> [ %109, %105 ], [ %114, %110 ], [ %85, %102 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #16
  %120 = icmp eq i64 %92, 3
  br i1 %120, label %121, label %81, !llvm.loop !39

121:                                              ; preds = %117
  %122 = add nsw i32 %65, 1
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %64, !llvm.loop !41

124:                                              ; preds = %121
  store float %104, ptr %11, align 16, !tbaa !35
  store <2 x float> %119, ptr %56, align 4, !tbaa !35
  store float %118, ptr %58, align 4, !tbaa !35
  br i1 %53, label %129, label %125

125:                                              ; preds = %124
  switch i32 %6, label %128 [
    i32 1, label %126
    i32 3, label %127
  ]

126:                                              ; preds = %125
  store float %104, ptr %3, align 4, !tbaa !35
  br label %153

127:                                              ; preds = %125
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %11) #15
  br label %153

128:                                              ; preds = %125
  call fastcc void @copy_v4_v4(ptr noundef nonnull %3, ptr noundef nonnull %11) #15
  br label %153

129:                                              ; preds = %124
  %130 = fadd float %104, 5.000000e-01
  %131 = fptoui float %130 to i8
  store i8 %131, ptr %2, align 1, !tbaa !42
  switch i32 %6, label %141 [
    i32 1, label %153
    i32 3, label %132
  ]

132:                                              ; preds = %129
  %133 = extractelement <2 x float> %119, i64 0
  %134 = fadd float %133, 5.000000e-01
  %135 = fptoui float %134 to i8
  %136 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %135, ptr %136, align 1, !tbaa !42
  %137 = extractelement <2 x float> %119, i64 1
  %138 = fadd float %137, 5.000000e-01
  %139 = fptoui float %138 to i8
  %140 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %139, ptr %140, align 1, !tbaa !42
  br label %153

141:                                              ; preds = %129
  %142 = extractelement <2 x float> %119, i64 0
  %143 = fadd float %142, 5.000000e-01
  %144 = fptoui float %143 to i8
  %145 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %144, ptr %145, align 1, !tbaa !42
  %146 = extractelement <2 x float> %119, i64 1
  %147 = fadd float %146, 5.000000e-01
  %148 = fptoui float %147 to i8
  %149 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %148, ptr %149, align 1, !tbaa !42
  %150 = fadd float %118, 5.000000e-01
  %151 = fptoui float %150 to i8
  %152 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %151, ptr %152, align 1, !tbaa !42
  br label %153

153:                                              ; preds = %129, %127, %128, %126, %132, %141, %33, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bicubic_interpolation_char(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @bicubic_interpolation(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bilinear_interpolation_fl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #2 {
  tail call fastcc void @bilinear_interpolation(ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bilinear_interpolation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #3 !PGOFuncName !43 {
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x i8], align 4
  %12 = fpext float %7 to double
  %13 = tail call double @llvm.floor.f64(double %12)
  %14 = fptosi double %13 to i32
  %15 = tail call double @llvm.ceil.f64(double %12)
  %16 = fptosi double %15 to i32
  %17 = fpext float %8 to double
  %18 = tail call double @llvm.floor.f64(double %17)
  %19 = fptosi double %18 to i32
  %20 = tail call double @llvm.ceil.f64(double %17)
  %21 = fptosi double %20 to i32
  %22 = icmp eq ptr %3, null
  %23 = icmp slt i32 %16, 0
  br i1 %22, label %145, label %24

24:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  br i1 %23, label %31, label %25

25:                                               ; preds = %24
  %26 = icmp slt i32 %14, %4
  %27 = icmp sgt i32 %21, -1
  %28 = select i1 %26, i1 %27, i1 false
  %29 = icmp slt i32 %19, %5
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  br label %290

32:                                               ; preds = %25
  %33 = icmp slt i32 %14, 0
  %34 = icmp slt i32 %19, 0
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = mul i32 %6, %4
  %38 = mul i32 %37, %19
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, ptr %1, i64 %39
  %41 = mul nsw i32 %14, %6
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, ptr %40, i64 %42
  br label %44

44:                                               ; preds = %32, %36
  %45 = phi ptr [ %43, %36 ], [ %10, %32 ]
  %46 = xor i1 %33, true
  %47 = icmp slt i32 %21, %5
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = mul i32 %6, %4
  %51 = mul i32 %50, %21
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, ptr %1, i64 %52
  %54 = mul nsw i32 %14, %6
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, ptr %53, i64 %55
  br label %57

57:                                               ; preds = %44, %49
  %58 = phi ptr [ %56, %49 ], [ %10, %44 ]
  %59 = icmp sge i32 %16, %4
  %60 = select i1 %59, i1 true, i1 %34
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = mul i32 %6, %4
  %63 = mul i32 %62, %19
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %1, i64 %64
  %66 = mul nsw i32 %16, %6
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %65, i64 %67
  br label %69

69:                                               ; preds = %57, %61
  %70 = phi ptr [ %68, %61 ], [ %10, %57 ]
  %71 = xor i1 %59, true
  %72 = select i1 %71, i1 %47, i1 false
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = mul i32 %6, %4
  %75 = mul i32 %74, %21
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %1, i64 %76
  %78 = mul nsw i32 %16, %6
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, ptr %77, i64 %79
  br label %81

81:                                               ; preds = %69, %73
  %82 = phi ptr [ %80, %73 ], [ %10, %69 ]
  %83 = tail call float @llvm.floor.f32(float %7)
  %84 = fsub float %7, %83
  %85 = tail call float @llvm.floor.f32(float %8)
  %86 = fsub float %8, %85
  %87 = fmul float %84, %86
  %88 = fsub float 1.000000e+00, %84
  %89 = fmul float %88, %86
  %90 = fsub float 1.000000e+00, %86
  %91 = fmul float %84, %90
  %92 = fmul float %88, %90
  %93 = load float, ptr %45, align 4, !tbaa !35
  %94 = load float, ptr %70, align 4, !tbaa !35
  %95 = fmul float %91, %94
  %96 = tail call float @llvm.fmuladd.f32(float %92, float %93, float %95)
  %97 = load float, ptr %58, align 4, !tbaa !35
  %98 = tail call float @llvm.fmuladd.f32(float %89, float %97, float %96)
  %99 = load float, ptr %82, align 4, !tbaa !35
  %100 = tail call float @llvm.fmuladd.f32(float %87, float %99, float %98)
  store float %100, ptr %3, align 4, !tbaa !35
  switch i32 %6, label %101 [
    i32 1, label %144
    i32 3, label %115
  ]

101:                                              ; preds = %81
  %102 = getelementptr inbounds float, ptr %45, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !35
  %104 = getelementptr inbounds float, ptr %70, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !35
  %106 = fmul float %91, %105
  %107 = tail call float @llvm.fmuladd.f32(float %92, float %103, float %106)
  %108 = getelementptr inbounds float, ptr %58, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !35
  %110 = tail call float @llvm.fmuladd.f32(float %89, float %109, float %107)
  %111 = getelementptr inbounds float, ptr %82, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !35
  %113 = tail call float @llvm.fmuladd.f32(float %87, float %112, float %110)
  %114 = getelementptr inbounds float, ptr %3, i64 1
  store float %113, ptr %114, align 4, !tbaa !35
  br label %115

115:                                              ; preds = %81, %101
  %116 = phi i64 [ 2, %101 ], [ 1, %81 ]
  %117 = phi i64 [ 3, %101 ], [ 2, %81 ]
  %118 = getelementptr inbounds float, ptr %45, i64 %116
  %119 = load float, ptr %118, align 4, !tbaa !35
  %120 = getelementptr inbounds float, ptr %70, i64 %116
  %121 = load float, ptr %120, align 4, !tbaa !35
  %122 = fmul float %91, %121
  %123 = tail call float @llvm.fmuladd.f32(float %92, float %119, float %122)
  %124 = getelementptr inbounds float, ptr %58, i64 %116
  %125 = load float, ptr %124, align 4, !tbaa !35
  %126 = tail call float @llvm.fmuladd.f32(float %89, float %125, float %123)
  %127 = getelementptr inbounds float, ptr %82, i64 %116
  %128 = load float, ptr %127, align 4, !tbaa !35
  %129 = tail call float @llvm.fmuladd.f32(float %87, float %128, float %126)
  %130 = getelementptr inbounds float, ptr %3, i64 %116
  store float %129, ptr %130, align 4, !tbaa !35
  %131 = getelementptr inbounds float, ptr %45, i64 %117
  %132 = load float, ptr %131, align 4, !tbaa !35
  %133 = getelementptr inbounds float, ptr %70, i64 %117
  %134 = load float, ptr %133, align 4, !tbaa !35
  %135 = fmul float %91, %134
  %136 = tail call float @llvm.fmuladd.f32(float %92, float %132, float %135)
  %137 = getelementptr inbounds float, ptr %58, i64 %117
  %138 = load float, ptr %137, align 4, !tbaa !35
  %139 = tail call float @llvm.fmuladd.f32(float %89, float %138, float %136)
  %140 = getelementptr inbounds float, ptr %82, i64 %117
  %141 = load float, ptr %140, align 4, !tbaa !35
  %142 = tail call float @llvm.fmuladd.f32(float %87, float %141, float %139)
  %143 = getelementptr inbounds float, ptr %3, i64 %117
  store float %142, ptr %143, align 4, !tbaa !35
  br label %144

144:                                              ; preds = %115, %81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #16
  br label %290

145:                                              ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  store i32 0, ptr %11, align 4
  br i1 %23, label %152, label %146

146:                                              ; preds = %145
  %147 = icmp slt i32 %14, %4
  %148 = icmp sgt i32 %21, -1
  %149 = select i1 %147, i1 %148, i1 false
  %150 = icmp slt i32 %19, %5
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %153, label %152

152:                                              ; preds = %146, %145
  store i32 0, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %290

153:                                              ; preds = %146
  %154 = icmp slt i32 %14, 0
  %155 = icmp slt i32 %19, 0
  %156 = select i1 %154, i1 true, i1 %155
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = mul i32 %6, %4
  %159 = mul i32 %158, %19
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %0, i64 %160
  %162 = mul nsw i32 %14, %6
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %161, i64 %163
  br label %165

165:                                              ; preds = %153, %157
  %166 = phi ptr [ %164, %157 ], [ %11, %153 ]
  %167 = xor i1 %154, true
  %168 = icmp slt i32 %21, %5
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = mul i32 %6, %4
  %172 = mul i32 %171, %21
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, ptr %0, i64 %173
  %175 = mul nsw i32 %14, %6
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, ptr %174, i64 %176
  br label %178

178:                                              ; preds = %165, %170
  %179 = phi ptr [ %177, %170 ], [ %11, %165 ]
  %180 = icmp sge i32 %16, %4
  %181 = select i1 %180, i1 true, i1 %155
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = mul i32 %6, %4
  %184 = mul i32 %183, %19
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, ptr %0, i64 %185
  %187 = mul nsw i32 %16, %6
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, ptr %186, i64 %188
  br label %190

190:                                              ; preds = %178, %182
  %191 = phi ptr [ %189, %182 ], [ %11, %178 ]
  %192 = xor i1 %180, true
  %193 = select i1 %192, i1 %168, i1 false
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = mul i32 %6, %4
  %196 = mul i32 %195, %21
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, ptr %0, i64 %197
  %199 = mul nsw i32 %16, %6
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %198, i64 %200
  br label %202

202:                                              ; preds = %190, %194
  %203 = phi ptr [ %201, %194 ], [ %11, %190 ]
  %204 = tail call float @llvm.floor.f32(float %7)
  %205 = fsub float %7, %204
  %206 = tail call float @llvm.floor.f32(float %8)
  %207 = fsub float %8, %206
  %208 = fmul float %205, %207
  %209 = fsub float 1.000000e+00, %205
  %210 = fmul float %209, %207
  %211 = fsub float 1.000000e+00, %207
  %212 = fmul float %205, %211
  %213 = fmul float %209, %211
  %214 = load i8, ptr %166, align 1, !tbaa !42
  %215 = uitofp i8 %214 to float
  %216 = load i8, ptr %191, align 1, !tbaa !42
  %217 = uitofp i8 %216 to float
  %218 = fmul float %212, %217
  %219 = tail call float @llvm.fmuladd.f32(float %213, float %215, float %218)
  %220 = load i8, ptr %179, align 1, !tbaa !42
  %221 = uitofp i8 %220 to float
  %222 = tail call float @llvm.fmuladd.f32(float %210, float %221, float %219)
  %223 = load i8, ptr %203, align 1, !tbaa !42
  %224 = uitofp i8 %223 to float
  %225 = tail call float @llvm.fmuladd.f32(float %208, float %224, float %222)
  %226 = fadd float %225, 5.000000e-01
  %227 = fptoui float %226 to i8
  store i8 %227, ptr %2, align 1, !tbaa !42
  switch i32 %6, label %228 [
    i32 1, label %289
    i32 3, label %248
  ]

228:                                              ; preds = %202
  %229 = getelementptr inbounds i8, ptr %166, i64 1
  %230 = load i8, ptr %229, align 1, !tbaa !42
  %231 = uitofp i8 %230 to float
  %232 = getelementptr inbounds i8, ptr %191, i64 1
  %233 = load i8, ptr %232, align 1, !tbaa !42
  %234 = uitofp i8 %233 to float
  %235 = fmul float %212, %234
  %236 = tail call float @llvm.fmuladd.f32(float %213, float %231, float %235)
  %237 = getelementptr inbounds i8, ptr %179, i64 1
  %238 = load i8, ptr %237, align 1, !tbaa !42
  %239 = uitofp i8 %238 to float
  %240 = tail call float @llvm.fmuladd.f32(float %210, float %239, float %236)
  %241 = getelementptr inbounds i8, ptr %203, i64 1
  %242 = load i8, ptr %241, align 1, !tbaa !42
  %243 = uitofp i8 %242 to float
  %244 = tail call float @llvm.fmuladd.f32(float %208, float %243, float %240)
  %245 = fadd float %244, 5.000000e-01
  %246 = fptoui float %245 to i8
  %247 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %246, ptr %247, align 1, !tbaa !42
  br label %248

248:                                              ; preds = %202, %228
  %249 = phi i64 [ 2, %228 ], [ 1, %202 ]
  %250 = phi i64 [ 3, %228 ], [ 2, %202 ]
  %251 = getelementptr inbounds i8, ptr %166, i64 %249
  %252 = load i8, ptr %251, align 1, !tbaa !42
  %253 = uitofp i8 %252 to float
  %254 = getelementptr inbounds i8, ptr %191, i64 %249
  %255 = load i8, ptr %254, align 1, !tbaa !42
  %256 = uitofp i8 %255 to float
  %257 = fmul float %212, %256
  %258 = tail call float @llvm.fmuladd.f32(float %213, float %253, float %257)
  %259 = getelementptr inbounds i8, ptr %179, i64 %249
  %260 = load i8, ptr %259, align 1, !tbaa !42
  %261 = uitofp i8 %260 to float
  %262 = tail call float @llvm.fmuladd.f32(float %210, float %261, float %258)
  %263 = getelementptr inbounds i8, ptr %203, i64 %249
  %264 = load i8, ptr %263, align 1, !tbaa !42
  %265 = uitofp i8 %264 to float
  %266 = tail call float @llvm.fmuladd.f32(float %208, float %265, float %262)
  %267 = fadd float %266, 5.000000e-01
  %268 = fptoui float %267 to i8
  %269 = getelementptr inbounds i8, ptr %2, i64 %249
  store i8 %268, ptr %269, align 1, !tbaa !42
  %270 = getelementptr inbounds i8, ptr %166, i64 %250
  %271 = load i8, ptr %270, align 1, !tbaa !42
  %272 = uitofp i8 %271 to float
  %273 = getelementptr inbounds i8, ptr %191, i64 %250
  %274 = load i8, ptr %273, align 1, !tbaa !42
  %275 = uitofp i8 %274 to float
  %276 = fmul float %212, %275
  %277 = tail call float @llvm.fmuladd.f32(float %213, float %272, float %276)
  %278 = getelementptr inbounds i8, ptr %179, i64 %250
  %279 = load i8, ptr %278, align 1, !tbaa !42
  %280 = uitofp i8 %279 to float
  %281 = tail call float @llvm.fmuladd.f32(float %210, float %280, float %277)
  %282 = getelementptr inbounds i8, ptr %203, i64 %250
  %283 = load i8, ptr %282, align 1, !tbaa !42
  %284 = uitofp i8 %283 to float
  %285 = tail call float @llvm.fmuladd.f32(float %208, float %284, float %281)
  %286 = fadd float %285, 5.000000e-01
  %287 = fptoui float %286 to i8
  %288 = getelementptr inbounds i8, ptr %2, i64 %250
  store i8 %287, ptr %288, align 1, !tbaa !42
  br label %289

289:                                              ; preds = %248, %202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %290

290:                                              ; preds = %144, %289, %152, %31
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bilinear_interpolation_char(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #2 {
  tail call fastcc void @bilinear_interpolation(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_ewa_imp2radangle(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #4 {
  %9 = fcmp ugt float %3, 0x3EE4F8B580000000
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = fcmp ogt float %0, %2
  %12 = select i1 %11, float %0, float %2
  %13 = tail call float @sqrtf(float noundef %12) #17
  store float %13, ptr %4, align 4, !tbaa !35
  store float 0.000000e+00, ptr %5, align 4, !tbaa !35
  store float 1.000000e+10, ptr %7, align 4, !tbaa !35
  %14 = fsub float %0, %2
  br label %42

15:                                               ; preds = %8
  %16 = fsub float %0, %2
  %17 = fadd float %0, %2
  %18 = fmul float %3, 2.000000e+00
  %19 = fmul float %1, %1
  %20 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %19)
  %21 = tail call float @llvm.sqrt.f32(float %20)
  %22 = fsub float %17, %21
  %23 = fcmp ugt float %22, 0.000000e+00
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = fcmp ogt float %0, %2
  %26 = select i1 %25, float %0, float %2
  br label %29

27:                                               ; preds = %15
  %28 = fdiv float %18, %22
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi float [ %28, %27 ], [ %26, %24 ]
  %31 = tail call float @sqrtf(float noundef %30) #17
  store float %31, ptr %4, align 4, !tbaa !35
  %32 = fadd float %17, %21
  %33 = fcmp ugt float %32, 0.000000e+00
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store float 0.000000e+00, ptr %5, align 4, !tbaa !35
  br label %40

35:                                               ; preds = %29
  %36 = fdiv float %18, %32
  %37 = tail call float @sqrtf(float noundef %36) #17
  store float %37, ptr %5, align 4, !tbaa !35
  %38 = load float, ptr %4, align 4, !tbaa !35
  %39 = fdiv float %38, %37
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi float [ %39, %35 ], [ 1.000000e+10, %34 ]
  store float %41, ptr %7, align 4, !tbaa !35
  br label %42

42:                                               ; preds = %40, %10
  %43 = phi float [ %16, %40 ], [ %14, %10 ]
  %44 = tail call float @atan2f(float noundef %1, float noundef %43) #17
  %45 = fadd float %44, 0x400921FB60000000
  %46 = fmul float %45, 5.000000e-01
  store float %46, ptr %6, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_ewa_filter(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr noundef %8, ptr nocapture noundef %9) local_unnamed_addr #8 {
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca [4 x float], align 16
  %20 = insertelement <2 x i32> poison, i32 %0, i64 0
  %21 = insertelement <2 x i32> %20, i32 %1, i64 1
  %22 = sitofp <2 x i32> %21 to <2 x float>
  %23 = extractelement <2 x float> %22, i64 0
  %24 = tail call float @sqrtf(float noundef %23) #17
  %25 = extractelement <2 x float> %22, i64 1
  %26 = fdiv float %25, %24
  %27 = load float, ptr %5, align 4, !tbaa !35
  %28 = load float, ptr %6, align 4, !tbaa !35
  %29 = getelementptr inbounds float, ptr %5, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !35
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  %33 = insertelement <2 x float> poison, float %26, i64 0
  %34 = insertelement <2 x float> %33, float %24, i64 1
  %35 = insertelement <2 x float> poison, float %28, i64 0
  %36 = insertelement <2 x float> %35, float %27, i64 1
  %37 = fmul <2 x float> %34, %36
  %38 = insertelement <2 x float> poison, float %32, i64 0
  %39 = insertelement <2 x float> %38, float %30, i64 1
  %40 = fmul <2 x float> %34, %39
  %41 = fmul <2 x float> %40, %40
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %37, <2 x float> %37, <2 x float> %41)
  %43 = extractelement <2 x float> %42, i64 0
  store float %43, ptr %11, align 4, !tbaa !35
  %44 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %45 = fmul <2 x float> %44, %40
  %46 = extractelement <2 x float> %45, i64 0
  %47 = extractelement <2 x float> %37, i64 0
  %48 = extractelement <2 x float> %37, i64 1
  %49 = tail call float @llvm.fmuladd.f32(float %48, float %47, float %46)
  %50 = fmul float %49, -2.000000e+00
  store float %50, ptr %12, align 4, !tbaa !35
  %51 = extractelement <2 x float> %42, i64 1
  store float %51, ptr %13, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  %52 = fmul float %50, %50
  %53 = fmul float %52, -2.500000e-01
  %54 = tail call float @llvm.fmuladd.f32(float %43, float %51, float %53)
  store float %54, ptr %14, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #16
  %55 = icmp eq i8 %2, 0
  %56 = select i1 %55, float 7.656250e-01, float 1.562500e+00
  %57 = fdiv float %56, %23
  call void @BLI_ewa_imp2radangle(float noundef %43, float noundef %50, float noundef %51, float noundef %54, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #15
  %58 = load float, ptr %16, align 4, !tbaa !35
  %59 = fmul float %58, %58
  %60 = fcmp olt float %59, %57
  br i1 %60, label %61, label %77

61:                                               ; preds = %10
  %62 = load float, ptr %15, align 4, !tbaa !35
  %63 = fmul float %62, %62
  %64 = fcmp olt float %63, %57
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = fmul float %57, %57
  %67 = insertelement <2 x float> poison, float %57, i64 0
  %68 = shufflevector <2 x float> %67, <2 x float> poison, <2 x i32> zeroinitializer
  br label %77

69:                                               ; preds = %61
  %70 = load float, ptr %17, align 4, !tbaa !35
  call fastcc void @radangle2imp(float noundef %63, float noundef %57, float noundef %70, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14) #15
  %71 = load float, ptr %13, align 4, !tbaa !35
  %72 = load float, ptr %11, align 4, !tbaa !35
  %73 = load float, ptr %14, align 4, !tbaa !35
  %74 = load float, ptr %12, align 4, !tbaa !35
  %75 = insertelement <2 x float> poison, float %72, i64 0
  %76 = insertelement <2 x float> %75, float %71, i64 1
  br label %77

77:                                               ; preds = %65, %69, %10
  %78 = phi float [ 0.000000e+00, %65 ], [ %74, %69 ], [ %50, %10 ]
  %79 = phi float [ %66, %65 ], [ %73, %69 ], [ %54, %10 ]
  %80 = phi <2 x float> [ %68, %65 ], [ %76, %69 ], [ %42, %10 ]
  %81 = extractelement <2 x float> %80, i64 1
  %82 = tail call float @sqrtf(float noundef %81) #17
  %83 = extractelement <2 x float> %80, i64 0
  %84 = tail call float @sqrtf(float noundef %83) #17
  %85 = fmul float %79, %23
  %86 = fdiv float 2.560000e+02, %85
  %87 = fmul float %83, %86
  %88 = fmul float %78, %86
  %89 = fmul float %81, %86
  %90 = insertelement <2 x float> poison, float %24, i64 0
  %91 = shufflevector <2 x float> %90, <2 x float> poison, <2 x i32> zeroinitializer
  %92 = insertelement <2 x float> poison, float %82, i64 0
  %93 = insertelement <2 x float> %92, float %84, i64 1
  %94 = fmul <2 x float> %91, %93
  %95 = load <2 x float>, ptr %4, align 4, !tbaa !35
  %96 = fmul <2 x float> %95, %22
  %97 = fsub <2 x float> %96, %94
  %98 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %97)
  %99 = fptosi <2 x float> %98 to <2 x i32>
  %100 = sitofp <2 x i32> %99 to <2 x float>
  %101 = fsub <2 x float> %96, %100
  %102 = fcmp ogt <2 x float> %101, <float 2.550000e+02, float 2.550000e+02>
  %103 = fptosi <2 x float> %96 to <2 x i32>
  %104 = add nsw <2 x i32> %103, <i32 -255, i32 -255>
  %105 = extractelement <2 x i32> %103, i64 0
  %106 = add nsw i32 %105, 255
  %107 = select <2 x i1> %102, <2 x i32> %104, <2 x i32> %99
  %108 = fadd <2 x float> %94, %96
  %109 = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %108)
  %110 = fptosi <2 x float> %109 to <2 x i32>
  %111 = sitofp <2 x i32> %110 to <2 x float>
  %112 = fsub <2 x float> %111, %96
  %113 = fcmp ogt <2 x float> %112, <float 2.550000e+02, float 2.550000e+02>
  %114 = extractelement <2 x i1> %113, i64 0
  %115 = extractelement <2 x i32> %110, i64 0
  %116 = select i1 %114, i32 %106, i32 %115
  %117 = extractelement <2 x i32> %103, i64 1
  %118 = add nsw i32 %117, 255
  %119 = extractelement <2 x i1> %113, i64 1
  %120 = extractelement <2 x i32> %110, i64 1
  %121 = select i1 %119, i32 %118, i32 %120
  %122 = icmp slt i32 %116, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %77
  %124 = icmp slt <2 x i32> %107, %21
  %125 = icmp sgt i32 %121, -1
  %126 = extractelement <2 x i1> %124, i64 0
  %127 = select i1 %126, i1 %125, i1 false
  %128 = extractelement <2 x i1> %124, i64 1
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %131, label %130

130:                                              ; preds = %123, %77
  tail call fastcc void @zero_v4(ptr noundef %9) #15
  br label %208

131:                                              ; preds = %123
  %132 = extractelement <2 x float> %96, i64 0
  %133 = fadd float %132, -5.000000e-01
  %134 = extractelement <2 x float> %96, i64 1
  %135 = fadd float %134, -5.000000e-01
  %136 = fmul float %87, 2.000000e+00
  %137 = extractelement <2 x i32> %107, i64 0
  %138 = sitofp i32 %137 to float
  %139 = fsub float %138, %133
  %140 = tail call float @llvm.fmuladd.f32(float %139, float 2.000000e+00, float 1.000000e+00)
  %141 = fmul float %87, %139
  %142 = insertelement <2 x float> poison, float %139, i64 0
  %143 = insertelement <2 x float> %142, float %87, i64 1
  %144 = insertelement <2 x float> poison, float %141, i64 0
  %145 = insertelement <2 x float> %144, float %140, i64 1
  %146 = fmul <2 x float> %143, %145
  %147 = fmul float %88, %139
  tail call fastcc void @zero_v4(ptr noundef %9) #15
  %148 = extractelement <2 x i32> %107, i64 1
  %149 = icmp sgt i32 %148, %121
  br i1 %149, label %197, label %150

150:                                              ; preds = %131
  %151 = icmp sgt i32 %137, %116
  %152 = icmp eq i8 %3, 0
  %153 = getelementptr inbounds [4 x float], ptr %19, i64 0, i64 3
  %154 = getelementptr inbounds float, ptr %9, i64 3
  br label %155

155:                                              ; preds = %150, %193
  %156 = phi i32 [ %148, %150 ], [ %195, %193 ]
  %157 = phi float [ 0.000000e+00, %150 ], [ %194, %193 ]
  br i1 %151, label %193, label %158

158:                                              ; preds = %155
  %159 = sitofp i32 %156 to float
  %160 = fsub float %159, %135
  %161 = call float @llvm.fmuladd.f32(float %89, float %160, float %147)
  %162 = insertelement <2 x float> poison, float %161, i64 0
  %163 = insertelement <2 x float> %162, float %88, i64 1
  %164 = insertelement <2 x float> poison, float %160, i64 0
  %165 = shufflevector <2 x float> %164, <2 x float> poison, <2 x i32> zeroinitializer
  %166 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %163, <2 x float> %165, <2 x float> %146)
  br label %167

167:                                              ; preds = %158, %186
  %168 = phi i32 [ %191, %186 ], [ %137, %158 ]
  %169 = phi float [ %187, %186 ], [ %157, %158 ]
  %170 = phi <2 x float> [ %190, %186 ], [ %166, %158 ]
  %171 = extractelement <2 x float> %170, i64 0
  %172 = fcmp olt float %171, 2.560000e+02
  br i1 %172, label %173, label %186

173:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #16
  %174 = fcmp ole float %171, 0.000000e+00
  %175 = select i1 %174, float 0.000000e+00, float %171
  %176 = fptoui float %175 to i32
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds [256 x float], ptr @EWA_WTS, i64 0, i64 %177
  %179 = load float, ptr %178, align 4, !tbaa !35
  call void %7(ptr noundef %8, i32 noundef %168, i32 noundef %156, ptr noundef nonnull %19) #17
  call fastcc void @madd_v3_v3fl(ptr noundef %9, ptr noundef nonnull %19, float noundef %179) #15
  %180 = load float, ptr %153, align 4
  %181 = fmul float %179, %180
  %182 = select i1 %152, float 0.000000e+00, float %181
  %183 = load float, ptr %154, align 4, !tbaa !35
  %184 = fadd float %183, %182
  store float %184, ptr %154, align 4, !tbaa !35
  %185 = fadd float %169, %179
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #16
  br label %186

186:                                              ; preds = %173, %167
  %187 = phi float [ %185, %173 ], [ %169, %167 ]
  %188 = insertelement <2 x float> %170, float %136, i64 1
  %189 = shufflevector <2 x float> %170, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %190 = fadd <2 x float> %188, %189
  %191 = add i32 %168, 1
  %192 = icmp eq i32 %168, %116
  br i1 %192, label %193, label %167, !llvm.loop !44

193:                                              ; preds = %186, %155
  %194 = phi float [ %157, %155 ], [ %187, %186 ]
  %195 = add i32 %156, 1
  %196 = icmp eq i32 %156, %121
  br i1 %196, label %197, label %155, !llvm.loop !45

197:                                              ; preds = %193, %131
  %198 = phi float [ 0.000000e+00, %131 ], [ %194, %193 ]
  %199 = fdiv float 1.000000e+00, %198
  call fastcc void @mul_v3_fl(ptr noundef %9, float noundef %199) #15
  %200 = icmp eq i8 %3, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds float, ptr %9, i64 3
  %203 = load float, ptr %202, align 4, !tbaa !35
  %204 = fmul float %199, %203
  br label %205

205:                                              ; preds = %197, %201
  %206 = phi float [ %204, %201 ], [ 1.000000e+00, %197 ]
  %207 = getelementptr inbounds float, ptr %9, i64 3
  store float %206, ptr %207, align 4, !tbaa !35
  br label %208

208:                                              ; preds = %205, %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc void @radangle2imp(float noundef %0, float noundef %1, float noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #9 !PGOFuncName !46 {
  %8 = tail call float @cosf(float noundef %2) #17
  %9 = fneg float %8
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %8, float 1.000000e+00)
  %11 = fmul float %8, %8
  %12 = fmul float %11, %1
  %13 = tail call float @llvm.fmuladd.f32(float %0, float %10, float %12)
  store float %13, ptr %3, align 4, !tbaa !35
  %14 = fsub float %1, %0
  %15 = fmul float %2, 2.000000e+00
  %16 = tail call float @sinf(float noundef %15) #17
  %17 = fmul float %14, %16
  store float %17, ptr %4, align 4, !tbaa !35
  %18 = fmul float %10, %1
  %19 = tail call float @llvm.fmuladd.f32(float %0, float %11, float %18)
  store float %19, ptr %5, align 4, !tbaa !35
  %20 = fmul float %0, %1
  store float %20, ptr %6, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v4(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !47 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #11 !PGOFuncName !48 {
  %4 = load float, ptr %1, align 4, !tbaa !35
  %5 = load float, ptr %0, align 4, !tbaa !35
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !35
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !35
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !35
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !35
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !49 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !35
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @P(float noundef %0) unnamed_addr #12 !PGOFuncName !50 {
  %2 = fadd float %0, 2.000000e+00
  %3 = tail call fastcc float @max_ff(float noundef %2) #15
  %4 = fadd float %0, 1.000000e+00
  %5 = tail call fastcc float @max_ff(float noundef %4) #15
  %6 = tail call fastcc float @max_ff(float noundef %0) #15
  %7 = fadd float %0, -1.000000e+00
  %8 = tail call fastcc float @max_ff(float noundef %7) #15
  %9 = fmul float %3, %3
  %10 = fmul float %5, -4.000000e+00
  %11 = fmul float %5, %10
  %12 = fmul float %5, %11
  %13 = tail call float @llvm.fmuladd.f32(float %9, float %3, float %12)
  %14 = fmul float %6, 6.000000e+00
  %15 = fmul float %6, %14
  %16 = tail call float @llvm.fmuladd.f32(float %15, float %6, float %13)
  %17 = fmul float %8, -4.000000e+00
  %18 = fmul float %8, %17
  %19 = tail call float @llvm.fmuladd.f32(float %18, float %8, float %16)
  %20 = fmul float %19, 0x3FC5555560000000
  ret float %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vector_from_float(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #11 !PGOFuncName !51 {
  switch i32 %2, label %7 [
    i32 1, label %4
    i32 3, label %6
  ]

4:                                                ; preds = %3
  %5 = load float, ptr %0, align 4, !tbaa !35
  store float %5, ptr %1, align 4, !tbaa !35
  br label %8

6:                                                ; preds = %3
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %0) #15
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @copy_v4_v4(ptr noundef %1, ptr noundef %0) #15
  br label %8

8:                                                ; preds = %6, %7, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vector_from_byte(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #11 !PGOFuncName !52 {
  %4 = load i8, ptr %0, align 1, !tbaa !42
  %5 = uitofp i8 %4 to float
  store float %5, ptr %1, align 4, !tbaa !35
  switch i32 %2, label %6 [
    i32 1, label %22
    i32 3, label %11
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !42
  %9 = uitofp i8 %8 to float
  %10 = getelementptr inbounds float, ptr %1, i64 1
  store float %9, ptr %10, align 4, !tbaa !35
  br label %11

11:                                               ; preds = %3, %6
  %12 = phi i64 [ 2, %6 ], [ 1, %3 ]
  %13 = phi i64 [ 3, %6 ], [ 2, %3 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %12
  %15 = load i8, ptr %14, align 1, !tbaa !42
  %16 = uitofp i8 %15 to float
  %17 = getelementptr inbounds float, ptr %1, i64 %12
  store float %16, ptr %17, align 4, !tbaa !35
  %18 = getelementptr inbounds i8, ptr %0, i64 %13
  %19 = load i8, ptr %18, align 1, !tbaa !42
  %20 = uitofp i8 %19 to float
  %21 = getelementptr inbounds float, ptr %1, i64 %13
  store float %20, ptr %21, align 4, !tbaa !35
  br label %22

22:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !53 {
  %3 = load float, ptr %1, align 4, !tbaa !35
  store float %3, ptr %0, align 4, !tbaa !35
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !35
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !54 {
  %3 = load float, ptr %1, align 4, !tbaa !35
  store float %3, ptr %0, align 4, !tbaa !35
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !35
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !35
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !35
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !35
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !35
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #12 !PGOFuncName !55 {
  %2 = fcmp ogt float %0, 0.000000e+00
  %3 = select i1 %2, float %0, float 0.000000e+00
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #14

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }

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
!34 = !{!"math_interp.c:bicubic_interpolation"}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!37, !37, i64 0}
!43 = !{!"math_interp.c:bilinear_interpolation"}
!44 = distinct !{!44, !40}
!45 = distinct !{!45, !40}
!46 = !{!"math_interp.c:radangle2imp"}
!47 = !{!"math_interp.c:zero_v4"}
!48 = !{!"math_interp.c:madd_v3_v3fl"}
!49 = !{!"math_interp.c:mul_v3_fl"}
!50 = !{!"math_interp.c:P"}
!51 = !{!"math_interp.c:vector_from_float"}
!52 = !{!"math_interp.c:vector_from_byte"}
!53 = !{!"math_interp.c:copy_v3_v3"}
!54 = !{!"math_interp.c:copy_v4_v4"}
!55 = !{!"math_interp.c:max_ff"}
