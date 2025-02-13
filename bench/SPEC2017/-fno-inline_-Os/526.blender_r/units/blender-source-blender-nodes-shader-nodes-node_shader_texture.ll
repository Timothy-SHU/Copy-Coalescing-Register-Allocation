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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_texture() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_texture.ntype, i32 noundef 106, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #7
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_texture.ntype, i16 noundef signext 1) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_texture.ntype, ptr noundef nonnull @sh_node_texture_in, ptr noundef nonnull @sh_node_texture_out) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_texture.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_texture) #7
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_texture.ntype, ptr noundef nonnull @gpu_shader_texture) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_texture.ntype) #7
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_texture(ptr noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = alloca %struct.TexResult, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %114, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %114, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #8
  %19 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false)
  %21 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %22 = load i16, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 114
  %24 = load i16, ptr %23, align 2, !tbaa !49
  %25 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 6
  store ptr %9, ptr %25, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 3
  store float 0.000000e+00, ptr %26, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 1
  store <2 x float> zeroinitializer, ptr %27, align 4, !tbaa !54
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %20, i64 0, i32 23
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %17
  %32 = load ptr, ptr %4, align 8, !tbaa !58
  call void @nodestack_get_vec(ptr noundef nonnull %8, i16 noundef signext 1, ptr noundef %32) #7
  %33 = load ptr, ptr %4, align 8, !tbaa !58
  %34 = getelementptr inbounds %struct.bNodeStack, ptr %33, i64 0, i32 6
  %35 = load i16, ptr %34, align 4, !tbaa !59
  switch i16 %35, label %58 [
    i16 1, label %36
    i16 2, label %45
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.bNodeStack, ptr %33, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = load ptr, ptr %14, align 8, !tbaa !35
  %40 = getelementptr inbounds float, ptr %38, i64 3
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 15
  %42 = load i16, ptr %41, align 8, !tbaa !61
  %43 = sext i16 %42 to i32
  %44 = call i32 @multitex_nodes(ptr noundef %39, ptr noundef nonnull %8, ptr noundef %38, ptr noundef nonnull %40, i32 noundef %43, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %64

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.bNodeStack, ptr %33, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  %48 = load float, ptr %47, align 4, !tbaa !54
  store float %48, ptr %10, align 4, !tbaa !54
  %49 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %49, align 4, !tbaa !54
  %50 = getelementptr inbounds float, ptr %47, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !54
  store float %51, ptr %11, align 4, !tbaa !54
  %52 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %52, align 4, !tbaa !54
  %53 = load ptr, ptr %14, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 15
  %55 = load i16, ptr %54, align 8, !tbaa !61
  %56 = sext i16 %55 to i32
  %57 = call i32 @multitex_nodes(ptr noundef %53, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %56, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  br label %64

58:                                               ; preds = %31
  %59 = load ptr, ptr %14, align 8, !tbaa !35
  %60 = call i32 @multitex_nodes(ptr noundef %59, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %64

61:                                               ; preds = %17
  %62 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 56
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %62) #9
  %63 = call i32 @multitex_nodes(ptr noundef nonnull %15, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %7, i16 noundef signext %24, i16 noundef signext %22, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %64

64:                                               ; preds = %36, %58, %45, %61
  %65 = phi i32 [ %44, %36 ], [ %57, %45 ], [ %60, %58 ], [ %63, %61 ]
  %66 = load ptr, ptr %14, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.Tex, ptr %66, i64 0, i32 32
  %68 = load i16, ptr %67, align 8, !tbaa !62
  %69 = icmp eq i16 %68, 6
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load ptr, ptr %25, align 8, !tbaa !51
  %72 = load float, ptr %71, align 4, !tbaa !54
  %73 = call float @llvm.fmuladd.f32(float %72, float 0x3FE6666660000000, float 5.000000e-01)
  store float %73, ptr %7, align 8, !tbaa !66
  %74 = fcmp olt float %73, 0.000000e+00
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store float 0.000000e+00, ptr %7, align 8, !tbaa !66
  br label %79

76:                                               ; preds = %70
  %77 = fcmp ogt float %73, 1.000000e+00
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  store float 1.000000e+00, ptr %7, align 8, !tbaa !66
  br label %79

79:                                               ; preds = %75, %78, %76, %64
  %80 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 5
  %81 = load i32, ptr %80, align 4, !tbaa !67
  %82 = icmp eq i32 %81, 0
  %83 = load float, ptr %7, align 8
  %84 = getelementptr inbounds %struct.TexResult, ptr %7, i64 0, i32 4
  %85 = load float, ptr %84, align 8
  %86 = select i1 %82, float %83, float %85
  %87 = load ptr, ptr %5, align 8, !tbaa !58
  store float %86, ptr %87, align 8, !tbaa !54
  %88 = and i32 %65, 1
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds ptr, ptr %5, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !58
  br i1 %89, label %92, label %93

92:                                               ; preds = %79
  call fastcc void @copy_v3_fl(ptr noundef %91, float noundef %86) #9
  br label %94

93:                                               ; preds = %79
  call fastcc void @copy_v3_v3(ptr noundef %91, ptr noundef nonnull %27) #9
  br label %94

94:                                               ; preds = %93, %92
  %95 = load ptr, ptr %90, align 8, !tbaa !58
  %96 = getelementptr inbounds [4 x float], ptr %95, i64 0, i64 3
  store float 1.000000e+00, ptr %96, align 4, !tbaa !54
  %97 = getelementptr inbounds ptr, ptr %5, i64 2
  %98 = load ptr, ptr %97, align 8, !tbaa !58
  call fastcc void @copy_v3_v3(ptr noundef %98, ptr noundef nonnull %9) #9
  %99 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 112
  %100 = load i8, ptr %99, align 8, !tbaa !68
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !69
  %105 = getelementptr inbounds ptr, ptr %5, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !58
  %107 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 103
  %108 = load i32, ptr %107, align 4, !tbaa !71
  %109 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 104
  %110 = load i32, ptr %109, align 8, !tbaa !72
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %18, i64 0, i32 113
  %112 = load i8, ptr %111, align 1, !tbaa !73
  call void @BKE_node_preview_set_pixel(ptr noundef %104, ptr noundef %106, i32 noundef %108, i32 noundef %110, i8 noundef zeroext %112) #7
  br label %113

113:                                              ; preds = %102, %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #8
  br label %114

114:                                              ; preds = %113, %13, %6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_texture(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !74 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 32
  %11 = load i16, ptr %10, align 8, !tbaa !62
  %12 = icmp eq i16 %11, 8
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 54
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Tex, ptr %7, i64 0, i32 51
  %19 = tail call ptr @GPU_image(ptr noundef nonnull %15, ptr noundef nonnull %18, i8 noundef zeroext 0) #7
  %20 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4, ptr noundef %19) #7
  %21 = zext i8 %20 to i32
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %14, align 8, !tbaa !75
  %25 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %24, ptr noundef nonnull %18, ptr noundef null) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ImBuf, ptr %25, i64 0, i32 38
  %29 = load i32, ptr %28, align 8, !tbaa !76
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = tail call zeroext i8 @GPU_material_do_color_management(ptr noundef %0) #7
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 1, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  %38 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %37, ptr noundef nonnull %36) #7
  br label %39

39:                                               ; preds = %35, %32, %27, %23
  %40 = load ptr, ptr %14, align 8, !tbaa !75
  tail call void @BKE_image_release_ibuf(ptr noundef %40, ptr noundef %25, ptr noundef null) #7
  br label %41

41:                                               ; preds = %5, %9, %13, %17, %39
  %42 = phi i32 [ %21, %39 ], [ 0, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %5 ]
  ret i32 %42
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @multitex_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !82 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl(ptr nocapture noundef writeonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !83 {
  store float %1, ptr %0, align 4, !tbaa !54
  %3 = getelementptr inbounds float, ptr %0, i64 1
  store float %1, ptr %3, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %0, i64 2
  store float %1, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_image(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_material_do_color_management(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!34 = !{!"node_shader_texture.c:node_shader_exec_texture"}
!35 = !{!36, !37, i64 240}
!36 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !38, i64 188, !42, i64 200, !42, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !38, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !37, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !37, i64 456}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!46, !37, i64 0}
!46 = !{!"ShaderCallData", !37, i64 0, !37, i64 8}
!47 = !{!36, !37, i64 200}
!48 = !{!36, !41, i64 376}
!49 = !{!50, !41, i64 1434}
!50 = !{!"ShadeInput", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !38, i64 44, !41, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !41, i64 96, !38, i64 100, !38, i64 112, !38, i64 124, !38, i64 136, !38, i64 148, !40, i64 160, !40, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !38, i64 192, !38, i64 204, !38, i64 216, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !40, i64 320, !38, i64 324, !38, i64 336, !38, i64 348, !38, i64 360, !38, i64 372, !38, i64 384, !38, i64 400, !38, i64 416, !43, i64 428, !38, i64 432, !38, i64 444, !38, i64 456, !43, i64 472, !38, i64 476, !38, i64 492, !38, i64 504, !38, i64 520, !38, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !38, i64 1112, !38, i64 1124, !38, i64 1136, !38, i64 1148, !38, i64 1160, !38, i64 1172, !38, i64 1184, !38, i64 1196, !38, i64 1208, !38, i64 1220, !38, i64 1232, !38, i64 1244, !43, i64 1256, !43, i64 1260, !38, i64 1264, !38, i64 1276, !38, i64 1288, !38, i64 1300, !38, i64 1312, !38, i64 1324, !43, i64 1336, !43, i64 1340, !38, i64 1344, !38, i64 1356, !38, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !38, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !38, i64 1416, !43, i64 1428, !38, i64 1432, !38, i64 1433, !41, i64 1434, !41, i64 1436, !41, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !37, i64 1456, !37, i64 1464}
!51 = !{!52, !37, i64 24}
!52 = !{!"TexResult", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !40, i64 20, !37, i64 24}
!53 = !{!52, !43, i64 12}
!54 = !{!43, !43, i64 0}
!55 = !{!56, !37, i64 296}
!56 = !{!"bNodeSocket", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !38, i64 96, !37, i64 160, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !37, i64 176, !38, i64 184, !43, i64 248, !43, i64 252, !37, i64 256, !41, i64 264, !41, i64 266, !40, i64 268, !37, i64 272, !40, i64 280, !40, i64 284, !37, i64 288, !37, i64 296, !57, i64 304}
!57 = !{!"bNodeStack", !38, i64 0, !43, i64 16, !43, i64 20, !37, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !38, i64 44}
!58 = !{!37, !37, i64 0}
!59 = !{!57, !41, i64 36}
!60 = !{!57, !37, i64 24}
!61 = !{!50, !41, i64 96}
!62 = !{!63, !41, i64 232}
!63 = !{!"Tex", !64, i64 0, !37, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !43, i64 152, !43, i64 156, !43, i64 160, !43, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !43, i64 208, !43, i64 212, !41, i64 216, !41, i64 218, !41, i64 220, !41, i64 222, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !40, i64 252, !40, i64 256, !41, i64 260, !41, i64 262, !41, i64 264, !41, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !65, i64 296, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !37, i64 376, !37, i64 384, !37, i64 392, !37, i64 400, !38, i64 408, !38, i64 409}
!64 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!65 = !{!"ImageUser", !37, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !38, i64 24, !38, i64 25, !38, i64 26, !38, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!66 = !{!52, !43, i64 0}
!67 = !{!52, !40, i64 20}
!68 = !{!50, !38, i64 1432}
!69 = !{!70, !37, i64 8}
!70 = !{!"bNodeExecData", !37, i64 0, !37, i64 8}
!71 = !{!50, !40, i64 1380}
!72 = !{!50, !40, i64 1384}
!73 = !{!50, !38, i64 1433}
!74 = !{!"node_shader_texture.c:gpu_shader_texture"}
!75 = !{!63, !37, i64 352}
!76 = !{!77, !40, i64 2432}
!77 = !{!"ImBuf", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !38, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !38, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !37, i64 296, !37, i64 304, !40, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !40, i64 2376, !37, i64 2384, !40, i64 2392, !40, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !40, i64 2432, !78, i64 2436, !79, i64 2456}
!78 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!79 = !{!"DDSData", !40, i64 0, !40, i64 4, !37, i64 8, !40, i64 16}
!80 = !{!81, !37, i64 32}
!81 = !{!"GPUNodeStack", !40, i64 0, !37, i64 8, !38, i64 16, !37, i64 32, !38, i64 40, !38, i64 41, !41, i64 42}
!82 = !{!"node_shader_texture.c:copy_v3_v3"}
!83 = !{!"node_shader_texture.c:copy_v3_fl"}
