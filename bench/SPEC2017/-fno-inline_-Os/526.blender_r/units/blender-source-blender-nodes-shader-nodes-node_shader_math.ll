; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_math.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_math.c"
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

@register_node_type_sh_math.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"Math\00", align 1
@sh_node_math_in = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float -1.000000e+04, float 1.000000e+04, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float -1.000000e+04, float 1.000000e+04, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_math_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gpu_shader_math.names = internal unnamed_addr constant [19 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"math_add\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"math_subtract\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"math_multiply\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"math_divide\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"math_sine\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"math_cosine\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"math_tangent\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"math_asin\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"math_acos\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"math_atan\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"math_pow\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"math_log\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"math_min\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"math_max\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"math_round\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"math_less_than\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"math_greater_than\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"math_modulo\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"math_absolute\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_math() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_math.ntype, i32 noundef 115, ptr noundef nonnull @.str, i16 noundef signext 8, i16 noundef signext 0) #6
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_math.ntype, i16 noundef signext 3) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_math.ntype, ptr noundef nonnull @sh_node_math_in, ptr noundef nonnull @sh_node_math_out) #6
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_sh_math.ntype, ptr noundef nonnull @node_math_label) #6
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_math.ntype, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null) #6
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_math.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_math) #6
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_math.ntype, ptr noundef nonnull @gpu_shader_math) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_math.ntype) #6
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
declare void @node_math_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_math(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %9 = load ptr, ptr %4, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 0, ptr noundef %9) #6
  %10 = getelementptr inbounds ptr, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %13 = load i16, ptr %12, align 8, !tbaa !39
  switch i16 %13, label %240 [
    i16 0, label %14
    i16 1, label %18
    i16 2, label %22
    i16 3, label %26
    i16 4, label %32
    i16 5, label %48
    i16 6, label %64
    i16 7, label %80
    i16 8, label %104
    i16 9, label %128
    i16 10, label %148
    i16 11, label %170
    i16 12, label %184
    i16 13, label %189
    i16 14, label %194
    i16 15, label %218
    i16 16, label %223
    i16 17, label %228
    i16 18, label %237
  ]

14:                                               ; preds = %6
  %15 = load float, ptr %7, align 4, !tbaa !46
  %16 = load float, ptr %8, align 4, !tbaa !46
  %17 = fadd float %15, %16
  br label %240

18:                                               ; preds = %6
  %19 = load float, ptr %7, align 4, !tbaa !46
  %20 = load float, ptr %8, align 4, !tbaa !46
  %21 = fsub float %19, %20
  br label %240

22:                                               ; preds = %6
  %23 = load float, ptr %7, align 4, !tbaa !46
  %24 = load float, ptr %8, align 4, !tbaa !46
  %25 = fmul float %23, %24
  br label %240

26:                                               ; preds = %6
  %27 = load float, ptr %8, align 4, !tbaa !46
  %28 = fcmp oeq float %27, 0.000000e+00
  br i1 %28, label %240, label %29

29:                                               ; preds = %26
  %30 = load float, ptr %7, align 4, !tbaa !46
  %31 = fdiv float %30, %27
  br label %240

32:                                               ; preds = %6
  %33 = load ptr, ptr %4, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.bNodeStack, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 8, !tbaa !47
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load ptr, ptr %10, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.bNodeStack, ptr %38, i64 0, i32 4
  %40 = load i16, ptr %39, align 8, !tbaa !47
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32
  %43 = load float, ptr %7, align 4, !tbaa !46
  %44 = call float @sinf(float noundef %43) #6
  br label %240

45:                                               ; preds = %37
  %46 = load float, ptr %8, align 4, !tbaa !46
  %47 = call float @sinf(float noundef %46) #6
  br label %240

48:                                               ; preds = %6
  %49 = load ptr, ptr %4, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.bNodeStack, ptr %49, i64 0, i32 4
  %51 = load i16, ptr %50, align 8, !tbaa !47
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load ptr, ptr %10, align 8, !tbaa !35
  %55 = getelementptr inbounds %struct.bNodeStack, ptr %54, i64 0, i32 4
  %56 = load i16, ptr %55, align 8, !tbaa !47
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %48
  %59 = load float, ptr %7, align 4, !tbaa !46
  %60 = call float @cosf(float noundef %59) #6
  br label %240

61:                                               ; preds = %53
  %62 = load float, ptr %8, align 4, !tbaa !46
  %63 = call float @cosf(float noundef %62) #6
  br label %240

