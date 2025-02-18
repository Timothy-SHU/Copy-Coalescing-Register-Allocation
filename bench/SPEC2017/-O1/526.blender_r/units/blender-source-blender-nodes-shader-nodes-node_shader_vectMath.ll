; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_vectMath.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_vectMath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }

@register_node_type_sh_vect_math.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"Vector Math\00", align 1
@sh_node_vect_math_in = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float -1.000000e+04, float 1.000000e+04, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float -1.000000e+04, float 1.000000e+04, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_vect_math_out = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gpu_shader_vect_math.names = internal unnamed_addr constant [6 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"vec_math_add\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"vec_math_sub\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vec_math_average\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vec_math_dot\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vec_math_cross\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"vec_math_normalize\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_vect_math() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, i32 noundef 116, ptr noundef nonnull @.str, i16 noundef signext 8, i16 noundef signext 0) #6
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, i16 noundef signext 3) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @sh_node_vect_math_in, ptr noundef nonnull @sh_node_vect_math_out) #6
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @node_vect_math_label) #6
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null) #6
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_vect_math) #6
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @gpu_shader_vect_math) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_vect_math.ntype) #6
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_label(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_vect_math_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_vect_math(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %9 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %12 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #6
  %13 = load ptr, ptr %4, align 8, !tbaa !34
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %13) #6
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  call void @nodestack_get_vec(ptr noundef nonnull %10, i16 noundef signext 1, ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %17 = load i16, ptr %16, align 8, !tbaa !38
  switch i16 %17, label %203 [
    i16 0, label %18
    i16 1, label %39
    i16 2, label %60
    i16 3, label %94
    i16 4, label %108
    i16 5, label %152
  ]

18:                                               ; preds = %6
  %19 = load float, ptr %7, align 4, !tbaa !45
  %20 = load float, ptr %10, align 4, !tbaa !45
  %21 = fadd float %19, %20
  %22 = load ptr, ptr %5, align 8, !tbaa !34
  store float %21, ptr %22, align 8, !tbaa !45
  %23 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !45
  %25 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !45
  %27 = fadd float %24, %26
  %28 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !45
  %29 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !45
  %31 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !45
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 2
  store float %33, ptr %34, align 8, !tbaa !45
  %35 = call float @llvm.fabs.f32(float %21)
  %36 = fadd float %35, %35
  %37 = fadd float %35, %36
  %38 = fdiv float %37, 3.000000e+00
  br label %199

39:                                               ; preds = %6
  %40 = load float, ptr %7, align 4, !tbaa !45
  %41 = load float, ptr %10, align 4, !tbaa !45
  %42 = fsub float %40, %41
  %43 = load ptr, ptr %5, align 8, !tbaa !34
  store float %42, ptr %43, align 8, !tbaa !45
  %44 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !45
  %46 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !45
  %48 = fsub float %45, %47
  %49 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 1
  store float %48, ptr %49, align 4, !tbaa !45
  %50 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !45
  %52 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !45
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 2
  store float %54, ptr %55, align 8, !tbaa !45
  %56 = call float @llvm.fabs.f32(float %42)
  %57 = fadd float %56, %56
  %58 = fadd float %56, %57
  %59 = fdiv float %58, 3.000000e+00
  br label %199

60:                                               ; preds = %6
  %61 = load float, ptr %7, align 4, !tbaa !45
  %62 = load float, ptr %10, align 4, !tbaa !45
  %63 = fadd float %61, %62
  %64 = load ptr, ptr %5, align 8, !tbaa !34
  store float %63, ptr %64, align 8, !tbaa !45
  %65 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !45
  %67 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !45
  %69 = fadd float %66, %68
  %70 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 1
  store float %69, ptr %70, align 4, !tbaa !45
  %71 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !45
  %73 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !45
  %75 = fadd float %72, %74
  %76 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 2
  store float %75, ptr %76, align 8, !tbaa !45
  %77 = fmul float %69, %69
  %78 = call float @llvm.fmuladd.f32(float %63, float %63, float %77)
  %79 = call float @llvm.fmuladd.f32(float %75, float %75, float %78)
  %80 = fcmp ogt float %79, 0x38AA95A5C0000000
  br i1 %80, label %81, label %90

81:                                               ; preds = %60
  %82 = call float @sqrtf(float noundef %79) #6
  %83 = fdiv float 1.000000e+00, %82
  %84 = load float, ptr %64, align 4, !tbaa !45
  %85 = fmul float %84, %83
  store float %85, ptr %64, align 4, !tbaa !45
  %86 = load float, ptr %70, align 4, !tbaa !45
  %87 = fmul float %83, %86
  store float %87, ptr %70, align 4, !tbaa !45
  %88 = load float, ptr %76, align 4, !tbaa !45
  %89 = fmul float %83, %88
  br label %91

90:                                               ; preds = %60
  store float 0.000000e+00, ptr %64, align 4, !tbaa !45
  store float 0.000000e+00, ptr %70, align 4, !tbaa !45
  br label %91

91:                                               ; preds = %81, %90
  %92 = phi float [ 0.000000e+00, %90 ], [ %89, %81 ]
  %93 = phi float [ 0.000000e+00, %90 ], [ %82, %81 ]
  store float %92, ptr %76, align 4, !tbaa !45
  br label %199

94:                                               ; preds = %6
  %95 = load float, ptr %7, align 4, !tbaa !45
  %96 = load float, ptr %10, align 4, !tbaa !45
  %97 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !45
  %99 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !45
  %101 = fmul float %98, %100
  %102 = call float @llvm.fmuladd.f32(float %95, float %96, float %101)
  %103 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !45
  %105 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %106 = load float, ptr %105, align 4, !tbaa !45
  %107 = call float @llvm.fmuladd.f32(float %104, float %106, float %102)
  br label %199

108:                                              ; preds = %6
  %109 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %110 = load float, ptr %109, align 4, !tbaa !45
  %111 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %112 = load float, ptr %111, align 4, !tbaa !45
  %113 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %114 = load float, ptr %113, align 4, !tbaa !45
  %115 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %116 = load float, ptr %115, align 4, !tbaa !45
  %117 = fneg float %114
  %118 = fmul float %116, %117
  %119 = call float @llvm.fmuladd.f32(float %110, float %112, float %118)
  %120 = load ptr, ptr %5, align 8, !tbaa !34
  store float %119, ptr %120, align 8, !tbaa !45
  %121 = load float, ptr %113, align 4, !tbaa !45
  %122 = load float, ptr %10, align 4, !tbaa !45
  %123 = load float, ptr %7, align 4, !tbaa !45
  %124 = load float, ptr %111, align 4, !tbaa !45
  %125 = fneg float %123
  %126 = fmul float %124, %125
  %127 = call float @llvm.fmuladd.f32(float %121, float %122, float %126)
  %128 = getelementptr inbounds [4 x float], ptr %120, i64 0, i64 1
  store float %127, ptr %128, align 4, !tbaa !45
  %129 = load float, ptr %115, align 4, !tbaa !45
  %130 = load float, ptr %109, align 4, !tbaa !45
  %131 = fneg float %130
  %132 = fmul float %122, %131
  %133 = call float @llvm.fmuladd.f32(float %123, float %129, float %132)
  %134 = getelementptr inbounds [4 x float], ptr %120, i64 0, i64 2
  store float %133, ptr %134, align 8, !tbaa !45
  %135 = fmul float %127, %127
  %136 = call float @llvm.fmuladd.f32(float %119, float %119, float %135)
  %137 = call float @llvm.fmuladd.f32(float %133, float %133, float %136)
  %138 = fcmp ogt float %137, 0x38AA95A5C0000000
  br i1 %138, label %139, label %148

139:                                              ; preds = %108
  %140 = call float @sqrtf(float noundef %137) #6
  %141 = fdiv float 1.000000e+00, %140
  %142 = load float, ptr %120, align 4, !tbaa !45
  %143 = fmul float %142, %141
  store float %143, ptr %120, align 4, !tbaa !45
  %144 = load float, ptr %128, align 4, !tbaa !45
  %145 = fmul float %141, %144
  store float %145, ptr %128, align 4, !tbaa !45
  %146 = load float, ptr %134, align 4, !tbaa !45
  %147 = fmul float %141, %146
  br label %149

148:                                              ; preds = %108
  store float 0.000000e+00, ptr %120, align 4, !tbaa !45
  store float 0.000000e+00, ptr %128, align 4, !tbaa !45
  br label %149

149:                                              ; preds = %139, %148
  %150 = phi float [ 0.000000e+00, %148 ], [ %147, %139 ]
  %151 = phi float [ 0.000000e+00, %148 ], [ %140, %139 ]
  store float %150, ptr %134, align 4, !tbaa !45
  br label %199

152:                                              ; preds = %6
  %153 = load ptr, ptr %4, align 8, !tbaa !34
  %154 = getelementptr inbounds %struct.bNodeStack, ptr %153, i64 0, i32 4
  %155 = load i16, ptr %154, align 8, !tbaa !46
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load ptr, ptr %14, align 8, !tbaa !34
  %159 = getelementptr inbounds %struct.bNodeStack, ptr %158, i64 0, i32 4
  %160 = load i16, ptr %159, align 8, !tbaa !46
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157, %152
  %163 = load float, ptr %7, align 4, !tbaa !45
  %164 = load ptr, ptr %5, align 8, !tbaa !34
  store float %163, ptr %164, align 8, !tbaa !45
  br label %168

165:                                              ; preds = %157
  %166 = load float, ptr %10, align 4, !tbaa !45
  %167 = load ptr, ptr %5, align 8, !tbaa !34
  store float %166, ptr %167, align 8, !tbaa !45
  br label %168

168:                                              ; preds = %165, %162
  %169 = phi ptr [ %167, %165 ], [ %164, %162 ]
  %170 = phi ptr [ %12, %165 ], [ %9, %162 ]
  %171 = phi ptr [ %11, %165 ], [ %8, %162 ]
  %172 = load float, ptr %170, align 4, !tbaa !45
  %173 = getelementptr inbounds [4 x float], ptr %169, i64 0, i64 1
  store float %172, ptr %173, align 4, !tbaa !45
  %174 = load float, ptr %171, align 4, !tbaa !45
  %175 = getelementptr inbounds [4 x float], ptr %169, i64 0, i64 2
  store float %174, ptr %175, align 8, !tbaa !45
  %176 = load ptr, ptr %5, align 8, !tbaa !34
  %177 = load float, ptr %176, align 4, !tbaa !45
  %178 = getelementptr inbounds float, ptr %176, i64 1
  %179 = load float, ptr %178, align 4, !tbaa !45
  %180 = fmul float %179, %179
  %181 = call float @llvm.fmuladd.f32(float %177, float %177, float %180)
  %182 = getelementptr inbounds float, ptr %176, i64 2
  %183 = load float, ptr %182, align 4, !tbaa !45
  %184 = call float @llvm.fmuladd.f32(float %183, float %183, float %181)
  %185 = fcmp ogt float %184, 0x38AA95A5C0000000
  br i1 %185, label %186, label %195

186:                                              ; preds = %168
  %187 = call float @sqrtf(float noundef %184) #6
  %188 = fdiv float 1.000000e+00, %187
  %189 = load float, ptr %176, align 4, !tbaa !45
  %190 = fmul float %189, %188
  store float %190, ptr %176, align 4, !tbaa !45
  %191 = load float, ptr %178, align 4, !tbaa !45
  %192 = fmul float %188, %191
  store float %192, ptr %178, align 4, !tbaa !45
  %193 = load float, ptr %182, align 4, !tbaa !45
  %194 = fmul float %188, %193
  br label %196

195:                                              ; preds = %168
  store float 0.000000e+00, ptr %176, align 4, !tbaa !45
  store float 0.000000e+00, ptr %178, align 4, !tbaa !45
  br label %196

196:                                              ; preds = %186, %195
  %197 = phi float [ 0.000000e+00, %195 ], [ %194, %186 ]
  %198 = phi float [ 0.000000e+00, %195 ], [ %187, %186 ]
  store float %197, ptr %182, align 4, !tbaa !45
  br label %199

199:                                              ; preds = %18, %91, %149, %196, %94, %39
  %200 = phi float [ %59, %39 ], [ %107, %94 ], [ %198, %196 ], [ %151, %149 ], [ %93, %91 ], [ %38, %18 ]
  %201 = getelementptr inbounds ptr, ptr %5, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !34
  store float %200, ptr %202, align 8, !tbaa !45
  br label %203

203:                                              ; preds = %199, %6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @gpu_shader_vect_math(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [2 x %struct.GPUNodeStack], align 16
  %7 = alloca [2 x %struct.GPUNodeStack], align 16
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %9 = load i16, ptr %8, align 8, !tbaa !38
  switch i16 %9, label %38 [
    i16 0, label %10
    i16 1, label %10
    i16 2, label %10
    i16 3, label %10
    i16 4, label %10
    i16 5, label %15
  ]

10:                                               ; preds = %5, %5, %5, %5, %5
  %11 = sext i16 %9 to i64
  %12 = getelementptr inbounds [6 x ptr], ptr @gpu_shader_vect_math.names, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %13, ptr noundef %3, ptr noundef %4) #6
  br label %38

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 0, i32 4
  %17 = load i8, ptr %16, align 8, !tbaa !48
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !48
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %24 = getelementptr inbounds [2 x %struct.GPUNodeStack], ptr %6, i64 0, i64 1
  %25 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(48) %25, i64 48, i1 false)
  %26 = sext i16 %9 to i64
  %27 = getelementptr inbounds [6 x ptr], ptr @gpu_shader_vect_math.names, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %6, ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #6
  br label %38

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %31, i64 48, i1 false)
  %32 = getelementptr inbounds [2 x %struct.GPUNodeStack], ptr %7, i64 0, i64 1
  %33 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(48) %33, i64 48, i1 false)
  %34 = sext i16 %9 to i64
  %35 = getelementptr inbounds [6 x ptr], ptr @gpu_shader_vect_math.names, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %7, ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #6
  br label %38

38:                                               ; preds = %10, %30, %23, %5
  %39 = phi i32 [ 0, %5 ], [ 1, %23 ], [ 1, %30 ], [ 1, %10 ]
  ret i32 %39
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 376}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!43, !43, i64 0}
!46 = !{!47, !41, i64 32}
!47 = !{!"bNodeStack", !36, i64 0, !43, i64 16, !43, i64 20, !35, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !36, i64 44}
!48 = !{!49, !36, i64 40}
!49 = !{!"GPUNodeStack", !40, i64 0, !35, i64 8, !36, i64 16, !35, i64 32, !36, i64 40, !36, i64 41, !41, i64 42}
