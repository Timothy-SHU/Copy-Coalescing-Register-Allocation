; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_normal.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }

@register_node_type_sh_normal.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@sh_node_normal_in = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 22, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_normal_out = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 22, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Dot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@__const.gpu_shader_normal.fac = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"invert\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_normal() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_normal.ntype, i32 noundef 107, ptr noundef nonnull @.str, i16 noundef signext 4, i16 noundef signext 0) #6
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_normal.ntype, i16 noundef signext 3) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_normal.ntype, ptr noundef nonnull @sh_node_normal_in, ptr noundef nonnull @sh_node_normal_out) #6
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_normal.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_normal) #6
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_normal.ntype, ptr noundef nonnull @gpu_shader_normal) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_normal.ntype) #6
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
define internal void @node_shader_exec_normal(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !35
  call void @nodestack_get_vec(ptr noundef nonnull %7, i16 noundef signext 1, ptr noundef %8) #6
  %9 = load ptr, ptr %5, align 8, !tbaa !35
  %10 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef %9) #8
  %11 = fneg float %10
  %12 = getelementptr inbounds ptr, ptr %5, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  store float %11, ptr %13, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_normal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !41 {
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 2
  %8 = tail call ptr @GPU_uniform(ptr noundef nonnull %7) #6
  %9 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %3, ptr noundef %4, ptr noundef %8) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = tail call zeroext i8 @GPU_material_use_new_shading_nodes(ptr noundef %0) #6
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) @__const.gpu_shader_normal.fac, i64 12, i1 false)
  %15 = call ptr @GPU_uniform(ptr noundef nonnull %6) #6
  %16 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 1, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %15, ptr noundef %17, ptr noundef nonnull %16) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  br label %19

19:                                               ; preds = %14, %11, %5
  %20 = zext i8 %9 to i32
  ret i32 %20
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !46 {
  %3 = load float, ptr %0, align 4, !tbaa !39
  %4 = load float, ptr %1, align 4, !tbaa !39
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !39
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !39
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !39
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_material_use_new_shading_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
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
!34 = !{!"node_shader_normal.c:node_shader_exec_normal"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"node_shader_normal.c:gpu_shader_normal"}
!42 = !{!43, !36, i64 32}
!43 = !{!"GPUNodeStack", !44, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !45, i64 42}
!44 = !{!"int", !37, i64 0}
!45 = !{!"short", !37, i64 0}
!46 = !{!"node_shader_normal.c:dot_v3v3"}