64:                                               ; preds = %6
  %65 = load ptr, ptr %4, align 8, !tbaa !35
  %66 = getelementptr inbounds %struct.bNodeStack, ptr %65, i64 0, i32 4
  %67 = load i16, ptr %66, align 8, !tbaa !47
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load ptr, ptr %10, align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.bNodeStack, ptr %70, i64 0, i32 4
  %72 = load i16, ptr %71, align 8, !tbaa !47
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load float, ptr %7, align 4, !tbaa !46
  %76 = call float @tanf(float noundef %75) #6
  br label %240

77:                                               ; preds = %69
  %78 = load float, ptr %8, align 4, !tbaa !46
  %79 = call float @tanf(float noundef %78) #6
  br label %240

80:                                               ; preds = %6
  %81 = load ptr, ptr %4, align 8, !tbaa !35
  %82 = getelementptr inbounds %struct.bNodeStack, ptr %81, i64 0, i32 4
  %83 = load i16, ptr %82, align 8, !tbaa !47
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load ptr, ptr %10, align 8, !tbaa !35
  %87 = getelementptr inbounds %struct.bNodeStack, ptr %86, i64 0, i32 4
  %88 = load i16, ptr %87, align 8, !tbaa !47
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85, %80
  %91 = load float, ptr %7, align 4
  %92 = fcmp ole float %91, 1.000000e+00
  %93 = fcmp oge float %91, -1.000000e+00
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %240

95:                                               ; preds = %90
  %96 = call float @asinf(float noundef %91) #6
  br label %240

97:                                               ; preds = %85
  %98 = load float, ptr %8, align 4
  %99 = fcmp ole float %98, 1.000000e+00
  %100 = fcmp oge float %98, -1.000000e+00
  %101 = and i1 %99, %100
  br i1 %101, label %102, label %240

102:                                              ; preds = %97
  %103 = call float @asinf(float noundef %98) #6
  br label %240

104:                                              ; preds = %6
  %105 = load ptr, ptr %4, align 8, !tbaa !35
  %106 = getelementptr inbounds %struct.bNodeStack, ptr %105, i64 0, i32 4
  %107 = load i16, ptr %106, align 8, !tbaa !47
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load ptr, ptr %10, align 8, !tbaa !35
  %111 = getelementptr inbounds %struct.bNodeStack, ptr %110, i64 0, i32 4
  %112 = load i16, ptr %111, align 8, !tbaa !47
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109, %104
  %115 = load float, ptr %7, align 4
  %116 = fcmp ole float %115, 1.000000e+00
  %117 = fcmp oge float %115, -1.000000e+00
  %118 = and i1 %116, %117
  br i1 %118, label %119, label %240

119:                                              ; preds = %114
  %120 = call float @acosf(float noundef %115) #6
  br label %240

121:                                              ; preds = %109
  %122 = load float, ptr %8, align 4
  %123 = fcmp ole float %122, 1.000000e+00
  %124 = fcmp oge float %122, -1.000000e+00
  %125 = and i1 %123, %124
  br i1 %125, label %126, label %240

126:                                              ; preds = %121
  %127 = call float @acosf(float noundef %122) #6
  br label %240

128:                                              ; preds = %6
  %129 = load ptr, ptr %4, align 8, !tbaa !35
  %130 = getelementptr inbounds %struct.bNodeStack, ptr %129, i64 0, i32 4
  %131 = load i16, ptr %130, align 8, !tbaa !47
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load ptr, ptr %10, align 8, !tbaa !35
  %135 = getelementptr inbounds %struct.bNodeStack, ptr %134, i64 0, i32 4
  %136 = load i16, ptr %135, align 8, !tbaa !47
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133, %128
  %139 = load float, ptr %7, align 4, !tbaa !46
  %140 = fpext float %139 to double
  %141 = call double @atan(double noundef %140) #6
  %142 = fptrunc double %141 to float
  br label %240

143:                                              ; preds = %133
  %144 = load float, ptr %8, align 4, !tbaa !46
  %145 = fpext float %144 to double
  %146 = call double @atan(double noundef %145) #6
  %147 = fptrunc double %146 to float
  br label %240

148:                                              ; preds = %6
  %149 = load float, ptr %7, align 4, !tbaa !46
  %150 = fcmp ult float %149, 0.000000e+00
  br i1 %150, label %157, label %151

