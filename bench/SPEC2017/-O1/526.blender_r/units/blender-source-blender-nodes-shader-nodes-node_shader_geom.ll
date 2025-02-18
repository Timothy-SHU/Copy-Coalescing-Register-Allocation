; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_geom.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_geom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }
%struct.NodeGeometry = type { [64 x i8], [64 x i8] }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }

@register_node_type_sh_geom.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"Geometry\00", align 1
@sh_node_geom_out = internal global [10 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Global\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Local\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"View\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Orco\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"UV\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Vertex Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Vertex Alpha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Front/Back\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"NodeGeometry\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@node_shader_exec_geom.defaultvcol = internal unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"geom\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_geom() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_geom.ntype, i32 noundef 108, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 0) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_geom.ntype, i16 noundef signext 1) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef null, ptr noundef nonnull @sh_node_geom_out) #5
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef nonnull @node_shader_init_geometry) #5
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_geom) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef nonnull @gpu_shader_geom) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_geom.ntype) #5
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_init_geometry(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 128, ptr noundef nonnull @.str.1) #5
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !38
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @node_shader_exec_geom(ptr noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture noundef readonly %5) #2 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %181, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 76
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 72, i64 %14
  %16 = load i8, ptr %11, align 1, !tbaa !49
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 74
  %20 = load i32, ptr %19, align 8, !tbaa !50
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = zext nneg i32 %20 to i64
  br label %27

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %35, label %27, !llvm.loop !51

27:                                               ; preds = %22, %24
  %28 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 72, i64 %28, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %11) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %24

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 72, i64 %28
  br label %35

35:                                               ; preds = %24, %18, %33, %8
  %36 = phi ptr [ %34, %33 ], [ %15, %8 ], [ %15, %18 ], [ %15, %24 ]
  %37 = load ptr, ptr %5, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 57
  %39 = load float, ptr %38, align 4, !tbaa !56
  store float %39, ptr %37, align 4, !tbaa !56
  %40 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 57, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !56
  %42 = getelementptr inbounds float, ptr %37, i64 1
  store float %41, ptr %42, align 4, !tbaa !56
  %43 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 57, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !56
  %45 = getelementptr inbounds float, ptr %37, i64 2
  store float %44, ptr %45, align 4, !tbaa !56
  %46 = getelementptr inbounds ptr, ptr %5, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29
  %49 = load float, ptr %48, align 4, !tbaa !56
  store float %49, ptr %47, align 4, !tbaa !56
  %50 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !56
  %52 = getelementptr inbounds float, ptr %47, i64 1
  store float %51, ptr %52, align 4, !tbaa !56
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !56
  %55 = getelementptr inbounds float, ptr %47, i64 2
  store float %54, ptr %55, align 4, !tbaa !56
  %56 = getelementptr inbounds ptr, ptr %5, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !34
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 30
  %59 = load float, ptr %58, align 4, !tbaa !56
  store float %59, ptr %57, align 4, !tbaa !56
  %60 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 30, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !56
  %62 = getelementptr inbounds float, ptr %57, i64 1
  store float %61, ptr %62, align 4, !tbaa !56
  %63 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 30, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !56
  %65 = getelementptr inbounds float, ptr %57, i64 2
  store float %64, ptr %65, align 4, !tbaa !56
  %66 = getelementptr inbounds ptr, ptr %5, i64 3
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 56
  %69 = load float, ptr %68, align 4, !tbaa !56
  store float %69, ptr %67, align 4, !tbaa !56
  %70 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 56, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !56
  %72 = getelementptr inbounds float, ptr %67, i64 1
  store float %71, ptr %72, align 4, !tbaa !56
  %73 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 56, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !56
  %75 = getelementptr inbounds float, ptr %67, i64 2
  store float %74, ptr %75, align 4, !tbaa !56
  %76 = getelementptr inbounds ptr, ptr %5, i64 4
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.ShadeInputUV, ptr %36, i64 0, i32 2
  %79 = load float, ptr %78, align 4, !tbaa !56
  store float %79, ptr %77, align 4, !tbaa !56
  %80 = getelementptr inbounds %struct.ShadeInputUV, ptr %36, i64 0, i32 2, i64 1
  %81 = load float, ptr %80, align 4, !tbaa !56
  %82 = getelementptr inbounds float, ptr %77, i64 1
  store float %81, ptr %82, align 4, !tbaa !56
  %83 = getelementptr inbounds %struct.ShadeInputUV, ptr %36, i64 0, i32 2, i64 2
  %84 = load float, ptr %83, align 4, !tbaa !56
  %85 = getelementptr inbounds float, ptr %77, i64 2
  store float %84, ptr %85, align 4, !tbaa !56
  %86 = getelementptr inbounds ptr, ptr %5, i64 5
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 17
  %89 = load float, ptr %88, align 4, !tbaa !56
  store float %89, ptr %87, align 4, !tbaa !56
  %90 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 17, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !56
  %92 = getelementptr inbounds float, ptr %87, i64 1
  store float %91, ptr %92, align 4, !tbaa !56
  %93 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 17, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !56
  %95 = getelementptr inbounds float, ptr %87, i64 2
  store float %94, ptr %95, align 4, !tbaa !56
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 75
  %97 = load i32, ptr %96, align 4, !tbaa !57
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %134, label %99

