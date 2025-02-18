; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_rotate.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }

@register_node_type_tex_rotate.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@inputs = internal global [4 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Turns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Axis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float -1.000000e+00, float 1.000000e+00, i32 22, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_rotate() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_rotate.ntype, i32 noundef 414, ptr noundef nonnull @.str, i16 noundef signext 10, i16 noundef signext 0) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_rotate.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #6
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_rotate.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_rotate.ntype) #6
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @colorfn, ptr noundef %0) #6
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @colorfn(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.TexParams, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  %11 = getelementptr inbounds ptr, ptr %3, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = tail call float @tex_input_value(ptr noundef %12, ptr noundef %1, i16 noundef signext %4) #6
  %14 = getelementptr inbounds ptr, ptr %3, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  call void @tex_input_vec(ptr noundef nonnull %9, ptr noundef %15, ptr noundef %1, i16 noundef signext %4) #6
  %16 = load ptr, ptr %1, align 8, !tbaa !38
  %17 = fmul float %13, 0x401921FB60000000
  %18 = call float @cosf(float noundef %17) #6
  %19 = call float @sinf(float noundef %17) #6
  %20 = load float, ptr %16, align 4, !tbaa !41
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds float, ptr %16, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !41
  %24 = fmul float %18, %23
  %25 = getelementptr inbounds float, ptr %16, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !41
  %27 = fmul float %18, %26
  %28 = load float, ptr %9, align 4, !tbaa !41
  %29 = getelementptr inbounds float, ptr %9, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !41
  %31 = fmul float %23, %30
  %32 = call float @llvm.fmuladd.f32(float %20, float %28, float %31)
  %33 = getelementptr inbounds float, ptr %9, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !41
  %35 = call float @llvm.fmuladd.f32(float %26, float %34, float %32)
  %36 = fsub float 1.000000e+00, %18
  %37 = fmul float %36, %35
  %38 = fmul float %28, %37
  %39 = fmul float %30, %37
  %40 = fmul float %34, %37
  %41 = fneg float %34
  %42 = fmul float %23, %41
  %43 = call float @llvm.fmuladd.f32(float %30, float %26, float %42)
  %44 = fneg float %28
  %45 = fmul float %26, %44
  %46 = call float @llvm.fmuladd.f32(float %34, float %20, float %45)
  %47 = fneg float %30
  %48 = fmul float %20, %47
  %49 = call float @llvm.fmuladd.f32(float %28, float %23, float %48)
  %50 = fmul float %19, %43
  %51 = fmul float %19, %46
  %52 = fmul float %19, %49
  %53 = fadd float %21, %38
  %54 = fadd float %50, %53
  store float %54, ptr %6, align 4, !tbaa !41
  %55 = fadd float %24, %39
  %56 = fadd float %51, %55
  %57 = getelementptr inbounds float, ptr %6, i64 1
  store float %56, ptr %57, align 4, !tbaa !41
  %58 = fadd float %27, %40
  %59 = fadd float %52, %58
  %60 = getelementptr inbounds float, ptr %6, i64 2
  store float %59, ptr %60, align 4, !tbaa !41
  %61 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !43
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %151, label %64

64:                                               ; preds = %5
  %65 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !44
  %67 = call float @cosf(float noundef %17) #6
  %68 = call float @sinf(float noundef %17) #6
  %69 = load float, ptr %66, align 4, !tbaa !41
  %70 = fmul float %67, %69
  %71 = getelementptr inbounds float, ptr %66, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !41
  %73 = fmul float %67, %72
  %74 = getelementptr inbounds float, ptr %66, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !41
  %76 = fmul float %67, %75
  %77 = load float, ptr %9, align 4, !tbaa !41
  %78 = load float, ptr %29, align 4, !tbaa !41
  %79 = fmul float %72, %78
  %80 = call float @llvm.fmuladd.f32(float %69, float %77, float %79)
  %81 = load float, ptr %33, align 4, !tbaa !41
  %82 = call float @llvm.fmuladd.f32(float %75, float %81, float %80)
  %83 = fsub float 1.000000e+00, %67
  %84 = fmul float %83, %82
  %85 = fmul float %77, %84
  %86 = fmul float %78, %84
  %87 = fmul float %81, %84
  %88 = fneg float %81
  %89 = fmul float %72, %88
  %90 = call float @llvm.fmuladd.f32(float %78, float %75, float %89)
  %91 = fneg float %77
  %92 = fmul float %75, %91
  %93 = call float @llvm.fmuladd.f32(float %81, float %69, float %92)
  %94 = fneg float %78
  %95 = fmul float %69, %94
  %96 = call float @llvm.fmuladd.f32(float %77, float %72, float %95)
  %97 = fmul float %68, %90
  %98 = fmul float %68, %93
  %99 = fmul float %68, %96
  %100 = fadd float %70, %85
  %101 = fadd float %97, %100
  store float %101, ptr %7, align 4, !tbaa !41
  %102 = fadd float %73, %86
  %103 = fadd float %98, %102
  %104 = getelementptr inbounds float, ptr %7, i64 1
  store float %103, ptr %104, align 4, !tbaa !41
  %105 = fadd float %76, %87
  %106 = fadd float %99, %105
  %107 = getelementptr inbounds float, ptr %7, i64 2
  store float %106, ptr %107, align 4, !tbaa !41
  %108 = getelementptr inbounds %struct.TexParams, ptr %1, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !45
  %110 = call float @cosf(float noundef %17) #6
  %111 = call float @sinf(float noundef %17) #6
  %112 = load float, ptr %109, align 4, !tbaa !41
  %113 = fmul float %110, %112
  %114 = getelementptr inbounds float, ptr %109, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !41
  %116 = fmul float %110, %115
  %117 = getelementptr inbounds float, ptr %109, i64 2
  %118 = load float, ptr %117, align 4, !tbaa !41
  %119 = fmul float %110, %118
  %120 = load float, ptr %9, align 4, !tbaa !41
  %121 = load float, ptr %29, align 4, !tbaa !41
  %122 = fmul float %115, %121
  %123 = call float @llvm.fmuladd.f32(float %112, float %120, float %122)
  %124 = load float, ptr %33, align 4, !tbaa !41
  %125 = call float @llvm.fmuladd.f32(float %118, float %124, float %123)
  %126 = fsub float 1.000000e+00, %110
  %127 = fmul float %126, %125
  %128 = fmul float %120, %127
  %129 = fmul float %121, %127
  %130 = fmul float %124, %127
  %131 = fneg float %124
  %132 = fmul float %115, %131
  %133 = call float @llvm.fmuladd.f32(float %121, float %118, float %132)
  %134 = fneg float %120
  %135 = fmul float %118, %134
  %136 = call float @llvm.fmuladd.f32(float %124, float %112, float %135)
  %137 = fneg float %121
  %138 = fmul float %112, %137
  %139 = call float @llvm.fmuladd.f32(float %120, float %115, float %138)
  %140 = fmul float %111, %133
  %141 = fmul float %111, %136
  %142 = fmul float %111, %139
  %143 = fadd float %113, %128
  %144 = fadd float %140, %143
  store float %144, ptr %8, align 4, !tbaa !41
  %145 = fadd float %116, %129
  %146 = fadd float %141, %145
  %147 = getelementptr inbounds float, ptr %8, i64 1
  store float %146, ptr %147, align 4, !tbaa !41
  %148 = fadd float %119, %130
  %149 = fadd float %142, %148
  %150 = getelementptr inbounds float, ptr %8, i64 2
  store float %149, ptr %150, align 4, !tbaa !41
  br label %151

151:                                              ; preds = %64, %5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !46
  store ptr %6, ptr %10, align 8, !tbaa !38
  %152 = getelementptr inbounds %struct.TexParams, ptr %10, i64 0, i32 1
  store ptr %7, ptr %152, align 8, !tbaa !44
  %153 = getelementptr inbounds %struct.TexParams, ptr %10, i64 0, i32 2
  store ptr %8, ptr %153, align 8, !tbaa !45
  %154 = load ptr, ptr %3, align 8, !tbaa !34
  call void @tex_input_rgba(ptr noundef %0, ptr noundef %154, ptr noundef nonnull %10, i16 noundef signext %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @tex_input_vec(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"TexParams", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48}
!40 = !{!"int", !36, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !36, i64 0}
!43 = !{!39, !40, i64 36}
!44 = !{!39, !35, i64 8}
!45 = !{!39, !35, i64 16}
!46 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 4, !47, i64 36, i64 4, !47, i64 40, i64 8, !34, i64 48, i64 8, !34}
!47 = !{!40, !40, i64 0}
