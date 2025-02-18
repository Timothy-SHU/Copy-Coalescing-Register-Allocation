; ModuleID = 'blender/source/blender/blenlib/intern/math_interp.c'
source_filename = "blender/source/blender/blenlib/intern/math_interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@EWA_WTS = dso_local local_unnamed_addr constant [256 x float] [float 1.000000e+00, float 0x3FEFB5FC40000000, float 0x3FEF6C8B40000000, float 0x3FEF23AD20000000, float 0x3FEEDB61C0000000, float 0x3FEE93A720000000, float 0x3FEE4C7B00000000, float 0x3FEE05DD80000000, float 0x3FEDBFCEC0000000, float 0x3FED7A4A40000000, float 0x3FED355260000000, float 0x3FECF0E2C0000000, float 0x3FECACFD80000000, float 0x3FEC699EA0000000, float 0x3FEC26C7E0000000, float 0x3FEBE47560000000, float 0x3FEBA2A700000000, float 0x3FEB615EC0000000, float 0x3FEB209680000000, float 0x3FEAE05260000000, float 0x3FEAA08C00000000, float 0x3FEA6147A0000000, float 0x3FEA228140000000, float 0x3FE9E43680000000, float 0x3FE9A66980000000, float 0x3FE9691860000000, float 0x3FE92C42E0000000, float 0x3FE8EFE500000000, float 0x3FE8B402E0000000, float 0x3FE8789620000000, float 0x3FE83DA0E0000000, float 0x3FE8032120000000, float 0x3FE7C916C0000000, float 0x3FE78F7FC0000000, float 0x3FE7565C20000000, float 0x3FE71DABE0000000, float 0x3FE6E56AC0000000, float 0x3FE6AD9D00000000, float 0x3FE6763C40000000, float 0x3FE63F4CC0000000, float 0x3FE608C820000000, float 0x3FE5D2B2C0000000, float 0x3FE59D0A60000000, float 0x3FE567CAE0000000, float 0x3FE532F660000000, float 0x3FE4FE8CC0000000, float 0x3FE4CA8C20000000, float 0x3FE496F220000000, float 0x3FE463BEE0000000, float 0x3FE430F4A0000000, float 0x3FE3FE8EE0000000, float 0x3FE3CC8BC0000000, float 0x3FE39AEF60000000, float 0x3FE369B5A0000000, float 0x3FE338DC60000000, float 0x3FE30867A0000000, float 0x3FE2D85160000000, float 0x3FE2A89DA0000000, float 0x3FE2794860000000, float 0x3FE24A5160000000, float 0x3FE21BB6A0000000, float 0x3FE1ED7C60000000, float 0x3FE1BF9C60000000, float 0x3FE19218A0000000, float 0x3FE164F120000000, float 0x3FE13821A0000000, float 0x3FE10BAE80000000, float 0x3FE0DF9160000000, float 0x3FE0B3CE60000000, float 0x3FE0886380000000, float 0x3FE05D4C80000000, float 0x3FE0328D80000000, float 0x3FE00824A0000000, float 0x3FDFBC1F00000000, float 0x3FDF68A0E0000000, float 0x3FDF15C640000000, float 0x3FDEC39360000000, float 0x3FDE720420000000, float 0x3FDE211440000000, float 0x3FDDD0CC40000000, float 0x3FDD811F40000000, float 0x3FDD321600000000, float 0x3FDCE3A7E0000000, float 0x3FDC95D920000000, float 0x3FDC48A580000000, float 0x3FDBFC0900000000, float 0x3FDBB007A0000000, float 0x3FDB64A160000000, float 0x3FDB19CE00000000, float 0x3FDACF91A0000000, float 0x3FDA85EC40000000, float 0x3FDA3CD580000000, float 0x3FD9F455A0000000, float 0x3FD9AC6480000000, float 0x3FD96501E0000000, float 0x3FD91E2DE0000000, float 0x3FD8D7E880000000, float 0x3FD89231C0000000, float 0x3FD84D0560000000, float 0x3FD8085F40000000, float 0x3FD7C447C0000000, float 0x3FD780B680000000, float 0x3FD73DAB60000000, float 0x3FD6FB2680000000, float 0x3FD6B927E0000000, float 0x3FD677AF60000000, float 0x3FD636B4C0000000, float 0x3FD5F64060000000, float 0x3FD5B649E0000000, float 0x3FD576D540000000, float 0x3FD537DEA0000000, float 0x3FD4F965C0000000, float 0x3FD4BB6AA0000000, float 0x3FD47DED60000000, float 0x3FD440E5A0000000, float 0x3FD4045BA0000000, float 0x3FD3C84B60000000, float 0x3FD38CB080000000, float 0x3FD3518F40000000, float 0x3FD316E380000000, float 0x3FD2DCAD20000000, float 0x3FD2A2EC20000000, float 0x3FD2699C80000000, float 0x3FD230C240000000, float 0x3FD1F85520000000, float 0x3FD1C05D60000000, float 0x3FD188D2A0000000, float 0x3FD151B940000000, float 0x3FD11B0CC0000000, float 0x3FD0E4CD80000000, float 0x3FD0AEFB20000000, float 0x3FD07995E0000000, float 0x3FD0449980000000, float 0x3FD0100A40000000, float 0x3FCFB7BF20000000, float 0x3FCF503B80000000, float 0x3FCEE989A0000000, float 0x3FCE83A960000000, float 0x3FCE1E92A0000000, float 0x3FCDBA3CA0000000, float 0x3FCD56B880000000, float 0x3FCCF3FDA0000000, float 0x3FCC9203A0000000, float 0x3FCC30CAA0000000, float 0x3FCBD05B00000000, float 0x3FCB70A3E0000000, float 0x3FCB11B600000000, float 0x3FCAB380C0000000, float 0x3FCA560420000000, float 0x3FC9F94860000000, float 0x3FC99D4520000000, float 0x3FC941FA80000000, float 0x3FC8E76860000000, float 0x3FC88D8660000000, float 0x3FC83454A0000000, float 0x3FC7DBDB60000000, float 0x3FC7841240000000, float 0x3FC72CF960000000, float 0x3FC6D690A0000000, float 0x3FC680CFA0000000, float 0x3FC62BBEC0000000, float 0x3FC5D755C0000000, float 0x3FC5839480000000, float 0x3FC5307B00000000, float 0x3FC4DE0940000000, float 0x3FC48C3F40000000, float 0x3FC43B14A0000000, float 0x3FC3EA8980000000, float 0x3FC39AA600000000, float 0x3FC34B6200000000, float 0x3FC2FCB500000000, float 0x3FC2AEA740000000, float 0x3FC2613900000000, float 0x3FC2146A20000000, float 0x3FC1C829C0000000, float 0x3FC17C88E0000000, float 0x3FC1317F00000000, float 0x3FC0E70C20000000, float 0x3FC09D3020000000, float 0x3FC053E2E0000000, float 0x3FC00B2C80000000, float 0x3FBF8609A0000000, float 0x3FBEF6D760000000, float 0x3FBE68C260000000, float 0x3FBDDBCAA0000000, float 0x3FBD4FF000000000, float 0x3FBCC532A0000000, float 0x3FBC3B81C0000000, float 0x3FBBB2EE00000000, float 0x3FBB2B66C0000000, float 0x3FBAA4EBE0000000, float 0x3FBA1F7D80000000, float 0x3FB99B1B80000000, float 0x3FB917BF40000000, float 0x3FB8956C00000000, float 0x3FB8141EA0000000, float 0x3FB793D380000000, float 0x3FB7148920000000, float 0x3FB6963DC0000000, float 0x3FB618EE00000000, float 0x3FB59C9A00000000, float 0x3FB5213CA0000000, float 0x3FB4A6D760000000, float 0x3FB42D6740000000, float 0x3FB3B4E8A0000000, float 0x3FB33D5D60000000, float 0x3FB2C6BEA0000000, float 0x3FB2510E00000000, float 0x3FB1DC4A20000000, float 0x3FB1686DA0000000, float 0x3FB0F57A60000000, float 0x3FB0836D00000000, float 0x3FB0124220000000, float 0x3FAF43F6C0000000, float 0x3FAE6527A0000000, float 0x3FAD8816C0000000, float 0x3FACACC0C0000000, float 0x3FABD32260000000, float 0x3FAAFB3820000000, float 0x3FAA24FB60000000, float 0x3FA95068C0000000, float 0x3FA87D83C0000000, float 0x3FA7AC4220000000, float 0x3FA6DCA3E0000000, float 0x3FA60EA5C0000000, float 0x3FA54240E0000000, float 0x3FA47778E0000000, float 0x3FA3AE4380000000, float 0x3FA2E6A0C0000000, float 0x3FA2208D40000000, float 0x3FA15C05C0000000, float 0x3FA09906C0000000, float 0x3F9FAF20E0000000, float 0x3F9E2F3800000000, float 0x3F9CB24C20000000, float 0x3F9B385D40000000, float 0x3F99C15E00000000, float 0x3F984D4E60000000, float 0x3F96DC27C0000000, float 0x3F956DE340000000, float 0x3F940280E0000000, float 0x3F9299ECA0000000, float 0x3F91342D20000000, float 0x3F8FA27780000000, float 0x3F8CE21600000000, float 0x3F8A2735C0000000, float 0x3F8771D6E0000000, float 0x3F84C1DE60000000, float 0x3F82173D80000000, float 0x3F7EE3EE20000000, float 0x3F79A3F860000000, float 0x3F746E7F00000000, float 0x3F6E86E940000000, float 0x3F64457C80000000, float 0x3F543124E0000000, float 0.000000e+00], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bicubic_interpolation_fl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @bicubic_interpolation(ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @bicubic_interpolation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #1 {
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  %11 = fpext float %7 to double
  %12 = tail call double @llvm.ceil.f64(double %11)
  %13 = fcmp olt double %12, 0.000000e+00
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = tail call double @llvm.floor.f64(double %11)
  %16 = add nsw i32 %4, -1
  %17 = sitofp i32 %16 to double
  %18 = fcmp ogt double %15, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = fpext float %8 to double
  %21 = tail call double @llvm.ceil.f64(double %20)
  %22 = fcmp olt double %21, 0.000000e+00
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = tail call double @llvm.floor.f64(double %20)
  %25 = add nsw i32 %5, -1
  %26 = sitofp i32 %25 to double
  %27 = fcmp ogt double %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23, %19, %14, %9
  %29 = icmp eq ptr %3, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp eq ptr %2, null
  br i1 %32, label %293, label %33

