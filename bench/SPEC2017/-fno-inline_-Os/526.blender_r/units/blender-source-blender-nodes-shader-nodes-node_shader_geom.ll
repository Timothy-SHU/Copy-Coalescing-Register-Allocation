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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_geom() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_geom.ntype, i32 noundef 108, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 0) #6
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_geom.ntype, i16 noundef signext 1) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef null, ptr noundef nonnull @sh_node_geom_out) #6
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef nonnull @node_shader_init_geometry) #6
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #6
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_geom) #6
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_geom.ntype, ptr noundef nonnull @gpu_shader_geom) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_geom.ntype) #6
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_init_geometry(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !34 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 128, ptr noundef nonnull @.str.1) #6
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_free_standard_storage(ptr noundef) #1

; Function Attrs: optsize
declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @node_shader_exec_geom(ptr noundef readonly %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture noundef readonly %5) #2 !PGOFuncName !46 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %132, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 76
  %13 = load i32, ptr %12, align 8, !tbaa !49
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 72, i64 %14
  %16 = load i8, ptr %11, align 1, !tbaa !51
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 74
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = zext nneg i32 %20 to i64
  br label %27

24:                                               ; preds = %27
  %25 = add nuw nsw i64 %28, 1
  %26 = icmp eq i64 %25, %23
  br i1 %26, label %35, label %27, !llvm.loop !53

27:                                               ; preds = %22, %24
  %28 = phi i64 [ 0, %22 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 72, i64 %28, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !55
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %11) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %24

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 72, i64 %28
  br label %35

35:                                               ; preds = %24, %18, %33, %8
  %36 = phi ptr [ %34, %33 ], [ %15, %8 ], [ %15, %18 ], [ %15, %24 ]
  %37 = load ptr, ptr %5, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 57
  tail call fastcc void @copy_v3_v3(ptr noundef %37, ptr noundef nonnull %38) #8
  %39 = getelementptr inbounds ptr, ptr %5, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  %41 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29
  tail call fastcc void @copy_v3_v3(ptr noundef %40, ptr noundef nonnull %41) #8
  %42 = getelementptr inbounds ptr, ptr %5, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 30
  tail call fastcc void @copy_v3_v3(ptr noundef %43, ptr noundef nonnull %44) #8
  %45 = getelementptr inbounds ptr, ptr %5, i64 3
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 56
  tail call fastcc void @copy_v3_v3(ptr noundef %46, ptr noundef nonnull %47) #8
  %48 = getelementptr inbounds ptr, ptr %5, i64 4
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = getelementptr inbounds %struct.ShadeInputUV, ptr %36, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %49, ptr noundef nonnull %50) #8
  %51 = getelementptr inbounds ptr, ptr %5, i64 5
  %52 = load ptr, ptr %51, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 17
  tail call fastcc void @copy_v3_v3(ptr noundef %52, ptr noundef nonnull %53) #8
  %54 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 75
  %55 = load i32, ptr %54, align 4, !tbaa !57
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 73
  %59 = getelementptr inbounds %struct.NodeGeometry, ptr %11, i64 0, i32 1
  %60 = load i8, ptr %59, align 1, !tbaa !51
  %61 = icmp ne i8 %60, 0
  %62 = icmp sgt i32 %55, 0
  %63 = and i1 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = zext nneg i32 %55 to i64
  br label %69

66:                                               ; preds = %69
  %67 = add nuw nsw i64 %70, 1
  %68 = icmp eq i64 %67, %65
  br i1 %68, label %77, label %69, !llvm.loop !58

69:                                               ; preds = %64, %66
  %70 = phi i64 [ 0, %64 ], [ %67, %66 ]
  %71 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 73, i64 %70, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !59
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(1) %59) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %66

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 73, i64 %70
  br label %77

77:                                               ; preds = %66, %75, %57
  %78 = phi ptr [ %76, %75 ], [ %58, %57 ], [ %58, %66 ]
  %79 = getelementptr inbounds ptr, ptr %5, i64 6
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  tail call fastcc void @copy_v3_v3(ptr noundef %80, ptr noundef nonnull %78) #8
  %81 = getelementptr inbounds [4 x float], ptr %78, i64 0, i64 3
  %82 = load float, ptr %81, align 4, !tbaa !61
  %83 = load ptr, ptr %79, align 8, !tbaa !35
  %84 = getelementptr inbounds [4 x float], ptr %83, i64 0, i64 3
  store float %82, ptr %84, align 4, !tbaa !61
  br label %88

