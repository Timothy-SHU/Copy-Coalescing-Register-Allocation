; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_valToRgb.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_valToRgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }

@register_node_type_sh_valtorgb.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"ColorRamp\00", align 1
@sh_node_valtorgb_in = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Fac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 15, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_valtorgb_out = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Alpha\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"ColorBand\00", align 1
@register_node_type_sh_rgbtobw.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"RGB to BW\00", align 1
@sh_node_rgbtobw_in = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_rgbtobw_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Val\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"valtorgb\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rgbtobw\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_valtorgb() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, i32 noundef 104, ptr noundef nonnull @.str, i16 noundef signext 8, i16 noundef signext 0) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, i16 noundef signext 3) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, ptr noundef nonnull @sh_node_valtorgb_in, ptr noundef nonnull @sh_node_valtorgb_out) #5
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, ptr noundef nonnull @node_shader_init_valtorgb) #5
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, i32 noundef 3) #5
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_valtorgb) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype, ptr noundef nonnull @gpu_shader_valtorgb) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_valtorgb.ntype) #5
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
define internal void @node_shader_init_valtorgb(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !34 {
  %3 = tail call ptr @add_colorband(i8 noundef zeroext 1) #5
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %3, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_free_standard_storage(ptr noundef) #1

; Function Attrs: optsize
declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_valtorgb(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !45 {
  %7 = alloca float, align 4
  %8 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %12 = load ptr, ptr %4, align 8, !tbaa !46
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 0, ptr noundef %12) #5
  %13 = load ptr, ptr %8, align 8, !tbaa !35
  %14 = load float, ptr %7, align 4, !tbaa !47
  %15 = load ptr, ptr %5, align 8, !tbaa !46
  %16 = call zeroext i8 @do_colorband(ptr noundef %13, float noundef %14, ptr noundef %15) #5
  %17 = load ptr, ptr %5, align 8, !tbaa !46
  %18 = getelementptr inbounds [4 x float], ptr %17, i64 0, i64 3
  %19 = load float, ptr %18, align 4, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %5, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  store float %19, ptr %21, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  br label %22

22:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_valtorgb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !48 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  call void @colorband_table_RGBA(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  %10 = load i32, ptr %7, align 4, !tbaa !49
  %11 = load ptr, ptr %6, align 8, !tbaa !46
  %12 = call ptr @GPU_texture(i32 noundef %10, ptr noundef %11) #5
  %13 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef %4, ptr noundef %12) #5
  %14 = zext i8 %13 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  ret i32 %14
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_rgbtobw() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_rgbtobw.ntype, i32 noundef 105, ptr noundef nonnull @.str.2, i16 noundef signext 8, i16 noundef signext 0) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_rgbtobw.ntype, i16 noundef signext 3) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_rgbtobw.ntype, ptr noundef nonnull @sh_node_rgbtobw_in, ptr noundef nonnull @sh_node_rgbtobw_out) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_rgbtobw.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_rgbtobw) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_rgbtobw.ntype, ptr noundef nonnull @gpu_shader_rgbtobw) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_rgbtobw.ntype) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_rgbtobw(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !50 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  %8 = load ptr, ptr %4, align 8, !tbaa !46
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %8) #5
  %9 = call fastcc float @rgb_to_bw(ptr noundef nonnull %7) #7
  %10 = load ptr, ptr %5, align 8, !tbaa !46
  store float %9, ptr %10, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_rgbtobw(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !51 {
  %6 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %3, ptr noundef %4) #5
  %7 = zext i8 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @add_colorband(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @do_colorband(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @colorband_table_RGBA(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_texture(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @rgb_to_bw(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !52 {
  %2 = load float, ptr %0, align 4, !tbaa !47
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !47
  %5 = fmul float %4, 0x3FDCCCCCC0000000
  %6 = tail call float @llvm.fmuladd.f32(float %2, float 0x3FD6666660000000, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !47
  %9 = tail call float @llvm.fmuladd.f32(float %8, float 0x3FC99999A0000000, float %6)
  ret float %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!34 = !{!"node_shader_valToRgb.c:node_shader_init_valtorgb"}
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
!45 = !{!"node_shader_valToRgb.c:node_shader_exec_valtorgb"}
!46 = !{!37, !37, i64 0}
!47 = !{!43, !43, i64 0}
!48 = !{!"node_shader_valToRgb.c:gpu_shader_valtorgb"}
!49 = !{!40, !40, i64 0}
!50 = !{!"node_shader_valToRgb.c:node_shader_exec_rgbtobw"}
!51 = !{!"node_shader_valToRgb.c:gpu_shader_rgbtobw"}
!52 = !{!"node_shader_valToRgb.c:rgb_to_bw"}
