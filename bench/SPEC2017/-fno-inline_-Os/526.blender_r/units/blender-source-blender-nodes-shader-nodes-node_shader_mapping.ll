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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_sh_mapping() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_mapping.ntype, i32 noundef 109, ptr noundef nonnull @.str, i16 noundef signext 4, i16 noundef signext 0) #9
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_mapping.ntype, i16 noundef signext 3) #9
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @sh_node_mapping_in, ptr noundef nonnull @sh_node_mapping_out) #9
  tail call void @node_type_size(ptr noundef nonnull @register_node_type_sh_mapping.ntype, i32 noundef 320, i32 noundef 160, i32 noundef 360) #9
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @node_shader_init_mapping) #9
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #9
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @node_shader_exec_mapping) #9
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_mapping.ntype, ptr noundef nonnull @gpu_shader_mapping) #9
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_mapping.ntype) #9
  ret void
}

; Function Attrs: optsize
declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_size(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_init_mapping(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 !PGOFuncName !34 {
  %3 = tail call ptr @add_tex_mapping(i32 noundef 0) #9
  %4 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %3, ptr %4, align 8, !tbaa !35
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

; Function Attrs: noinline nounwind optsize uwtable
define internal void @node_shader_exec_mapping(ptr nocapture readnone %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !45 {
  %7 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = load ptr, ptr %5, align 8, !tbaa !46
  %10 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @nodestack_get_vec(ptr noundef %9, i16 noundef signext 1, ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 9
  tail call void @mul_m4_v3(ptr noundef nonnull %11, ptr noundef %9) #9
  %12 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %6
  %17 = load float, ptr %9, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10
  %19 = load float, ptr %18, align 8, !tbaa !49
  %20 = fcmp olt float %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store float %19, ptr %9, align 4, !tbaa !49
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds float, ptr %9, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !49
  %25 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !49
  %27 = fcmp olt float %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store float %26, ptr %23, align 4, !tbaa !49
  br label %29

29:                                               ; preds = %28, %22
  %30 = getelementptr inbounds float, ptr %9, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 10, i64 2
  %33 = load float, ptr %32, align 8, !tbaa !49
  %34 = fcmp olt float %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store float %33, ptr %30, align 4, !tbaa !49
  br label %36

36:                                               ; preds = %29, %35, %6
  %37 = and i32 %13, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = load float, ptr %9, align 4, !tbaa !49
  %41 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11
  %42 = load float, ptr %41, align 4, !tbaa !49
  %43 = fcmp ogt float %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store float %42, ptr %9, align 4, !tbaa !49
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr inbounds float, ptr %9, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !49
  %50 = fcmp ogt float %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store float %49, ptr %46, align 4, !tbaa !49
  br label %52

52:                                               ; preds = %51, %45
  %53 = getelementptr inbounds float, ptr %9, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !49
  %55 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 11, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !49
  %57 = fcmp ogt float %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store float %56, ptr %53, align 4, !tbaa !49
  br label %59

59:                                               ; preds = %52, %58, %36
  %60 = getelementptr inbounds %struct.TexMapping, ptr %8, i64 0, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !50
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call fastcc void @normalize_v3(ptr noundef %9) #10
  br label %64

64:                                               ; preds = %63, %59
  ret void
}

; Function Attrs: optsize
declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gpu_shader_mapping(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 !PGOFuncName !51 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %10 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !47
  %12 = and i32 %11, 1
  %13 = sitofp i32 %12 to float
  store float %13, ptr %6, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %14 = lshr i32 %11, 1
  %15 = and i32 %14, 1
  %16 = sitofp i32 %15 to float
  store float %16, ptr %7, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 9
  %18 = tail call ptr @GPU_uniform(ptr noundef nonnull %17) #9
  %19 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 10
  %20 = tail call ptr @GPU_uniform(ptr noundef nonnull %19) #9
  %21 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 11
  %22 = tail call ptr @GPU_uniform(ptr noundef nonnull %21) #9
  %23 = call ptr @GPU_uniform(ptr noundef nonnull %6) #9
  %24 = call ptr @GPU_uniform(ptr noundef nonnull %7) #9
  %25 = call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef %18, ptr noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %24) #9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TexMapping, ptr %9, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %33, ptr noundef nonnull %32) #9
  br label %35

35:                                               ; preds = %31, %27, %5
  %36 = zext i8 %25 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %36
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @add_tex_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @nodestack_get_vec(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !54 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !55 {
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
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !56 {
  %3 = load float, ptr %0, align 4, !tbaa !49
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !49
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !49
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !57 {
  %4 = load float, ptr %1, align 4, !tbaa !49
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !49
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !49
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #7 !PGOFuncName !58 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !49
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare ptr @GPU_uniform(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!34 = !{!"node_shader_mapping.c:node_shader_init_mapping"}
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
!45 = !{!"node_shader_mapping.c:node_shader_exec_mapping"}
!46 = !{!37, !37, i64 0}
!47 = !{!48, !40, i64 36}
!48 = !{!"TexMapping", !38, i64 0, !38, i64 12, !38, i64 24, !40, i64 36, !38, i64 40, !38, i64 41, !38, i64 42, !38, i64 43, !40, i64 44, !38, i64 48, !38, i64 112, !38, i64 124, !37, i64 136}
!49 = !{!43, !43, i64 0}
!50 = !{!48, !40, i64 44}
!51 = !{!"node_shader_mapping.c:gpu_shader_mapping"}
!52 = !{!53, !37, i64 32}
!53 = !{!"GPUNodeStack", !40, i64 0, !37, i64 8, !38, i64 16, !37, i64 32, !38, i64 40, !38, i64 41, !41, i64 42}
!54 = !{!"node_shader_mapping.c:normalize_v3"}
!55 = !{!"node_shader_mapping.c:normalize_v3_v3"}
!56 = !{!"node_shader_mapping.c:dot_v3v3"}
!57 = !{!"node_shader_mapping.c:mul_v3_v3fl"}
!58 = !{!"node_shader_mapping.c:zero_v3"}
