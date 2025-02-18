; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_texture.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }

@register_node_type_tex_texture.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"Texture\00", align 1
@inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_texture() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_texture.ntype, i32 noundef 403, ptr noundef nonnull @.str, i16 noundef signext 0, i16 noundef signext 4) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_texture.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_texture.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_texture.ntype) #5
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #5
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.TexResult, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x float], align 16
  %13 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  %15 = load ptr, ptr %1, align 8, !tbaa !45
  %16 = load float, ptr %15, align 4, !tbaa !47
  store float %16, ptr %6, align 4, !tbaa !47
  %17 = getelementptr inbounds float, ptr %15, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !47
  %19 = getelementptr inbounds float, ptr %6, i64 1
  store float %18, ptr %19, align 4, !tbaa !47
  %20 = getelementptr inbounds float, ptr %15, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !47
  %22 = getelementptr inbounds float, ptr %6, i64 2
  store float %21, ptr %22, align 4, !tbaa !47
  %23 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !48
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %5
  %27 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = load float, ptr %28, align 4, !tbaa !47
  store float %29, ptr %7, align 4, !tbaa !47
  %30 = getelementptr inbounds float, ptr %28, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !47
  %32 = getelementptr inbounds float, ptr %7, i64 1
  store float %31, ptr %32, align 4, !tbaa !47
  %33 = getelementptr inbounds float, ptr %28, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !47
  %35 = getelementptr inbounds float, ptr %7, i64 2
  store float %34, ptr %35, align 4, !tbaa !47
  %36 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  %38 = load float, ptr %37, align 4, !tbaa !47
  store float %38, ptr %8, align 4, !tbaa !47
  %39 = getelementptr inbounds float, ptr %37, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !47
  %41 = getelementptr inbounds float, ptr %8, i64 1
  store float %40, ptr %41, align 4, !tbaa !47
  %42 = getelementptr inbounds float, ptr %37, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !47
  br label %48

44:                                               ; preds = %5
  store float 0.000000e+00, ptr %7, align 4, !tbaa !47
  %45 = getelementptr inbounds float, ptr %7, i64 1
  store float 0.000000e+00, ptr %45, align 4, !tbaa !47
  %46 = getelementptr inbounds float, ptr %7, i64 2
  store float 0.000000e+00, ptr %46, align 4, !tbaa !47
  store float 0.000000e+00, ptr %8, align 4, !tbaa !47
  %47 = getelementptr inbounds float, ptr %8, i64 1
  store float 0.000000e+00, ptr %47, align 4, !tbaa !47
  br label %48

48:                                               ; preds = %44, %26
  %49 = phi float [ 0.000000e+00, %44 ], [ %43, %26 ]
  %50 = getelementptr inbounds float, ptr %8, i64 2
  store float %49, ptr %50, align 4, !tbaa !47
  %51 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 34
  %52 = load i16, ptr %51, align 2, !tbaa !51
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 37
  %56 = load i16, ptr %55, align 4, !tbaa !52
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54, %48
  %59 = fsub float %16, %18
  %60 = tail call float @llvm.fabs.f32(float %59)
  %61 = fcmp olt float %60, 0x3F847AE140000000
  store float 1.000000e+00, ptr %0, align 4, !tbaa !47
  %62 = select i1 %61, float 1.000000e+00, float 0.000000e+00
  %63 = getelementptr inbounds float, ptr %0, i64 1
  store float %62, ptr %63, align 4, !tbaa !47
  %64 = select i1 %61, float 1.000000e+00, float 0.000000e+00
  %65 = getelementptr inbounds float, ptr %0, i64 2
  store float %64, ptr %65, align 4, !tbaa !47
  %66 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %66, align 4, !tbaa !47
  br label %107

67:                                               ; preds = %54
  %68 = icmp eq ptr %14, null
  br i1 %68, label %107, label %69

69:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #5
  %70 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %11, ptr noundef %70, ptr noundef nonnull %1, i16 noundef signext %4) #5
  %71 = getelementptr inbounds ptr, ptr %3, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef nonnull %12, ptr noundef %72, ptr noundef nonnull %1, i16 noundef signext %4) #5
  %73 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 6
  store ptr %10, ptr %73, align 8, !tbaa !53
  %74 = load i32, ptr %23, align 4, !tbaa !48
  %75 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !55
  %77 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = call i32 @multitex_nodes(ptr noundef nonnull %14, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef %74, ptr noundef nonnull %9, i16 noundef signext %4, i16 noundef signext 0, ptr noundef %76, ptr noundef %78, ptr noundef null) #5
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !47
  store float %84, ptr %0, align 4, !tbaa !47
  %85 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %86 = load float, ptr %85, align 8, !tbaa !47
  %87 = getelementptr inbounds float, ptr %0, i64 1
  store float %86, ptr %87, align 4, !tbaa !47
  %88 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %89 = load float, ptr %88, align 4, !tbaa !47
  %90 = getelementptr inbounds float, ptr %0, i64 2
  store float %89, ptr %90, align 4, !tbaa !47
  %91 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 4
  %92 = load float, ptr %91, align 8, !tbaa !47
  %93 = getelementptr inbounds float, ptr %0, i64 3
  store float %92, ptr %93, align 4, !tbaa !47
  br label %106

94:                                               ; preds = %69
  %95 = load float, ptr %11, align 16, !tbaa !47
  store float %95, ptr %0, align 4, !tbaa !47
  %96 = getelementptr inbounds float, ptr %11, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !47
  %98 = getelementptr inbounds float, ptr %0, i64 1
  store float %97, ptr %98, align 4, !tbaa !47
  %99 = getelementptr inbounds float, ptr %11, i64 2
  %100 = load float, ptr %99, align 8, !tbaa !47
  %101 = getelementptr inbounds float, ptr %0, i64 2
  store float %100, ptr %101, align 4, !tbaa !47
  %102 = getelementptr inbounds float, ptr %11, i64 3
  %103 = load float, ptr %102, align 4, !tbaa !47
  %104 = getelementptr inbounds float, ptr %0, i64 3
  store float %103, ptr %104, align 4, !tbaa !47
  %105 = load float, ptr %9, align 8, !tbaa !57
  call void @ramp_blend(i32 noundef 0, ptr noundef nonnull %0, float noundef %105, ptr noundef nonnull %12) #5
  br label %106

106:                                              ; preds = %94, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #5
  br label %107

107:                                              ; preds = %67, %106, %58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare i32 @multitex_nodes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ramp_blend(i32 noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 240}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!46, !35, i64 0}
!46 = !{!"TexParams", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48}
!47 = !{!43, !43, i64 0}
!48 = !{!46, !40, i64 36}
!49 = !{!46, !35, i64 8}
!50 = !{!46, !35, i64 16}
!51 = !{!39, !41, i64 378}
!52 = !{!39, !41, i64 388}
!53 = !{!54, !35, i64 24}
!54 = !{!"TexResult", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !40, i64 20, !35, i64 24}
!55 = !{!46, !35, i64 40}
!56 = !{!46, !35, i64 48}
!57 = !{!54, !43, i64 0}