33:                                               ; preds = %31
  store i32 0, ptr %2, align 1
  br label %293

34:                                               ; preds = %23
  %35 = fptosi double %15 to i32
  %36 = fptosi double %24 to i32
  %37 = sitofp i32 %35 to float
  %38 = sitofp i32 %36 to float
  %39 = fsub float %8, %38
  %40 = fadd float %39, 1.000000e+00
  %41 = fadd float %40, 2.000000e+00
  %42 = fcmp ogt float %41, 0.000000e+00
  %43 = select i1 %42, float %41, float 0.000000e+00
  %44 = fadd float %40, 1.000000e+00
  %45 = fcmp ogt float %44, 0.000000e+00
  %46 = select i1 %45, float %44, float 0.000000e+00
  %47 = fcmp ogt float %40, 0.000000e+00
  %48 = select i1 %47, float %40, float 0.000000e+00
  %49 = fadd float %40, -1.000000e+00
  %50 = fcmp ogt float %49, 0.000000e+00
  %51 = select i1 %50, float %49, float 0.000000e+00
  %52 = fmul float %43, %43
  %53 = fmul float %46, -4.000000e+00
  %54 = fmul float %46, %53
  %55 = fmul float %46, %54
  %56 = tail call float @llvm.fmuladd.f32(float %52, float %43, float %55)
  %57 = fmul float %48, 6.000000e+00
  %58 = fmul float %48, %57
  %59 = tail call float @llvm.fmuladd.f32(float %58, float %48, float %56)
  %60 = fmul float %51, -4.000000e+00
  %61 = fmul float %51, %60
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %51, float %59)
  %63 = fmul float %62, 0x3FC5555560000000
  store float %63, ptr %10, align 16, !tbaa !34
  %64 = fadd float %39, 2.000000e+00
  %65 = fcmp ogt float %64, 0.000000e+00
  %66 = select i1 %65, float %64, float 0.000000e+00
  %67 = fcmp ogt float %39, 0.000000e+00
  %68 = select i1 %67, float %39, float 0.000000e+00
  %69 = fadd float %39, -1.000000e+00
  %70 = fcmp ogt float %69, 0.000000e+00
  %71 = select i1 %70, float %69, float 0.000000e+00
  %72 = fmul float %66, %66
  %73 = fmul float %48, -4.000000e+00
  %74 = fmul float %48, %73
  %75 = fmul float %48, %74
  %76 = tail call float @llvm.fmuladd.f32(float %72, float %66, float %75)
  %77 = fmul float %68, 6.000000e+00
  %78 = fmul float %68, %77
  %79 = tail call float @llvm.fmuladd.f32(float %78, float %68, float %76)
  %80 = fmul float %71, -4.000000e+00
  %81 = fmul float %71, %80
  %82 = tail call float @llvm.fmuladd.f32(float %81, float %71, float %79)
  %83 = fmul float %82, 0x3FC5555560000000
  %84 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = fadd float %69, 2.000000e+00
  %86 = fcmp ogt float %85, 0.000000e+00
  %87 = select i1 %86, float %85, float 0.000000e+00
  %88 = fadd float %69, 1.000000e+00
  %89 = fcmp ogt float %88, 0.000000e+00
  %90 = select i1 %89, float %88, float 0.000000e+00
  %91 = fadd float %69, -1.000000e+00
  %92 = fcmp ogt float %91, 0.000000e+00
  %93 = select i1 %92, float %91, float 0.000000e+00
  %94 = fmul float %87, %87
  %95 = fmul float %90, -4.000000e+00
  %96 = fmul float %90, %95
  %97 = fmul float %90, %96
  %98 = tail call float @llvm.fmuladd.f32(float %94, float %87, float %97)
  %99 = fmul float %71, 6.000000e+00
  %100 = fmul float %71, %99
  %101 = tail call float @llvm.fmuladd.f32(float %100, float %71, float %98)
  %102 = fmul float %93, -4.000000e+00
  %103 = fmul float %93, %102
  %104 = tail call float @llvm.fmuladd.f32(float %103, float %93, float %101)
  %105 = fmul float %104, 0x3FC5555560000000
  %106 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  store float %105, ptr %106, align 8, !tbaa !34
  %107 = fadd float %39, -2.000000e+00
  %108 = fadd float %107, 2.000000e+00
  %109 = fcmp ogt float %108, 0.000000e+00
  %110 = select i1 %109, float %108, float 0.000000e+00
  %111 = fadd float %107, 1.000000e+00
  %112 = fcmp ogt float %111, 0.000000e+00
  %113 = select i1 %112, float %111, float 0.000000e+00
  %114 = fcmp ogt float %107, 0.000000e+00
  %115 = select i1 %114, float %107, float 0.000000e+00
  %116 = fadd float %107, -1.000000e+00
  %117 = fcmp ogt float %116, 0.000000e+00
  %118 = select i1 %117, float %116, float 0.000000e+00
  %119 = fmul float %110, %110
  %120 = fmul float %113, -4.000000e+00
  %121 = fmul float %113, %120
  %122 = fmul float %113, %121
  %123 = tail call float @llvm.fmuladd.f32(float %119, float %110, float %122)
  %124 = fmul float %115, 6.000000e+00
  %125 = fmul float %115, %124
  %126 = tail call float @llvm.fmuladd.f32(float %125, float %115, float %123)
  %127 = fmul float %118, -4.000000e+00
  %128 = fmul float %118, %127
  %129 = tail call float @llvm.fmuladd.f32(float %128, float %118, float %126)
  %130 = fmul float %129, 0x3FC5555560000000
  %131 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  store float %130, ptr %131, align 4, !tbaa !34
  %132 = fsub float %37, %7
  %133 = icmp eq ptr %3, null
  %134 = mul i32 %6, %4
  %135 = mul i32 %6, %4
  %136 = sext i32 %36 to i64
  %137 = sext i32 %5 to i64
  br label %138

