; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_valToNor.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_valToNor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }

@register_node_type_tex_valtonor.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"Value to Normal\00", align 1
@inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Val\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Nabla\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0x3F999999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3F50624DE0000000, float 0x3FB99999A0000000, i32 13, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 0, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_valtonor() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_valtonor.ntype, i32 noundef 421, ptr noundef nonnull @.str, i16 noundef signext 8, i16 noundef signext 0) #4
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_valtonor.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #4
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_valtonor.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #4
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_valtonor.ntype) #4
  ret void
}

; Function Attrs: optsize
declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 !PGOFuncName !34 {
  %7 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @normalfn, ptr noundef %0) #4
  ret void
}

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @normalfn(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 !PGOFuncName !39 {
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.TexParams, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  %8 = load ptr, ptr %1, align 8, !tbaa !40
  %9 = getelementptr inbounds ptr, ptr %3, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = tail call float @tex_input_value(ptr noundef %10, ptr noundef nonnull %1, i16 noundef signext %4) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !43
  store ptr %6, ptr %7, align 8, !tbaa !40
  %12 = load ptr, ptr %3, align 8, !tbaa !35
  %13 = call float @tex_input_value(ptr noundef %12, ptr noundef nonnull %1, i16 noundef signext %4) #4
  %14 = load float, ptr %8, align 4, !tbaa !45
  %15 = fadd float %11, %14
  store float %15, ptr %6, align 4, !tbaa !45
  %16 = getelementptr inbounds float, ptr %8, i64 1
  %17 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %18 = getelementptr inbounds float, ptr %8, i64 2
  %19 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %20 = load <2 x float>, ptr %16, align 4, !tbaa !45
  store <2 x float> %20, ptr %17, align 4, !tbaa !45
  %21 = load ptr, ptr %3, align 8, !tbaa !35
  %22 = call float @tex_input_value(ptr noundef %21, ptr noundef nonnull %7, i16 noundef signext %4) #4
  %23 = load float, ptr %8, align 4, !tbaa !45
  store float %23, ptr %6, align 4, !tbaa !45
  %24 = load float, ptr %16, align 4, !tbaa !45
  %25 = fadd float %11, %24
  store float %25, ptr %17, align 4, !tbaa !45
  %26 = load ptr, ptr %3, align 8, !tbaa !35
  %27 = call float @tex_input_value(ptr noundef %26, ptr noundef nonnull %7, i16 noundef signext %4) #4
  %28 = load float, ptr %16, align 4, !tbaa !45
  store float %28, ptr %17, align 4, !tbaa !45
  %29 = load float, ptr %18, align 4, !tbaa !45
  %30 = fadd float %11, %29
  store float %30, ptr %19, align 4, !tbaa !45
  %31 = load ptr, ptr %3, align 8, !tbaa !35
  %32 = call float @tex_input_value(ptr noundef %31, ptr noundef nonnull %7, i16 noundef signext %4) #4
  %33 = insertelement <2 x float> poison, float %13, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = insertelement <2 x float> poison, float %22, i64 0
  %36 = insertelement <2 x float> %35, float %27, i64 1
  %37 = fsub <2 x float> %34, %36
  store <2 x float> %37, ptr %0, align 4, !tbaa !45
  %38 = fsub float %13, %32
  %39 = getelementptr inbounds float, ptr %0, i64 2
  store float %38, ptr %39, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

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
!34 = !{!"node_texture_valToNor.c:exec"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"node_texture_valToNor.c:normalfn"}
!40 = !{!41, !36, i64 0}
!41 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !42, i64 36, !36, i64 40, !36, i64 48}
!42 = !{!"int", !37, i64 0}
!43 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 4, !44, i64 36, i64 4, !44, i64 40, i64 8, !35, i64 48, i64 8, !35}
!44 = !{!42, !42, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"float", !37, i64 0}
