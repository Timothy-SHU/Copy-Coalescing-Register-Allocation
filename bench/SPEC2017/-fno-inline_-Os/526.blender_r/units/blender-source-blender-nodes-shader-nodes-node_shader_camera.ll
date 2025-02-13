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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_camera() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_camera.ntype, i32 noundef 114, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 0) #9
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_camera.ntype, i16 noundef signext 3) #9
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef null, ptr noundef nonnull @sh_node_camera_out) #9
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null) #9
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_camera) #9
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_camera.ntype, ptr noundef nonnull @gpu_shader_camera) #9
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_camera.ntype) #9
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal void @node_shader_exec_camera(ptr noundef readonly %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture noundef readonly %5) #2 !PGOFuncName !34 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !35
  %10 = load ptr, ptr %5, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29
  tail call fastcc void @copy_v3_v3(ptr noundef %10, ptr noundef nonnull %11) #10
  %12 = getelementptr inbounds %struct.ShadeInput, ptr %9, i64 0, i32 29, i64 2
  %13 = load float, ptr %12, align 8, !tbaa !41
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = getelementptr inbounds ptr, ptr %5, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  store float %14, ptr %16, align 8, !tbaa !41
  %17 = load ptr, ptr %5, align 8, !tbaa !40
  %18 = tail call fastcc float @normalize_v3(ptr noundef %17) #10
  %19 = getelementptr inbounds ptr, ptr %5, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  store float %18, ptr %20, align 8, !tbaa !41
  br label %21

21:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_camera(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !43 {
  %6 = tail call ptr @GPU_builtin(i32 noundef 16) #9
  %7 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef %6) #9
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !44 {
  %3 = load float, ptr %1, align 4, !tbaa !41
  store float %3, ptr %0, align 4, !tbaa !41
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !45 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #10
  ret float %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !46 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #10
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #9
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #10
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !47 {
  %3 = load float, ptr %0, align 4, !tbaa !41
  %4 = load float, ptr %1, align 4, !tbaa !41
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !41
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !41
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !41
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !41
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !48 {
  %4 = load float, ptr %1, align 4, !tbaa !41
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !41
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !41
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !41
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !41
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #8 !PGOFuncName !49 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !41
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @GPU_builtin(i32 noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!34 = !{!"node_shader_camera.c:node_shader_exec_camera"}
!35 = !{!36, !37, i64 0}
!36 = !{!"ShaderCallData", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!37, !37, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !38, i64 0}
!43 = !{!"node_shader_camera.c:gpu_shader_camera"}
!44 = !{!"node_shader_camera.c:copy_v3_v3"}
!45 = !{!"node_shader_camera.c:normalize_v3"}
!46 = !{!"node_shader_camera.c:normalize_v3_v3"}
!47 = !{!"node_shader_camera.c:dot_v3v3"}
!48 = !{!"node_shader_camera.c:mul_v3_v3fl"}
!49 = !{!"node_shader_camera.c:zero_v3"}