138:                                              ; preds = %34, %260
  %139 = phi i32 [ -1, %34 ], [ %261, %260 ]
  %140 = phi float [ undef, %34 ], [ %245, %260 ]
  %141 = phi float [ undef, %34 ], [ %244, %260 ]
  %142 = phi float [ undef, %34 ], [ %243, %260 ]
  %143 = phi float [ 0.000000e+00, %34 ], [ %247, %260 ]
  %144 = phi float [ 0.000000e+00, %34 ], [ %258, %260 ]
  %145 = phi float [ 0.000000e+00, %34 ], [ %257, %260 ]
  %146 = phi float [ 0.000000e+00, %34 ], [ %256, %260 ]
  %147 = add nsw i32 %139, %35
  %148 = icmp slt i32 %147, 0
  %149 = icmp slt i32 %147, %4
  %150 = select i1 %149, i32 %147, i32 %16
  %151 = select i1 %148, i32 0, i32 %150
  %152 = sitofp i32 %139 to float
  %153 = fadd float %132, %152
  %154 = fadd float %153, 2.000000e+00
  %155 = fcmp ogt float %154, 0.000000e+00
  %156 = select i1 %155, float %154, float 0.000000e+00
  %157 = fadd float %153, 1.000000e+00
  %158 = fcmp ogt float %157, 0.000000e+00
  %159 = select i1 %158, float %157, float 0.000000e+00
  %160 = fcmp ogt float %153, 0.000000e+00
  %161 = select i1 %160, float %153, float 0.000000e+00
  %162 = fadd float %153, -1.000000e+00
  %163 = fcmp ogt float %162, 0.000000e+00
  %164 = select i1 %163, float %162, float 0.000000e+00
  %165 = fmul float %156, %156
  %166 = fmul float %159, -4.000000e+00
  %167 = fmul float %159, %166
  %168 = fmul float %159, %167
  %169 = tail call float @llvm.fmuladd.f32(float %165, float %156, float %168)
  %170 = fmul float %161, 6.000000e+00
  %171 = fmul float %161, %170
  %172 = tail call float @llvm.fmuladd.f32(float %171, float %161, float %169)
  %173 = fmul float %164, -4.000000e+00
  %174 = fmul float %164, %173
  %175 = tail call float @llvm.fmuladd.f32(float %174, float %164, float %172)
  %176 = fmul float %175, 0x3FC5555560000000
  %177 = mul nsw i32 %151, %6
  %178 = sext i32 %177 to i64
  %179 = getelementptr float, ptr %1, i64 %178
  %180 = mul nsw i32 %151, %6
  %181 = sext i32 %180 to i64
  %182 = getelementptr i8, ptr %0, i64 %181
  br label %183