85:                                               ; preds = %35
  %86 = getelementptr inbounds ptr, ptr %5, i64 6
  %87 = load ptr, ptr %86, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 16 dereferenceable(16) @node_shader_exec_geom.defaultvcol, i64 16, i1 false)
  br label %88

88:                                               ; preds = %85, %77
  %89 = phi float [ 1.000000e+00, %85 ], [ %82, %77 ]
  %90 = getelementptr inbounds ptr, ptr %5, i64 7
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  store float %89, ptr %91, align 8, !tbaa !61
  %92 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 15
  %93 = load i16, ptr %92, align 8, !tbaa !62
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 82
  %97 = load ptr, ptr %5, align 8, !tbaa !35
  %98 = getelementptr inbounds %struct.bNodeStack, ptr %97, i64 0, i32 3
  store ptr %96, ptr %98, align 8, !tbaa !63
  %99 = load ptr, ptr %5, align 8, !tbaa !35
  %100 = getelementptr inbounds %struct.bNodeStack, ptr %99, i64 0, i32 6
  store i16 1, ptr %100, align 4, !tbaa !65
  %101 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 78
  %102 = load ptr, ptr %39, align 8, !tbaa !35
  %103 = getelementptr inbounds %struct.bNodeStack, ptr %102, i64 0, i32 3
  store ptr %101, ptr %103, align 8, !tbaa !63
  %104 = load ptr, ptr %39, align 8, !tbaa !35
  %105 = getelementptr inbounds %struct.bNodeStack, ptr %104, i64 0, i32 6
  store i16 1, ptr %105, align 4, !tbaa !65
  %106 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 90
  %107 = load ptr, ptr %42, align 8, !tbaa !35
  %108 = getelementptr inbounds %struct.bNodeStack, ptr %107, i64 0, i32 3
  store ptr %106, ptr %108, align 8, !tbaa !63
  %109 = load ptr, ptr %42, align 8, !tbaa !35
  %110 = getelementptr inbounds %struct.bNodeStack, ptr %109, i64 0, i32 6
  store i16 2, ptr %110, align 4, !tbaa !65
  %111 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 80
  %112 = load ptr, ptr %45, align 8, !tbaa !35
  %113 = getelementptr inbounds %struct.bNodeStack, ptr %112, i64 0, i32 3
  store ptr %111, ptr %113, align 8, !tbaa !63
  %114 = load ptr, ptr %45, align 8, !tbaa !35
  %115 = getelementptr inbounds %struct.bNodeStack, ptr %114, i64 0, i32 6
  store i16 1, ptr %115, align 4, !tbaa !65
  %116 = load ptr, ptr %48, align 8, !tbaa !35
  %117 = getelementptr inbounds %struct.bNodeStack, ptr %116, i64 0, i32 3
  store ptr %36, ptr %117, align 8, !tbaa !63
  %118 = load ptr, ptr %48, align 8, !tbaa !35
  %119 = getelementptr inbounds %struct.bNodeStack, ptr %118, i64 0, i32 6
  store i16 1, ptr %119, align 4, !tbaa !65
  %120 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 88
  %121 = load ptr, ptr %51, align 8, !tbaa !35
  %122 = getelementptr inbounds %struct.bNodeStack, ptr %121, i64 0, i32 3
  store ptr %120, ptr %122, align 8, !tbaa !63
  %123 = load ptr, ptr %51, align 8, !tbaa !35
  %124 = getelementptr inbounds %struct.bNodeStack, ptr %123, i64 0, i32 6
  store i16 1, ptr %124, align 4, !tbaa !65
  br label %125

125:                                              ; preds = %95, %88
  %126 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 7
  %127 = load i16, ptr %126, align 8, !tbaa !66
  %128 = icmp eq i16 %127, 0
  %129 = select i1 %128, float 1.000000e+00, float 0.000000e+00
  %130 = getelementptr inbounds ptr, ptr %5, i64 8
  %131 = load ptr, ptr %130, align 8, !tbaa !35
  store float %129, ptr %131, align 8, !tbaa !61
  br label %132