99:                                               ; preds = %35
  %100 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 73
  %101 = getelementptr inbounds %struct.NodeGeometry, ptr %11, i64 0, i32 1
  %102 = load i8, ptr %101, align 1, !tbaa !49
  %103 = icmp ne i8 %102, 0
  %104 = icmp sgt i32 %97, 0
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %99
  %107 = zext i32 %97 to i64
  br label %111

108:                                              ; preds = %111
  %109 = add nuw nsw i64 %112, 1
  %110 = icmp eq i64 %109, %107
  br i1 %110, label %119, label %111, !llvm.loop !58

111:                                              ; preds = %106, %108
  %112 = phi i64 [ 0, %106 ], [ %109, %108 ]
  %113 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 73, i64 %112, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !59
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %114, ptr noundef nonnull dereferenceable(1) %101) #6
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %108

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 73, i64 %112
  br label %119

119:                                              ; preds = %108, %117, %99
  %120 = phi ptr [ %118, %117 ], [ %100, %99 ], [ %100, %108 ]
  %121 = getelementptr inbounds ptr, ptr %5, i64 6
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = load float, ptr %120, align 4, !tbaa !56
  store float %123, ptr %122, align 4, !tbaa !56
  %124 = getelementptr inbounds float, ptr %120, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !56
  %126 = getelementptr inbounds float, ptr %122, i64 1
  store float %125, ptr %126, align 4, !tbaa !56
  %127 = getelementptr inbounds float, ptr %120, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !56
  %129 = getelementptr inbounds float, ptr %122, i64 2
  store float %128, ptr %129, align 4, !tbaa !56
  %130 = getelementptr inbounds [4 x float], ptr %120, i64 0, i64 3
  %131 = load float, ptr %130, align 4, !tbaa !56
  %132 = getelementptr inbounds [4 x float], ptr %122, i64 0, i64 3
  store float %131, ptr %132, align 4, !tbaa !56
  %133 = load float, ptr %130, align 4, !tbaa !56
  br label %137

134:                                              ; preds = %35
  %135 = getelementptr inbounds ptr, ptr %5, i64 6
  %136 = load ptr, ptr %135, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %136, ptr noundef nonnull align 16 dereferenceable(16) @node_shader_exec_geom.defaultvcol, i64 16, i1 false)
  br label %137

137:                                              ; preds = %134, %119
  %138 = phi float [ 1.000000e+00, %134 ], [ %133, %119 ]
  %139 = getelementptr inbounds ptr, ptr %5, i64 7
  %140 = load ptr, ptr %139, align 8, !tbaa !34
  store float %138, ptr %140, align 8, !tbaa !56
  %141 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 15
  %142 = load i16, ptr %141, align 8, !tbaa !61
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %174, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 82
  %146 = load ptr, ptr %5, align 8, !tbaa !34
  %147 = getelementptr inbounds %struct.bNodeStack, ptr %146, i64 0, i32 3
  store ptr %145, ptr %147, align 8, !tbaa !62
  %148 = load ptr, ptr %5, align 8, !tbaa !34
  %149 = getelementptr inbounds %struct.bNodeStack, ptr %148, i64 0, i32 6
  store i16 1, ptr %149, align 4, !tbaa !64
  %150 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 78
  %151 = load ptr, ptr %46, align 8, !tbaa !34
  %152 = getelementptr inbounds %struct.bNodeStack, ptr %151, i64 0, i32 3
  store ptr %150, ptr %152, align 8, !tbaa !62
  %153 = load ptr, ptr %46, align 8, !tbaa !34
  %154 = getelementptr inbounds %struct.bNodeStack, ptr %153, i64 0, i32 6
  store i16 1, ptr %154, align 4, !tbaa !64
  %155 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 90
  %156 = load ptr, ptr %56, align 8, !tbaa !34
  %157 = getelementptr inbounds %struct.bNodeStack, ptr %156, i64 0, i32 3
  store ptr %155, ptr %157, align 8, !tbaa !62
  %158 = load ptr, ptr %56, align 8, !tbaa !34
  %159 = getelementptr inbounds %struct.bNodeStack, ptr %158, i64 0, i32 6
  store i16 2, ptr %159, align 4, !tbaa !64
  %160 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 80
  %161 = load ptr, ptr %66, align 8, !tbaa !34
  %162 = getelementptr inbounds %struct.bNodeStack, ptr %161, i64 0, i32 3
  store ptr %160, ptr %162, align 8, !tbaa !62
  %163 = load ptr, ptr %66, align 8, !tbaa !34
  %164 = getelementptr inbounds %struct.bNodeStack, ptr %163, i64 0, i32 6
  store i16 1, ptr %164, align 4, !tbaa !64
  %165 = load ptr, ptr %76, align 8, !tbaa !34
  %166 = getelementptr inbounds %struct.bNodeStack, ptr %165, i64 0, i32 3
  store ptr %36, ptr %166, align 8, !tbaa !62
  %167 = load ptr, ptr %76, align 8, !tbaa !34
  %168 = getelementptr inbounds %struct.bNodeStack, ptr %167, i64 0, i32 6
  store i16 1, ptr %168, align 4, !tbaa !64
  %169 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 88
  %170 = load ptr, ptr %86, align 8, !tbaa !34
  %171 = getelementptr inbounds %struct.bNodeStack, ptr %170, i64 0, i32 3
  store ptr %169, ptr %171, align 8, !tbaa !62
  %172 = load ptr, ptr %86, align 8, !tbaa !34
  %173 = getelementptr inbounds %struct.bNodeStack, ptr %172, i64 0, i32 6
  store i16 1, ptr %173, align 4, !tbaa !64
  br label %174