183:                                              ; preds = %138, %255
  %184 = phi i64 [ -1, %138 ], [ %198, %255 ]
  %185 = phi float [ %140, %138 ], [ %245, %255 ]
  %186 = phi float [ %141, %138 ], [ %244, %255 ]
  %187 = phi float [ %142, %138 ], [ %243, %255 ]
  %188 = phi float [ %143, %138 ], [ %247, %255 ]
  %189 = phi float [ %144, %138 ], [ %258, %255 ]
  %190 = phi float [ %145, %138 ], [ %257, %255 ]
  %191 = phi float [ %146, %138 ], [ %256, %255 ]
  %192 = add nsw i64 %184, %136
  %193 = icmp slt i64 %192, 0
  %194 = icmp slt i64 %192, %137
  %195 = trunc i64 %192 to i32
  %196 = select i1 %194, i32 %195, i32 %25
  %197 = select i1 %193, i32 0, i32 %196
  %198 = add nsw i64 %184, 1
  %199 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 %198
  %200 = load float, ptr %199, align 4, !tbaa !34
  %201 = fmul float %176, %200
  br i1 %133, label %219, label %202

202:                                              ; preds = %183
  %203 = mul i32 %134, %197
  %204 = sext i32 %203 to i64
  %205 = getelementptr float, ptr %179, i64 %204
  %206 = load float, ptr %205, align 4, !tbaa !34
  switch i32 %6, label %212 [
    i32 1, label %242
    i32 3, label %207
  ]

207:                                              ; preds = %202
  %208 = getelementptr inbounds float, ptr %205, i64 1
  %209 = load float, ptr %208, align 4, !tbaa !34
  %210 = getelementptr inbounds float, ptr %205, i64 2
  %211 = load float, ptr %210, align 4, !tbaa !34
  br label %242

212:                                              ; preds = %202
  %213 = getelementptr inbounds float, ptr %205, i64 1
  %214 = load float, ptr %213, align 4, !tbaa !34
  %215 = getelementptr inbounds float, ptr %205, i64 2
  %216 = load float, ptr %215, align 4, !tbaa !34
  %217 = getelementptr inbounds float, ptr %205, i64 3
  %218 = load float, ptr %217, align 4, !tbaa !34
  br label %242

219:                                              ; preds = %183
  %220 = mul i32 %135, %197
  %221 = sext i32 %220 to i64
  %222 = getelementptr i8, ptr %182, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !38
  %224 = uitofp i8 %223 to float
  switch i32 %6, label %232 [
    i32 1, label %242
    i32 3, label %225
  ]

225:                                              ; preds = %219
  %226 = getelementptr inbounds i8, ptr %222, i64 1
  %227 = load i8, ptr %226, align 1, !tbaa !38
  %228 = uitofp i8 %227 to float
  %229 = getelementptr inbounds i8, ptr %222, i64 2
  %230 = load i8, ptr %229, align 1, !tbaa !38
  %231 = uitofp i8 %230 to float
  br label %242

232:                                              ; preds = %219
  %233 = getelementptr inbounds i8, ptr %222, i64 1
  %234 = load i8, ptr %233, align 1, !tbaa !38
  %235 = uitofp i8 %234 to float
  %236 = getelementptr inbounds i8, ptr %222, i64 2
  %237 = load i8, ptr %236, align 1, !tbaa !38
  %238 = uitofp i8 %237 to float
  %239 = getelementptr inbounds i8, ptr %222, i64 3
  %240 = load i8, ptr %239, align 1, !tbaa !38
  %241 = uitofp i8 %240 to float
  br label %242

242:                                              ; preds = %219, %202, %232, %225, %212, %207
  %243 = phi float [ %218, %212 ], [ %187, %207 ], [ %241, %232 ], [ %187, %225 ], [ %187, %202 ], [ %187, %219 ]
  %244 = phi float [ %216, %212 ], [ %211, %207 ], [ %238, %232 ], [ %231, %225 ], [ %186, %202 ], [ %186, %219 ]
  %245 = phi float [ %214, %212 ], [ %209, %207 ], [ %235, %232 ], [ %228, %225 ], [ %185, %202 ], [ %185, %219 ]
  %246 = phi float [ %206, %212 ], [ %206, %207 ], [ %224, %232 ], [ %224, %225 ], [ %206, %202 ], [ %224, %219 ]
  %247 = tail call float @llvm.fmuladd.f32(float %246, float %201, float %188)
  switch i32 %6, label %251 [
    i32 1, label %255
    i32 3, label %248
  ]

248:                                              ; preds = %242
  %249 = tail call float @llvm.fmuladd.f32(float %245, float %201, float %189)
  %250 = tail call float @llvm.fmuladd.f32(float %244, float %201, float %190)
  br label %255

251:                                              ; preds = %242
  %252 = tail call float @llvm.fmuladd.f32(float %245, float %201, float %189)
  %253 = tail call float @llvm.fmuladd.f32(float %244, float %201, float %190)
  %254 = tail call float @llvm.fmuladd.f32(float %243, float %201, float %191)
  br label %255

255:                                              ; preds = %242, %248, %251
  %256 = phi float [ %254, %251 ], [ %191, %248 ], [ %191, %242 ]
  %257 = phi float [ %253, %251 ], [ %250, %248 ], [ %190, %242 ]
  %258 = phi float [ %252, %251 ], [ %249, %248 ], [ %189, %242 ]
  %259 = icmp eq i64 %198, 3
  br i1 %259, label %260, label %183, !llvm.loop !39

260:                                              ; preds = %255
  %261 = add nsw i32 %139, 1
  %262 = icmp eq i32 %261, 3
  br i1 %262, label %263, label %138, !llvm.loop !42

263:                                              ; preds = %260
  %264 = icmp eq ptr %3, null
  br i1 %264, label %273, label %265

265:                                              ; preds = %263
  store float %247, ptr %3, align 4, !tbaa !34
  switch i32 %6, label %269 [
    i32 1, label %293
    i32 3, label %266
  ]

266:                                              ; preds = %265
  %267 = getelementptr inbounds float, ptr %3, i64 1
  store float %258, ptr %267, align 4, !tbaa !34
  %268 = getelementptr inbounds float, ptr %3, i64 2
  store float %257, ptr %268, align 4, !tbaa !34
  br label %293

269:                                              ; preds = %265
  %270 = getelementptr inbounds float, ptr %3, i64 1
  store float %258, ptr %270, align 4, !tbaa !34
  %271 = getelementptr inbounds float, ptr %3, i64 2
  store float %257, ptr %271, align 4, !tbaa !34
  %272 = getelementptr inbounds float, ptr %3, i64 3
  store float %256, ptr %272, align 4, !tbaa !34
  br label %293

