; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_camera.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_camera.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.ShadeInput = type { ptr, ptr, ptr, ptr, ptr, i32, [3 x float], i16, ptr, ptr, ptr, i16, i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], float, [3 x float], [3 x float], [4 x float], float, [4 x float], [3 x float], [3 x float], [8 x %struct.ShadeInputUV], [8 x %struct.ShadeInputCol], i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, [3 x float], [3 x float], [3 x float], i32, i32, i32, [3 x float], i32, i32, i32, [3 x float], float, i8, i8, i16, i16, i16, i32, i32, i32, i32, ptr, ptr }
%struct.ShadeInputUV = type { [3 x float], [3 x float], [3 x float], ptr }
%struct.ShadeInputCol = type { [4 x float], ptr }

@register_node_type_sh_camera.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"Camera Data\00", align 1
@sh_node_camera_out = internal global [4 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"View Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"View Z Depth\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"View Distance\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"camera\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_camera() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_camera.ntype, i32 noundef 114, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 0) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_camera.ntype, i16 noundef signext 3) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef null, ptr noundef nonnull @sh_node_camera_out) #5
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_camera) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef nonnull @gpu_shader_camera) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_camera.ntype) #5
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @node_shader_exec_camera(ptr noundef readonly %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture noundef readonly %5) #2 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = load ptr, ptr %5, align 8, !tbaa !39
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29
  %12 = load float, ptr %11, align 4, !tbaa !40
  store float %12, ptr %10, align 4, !tbaa !40
  %13 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !40
  %15 = getelementptr inbounds float, ptr %10, i64 1
  store float %14, ptr %15, align 4, !tbaa !40
  %16 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !40
  %18 = getelementptr inbounds float, ptr %10, i64 2
  store float %17, ptr %18, align 4, !tbaa !40
  %19 = load float, ptr %16, align 8, !tbaa !40
  %20 = tail call float @llvm.fabs.f32(float %19)
  %21 = getelementptr inbounds ptr, ptr %5, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  store float %20, ptr %22, align 8, !tbaa !40
  %23 = load float, ptr %10, align 4, !tbaa !40
  %24 = load float, ptr %15, align 4, !tbaa !40
  %25 = fmul float %24, %24
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %25)
  %27 = load float, ptr %18, align 4, !tbaa !40
  %28 = tail call float @llvm.fmuladd.f32(float %27, float %27, float %26)
  %29 = fcmp ogt float %28, 0x38AA95A5C0000000
  br i1 %29, label %30, label %39

30:                                               ; preds = %8
  %31 = tail call float @sqrtf(float noundef %28) #5
  %32 = fdiv float 1.000000e+00, %31
  %33 = load float, ptr %10, align 4, !tbaa !40
  %34 = fmul float %33, %32
  store float %34, ptr %10, align 4, !tbaa !40
  %35 = load float, ptr %15, align 4, !tbaa !40
  %36 = fmul float %32, %35
  store float %36, ptr %15, align 4, !tbaa !40
  %37 = load float, ptr %18, align 4, !tbaa !40
  %38 = fmul float %32, %37
  br label %40

39:                                               ; preds = %8
  store float 0.000000e+00, ptr %10, align 4, !tbaa !40
  store float 0.000000e+00, ptr %15, align 4, !tbaa !40
  br label %40

40:                                               ; preds = %30, %39
  %41 = phi float [ 0.000000e+00, %39 ], [ %38, %30 ]
  %42 = phi float [ 0.000000e+00, %39 ], [ %31, %30 ]
  store float %41, ptr %18, align 4, !tbaa !40
  %43 = getelementptr inbounds ptr, ptr %5, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  store float %42, ptr %44, align 8, !tbaa !40
  br label %45

45:                                               ; preds = %40, %6
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gpu_shader_camera(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call ptr @GPU_builtin(i32 noundef 16) #5
  %7 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef %6) #5
  %8 = zext i8 %7 to i32
  ret i32 %8
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GPU_builtin(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"ShaderCallData", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !37, i64 0}
