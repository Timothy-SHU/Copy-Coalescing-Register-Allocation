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
@reltable.gpu_shader_vect_math = internal unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_vect_math to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_vect_math to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.4 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_vect_math to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_vect_math to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_vect_math to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.gpu_shader_vect_math to i64)) to i32)], align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"vec_math_add\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"vec_math_sub\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"vec_math_average\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vec_math_dot\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vec_math_cross\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"vec_math_normalize\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_vect_math() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, i32 noundef 116, ptr noundef nonnull @.str, i16 noundef signext 8, i16 noundef signext 0) #11
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, i16 noundef signext 3) #11
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @sh_node_vect_math_in, ptr noundef nonnull @sh_node_vect_math_out) #11
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @node_vect_math_label) #11
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null) #11
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_vect_math) #11
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_vect_math.ntype, ptr noundef nonnull @gpu_shader_vect_math) #11
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_vect_math.ntype) #11
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_label(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_vect_math_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_vect_math(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %9 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %10 = alloca [3 x float], align 4
  %11 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %12 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %13 = load ptr, ptr %4, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %13) #11
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %10, i16 noundef signext 1, ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %17 = load i16, ptr %16, align 8, !tbaa !39
  switch i16 %17, label %149 [
    i16 0, label %18
    i16 1, label %39
    i16 2, label %60
    i16 3, label %78
    i16 4, label %92
    i16 5, label %120
  ]

18:                                               ; preds = %6
  %19 = load float, ptr %7, align 4, !tbaa !46
  %20 = load float, ptr %10, align 4, !tbaa !46
  %21 = fadd float %19, %20
  %22 = load ptr, ptr %5, align 8, !tbaa !35
  store float %21, ptr %22, align 8, !tbaa !46
  %23 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !46
  %25 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !46
  %27 = fadd float %24, %26
  %28 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 1
  store float %27, ptr %28, align 4, !tbaa !46
  %29 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !46
  %31 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !46
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds [4 x float], ptr %22, i64 0, i64 2
  store float %33, ptr %34, align 8, !tbaa !46
  %35 = call float @llvm.fabs.f32(float %21)
  %36 = fadd float %35, %35
  %37 = fadd float %35, %36
  %38 = fdiv float %37, 3.000000e+00
  br label %145

39:                                               ; preds = %6
  %40 = load float, ptr %7, align 4, !tbaa !46
  %41 = load float, ptr %10, align 4, !tbaa !46
  %42 = fsub float %40, %41
  %43 = load ptr, ptr %5, align 8, !tbaa !35
  store float %42, ptr %43, align 8, !tbaa !46
  %44 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !46
  %46 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !46
  %48 = fsub float %45, %47
  %49 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 1
  store float %48, ptr %49, align 4, !tbaa !46
  %50 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !46
  %52 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !46
  %54 = fsub float %51, %53
  %55 = getelementptr inbounds [4 x float], ptr %43, i64 0, i64 2
  store float %54, ptr %55, align 8, !tbaa !46
  %56 = call float @llvm.fabs.f32(float %42)
  %57 = fadd float %56, %56
  %58 = fadd float %56, %57
  %59 = fdiv float %58, 3.000000e+00
  br label %145

60:                                               ; preds = %6
  %61 = load float, ptr %7, align 4, !tbaa !46
  %62 = load float, ptr %10, align 4, !tbaa !46
  %63 = fadd float %61, %62
  %64 = load ptr, ptr %5, align 8, !tbaa !35
  store float %63, ptr %64, align 8, !tbaa !46
  %65 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !46
  %67 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !46
  %69 = fadd float %66, %68
  %70 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 1
  store float %69, ptr %70, align 4, !tbaa !46
  %71 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !46
  %73 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !46
  %75 = fadd float %72, %74
  %76 = getelementptr inbounds [4 x float], ptr %64, i64 0, i64 2
  store float %75, ptr %76, align 8, !tbaa !46
  %77 = call fastcc float @normalize_v3(ptr noundef nonnull %64) #13
  br label %145

78:                                               ; preds = %6
  %79 = load float, ptr %7, align 4, !tbaa !46
  %80 = load float, ptr %10, align 4, !tbaa !46
  %81 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !46
  %83 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !46
  %85 = fmul float %82, %84
  %86 = call float @llvm.fmuladd.f32(float %79, float %80, float %85)
  %87 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !46
  %89 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !46
  %91 = call float @llvm.fmuladd.f32(float %88, float %90, float %86)
  br label %145

92:                                               ; preds = %6
  %93 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !46
  %95 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !46
  %97 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !46
  %99 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %100 = load float, ptr %99, align 4, !tbaa !46
  %101 = fneg float %98
  %102 = fmul float %100, %101
  %103 = call float @llvm.fmuladd.f32(float %94, float %96, float %102)
  %104 = load ptr, ptr %5, align 8, !tbaa !35
  store float %103, ptr %104, align 8, !tbaa !46
  %105 = load float, ptr %97, align 4, !tbaa !46
  %106 = load float, ptr %10, align 4, !tbaa !46
  %107 = load float, ptr %7, align 4, !tbaa !46
  %108 = load float, ptr %95, align 4, !tbaa !46
  %109 = fneg float %107
  %110 = fmul float %108, %109
  %111 = call float @llvm.fmuladd.f32(float %105, float %106, float %110)
  %112 = getelementptr inbounds [4 x float], ptr %104, i64 0, i64 1
  store float %111, ptr %112, align 4, !tbaa !46
  %113 = load float, ptr %99, align 4, !tbaa !46
  %114 = load float, ptr %93, align 4, !tbaa !46
  %115 = fneg float %114
  %116 = fmul float %106, %115
  %117 = call float @llvm.fmuladd.f32(float %107, float %113, float %116)
  %118 = getelementptr inbounds [4 x float], ptr %104, i64 0, i64 2
  store float %117, ptr %118, align 8, !tbaa !46
  %119 = call fastcc float @normalize_v3(ptr noundef nonnull %104) #13
  br label %145

120:                                              ; preds = %6
  %121 = load ptr, ptr %4, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.bNodeStack, ptr %121, i64 0, i32 4
  %123 = load i16, ptr %122, align 8, !tbaa !47
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load ptr, ptr %14, align 8, !tbaa !35
  %127 = getelementptr inbounds %struct.bNodeStack, ptr %126, i64 0, i32 4
  %128 = load i16, ptr %127, align 8, !tbaa !47
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120
  %131 = load float, ptr %7, align 4, !tbaa !46
  %132 = load ptr, ptr %5, align 8, !tbaa !35
  store float %131, ptr %132, align 8, !tbaa !46
  br label %136

133:                                              ; preds = %125
  %134 = load float, ptr %10, align 4, !tbaa !46
  %135 = load ptr, ptr %5, align 8, !tbaa !35
  store float %134, ptr %135, align 8, !tbaa !46
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi ptr [ %135, %133 ], [ %132, %130 ]
  %138 = phi ptr [ %12, %133 ], [ %9, %130 ]
  %139 = phi ptr [ %11, %133 ], [ %8, %130 ]
  %140 = load float, ptr %138, align 4, !tbaa !46
  %141 = getelementptr inbounds [4 x float], ptr %137, i64 0, i64 1
  store float %140, ptr %141, align 4, !tbaa !46
  %142 = load float, ptr %139, align 4, !tbaa !46
  %143 = getelementptr inbounds [4 x float], ptr %137, i64 0, i64 2
  store float %142, ptr %143, align 8, !tbaa !46
  %144 = call fastcc float @normalize_v3(ptr noundef nonnull %137) #13
  br label %145

145:                                              ; preds = %18, %60, %92, %136, %78, %39
  %146 = phi float [ %59, %39 ], [ %91, %78 ], [ %144, %136 ], [ %119, %92 ], [ %77, %60 ], [ %38, %18 ]
  %147 = getelementptr inbounds ptr, ptr %5, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !35
  store float %146, ptr %148, align 8, !tbaa !46
  br label %149

149:                                              ; preds = %145, %6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #12
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpu_shader_vect_math(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !49 {
  %6 = alloca [2 x %struct.GPUNodeStack], align 16
  %7 = alloca [2 x %struct.GPUNodeStack], align 16
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %9 = load i16, ptr %8, align 8, !tbaa !39
  switch i16 %9, label %32 [
    i16 0, label %10
    i16 1, label %10
    i16 2, label %10
    i16 3, label %10
    i16 4, label %10
    i16 5, label %15
  ]

10:                                               ; preds = %5, %5, %5, %5, %5
  %11 = zext nneg i16 %9 to i64
  %12 = shl i64 %11, 2
  %13 = call ptr @llvm.load.relative.i64(ptr @reltable.gpu_shader_vect_math, i64 %12)
  %14 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %13, ptr noundef %3, ptr noundef %4) #11
  br label %32

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 0, i32 4
  %17 = load i8, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %24 = getelementptr inbounds [2 x %struct.GPUNodeStack], ptr %6, i64 0, i64 1
  %25 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(48) %25, i64 48, i1 false)
  %26 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %6, ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #12
  br label %32

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %28, i64 48, i1 false)
  %29 = getelementptr inbounds [2 x %struct.GPUNodeStack], ptr %7, i64 0, i64 1
  %30 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %29, ptr noundef nonnull align 8 dereferenceable(48) %30, i64 48, i1 false)
  %31 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %7, ptr noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #12
  br label %32

