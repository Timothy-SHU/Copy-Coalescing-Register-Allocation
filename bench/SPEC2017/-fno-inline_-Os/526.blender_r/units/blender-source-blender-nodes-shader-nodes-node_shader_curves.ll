; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_curves.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }

@register_node_type_sh_curve_vec.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"Vector Curves\00", align 1
@sh_node_curve_vec_in = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Fac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 15, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_curve_vec_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [13 x i8] c"CurveMapping\00", align 1
@register_node_type_sh_curve_rgb.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"RGB Curves\00", align 1
@sh_node_curve_rgb_in = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Fac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 15, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_curve_rgb_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"curves_vec\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"curves_rgb\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_curve_vec() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, i32 noundef 110, ptr noundef nonnull @.str, i16 noundef signext 4, i16 noundef signext 0) #3
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, i16 noundef signext 3) #3
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, ptr noundef nonnull @sh_node_curve_vec_in, ptr noundef nonnull @sh_node_curve_vec_out) #3
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, ptr noundef nonnull @node_shader_init_curve_vec) #3
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, i32 noundef 3) #3
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_curves, ptr noundef nonnull @node_copy_curves) #3
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, ptr noundef nonnull @node_initexec_curves, ptr noundef null, ptr noundef nonnull @node_shader_exec_curve_vec) #3
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype, ptr noundef nonnull @gpu_shader_curve_vec) #3
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_curve_vec.ntype) #3
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
define internal void @node_shader_init_curve_vec(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !34 {
  %3 = tail call ptr @curvemapping_add(i32 noundef 3, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %3, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_free_curves(ptr noundef) #1

; Function Attrs: optsize
declare void @node_copy_curves(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @node_initexec_curves(ptr noundef, ptr noundef, i32) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_curve_vec(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !45 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #4
  %8 = getelementptr inbounds ptr, ptr %4, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %9) #3
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = load ptr, ptr %5, align 8, !tbaa !46
  call void @curvemapping_evaluate3F(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #4
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_curve_vec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !47 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  call void @curvemapping_table_RGBA(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #3
  %10 = load i32, ptr %7, align 4, !tbaa !48
  %11 = load ptr, ptr %6, align 8, !tbaa !46
  %12 = call ptr @GPU_texture(i32 noundef %10, ptr noundef %11) #3
  %13 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef %4, ptr noundef %12) #3
  %14 = zext i8 %13 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  ret i32 %14
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_curve_rgb() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, i32 noundef 111, ptr noundef nonnull @.str.2, i16 noundef signext 3, i16 noundef signext 0) #3
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, i16 noundef signext 3) #3
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, ptr noundef nonnull @sh_node_curve_rgb_in, ptr noundef nonnull @sh_node_curve_rgb_out) #3
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, ptr noundef nonnull @node_shader_init_curve_rgb) #3
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, i32 noundef 3) #3
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_curves, ptr noundef nonnull @node_copy_curves) #3
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, ptr noundef nonnull @node_initexec_curves, ptr noundef null, ptr noundef nonnull @node_shader_exec_curve_rgb) #3
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype, ptr noundef nonnull @gpu_shader_curve_rgb) #3
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_curve_rgb.ntype) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_init_curve_rgb(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !49 {
  %3 = tail call ptr @curvemapping_add(i32 noundef 4, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %3, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_curve_rgb(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !50 {
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  %9 = load ptr, ptr %4, align 8, !tbaa !46
  call void @nodestack_get_vec(ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef %9) #3
  %10 = getelementptr inbounds ptr, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %11) #3
  %12 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = load ptr, ptr %5, align 8, !tbaa !46
  call void @curvemapping_evaluateRGBF(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %7) #3
  %15 = load float, ptr %8, align 4, !tbaa !51
  %16 = fcmp une float %15, 1.000000e+00
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load ptr, ptr %5, align 8, !tbaa !46
  call void @interp_v3_v3v3(ptr noundef %18, ptr noundef nonnull %7, ptr noundef %18, float noundef %15) #3
  br label %19

19:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_curve_rgb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !52 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  tail call void @curvemapping_initialize(ptr noundef %9) #3
  %10 = load ptr, ptr %8, align 8, !tbaa !35
  call void @curvemapping_table_RGBA(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #3
  %11 = load i32, ptr %7, align 4, !tbaa !48
  %12 = load ptr, ptr %6, align 8, !tbaa !46
  %13 = call ptr @GPU_texture(i32 noundef %11, ptr noundef %12) #3
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %4, ptr noundef %13) #3
  %15 = zext i8 %14 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #4
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_evaluate3F(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @curvemapping_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_texture(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_evaluateRGBF(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }

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
!34 = !{!"node_shader_curves.c:node_shader_init_curve_vec"}
!35 = !{!36, !37, i64 248}
!36 = !{!"bNode", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !38, i64 188, !42, i64 200, !42, i64 216, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !38, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !37, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !37, i64 456}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"float", !38, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!"node_shader_curves.c:node_shader_exec_curve_vec"}
!46 = !{!37, !37, i64 0}
!47 = !{!"node_shader_curves.c:gpu_shader_curve_vec"}
!48 = !{!40, !40, i64 0}
!49 = !{!"node_shader_curves.c:node_shader_init_curve_rgb"}
!50 = !{!"node_shader_curves.c:node_shader_exec_curve_rgb"}
!51 = !{!43, !43, i64 0}
!52 = !{!"node_shader_curves.c:gpu_shader_curve_rgb"}