151:                                              ; preds = %148
  %152 = fpext float %149 to double
  %153 = load float, ptr %8, align 4, !tbaa !46
  %154 = fpext float %153 to double
  %155 = call double @pow(double noundef %152, double noundef %154) #6
  %156 = fptrunc double %155 to float
  br label %240

157:                                              ; preds = %148
  %158 = load float, ptr %8, align 4, !tbaa !46
  %159 = call float @fmodf(float noundef %158, float noundef 1.000000e+00) #6
  %160 = call float @llvm.fabs.f32(float %159)
  %161 = fcmp ogt float %160, 0x3FEFF7CEE0000000
  %162 = fcmp olt float %160, 0x3F50624DE0000000
  %163 = or i1 %161, %162
  br i1 %163, label %164, label %240

164:                                              ; preds = %157
  %165 = load float, ptr %7, align 4, !tbaa !46
  %166 = load float, ptr %8, align 4, !tbaa !46
  %167 = fadd float %166, 5.000000e-01
  %168 = call float @llvm.floor.f32(float %167)
  %169 = call float @powf(float noundef %165, float noundef %168) #6
  br label %240

170:                                              ; preds = %6
  %171 = load float, ptr %7, align 4, !tbaa !46
  %172 = fcmp ogt float %171, 0.000000e+00
  %173 = load float, ptr %8, align 4
  %174 = fcmp ogt float %173, 0.000000e+00
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %176, label %240

176:                                              ; preds = %170
  %177 = fpext float %171 to double
  %178 = call double @log(double noundef %177) #6
  %179 = load float, ptr %8, align 4, !tbaa !46
  %180 = fpext float %179 to double
  %181 = call double @log(double noundef %180) #6
  %182 = fdiv double %178, %181
  %183 = fptrunc double %182 to float
  br label %240

184:                                              ; preds = %6
  %185 = load float, ptr %7, align 4, !tbaa !46
  %186 = load float, ptr %8, align 4, !tbaa !46
  %187 = fcmp olt float %185, %186
  %188 = select i1 %187, float %185, float %186
  br label %240

189:                                              ; preds = %6
  %190 = load float, ptr %7, align 4, !tbaa !46
  %191 = load float, ptr %8, align 4, !tbaa !46
  %192 = fcmp ogt float %190, %191
  %193 = select i1 %192, float %190, float %191
  br label %240

194:                                              ; preds = %6
  %195 = load ptr, ptr %4, align 8, !tbaa !35
  %196 = getelementptr inbounds %struct.bNodeStack, ptr %195, i64 0, i32 4
  %197 = load i16, ptr %196, align 8, !tbaa !47
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %194
  %200 = load ptr, ptr %10, align 8, !tbaa !35
  %201 = getelementptr inbounds %struct.bNodeStack, ptr %200, i64 0, i32 4
  %202 = load i16, ptr %201, align 8, !tbaa !47
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199, %194
  %205 = load float, ptr %7, align 4, !tbaa !46
  %206 = fcmp olt float %205, 0.000000e+00
  %207 = select i1 %206, float -5.000000e-01, float 5.000000e-01
  %208 = fadd float %205, %207
  %209 = fptosi float %208 to i32
  %210 = sitofp i32 %209 to float
  br label %240

211:                                              ; preds = %199
  %212 = load float, ptr %8, align 4, !tbaa !46
  %213 = fcmp olt float %212, 0.000000e+00
  %214 = select i1 %213, float -5.000000e-01, float 5.000000e-01
  %215 = fadd float %212, %214
  %216 = fptosi float %215 to i32
  %217 = sitofp i32 %216 to float
  br label %240

218:                                              ; preds = %6
  %219 = load float, ptr %7, align 4, !tbaa !46
  %220 = load float, ptr %8, align 4, !tbaa !46
  %221 = fcmp olt float %219, %220
  %222 = select i1 %221, float 1.000000e+00, float 0.000000e+00
  br label %240

223:                                              ; preds = %6
  %224 = load float, ptr %7, align 4, !tbaa !46
  %225 = load float, ptr %8, align 4, !tbaa !46
  %226 = fcmp ogt float %224, %225
  %227 = select i1 %226, float 1.000000e+00, float 0.000000e+00
  br label %240

228:                                              ; preds = %6
  %229 = load float, ptr %8, align 4, !tbaa !46
  %230 = fcmp oeq float %229, 0.000000e+00
  br i1 %230, label %240, label %231