32:                                               ; preds = %10, %27, %23, %5
  %33 = phi i32 [ 0, %5 ], [ 1, %23 ], [ 1, %27 ], [ 1, %10 ]
  ret i32 %33
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !52 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #13
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !53 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !54 {
  %3 = load float, ptr %0, align 4, !tbaa !46
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !46
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !46
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 !PGOFuncName !55 {
  %4 = load float, ptr %1, align 4, !tbaa !46
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !46
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !46
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !46
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !56 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !46
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!34 = !{!"node_shader_vectMath.c:node_shader_exec_vect_math"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !42, i64 376}
!40 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !37, i64 188, !43, i64 200, !43, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !37, i64 312, !42, i64 376, !42, i64 378, !44, i64 380, !44, i64 384, !42, i64 388, !42, i64 390, !36, i64 392, !45, i64 400, !45, i64 416, !45, i64 432, !42, i64 448, !42, i64 450, !41, i64 452, !36, i64 456}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!"float", !37, i64 0}
!45 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!46 = !{!44, !44, i64 0}
!47 = !{!48, !42, i64 32}
!48 = !{!"bNodeStack", !37, i64 0, !44, i64 16, !44, i64 20, !36, i64 24, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !37, i64 44}
!49 = !{!"node_shader_vectMath.c:gpu_shader_vect_math"}
!50 = !{!51, !37, i64 40}
!51 = !{!"GPUNodeStack", !41, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !42, i64 42}
!52 = !{!"node_shader_vectMath.c:normalize_v3"}
!53 = !{!"node_shader_vectMath.c:normalize_v3_v3"}
!54 = !{!"node_shader_vectMath.c:dot_v3v3"}
!55 = !{!"node_shader_vectMath.c:mul_v3_v3fl"}
!56 = !{!"node_shader_vectMath.c:zero_v3"}