273:                                              ; preds = %263
  %274 = fadd float %247, 5.000000e-01
  %275 = fptoui float %274 to i8
  store i8 %275, ptr %2, align 1, !tbaa !38
  switch i32 %6, label %283 [
    i32 1, label %293
    i32 3, label %276
  ]

276:                                              ; preds = %273
  %277 = fadd float %258, 5.000000e-01
  %278 = fptoui float %277 to i8
  %279 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %278, ptr %279, align 1, !tbaa !38
  %280 = fadd float %257, 5.000000e-01
  %281 = fptoui float %280 to i8
  %282 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %281, ptr %282, align 1, !tbaa !38
  br label %293

283:                                              ; preds = %273
  %284 = fadd float %258, 5.000000e-01
  %285 = fptoui float %284 to i8
  %286 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %285, ptr %286, align 1, !tbaa !38
  %287 = fadd float %257, 5.000000e-01
  %288 = fptoui float %287 to i8
  %289 = getelementptr inbounds i8, ptr %2, i64 2
  store i8 %288, ptr %289, align 1, !tbaa !38
  %290 = fadd float %256, 5.000000e-01
  %291 = fptoui float %290 to i8
  %292 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 %291, ptr %292, align 1, !tbaa !38
  br label %293

293:                                              ; preds = %273, %265, %266, %269, %276, %283, %31, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bicubic_interpolation_char(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #0 {
  tail call fastcc void @bicubic_interpolation(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bilinear_interpolation_fl(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #2 {
  tail call fastcc void @bilinear_interpolation(ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bilinear_interpolation(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8) unnamed_addr #3 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
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
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
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
  %93 = load float, ptr %45, align 4, !tbaa !34
  %94 = load float, ptr %70, align 4, !tbaa !34
  %95 = fmul float %91, %94
  %96 = tail call float @llvm.fmuladd.f32(float %92, float %93, float %95)
  %97 = load float, ptr %58, align 4, !tbaa !34
  %98 = tail call float @llvm.fmuladd.f32(float %89, float %97, float %96)
  %99 = load float, ptr %82, align 4, !tbaa !34
  %100 = tail call float @llvm.fmuladd.f32(float %87, float %99, float %98)
  store float %100, ptr %3, align 4, !tbaa !34
  switch i32 %6, label %101 [
    i32 1, label %144
    i32 3, label %115
  ]

101:                                              ; preds = %81
  %102 = getelementptr inbounds float, ptr %45, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !34
  %104 = getelementptr inbounds float, ptr %70, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !34
  %106 = fmul float %91, %105
  %107 = tail call float @llvm.fmuladd.f32(float %92, float %103, float %106)
  %108 = getelementptr inbounds float, ptr %58, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !34
  %110 = tail call float @llvm.fmuladd.f32(float %89, float %109, float %107)
  %111 = getelementptr inbounds float, ptr %82, i64 1
  %112 = load float, ptr %111, align 4, !tbaa !34
  %113 = tail call float @llvm.fmuladd.f32(float %87, float %112, float %110)
  %114 = getelementptr inbounds float, ptr %3, i64 1
  store float %113, ptr %114, align 4, !tbaa !34
  br label %115

115:                                              ; preds = %81, %101
  %116 = phi i64 [ 2, %101 ], [ 1, %81 ]
  %117 = phi i64 [ 3, %101 ], [ 2, %81 ]
  %118 = getelementptr inbounds float, ptr %45, i64 %116
  %119 = load float, ptr %118, align 4, !tbaa !34
  %120 = getelementptr inbounds float, ptr %70, i64 %116
  %121 = load float, ptr %120, align 4, !tbaa !34
  %122 = fmul float %91, %121
  %123 = tail call float @llvm.fmuladd.f32(float %92, float %119, float %122)
  %124 = getelementptr inbounds float, ptr %58, i64 %116
  %125 = load float, ptr %124, align 4, !tbaa !34
  %126 = tail call float @llvm.fmuladd.f32(float %89, float %125, float %123)
  %127 = getelementptr inbounds float, ptr %82, i64 %116
  %128 = load float, ptr %127, align 4, !tbaa !34
  %129 = tail call float @llvm.fmuladd.f32(float %87, float %128, float %126)
  %130 = getelementptr inbounds float, ptr %3, i64 %116
  store float %129, ptr %130, align 4, !tbaa !34
  %131 = getelementptr inbounds float, ptr %45, i64 %117
  %132 = load float, ptr %131, align 4, !tbaa !34
  %133 = getelementptr inbounds float, ptr %70, i64 %117
  %134 = load float, ptr %133, align 4, !tbaa !34
  %135 = fmul float %91, %134
  %136 = tail call float @llvm.fmuladd.f32(float %92, float %132, float %135)
  %137 = getelementptr inbounds float, ptr %58, i64 %117
  %138 = load float, ptr %137, align 4, !tbaa !34
  %139 = tail call float @llvm.fmuladd.f32(float %89, float %138, float %136)
  %140 = getelementptr inbounds float, ptr %82, i64 %117
  %141 = load float, ptr %140, align 4, !tbaa !34
  %142 = tail call float @llvm.fmuladd.f32(float %87, float %141, float %139)
  %143 = getelementptr inbounds float, ptr %3, i64 %117
  store float %142, ptr %143, align 4, !tbaa !34
  br label %144

144:                                              ; preds = %115, %81
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  br label %290

145:                                              ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
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
  %214 = load i8, ptr %166, align 1, !tbaa !38
  %215 = uitofp i8 %214 to float
  %216 = load i8, ptr %191, align 1, !tbaa !38
  %217 = uitofp i8 %216 to float
  %218 = fmul float %212, %217
  %219 = tail call float @llvm.fmuladd.f32(float %213, float %215, float %218)
  %220 = load i8, ptr %179, align 1, !tbaa !38
  %221 = uitofp i8 %220 to float
  %222 = tail call float @llvm.fmuladd.f32(float %210, float %221, float %219)
  %223 = load i8, ptr %203, align 1, !tbaa !38
  %224 = uitofp i8 %223 to float
  %225 = tail call float @llvm.fmuladd.f32(float %208, float %224, float %222)
  %226 = fadd float %225, 5.000000e-01
  %227 = fptoui float %226 to i8
  store i8 %227, ptr %2, align 1, !tbaa !38
  switch i32 %6, label %228 [
    i32 1, label %289
    i32 3, label %248
  ]

228:                                              ; preds = %202
  %229 = getelementptr inbounds i8, ptr %166, i64 1
  %230 = load i8, ptr %229, align 1, !tbaa !38
  %231 = uitofp i8 %230 to float
  %232 = getelementptr inbounds i8, ptr %191, i64 1
  %233 = load i8, ptr %232, align 1, !tbaa !38
  %234 = uitofp i8 %233 to float
  %235 = fmul float %212, %234
  %236 = tail call float @llvm.fmuladd.f32(float %213, float %231, float %235)
  %237 = getelementptr inbounds i8, ptr %179, i64 1
  %238 = load i8, ptr %237, align 1, !tbaa !38
  %239 = uitofp i8 %238 to float
  %240 = tail call float @llvm.fmuladd.f32(float %210, float %239, float %236)
  %241 = getelementptr inbounds i8, ptr %203, i64 1
  %242 = load i8, ptr %241, align 1, !tbaa !38
  %243 = uitofp i8 %242 to float
  %244 = tail call float @llvm.fmuladd.f32(float %208, float %243, float %240)
  %245 = fadd float %244, 5.000000e-01
  %246 = fptoui float %245 to i8
  %247 = getelementptr inbounds i8, ptr %2, i64 1
  store i8 %246, ptr %247, align 1, !tbaa !38
  br label %248

248:                                              ; preds = %202, %228
  %249 = phi i64 [ 2, %228 ], [ 1, %202 ]
  %250 = phi i64 [ 3, %228 ], [ 2, %202 ]
  %251 = getelementptr inbounds i8, ptr %166, i64 %249
  %252 = load i8, ptr %251, align 1, !tbaa !38
  %253 = uitofp i8 %252 to float
  %254 = getelementptr inbounds i8, ptr %191, i64 %249
  %255 = load i8, ptr %254, align 1, !tbaa !38
  %256 = uitofp i8 %255 to float
  %257 = fmul float %212, %256
  %258 = tail call float @llvm.fmuladd.f32(float %213, float %253, float %257)
  %259 = getelementptr inbounds i8, ptr %179, i64 %249
  %260 = load i8, ptr %259, align 1, !tbaa !38
  %261 = uitofp i8 %260 to float
  %262 = tail call float @llvm.fmuladd.f32(float %210, float %261, float %258)
  %263 = getelementptr inbounds i8, ptr %203, i64 %249
  %264 = load i8, ptr %263, align 1, !tbaa !38
  %265 = uitofp i8 %264 to float
  %266 = tail call float @llvm.fmuladd.f32(float %208, float %265, float %262)
  %267 = fadd float %266, 5.000000e-01
  %268 = fptoui float %267 to i8
  %269 = getelementptr inbounds i8, ptr %2, i64 %249
  store i8 %268, ptr %269, align 1, !tbaa !38
  %270 = getelementptr inbounds i8, ptr %166, i64 %250
  %271 = load i8, ptr %270, align 1, !tbaa !38
  %272 = uitofp i8 %271 to float
  %273 = getelementptr inbounds i8, ptr %191, i64 %250
  %274 = load i8, ptr %273, align 1, !tbaa !38
  %275 = uitofp i8 %274 to float
  %276 = fmul float %212, %275
  %277 = tail call float @llvm.fmuladd.f32(float %213, float %272, float %276)
  %278 = getelementptr inbounds i8, ptr %179, i64 %250
  %279 = load i8, ptr %278, align 1, !tbaa !38
  %280 = uitofp i8 %279 to float
  %281 = tail call float @llvm.fmuladd.f32(float %210, float %280, float %277)
  %282 = getelementptr inbounds i8, ptr %203, i64 %250
  %283 = load i8, ptr %282, align 1, !tbaa !38
  %284 = uitofp i8 %283 to float
  %285 = tail call float @llvm.fmuladd.f32(float %208, float %284, float %281)
  %286 = fadd float %285, 5.000000e-01
  %287 = fptoui float %286 to i8
  %288 = getelementptr inbounds i8, ptr %2, i64 %250
  store i8 %287, ptr %288, align 1, !tbaa !38
  br label %289

289:                                              ; preds = %248, %202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  br label %290

290:                                              ; preds = %144, %289, %152, %31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_bilinear_interpolation_char(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #2 {
  tail call fastcc void @bilinear_interpolation(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define dso_local void @BLI_ewa_imp2radangle(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #4 {
  %9 = fcmp ugt float %3, 0x3EE4F8B580000000
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = fcmp ogt float %0, %2
  %12 = select i1 %11, float %0, float %2
  %13 = tail call float @sqrtf(float noundef %12) #10
  store float %13, ptr %4, align 4, !tbaa !34
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  store float 1.000000e+10, ptr %7, align 4, !tbaa !34
  %14 = fsub float %0, %2
  br label %42

15:                                               ; preds = %8
  %16 = fsub float %0, %2
  %17 = fadd float %0, %2
  %18 = fmul float %3, 2.000000e+00
  %19 = fmul float %1, %1
  %20 = tail call float @llvm.fmuladd.f32(float %16, float %16, float %19)
  %21 = tail call float @sqrtf(float noundef %20) #10
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
  %31 = tail call float @sqrtf(float noundef %30) #10
  store float %31, ptr %4, align 4, !tbaa !34
  %32 = fadd float %17, %21
  %33 = fcmp ugt float %32, 0.000000e+00
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store float 0.000000e+00, ptr %5, align 4, !tbaa !34
  br label %40

35:                                               ; preds = %29
  %36 = fdiv float %18, %32
  %37 = tail call float @sqrtf(float noundef %36) #10
  store float %37, ptr %5, align 4, !tbaa !34
  %38 = load float, ptr %4, align 4, !tbaa !34
  %39 = fdiv float %38, %37
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi float [ %39, %35 ], [ 1.000000e+10, %34 ]
  store float %41, ptr %7, align 4, !tbaa !34
  br label %42

42:                                               ; preds = %40, %10
  %43 = phi float [ %16, %40 ], [ %14, %10 ]
  %44 = tail call float @atan2f(float noundef %1, float noundef %43) #10
  %45 = fadd float %44, 0x400921FB60000000
  %46 = fmul float %45, 5.000000e-01
  store float %46, ptr %6, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind uwtable
define dso_local void @BLI_ewa_filter(i32 noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef readonly %7, ptr noundef %8, ptr nocapture noundef %9) local_unnamed_addr #8 {
  %11 = alloca [4 x float], align 16
  %12 = sitofp i32 %0 to float
  %13 = tail call float @sqrtf(float noundef %12) #10
  %14 = sitofp i32 %1 to float
  %15 = fdiv float %14, %13
  %16 = load float, ptr %5, align 4, !tbaa !34
  %17 = fmul float %13, %16
  %18 = load float, ptr %6, align 4, !tbaa !34
  %19 = fmul float %15, %18
  %20 = getelementptr inbounds float, ptr %5, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fmul float %13, %21
  %23 = getelementptr inbounds float, ptr %6, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fmul float %15, %24
  %26 = fmul float %25, %25
  %27 = tail call float @llvm.fmuladd.f32(float %19, float %19, float %26)
  %28 = fmul float %22, %25
  %29 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %28)
  %30 = fmul float %29, -2.000000e+00
  %31 = fmul float %22, %22
  %32 = tail call float @llvm.fmuladd.f32(float %17, float %17, float %31)
  %33 = fmul float %30, %30
  %34 = fmul float %33, -2.500000e-01
  %35 = tail call float @llvm.fmuladd.f32(float %27, float %32, float %34)
  %36 = icmp eq i8 %2, 0
  %37 = select i1 %36, float 7.656250e-01, float 1.562500e+00
  %38 = fdiv float %37, %12
  %39 = fcmp ugt float %35, 0x3EE4F8B580000000
  br i1 %39, label %45, label %40

40:                                               ; preds = %10
  %41 = fcmp ogt float %27, %32
  %42 = select i1 %41, float %27, float %32
  %43 = tail call float @sqrtf(float noundef %42) #10
  %44 = fsub float %27, %32
  br label %66

45:                                               ; preds = %10
  %46 = fsub float %27, %32
  %47 = fadd float %32, %27
  %48 = fmul float %35, 2.000000e+00
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %33)
  %50 = tail call float @sqrtf(float noundef %49) #10
  %51 = fsub float %47, %50
  %52 = fcmp ugt float %51, 0.000000e+00
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = fcmp ogt float %27, %32
  %55 = select i1 %54, float %27, float %32
  br label %58

56:                                               ; preds = %45
  %57 = fdiv float %48, %51
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi float [ %57, %56 ], [ %55, %53 ]
  %60 = tail call float @sqrtf(float noundef %59) #10
  %61 = fadd float %47, %50
  %62 = fcmp ugt float %61, 0.000000e+00
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = fdiv float %48, %61
  %65 = tail call float @sqrtf(float noundef %64) #10
  br label %66

66:                                               ; preds = %63, %58, %40
  %67 = phi float [ %44, %40 ], [ %46, %58 ], [ %46, %63 ]
  %68 = phi float [ 0.000000e+00, %40 ], [ 0.000000e+00, %58 ], [ %65, %63 ]
  %69 = phi float [ %43, %40 ], [ %60, %58 ], [ %60, %63 ]
  %70 = tail call float @atan2f(float noundef %30, float noundef %67) #10
  %71 = fadd float %70, 0x400921FB60000000
  %72 = fmul float %71, 5.000000e-01
  %73 = fmul float %68, %68
  %74 = fcmp olt float %73, %38
  br i1 %74, label %75, label %94

75:                                               ; preds = %66
  %76 = fmul float %69, %69
  %77 = fcmp olt float %76, %38
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = fmul float %38, %38
  br label %94

80:                                               ; preds = %75
  %81 = tail call float @cosf(float noundef %72) #10
  %82 = fneg float %81
  %83 = tail call float @llvm.fmuladd.f32(float %82, float %81, float 1.000000e+00)
  %84 = fmul float %81, %81
  %85 = fmul float %38, %84
  %86 = tail call float @llvm.fmuladd.f32(float %76, float %83, float %85)
  %87 = fsub float %38, %76
  %88 = fmul float %72, 2.000000e+00
  %89 = tail call float @sinf(float noundef %88) #10
  %90 = fmul float %87, %89
  %91 = fmul float %38, %83
  %92 = tail call float @llvm.fmuladd.f32(float %76, float %84, float %91)
  %93 = fmul float %38, %76
  br label %94

94:                                               ; preds = %78, %80, %66
  %95 = phi float [ %38, %78 ], [ %86, %80 ], [ %27, %66 ]
  %96 = phi float [ 0.000000e+00, %78 ], [ %90, %80 ], [ %30, %66 ]
  %97 = phi float [ %38, %78 ], [ %92, %80 ], [ %32, %66 ]
  %98 = phi float [ %79, %78 ], [ %93, %80 ], [ %35, %66 ]
  %99 = tail call float @sqrtf(float noundef %97) #10
  %100 = fmul float %13, %99
  %101 = tail call float @sqrtf(float noundef %95) #10
  %102 = fmul float %13, %101
  %103 = fmul float %98, %12
  %104 = fdiv float 2.560000e+02, %103
  %105 = fmul float %95, %104
  %106 = fmul float %96, %104
  %107 = fmul float %97, %104
  %108 = load float, ptr %4, align 4, !tbaa !34
  %109 = fmul float %108, %12
  %110 = getelementptr inbounds float, ptr %4, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !34
  %112 = fmul float %111, %14
  %113 = fsub float %109, %100
  %114 = tail call float @llvm.floor.f32(float %113)
  %115 = fptosi float %114 to i32
  %116 = fadd float %100, %109
  %117 = tail call float @llvm.ceil.f32(float %116)
  %118 = fptosi float %117 to i32
  %119 = fsub float %112, %102
  %120 = tail call float @llvm.floor.f32(float %119)
  %121 = fptosi float %120 to i32
  %122 = fadd float %102, %112
  %123 = tail call float @llvm.ceil.f32(float %122)
  %124 = fptosi float %123 to i32
  %125 = sitofp i32 %115 to float
  %126 = fsub float %109, %125
  %127 = fcmp ogt float %126, 2.550000e+02
  %128 = fptosi float %109 to i32
  %129 = add nsw i32 %128, -255
  %130 = select i1 %127, i32 %129, i32 %115
  %131 = sitofp i32 %118 to float
  %132 = fsub float %131, %109
  %133 = fcmp ogt float %132, 2.550000e+02
  %134 = add nsw i32 %128, 255
  %135 = select i1 %133, i32 %134, i32 %118
  %136 = sitofp i32 %121 to float
  %137 = fsub float %112, %136
  %138 = fcmp ogt float %137, 2.550000e+02
  %139 = fptosi float %112 to i32
  %140 = add nsw i32 %139, -255
  %141 = select i1 %138, i32 %140, i32 %121
  %142 = sitofp i32 %124 to float
  %143 = fsub float %142, %112
  %144 = fcmp ogt float %143, 2.550000e+02
  %145 = add nsw i32 %139, 255
  %146 = select i1 %144, i32 %145, i32 %124
  %147 = icmp slt i32 %135, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %94
  %149 = icmp slt i32 %130, %0
  %150 = icmp sgt i32 %146, -1
  %151 = select i1 %149, i1 %150, i1 false
  %152 = icmp slt i32 %141, %1
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %155, label %154

154:                                              ; preds = %148, %94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %238

155:                                              ; preds = %148
  %156 = fadd float %109, -5.000000e-01
  %157 = fadd float %112, -5.000000e-01
  %158 = fmul float %105, 2.000000e+00
  %159 = sitofp i32 %130 to float
  %160 = fsub float %159, %156
  %161 = tail call float @llvm.fmuladd.f32(float %160, float 2.000000e+00, float 1.000000e+00)
  %162 = fmul float %105, %161
  %163 = fmul float %105, %160
  %164 = fmul float %160, %163
  %165 = fmul float %106, %160
  %166 = getelementptr inbounds float, ptr %9, i64 1
  %167 = getelementptr inbounds float, ptr %9, i64 2
  %168 = getelementptr inbounds float, ptr %9, i64 3
  %169 = icmp sgt i32 %141, %146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br i1 %169, label %223, label %170

170:                                              ; preds = %155
  %171 = icmp sgt i32 %130, %135
  %172 = getelementptr inbounds float, ptr %11, i64 1
  %173 = getelementptr inbounds float, ptr %11, i64 2
  %174 = icmp eq i8 %3, 0
  %175 = getelementptr inbounds [4 x float], ptr %11, i64 0, i64 3
  br label %176

176:                                              ; preds = %170, %219
  %177 = phi i32 [ %141, %170 ], [ %221, %219 ]
  %178 = phi float [ 0.000000e+00, %170 ], [ %220, %219 ]
  br i1 %171, label %219, label %179

179:                                              ; preds = %176
  %180 = sitofp i32 %177 to float
  %181 = fsub float %180, %157
  %182 = call float @llvm.fmuladd.f32(float %107, float %181, float %165)
  %183 = call float @llvm.fmuladd.f32(float %182, float %181, float %164)
  %184 = call float @llvm.fmuladd.f32(float %106, float %181, float %162)
  br label %185

185:                                              ; preds = %179, %213
  %186 = phi float [ %215, %213 ], [ %183, %179 ]
  %187 = phi float [ %216, %213 ], [ %184, %179 ]
  %188 = phi i32 [ %217, %213 ], [ %130, %179 ]
  %189 = phi float [ %214, %213 ], [ %178, %179 ]
  %190 = fcmp olt float %186, 2.560000e+02
  br i1 %190, label %191, label %213

191:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  %192 = fcmp ole float %186, 0.000000e+00
  %193 = select i1 %192, float 0.000000e+00, float %186
  %194 = fptoui float %193 to i32
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds [256 x float], ptr @EWA_WTS, i64 0, i64 %195
  %197 = load float, ptr %196, align 4, !tbaa !34
  call void %7(ptr noundef %8, i32 noundef %188, i32 noundef %177, ptr noundef nonnull %11) #10
  %198 = load float, ptr %11, align 16, !tbaa !34
  %199 = load float, ptr %9, align 4, !tbaa !34
  %200 = call float @llvm.fmuladd.f32(float %198, float %197, float %199)
  store float %200, ptr %9, align 4, !tbaa !34
  %201 = load float, ptr %172, align 4, !tbaa !34
  %202 = load float, ptr %166, align 4, !tbaa !34
  %203 = call float @llvm.fmuladd.f32(float %201, float %197, float %202)
  store float %203, ptr %166, align 4, !tbaa !34
  %204 = load float, ptr %173, align 8, !tbaa !34
  %205 = load float, ptr %167, align 4, !tbaa !34
  %206 = call float @llvm.fmuladd.f32(float %204, float %197, float %205)
  store float %206, ptr %167, align 4, !tbaa !34
  %207 = load float, ptr %175, align 4
  %208 = fmul float %197, %207
  %209 = select i1 %174, float 0.000000e+00, float %208
  %210 = load float, ptr %168, align 4, !tbaa !34
  %211 = fadd float %210, %209
  store float %211, ptr %168, align 4, !tbaa !34
  %212 = fadd float %189, %197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  br label %213

213:                                              ; preds = %191, %185
  %214 = phi float [ %212, %191 ], [ %189, %185 ]
  %215 = fadd float %187, %186
  %216 = fadd float %158, %187
  %217 = add i32 %188, 1
  %218 = icmp eq i32 %188, %135
  br i1 %218, label %219, label %185, !llvm.loop !43

219:                                              ; preds = %213, %176
  %220 = phi float [ %178, %176 ], [ %214, %213 ]
  %221 = add i32 %177, 1
  %222 = icmp eq i32 %177, %146
  br i1 %222, label %223, label %176, !llvm.loop !44

223:                                              ; preds = %219, %155
  %224 = phi float [ 0.000000e+00, %155 ], [ %220, %219 ]
  %225 = fdiv float 1.000000e+00, %224
  %226 = load float, ptr %9, align 4, !tbaa !34
  %227 = fmul float %225, %226
  store float %227, ptr %9, align 4, !tbaa !34
  %228 = load float, ptr %166, align 4, !tbaa !34
  %229 = fmul float %225, %228
  store float %229, ptr %166, align 4, !tbaa !34
  %230 = load float, ptr %167, align 4, !tbaa !34
  %231 = fmul float %225, %230
  store float %231, ptr %167, align 4, !tbaa !34
  %232 = icmp eq i8 %3, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %223
  %234 = load float, ptr %168, align 4, !tbaa !34
  %235 = fmul float %225, %234
  br label %236

236:                                              ; preds = %223, %233
  %237 = phi float [ %235, %233 ], [ 1.000000e+00, %223 ]
  store float %237, ptr %168, align 4, !tbaa !34
  br label %238

238:                                              ; preds = %236, %154
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #5

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !40, !41}
!43 = distinct !{!43, !40, !41}
!44 = distinct !{!44, !40, !41}
