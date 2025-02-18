; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_texture.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.bNodeExecData = type { ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }

@register_node_type_sh_texture.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@sh_node_texture_in = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 0, i32 128, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_texture_out = internal global [4 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 512, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 512, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 512, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"texture_image\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"srgb_to_linearrgb\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_texture() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_texture.ntype, i32 noundef 106, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_texture.ntype, i16 noundef signext 1) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_texture.ntype, ptr noundef nonnull @sh_node_texture_in, ptr noundef nonnull @sh_node_texture_out) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_texture.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_texture) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_texture.ntype, ptr noundef nonnull @gpu_shader_texture) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_texture.ntype) #5
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_texture(ptr noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca %struct.TexResult, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %138, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %138, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #5
  %19 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %21 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %22 = load i16, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 114
  %24 = load i16, ptr %23, align 2, !tbaa !48
  %25 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 6
  store ptr %9, ptr %25, align 8, !tbaa !50
  %26 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  store float 0.000000e+00, ptr %26, align 4, !tbaa !52
  %27 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 2
  store float 0.000000e+00, ptr %27, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  store float 0.000000e+00, ptr %28, align 4, !tbaa !54
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %17
  %33 = load ptr, ptr %4, align 8, !tbaa !58
  call void @nodestack_get_vec(ptr noundef nonnull %8, i16 noundef signext 1, ptr noundef %33) #5
  %34 = load ptr, ptr %4, align 8, !tbaa !58
  %35 = getelementptr inbounds %struct.bNodeStack, ptr %34, i64 0, i32 6
  %36 = load i16, ptr %35, align 4, !tbaa !59
  switch i16 %36, label %61 [
    i16 1, label %37
    i16 2, label %46
  ]

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.bNodeStack, ptr %34, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !60
  %40 = load ptr, ptr %14, align 8, !tbaa !34
  %41 = getelementptr inbounds float, ptr %39, i64 3
  %42 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 15
  %43 = load i16, ptr %42, align 8, !tbaa !61
  %44 = sext i16 %43 to i32
  %45 = call i32 @multitex_nodes(ptr noundef %40, ptr noundef nonnull %8, ptr noundef %39, ptr noundef nonnull %41, i32 noundef %44, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #5
  br label %74

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.bNodeStack, ptr %34, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #5
  %49 = load float, ptr %48, align 4, !tbaa !62
  store float %49, ptr %10, align 4, !tbaa !62
  %50 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float 0.000000e+00, ptr %50, align 4, !tbaa !62
  %51 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store float 0.000000e+00, ptr %51, align 4, !tbaa !62
  %52 = getelementptr inbounds float, ptr %48, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !62
  store float %53, ptr %11, align 4, !tbaa !62
  %54 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float 0.000000e+00, ptr %54, align 4, !tbaa !62
  %55 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store float 0.000000e+00, ptr %55, align 4, !tbaa !62
  %56 = load ptr, ptr %14, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 15
  %58 = load i16, ptr %57, align 8, !tbaa !61
  %59 = sext i16 %58 to i32
  %60 = call i32 @multitex_nodes(ptr noundef %56, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %59, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #5
  br label %74

61:                                               ; preds = %32
  %62 = load ptr, ptr %14, align 8, !tbaa !34
  %63 = call i32 @multitex_nodes(ptr noundef %62, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #5
  br label %74

64:                                               ; preds = %17
  %65 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 56
  %66 = load float, ptr %65, align 4, !tbaa !62
  store float %66, ptr %8, align 4, !tbaa !62
  %67 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 56, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !62
  %69 = getelementptr inbounds float, ptr %8, i64 1
  store float %68, ptr %69, align 4, !tbaa !62
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 56, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !62
  %72 = getelementptr inbounds float, ptr %8, i64 2
  store float %71, ptr %72, align 4, !tbaa !62
  %73 = call i32 @multitex_nodes(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #5
  br label %74

74:                                               ; preds = %37, %61, %46, %64
  %75 = phi i32 [ %45, %37 ], [ %60, %46 ], [ %63, %61 ], [ %73, %64 ]
  %76 = load ptr, ptr %14, align 8, !tbaa !34
  %77 = getelementptr inbounds %struct.Tex, ptr %76, i64 0, i32 32
  %78 = load i16, ptr %77, align 8, !tbaa !63
  %79 = icmp eq i16 %78, 6
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load ptr, ptr %25, align 8, !tbaa !50
  %82 = load float, ptr %81, align 4, !tbaa !62
  %83 = call float @llvm.fmuladd.f32(float %82, float 0x3FE6666660000000, float 5.000000e-01)
  store float %83, ptr %7, align 8, !tbaa !67
  %84 = fcmp olt float %83, 0.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store float 0.000000e+00, ptr %7, align 8, !tbaa !67
  br label %89

86:                                               ; preds = %80
  %87 = fcmp ogt float %83, 1.000000e+00
  br i1 %87, label %88, label %89

88:                                               ; preds = %86
  store float 1.000000e+00, ptr %7, align 8, !tbaa !67
  br label %89

89:                                               ; preds = %85, %88, %86, %74
  %90 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 5
  %91 = load i32, ptr %90, align 4, !tbaa !68
  %92 = icmp eq i32 %91, 0
  %93 = load float, ptr %7, align 8
  %94 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 4
  %95 = load float, ptr %94, align 8
  %96 = select i1 %92, float %93, float %95
  %97 = load ptr, ptr %5, align 8, !tbaa !58
  store float %96, ptr %97, align 8, !tbaa !62
  %98 = and i32 %75, 1
  %99 = icmp eq i32 %98, 0
  %100 = getelementptr inbounds ptr, ptr %5, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !58
  %102 = getelementptr inbounds float, ptr %101, i64 1
  br i1 %99, label %103, label %106

103:                                              ; preds = %89
  %104 = load ptr, ptr %5, align 8, !tbaa !58
  %105 = load float, ptr %104, align 8, !tbaa !62
  store float %105, ptr %101, align 4, !tbaa !62
  store float %105, ptr %102, align 4, !tbaa !62
  br label %110

106:                                              ; preds = %89
  %107 = load float, ptr %28, align 4, !tbaa !62
  store float %107, ptr %101, align 4, !tbaa !62
  %108 = load float, ptr %27, align 8, !tbaa !62
  store float %108, ptr %102, align 4, !tbaa !62
  %109 = load float, ptr %26, align 4, !tbaa !62
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi float [ %109, %106 ], [ %105, %103 ]
  %112 = getelementptr inbounds float, ptr %101, i64 2
  store float %111, ptr %112, align 4, !tbaa !62
  %113 = getelementptr inbounds [4 x float], ptr %101, i64 0, i64 3
  store float 1.000000e+00, ptr %113, align 4, !tbaa !62
  %114 = getelementptr inbounds ptr, ptr %5, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !58
  %116 = load float, ptr %9, align 4, !tbaa !62
  store float %116, ptr %115, align 4, !tbaa !62
  %117 = getelementptr inbounds float, ptr %9, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !62
  %119 = getelementptr inbounds float, ptr %115, i64 1
  store float %118, ptr %119, align 4, !tbaa !62
  %120 = getelementptr inbounds float, ptr %9, i64 2
  %121 = load float, ptr %120, align 4, !tbaa !62
  %122 = getelementptr inbounds float, ptr %115, i64 2
  store float %121, ptr %122, align 4, !tbaa !62
  %123 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 112
  %124 = load i8, ptr %123, align 8, !tbaa !69
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %110
  %127 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !70
  %129 = getelementptr inbounds ptr, ptr %5, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !58
  %131 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 103
  %132 = load i32, ptr %131, align 4, !tbaa !72
  %133 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 104
  %134 = load i32, ptr %133, align 8, !tbaa !73
  %135 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 113
  %136 = load i8, ptr %135, align 1, !tbaa !74
  call void @BKE_node_preview_set_pixel(ptr noundef %128, ptr noundef %130, i32 noundef %132, i32 noundef %134, i8 noundef zeroext %136) #5
  br label %137

137:                                              ; preds = %126, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #5
  br label %138

138:                                              ; preds = %137, %13, %6
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gpu_shader_texture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 32
  %11 = load i16, ptr %10, align 8, !tbaa !63
  %12 = icmp eq i16 %11, 8
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 54
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 51
  %19 = tail call ptr @GPU_image(ptr noundef nonnull %15, ptr noundef nonnull %18, i8 noundef zeroext 0) #5
  %20 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4, ptr noundef %19) #5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %14, align 8, !tbaa !75
  %24 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %23, ptr noundef nonnull %18, ptr noundef null) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ImBuf, ptr %24, i64 0, i32 38
  %28 = load i32, ptr %27, align 8, !tbaa !76
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = tail call zeroext i8 @GPU_material_do_color_management(ptr noundef %0) #5
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 1, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !80
  %37 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %36, ptr noundef nonnull %35) #5
  br label %38

38:                                               ; preds = %34, %31, %26, %22
  %39 = load ptr, ptr %14, align 8, !tbaa !75
  tail call void @BKE_image_release_ibuf(ptr noundef %39, ptr noundef %24, ptr noundef null) #5
  br label %40

40:                                               ; preds = %5, %9, %13, %17, %38
  %41 = phi i8 [ %20, %38 ], [ %20, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %5 ]
  %42 = zext i8 %41 to i32
  ret i32 %42
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare i32 @multitex_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @GPU_image(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_material_do_color_management(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!34 = !{!35, !36, i64 240}
!35 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"float", !37, i64 0}
!43 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!44 = !{!45, !36, i64 0}
!45 = !{!"ShaderCallData", !36, i64 0, !36, i64 8}
!46 = !{!35, !36, i64 200}
!47 = !{!35, !40, i64 376}
!48 = !{!49, !40, i64 1434}
!49 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !37, i64 44, !40, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 90, !40, i64 92, !40, i64 94, !40, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !39, i64 160, !39, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !42, i64 252, !42, i64 256, !42, i64 260, !42, i64 264, !42, i64 268, !42, i64 272, !42, i64 276, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !42, i64 308, !42, i64 312, !42, i64 316, !39, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !42, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !42, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !39, i64 1096, !39, i64 1100, !39, i64 1104, !39, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !42, i64 1256, !42, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !42, i64 1336, !42, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !39, i64 1380, !39, i64 1384, !39, i64 1388, !37, i64 1392, !39, i64 1404, !39, i64 1408, !39, i64 1412, !37, i64 1416, !42, i64 1428, !37, i64 1432, !37, i64 1433, !40, i64 1434, !40, i64 1436, !40, i64 1438, !39, i64 1440, !39, i64 1444, !39, i64 1448, !39, i64 1452, !36, i64 1456, !36, i64 1464}
!50 = !{!51, !36, i64 24}
!51 = !{!"TexResult", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !39, i64 20, !36, i64 24}
!52 = !{!51, !42, i64 12}
!53 = !{!51, !42, i64 8}
!54 = !{!51, !42, i64 4}
!55 = !{!56, !36, i64 296}
!56 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !40, i64 168, !40, i64 170, !40, i64 172, !40, i64 174, !36, i64 176, !37, i64 184, !42, i64 248, !42, i64 252, !36, i64 256, !40, i64 264, !40, i64 266, !39, i64 268, !36, i64 272, !39, i64 280, !39, i64 284, !36, i64 288, !36, i64 296, !57, i64 304}
!57 = !{!"bNodeStack", !37, i64 0, !42, i64 16, !42, i64 20, !36, i64 24, !40, i64 32, !40, i64 34, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !37, i64 44}
!58 = !{!36, !36, i64 0}
!59 = !{!57, !40, i64 36}
!60 = !{!57, !36, i64 24}
!61 = !{!49, !40, i64 96}
!62 = !{!42, !42, i64 0}
!63 = !{!64, !40, i64 232}
!64 = !{!"Tex", !65, i64 0, !36, i64 120, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !42, i64 148, !42, i64 152, !42, i64 156, !42, i64 160, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !42, i64 204, !42, i64 208, !42, i64 212, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !42, i64 236, !42, i64 240, !42, i64 244, !42, i64 248, !39, i64 252, !39, i64 256, !40, i64 260, !40, i64 262, !40, i64 264, !40, i64 266, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !66, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!65 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !39, i64 100, !39, i64 104, !39, i64 108, !36, i64 112}
!66 = !{!"ImageUser", !36, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !40, i64 28, !40, i64 30, !40, i64 32, !40, i64 34, !39, i64 36}
!67 = !{!51, !42, i64 0}
!68 = !{!51, !39, i64 20}
!69 = !{!49, !37, i64 1432}
!70 = !{!71, !36, i64 8}
!71 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!72 = !{!49, !39, i64 1380}
!73 = !{!49, !39, i64 1384}
!74 = !{!49, !37, i64 1433}
!75 = !{!64, !36, i64 352}
!76 = !{!77, !39, i64 2432}
!77 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !78, i64 2436, !79, i64 2456}
!78 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!79 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!80 = !{!81, !36, i64 32}
!81 = !{!"GPUNodeStack", !39, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42}
