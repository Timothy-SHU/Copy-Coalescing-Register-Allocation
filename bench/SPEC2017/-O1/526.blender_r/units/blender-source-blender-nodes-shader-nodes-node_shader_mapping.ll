; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_mapping.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }

@register_node_type_sh_mapping.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"Mapping\00", align 1
@sh_node_mapping_in = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_mapping_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"TexMapping\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mapping\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"texco_norm\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_mapping() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_mapping.ntype, i32 noundef 109, ptr noundef nonnull @.str, i16 noundef signext 4, i16 noundef signext 0) #5
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_mapping.ntype, i16 noundef signext 3) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @sh_node_mapping_in, ptr noundef nonnull @sh_node_mapping_out) #5
  tail call void @node_type_size(ptr noundef nonnull @register_node_type_sh_mapping.ntype, i32 noundef 320, i32 noundef 160, i32 noundef 360) #5
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @node_shader_init_mapping) #5
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_mapping) #5
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @gpu_shader_mapping) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_mapping.ntype) #5
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_init_mapping(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @add_tex_mapping(i32 noundef 0) #5
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %3, ptr %4, align 8, !tbaa !34
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_exec_mapping(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = load ptr, ptr %5, align 8, !tbaa !44
  %10 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void @nodestack_get_vec(ptr noundef %9, i16 noundef signext 1, ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 9
  tail call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef %9) #5
  %12 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !45
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %6
  %17 = load float, ptr %9, align 4, !tbaa !47
  %18 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10
  %19 = load float, ptr %18, align 8, !tbaa !47
  %20 = fcmp olt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store float %19, ptr %9, align 4, !tbaa !47
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds float, ptr %9, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !47
  %25 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !47
  %27 = fcmp olt float %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store float %26, ptr %23, align 4, !tbaa !47
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds float, ptr %9, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !47
  %32 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !47
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store float %33, ptr %30, align 4, !tbaa !47
  br label %36

36:                                               ; preds = %29, %35, %6
  %37 = and i32 %13, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load float, ptr %9, align 4, !tbaa !47
  %41 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11
  %42 = load float, ptr %41, align 4, !tbaa !47
  %43 = fcmp ogt float %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float %42, ptr %9, align 4, !tbaa !47
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds float, ptr %9, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !47
  %48 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !47
  %50 = fcmp ogt float %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store float %49, ptr %46, align 4, !tbaa !47
  br label %52

52:                                               ; preds = %51, %45
  %53 = getelementptr inbounds float, ptr %9, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !47
  %55 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !47
  %57 = fcmp ogt float %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store float %56, ptr %53, align 4, !tbaa !47
  br label %59

59:                                               ; preds = %52, %58, %36
  %60 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !48
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load float, ptr %9, align 4, !tbaa !47
  %65 = getelementptr inbounds float, ptr %9, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !47
  %67 = fmul float %66, %66
  %68 = tail call float @llvm.fmuladd.f32(float %64, float %64, float %67)
  %69 = getelementptr inbounds float, ptr %9, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !47
  %71 = tail call float @llvm.fmuladd.f32(float %70, float %70, float %68)
  %72 = fcmp ogt float %71, 0x38AA95A5C0000000
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = tail call float @sqrtf(float noundef %71) #5
  %75 = fdiv float 1.000000e+00, %74
  %76 = load float, ptr %9, align 4, !tbaa !47
  %77 = fmul float %76, %75
  store float %77, ptr %9, align 4, !tbaa !47
  %78 = load float, ptr %65, align 4, !tbaa !47
  %79 = fmul float %75, %78
  store float %79, ptr %65, align 4, !tbaa !47
  %80 = load float, ptr %69, align 4, !tbaa !47
  %81 = fmul float %75, %80
  br label %83

82:                                               ; preds = %63
  store float 0.000000e+00, ptr %9, align 4, !tbaa !47
  store float 0.000000e+00, ptr %65, align 4, !tbaa !47
  br label %83

83:                                               ; preds = %73, %82
  %84 = phi float [ 0.000000e+00, %82 ], [ %81, %73 ]
  store float %84, ptr %69, align 4, !tbaa !47
  br label %85

85:                                               ; preds = %83, %59
  ret void
}

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @gpu_shader_mapping(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %10 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = and i32 %11, 1
  %13 = sitofp i32 %12 to float
  store float %13, ptr %6, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  %14 = lshr i32 %11, 1
  %15 = and i32 %14, 1
  %16 = sitofp i32 %15 to float
  store float %16, ptr %7, align 4, !tbaa !47
  %17 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 9
  %18 = tail call ptr @GPU_uniform(ptr noundef nonnull %17) #5
  %19 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 10
  %20 = tail call ptr @GPU_uniform(ptr noundef nonnull %19) #5
  %21 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 11
  %22 = tail call ptr @GPU_uniform(ptr noundef nonnull %21) #5
  %23 = call ptr @GPU_uniform(ptr noundef nonnull %6) #5
  %24 = call ptr @GPU_uniform(ptr noundef nonnull %7) #5
  %25 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef %18, ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %24) #5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !48
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !49
  %34 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %33, ptr noundef nonnull %32) #5
  br label %35

35:                                               ; preds = %31, %27, %5
  %36 = zext i8 %25 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %36
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare ptr @add_tex_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!45 = !{!46, !39, i64 36}
!46 = !{!"TexMapping", !37, i64 0, !37, i64 12, !37, i64 24, !39, i64 36, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !39, i64 44, !37, i64 48, !37, i64 112, !37, i64 124, !36, i64 136}
!47 = !{!42, !42, i64 0}
!48 = !{!46, !39, i64 44}
!49 = !{!50, !36, i64 32}
!50 = !{!"GPUNodeStack", !39, i64 0, !36, i64 8, !37, i64 16, !36, i64 32, !37, i64 40, !37, i64 41, !40, i64 42}
