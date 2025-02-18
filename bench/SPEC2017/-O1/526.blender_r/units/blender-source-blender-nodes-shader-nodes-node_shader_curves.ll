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

; Function Attrs: nounwind uwtable
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

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_init_curve_vec(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @curvemapping_add(i32 noundef 3, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %3, ptr %4, align 8, !tbaa !34
  ret void
}

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_curves(ptr noundef) #1

declare void @node_copy_curves(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @node_initexec_curves(ptr noundef, ptr noundef, i32) #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_curve_vec(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #3
  %8 = getelementptr inbounds ptr, ptr %4, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %9) #3
  %10 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = load ptr, ptr %5, align 8, !tbaa !44
  call void @curvemapping_evaluate3F(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #3
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gpu_shader_curve_vec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @curvemapping_table_RGBA(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #3
  %10 = load i32, ptr %7, align 4, !tbaa !45
  %11 = load ptr, ptr %6, align 8, !tbaa !44
  %12 = call ptr @GPU_texture(i32 noundef %10, ptr noundef %11) #3
  %13 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef %4, ptr noundef %12) #3
  %14 = zext i8 %13 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  ret i32 %14
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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

; Function Attrs: nounwind uwtable
define internal void @node_shader_init_curve_rgb(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @curvemapping_add(i32 noundef 4, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #3
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %3, ptr %4, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_curve_rgb(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  %9 = load ptr, ptr %4, align 8, !tbaa !44
  call void @nodestack_get_vec(ptr noundef nonnull %8, i16 noundef signext 0, ptr noundef %9) #3
  %10 = getelementptr inbounds ptr, ptr %4, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %11) #3
  %12 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = load ptr, ptr %5, align 8, !tbaa !44
  call void @curvemapping_evaluateRGBF(ptr noundef %13, ptr noundef %14, ptr noundef nonnull %7) #3
  %15 = load float, ptr %8, align 4, !tbaa !46
  %16 = fcmp une float %15, 1.000000e+00
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load ptr, ptr %5, align 8, !tbaa !44
  call void @interp_v3_v3v3(ptr noundef %18, ptr noundef nonnull %7, ptr noundef %18, float noundef %15) #3
  br label %19

19:                                               ; preds = %17, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gpu_shader_curve_rgb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  tail call void @curvemapping_initialize(ptr noundef %9) #3
  %10 = load ptr, ptr %8, align 8, !tbaa !34
  call void @curvemapping_table_RGBA(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #3
  %11 = load i32, ptr %7, align 4, !tbaa !45
  %12 = load ptr, ptr %6, align 8, !tbaa !44
  %13 = call ptr @GPU_texture(i32 noundef %11, ptr noundef %12) #3
  %14 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %4, ptr noundef %13) #3
  %15 = zext i8 %14 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  ret i32 %15
}

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @curvemapping_evaluate3F(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @curvemapping_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GPU_texture(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @curvemapping_evaluateRGBF(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @curvemapping_initialize(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 248}
!35 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !39, i64 168, !40, i64 172, !40, i64 174, !40, i64 176, !40, i64 178, !40, i64 180, !40, i64 182, !40, i64 184, !40, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !42, i64 296, !42, i64 300, !42, i64 304, !39, i64 308, !37, i64 312, !40, i64 376, !40, i64 378, !42, i64 380, !42, i64 384, !40, i64 388, !40, i64 390, !36, i64 392, !43, i64 400, !43, i64 416, !43, i64 432, !40, i64 448, !40, i64 450, !39, i64 452, !36, i64 456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!"float", !37, i64 0}
!43 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!44 = !{!36, !36, i64 0}
!45 = !{!39, !39, i64 0}
!46 = !{!42, !42, i64 0}