174:                                              ; preds = %144, %137
  %175 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 7
  %176 = load i16, ptr %175, align 8, !tbaa !65
  %177 = icmp eq i16 %176, 0
  %178 = select i1 %177, float 1.000000e+00, float 0.000000e+00
  %179 = getelementptr inbounds ptr, ptr %5, i64 8
  %180 = load ptr, ptr %179, align 8, !tbaa !34
  store float %178, ptr %180, align 8, !tbaa !56
  br label %181

181:                                              ; preds = %174, %6
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gpu_shader_geom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = tail call ptr @GPU_attribute(i32 noundef 14, ptr noundef nonnull @.str.2) #5
  %9 = tail call ptr @GPU_attribute(i32 noundef 5, ptr noundef %7) #5
  %10 = getelementptr inbounds %struct.NodeGeometry, ptr %7, i64 0, i32 1
  %11 = tail call ptr @GPU_attribute(i32 noundef 6, ptr noundef nonnull %10) #5
  %12 = tail call ptr @GPU_builtin(i32 noundef 16) #5
  %13 = tail call ptr @GPU_builtin(i32 noundef 32) #5
  %14 = tail call ptr @GPU_builtin(i32 noundef 4) #5
  %15 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef %4, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %8, ptr noundef %9, ptr noundef %11) #5
  %16 = zext i8 %15 to i32
  ret i32 %16
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @GPU_attribute(i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GPU_builtin(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 248}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!46, !35, i64 0}
!46 = !{!"ShaderCallData", !35, i64 0, !35, i64 8}
!47 = !{!48, !40, i64 1104}
!48 = !{!"ShadeInput", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !36, i64 44, !41, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 90, !41, i64 92, !41, i64 94, !41, i64 96, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !36, i64 148, !40, i64 160, !40, i64 164, !43, i64 168, !43, i64 172, !43, i64 176, !43, i64 180, !43, i64 184, !43, i64 188, !36, i64 192, !36, i64 204, !36, i64 216, !43, i64 228, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252, !43, i64 256, !43, i64 260, !43, i64 264, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !40, i64 320, !36, i64 324, !36, i64 336, !36, i64 348, !36, i64 360, !36, i64 372, !36, i64 384, !36, i64 400, !36, i64 416, !43, i64 428, !36, i64 432, !36, i64 444, !36, i64 456, !43, i64 472, !36, i64 476, !36, i64 492, !36, i64 504, !36, i64 520, !36, i64 904, !40, i64 1096, !40, i64 1100, !40, i64 1104, !40, i64 1108, !36, i64 1112, !36, i64 1124, !36, i64 1136, !36, i64 1148, !36, i64 1160, !36, i64 1172, !36, i64 1184, !36, i64 1196, !36, i64 1208, !36, i64 1220, !36, i64 1232, !36, i64 1244, !43, i64 1256, !43, i64 1260, !36, i64 1264, !36, i64 1276, !36, i64 1288, !36, i64 1300, !36, i64 1312, !36, i64 1324, !43, i64 1336, !43, i64 1340, !36, i64 1344, !36, i64 1356, !36, i64 1368, !40, i64 1380, !40, i64 1384, !40, i64 1388, !36, i64 1392, !40, i64 1404, !40, i64 1408, !40, i64 1412, !36, i64 1416, !43, i64 1428, !36, i64 1432, !36, i64 1433, !41, i64 1434, !41, i64 1436, !41, i64 1438, !40, i64 1440, !40, i64 1444, !40, i64 1448, !40, i64 1452, !35, i64 1456, !35, i64 1464}
!49 = !{!36, !36, i64 0}
!50 = !{!48, !40, i64 1096}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !35, i64 40}
!55 = !{!"ShadeInputUV", !36, i64 0, !36, i64 12, !36, i64 24, !35, i64 40}
!56 = !{!43, !43, i64 0}
!57 = !{!48, !40, i64 1100}
!58 = distinct !{!58, !52, !53}
!59 = !{!60, !35, i64 16}
!60 = !{!"ShadeInputCol", !36, i64 0, !35, i64 16}
!61 = !{!48, !41, i64 96}
!62 = !{!63, !35, i64 24}
!63 = !{!"bNodeStack", !36, i64 0, !43, i64 16, !43, i64 20, !35, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !36, i64 44}
!64 = !{!63, !41, i64 36}
!65 = !{!48, !41, i64 56}