132:                                              ; preds = %125, %6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_geom(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !67 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = tail call ptr @GPU_attribute(i32 noundef 14, ptr noundef nonnull @.str.2) #6
  %9 = tail call ptr @GPU_attribute(i32 noundef 5, ptr noundef %7) #6
  %10 = getelementptr inbounds %struct.NodeGeometry, ptr %7, i64 0, i32 1
  %11 = tail call ptr @GPU_attribute(i32 noundef 6, ptr noundef nonnull %10) #6
  %12 = tail call ptr @GPU_builtin(i32 noundef 16) #6
  %13 = tail call ptr @GPU_builtin(i32 noundef 32) #6
  %14 = tail call ptr @GPU_builtin(i32 noundef 4) #6
  %15 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef %4, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %8, ptr noundef %9, ptr noundef %11) #6
  %16 = zext i8 %15 to i32
  ret i32 %16
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !68 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @GPU_attribute(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_builtin(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize willreturn memory(read) }
attributes #8 = { optsize }

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
!34 = !{!"node_shader_geom.c:node_shader_init_geometry"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 248}
!40 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !37, i64 188, !43, i64 200, !43, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !37, i64 312, !42, i64 376, !42, i64 378, !44, i64 380, !44, i64 384, !42, i64 388, !42, i64 390, !36, i64 392, !45, i64 400, !45, i64 416, !45, i64 432, !42, i64 448, !42, i64 450, !41, i64 452, !36, i64 456}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!"float", !37, i64 0}
!45 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!46 = !{!"node_shader_geom.c:node_shader_exec_geom"}
!47 = !{!48, !36, i64 0}
!48 = !{!"ShaderCallData", !36, i64 0, !36, i64 8}
!49 = !{!50, !41, i64 1104}
!50 = !{!"ShadeInput", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !37, i64 44, !42, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !42, i64 88, !42, i64 90, !42, i64 92, !42, i64 94, !42, i64 96, !37, i64 100, !37, i64 112, !37, i64 124, !37, i64 136, !37, i64 148, !41, i64 160, !41, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !37, i64 192, !37, i64 204, !37, i64 216, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !44, i64 248, !44, i64 252, !44, i64 256, !44, i64 260, !44, i64 264, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !44, i64 308, !44, i64 312, !44, i64 316, !41, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372, !37, i64 384, !37, i64 400, !37, i64 416, !44, i64 428, !37, i64 432, !37, i64 444, !37, i64 456, !44, i64 472, !37, i64 476, !37, i64 492, !37, i64 504, !37, i64 520, !37, i64 904, !41, i64 1096, !41, i64 1100, !41, i64 1104, !41, i64 1108, !37, i64 1112, !37, i64 1124, !37, i64 1136, !37, i64 1148, !37, i64 1160, !37, i64 1172, !37, i64 1184, !37, i64 1196, !37, i64 1208, !37, i64 1220, !37, i64 1232, !37, i64 1244, !44, i64 1256, !44, i64 1260, !37, i64 1264, !37, i64 1276, !37, i64 1288, !37, i64 1300, !37, i64 1312, !37, i64 1324, !44, i64 1336, !44, i64 1340, !37, i64 1344, !37, i64 1356, !37, i64 1368, !41, i64 1380, !41, i64 1384, !41, i64 1388, !37, i64 1392, !41, i64 1404, !41, i64 1408, !41, i64 1412, !37, i64 1416, !44, i64 1428, !37, i64 1432, !37, i64 1433, !42, i64 1434, !42, i64 1436, !42, i64 1438, !41, i64 1440, !41, i64 1444, !41, i64 1448, !41, i64 1452, !36, i64 1456, !36, i64 1464}
!51 = !{!37, !37, i64 0}
!52 = !{!50, !41, i64 1096}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!56, !36, i64 40}
!56 = !{!"ShadeInputUV", !37, i64 0, !37, i64 12, !37, i64 24, !36, i64 40}
!57 = !{!50, !41, i64 1100}
!58 = distinct !{!58, !54}
!59 = !{!60, !36, i64 16}
!60 = !{!"ShadeInputCol", !37, i64 0, !36, i64 16}
!61 = !{!44, !44, i64 0}
!62 = !{!50, !42, i64 96}
!63 = !{!64, !36, i64 24}
!64 = !{!"bNodeStack", !37, i64 0, !44, i64 16, !44, i64 20, !36, i64 24, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !37, i64 44}
!65 = !{!64, !42, i64 36}
!66 = !{!50, !42, i64 56}
!67 = !{!"node_shader_geom.c:gpu_shader_geom"}
!68 = !{!"node_shader_geom.c:copy_v3_v3"}