231:                                              ; preds = %228
  %232 = load float, ptr %7, align 4, !tbaa !46
  %233 = fpext float %232 to double
  %234 = fpext float %229 to double
  %235 = call double @fmod(double noundef %233, double noundef %234) #6
  %236 = fptrunc double %235 to float
  br label %240

237:                                              ; preds = %6
  %238 = load float, ptr %7, align 4, !tbaa !46
  %239 = call float @llvm.fabs.f32(float %238)
  br label %240

240:                                              ; preds = %228, %223, %218, %189, %184, %170, %164, %157, %121, %114, %97, %90, %26, %231, %204, %211, %176, %151, %138, %143, %119, %126, %95, %102, %74, %77, %58, %61, %42, %45, %29, %6, %237, %22, %18, %14
  %241 = phi float [ 0.000000e+00, %6 ], [ %239, %237 ], [ %236, %231 ], [ %210, %204 ], [ %217, %211 ], [ %183, %176 ], [ %156, %151 ], [ %142, %138 ], [ %147, %143 ], [ %120, %119 ], [ %127, %126 ], [ %96, %95 ], [ %103, %102 ], [ %76, %74 ], [ %79, %77 ], [ %60, %58 ], [ %63, %61 ], [ %44, %42 ], [ %47, %45 ], [ %31, %29 ], [ %25, %22 ], [ %21, %18 ], [ %17, %14 ], [ 0.000000e+00, %26 ], [ 0.000000e+00, %90 ], [ 0.000000e+00, %97 ], [ 0.000000e+00, %114 ], [ 0.000000e+00, %121 ], [ %169, %164 ], [ 0.000000e+00, %157 ], [ 0.000000e+00, %170 ], [ %188, %184 ], [ %193, %189 ], [ %222, %218 ], [ %227, %223 ], [ 0.000000e+00, %228 ]
  %242 = load ptr, ptr %5, align 8, !tbaa !35
  store float %241, ptr %242, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gpu_shader_math(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !49 {
  %6 = alloca [2 x %struct.GPUNodeStack], align 16
  %7 = alloca [2 x %struct.GPUNodeStack], align 16
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  %9 = load i16, ptr %8, align 8, !tbaa !39
  switch i16 %9, label %38 [
    i16 0, label %10
    i16 1, label %10
    i16 2, label %10
    i16 3, label %10
    i16 10, label %10
    i16 11, label %10
    i16 12, label %10
    i16 13, label %10
    i16 15, label %10
    i16 16, label %10
    i16 17, label %10
    i16 4, label %15
    i16 5, label %15
    i16 6, label %15
    i16 7, label %15
    i16 8, label %15
    i16 9, label %15
    i16 14, label %15
  ]

10:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %11 = zext nneg i16 %9 to i64
  %12 = getelementptr inbounds [19 x ptr], ptr @gpu_shader_math.names, i64 0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %13, ptr noundef %3, ptr noundef %4) #6
  br label %38

15:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  %16 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 0, i32 4
  %17 = load i8, ptr %16, align 8, !tbaa !50
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1, i32 4
  %21 = load i8, ptr %20, align 8, !tbaa !50
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %15
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %24 = getelementptr inbounds [2 x %struct.GPUNodeStack], ptr %6, i64 0, i64 1
  %25 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(48) %25, i64 48, i1 false)
  %26 = zext nneg i16 %9 to i64
  %27 = getelementptr inbounds [19 x ptr], ptr @gpu_shader_math.names, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %28, ptr noundef nonnull %6, ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #7
  br label %38

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %31, i64 48, i1 false)
  %32 = getelementptr inbounds [2 x %struct.GPUNodeStack], ptr %7, i64 0, i64 1
  %33 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(48) %33, i64 48, i1 false)
  %34 = zext nneg i16 %9 to i64
  %35 = getelementptr inbounds [19 x ptr], ptr @gpu_shader_math.names, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %7, ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #7
  br label %38

38:                                               ; preds = %10, %30, %23, %5
  %39 = phi i32 [ 0, %5 ], [ 1, %23 ], [ 1, %30 ], [ 1, %10 ]
  ret i32 %39
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }

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
!34 = !{!"node_shader_math.c:node_shader_exec_math"}
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
!49 = !{!"node_shader_math.c:gpu_shader_math"}
!50 = !{!51, !37, i64 40}
!51 = !{!"GPUNodeStack", !41, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !42, i64 42}
