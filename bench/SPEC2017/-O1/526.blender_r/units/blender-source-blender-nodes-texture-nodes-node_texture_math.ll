; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_math.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_math.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }

@register_node_type_tex_math.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"Math\00", align 1
@inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float -1.000000e+02, float 1.000000e+02, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 0, i32 1, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float -1.000000e+02, float 1.000000e+02, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@outputs = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 0, i32 0, [64 x i8] c"Value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_math() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_math.ntype, i32 noundef 405, ptr noundef nonnull @.str, i16 noundef signext 8, i16 noundef signext 0) #5
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_math.ntype, ptr noundef nonnull @inputs, ptr noundef nonnull @outputs) #5
  tail call void @node_type_label(ptr noundef nonnull @register_node_type_tex_math.ntype, ptr noundef nonnull @node_math_label) #5
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_math.ntype, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null) #5
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_math.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #5
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_math.ntype) #5
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_label(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_math_label(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) #0 {
  %7 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @tex_output(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef nonnull @valuefn, ptr noundef %0) #5
  ret void
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @tex_output(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @valuefn(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i16 noundef signext %4) #0 {
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = tail call float @tex_input_value(ptr noundef %6, ptr noundef %1, i16 noundef signext %4) #5
  %8 = getelementptr inbounds ptr, ptr %3, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call float @tex_input_value(ptr noundef %9, ptr noundef %1, i16 noundef signext %4) #5
  %11 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %12 = load i16, ptr %11, align 8, !tbaa !38
  switch i16 %12, label %106 [
    i16 0, label %13
    i16 1, label %15
    i16 2, label %17
    i16 3, label %19
    i16 4, label %23
    i16 5, label %25
    i16 6, label %27
    i16 7, label %29
    i16 8, label %35
    i16 9, label %41
    i16 10, label %45
    i16 11, label %66
    i16 12, label %77
    i16 13, label %80
    i16 14, label %83
    i16 15, label %89
    i16 16, label %92
    i16 17, label %95
    i16 18, label %102
  ]

13:                                               ; preds = %5
  %14 = fadd float %7, %10
  br label %104

15:                                               ; preds = %5
  %16 = fsub float %7, %10
  br label %104

17:                                               ; preds = %5
  %18 = fmul float %7, %10
  br label %104

19:                                               ; preds = %5
  %20 = fcmp oeq float %10, 0.000000e+00
  br i1 %20, label %104, label %21

21:                                               ; preds = %19
  %22 = fdiv float %7, %10
  br label %104

23:                                               ; preds = %5
  %24 = tail call float @sinf(float noundef %7) #5
  br label %104

25:                                               ; preds = %5
  %26 = tail call float @cosf(float noundef %7) #5
  br label %104

27:                                               ; preds = %5
  %28 = tail call float @tanf(float noundef %7) #5
  br label %104

29:                                               ; preds = %5
  %30 = fcmp ole float %7, 1.000000e+00
  %31 = fcmp oge float %7, -1.000000e+00
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %104

33:                                               ; preds = %29
  %34 = tail call float @asinf(float noundef %7) #5
  br label %104

35:                                               ; preds = %5
  %36 = fcmp ole float %7, 1.000000e+00
  %37 = fcmp oge float %7, -1.000000e+00
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %104

39:                                               ; preds = %35
  %40 = tail call float @acosf(float noundef %7) #5
  br label %104

41:                                               ; preds = %5
  %42 = fpext float %7 to double
  %43 = tail call double @atan(double noundef %42) #5
  %44 = fptrunc double %43 to float
  br label %104

45:                                               ; preds = %5
  %46 = fcmp ult float %7, 0.000000e+00
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = fpext float %7 to double
  %49 = fpext float %10 to double
  %50 = tail call double @pow(double noundef %48, double noundef %49) #5
  %51 = fptrunc double %50 to float
  br label %104

52:                                               ; preds = %45
  %53 = fpext float %10 to double
  %54 = tail call double @fmod(double noundef %53, double noundef 1.000000e+00) #5
  %55 = fptrunc double %54 to float
  %56 = fcmp ogt float %55, 0x3FEFF7CEE0000000
  %57 = fcmp olt float %55, 0x3F50624DE0000000
  %58 = or i1 %56, %57
  br i1 %58, label %59, label %104

59:                                               ; preds = %52
  %60 = fpext float %7 to double
  %61 = fadd float %10, 5.000000e-01
  %62 = tail call float @llvm.floor.f32(float %61)
  %63 = fpext float %62 to double
  %64 = tail call double @pow(double noundef %60, double noundef %63) #5
  %65 = fptrunc double %64 to float
  br label %104

66:                                               ; preds = %5
  %67 = fcmp ogt float %7, 0.000000e+00
  %68 = fcmp ogt float %10, 0.000000e+00
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %104

70:                                               ; preds = %66
  %71 = fpext float %7 to double
  %72 = tail call double @log(double noundef %71) #5
  %73 = fpext float %10 to double
  %74 = tail call double @log(double noundef %73) #5
  %75 = fdiv double %72, %74
  %76 = fptrunc double %75 to float
  br label %104

77:                                               ; preds = %5
  %78 = fcmp olt float %7, %10
  %79 = select i1 %78, float %7, float %10
  br label %104

80:                                               ; preds = %5
  %81 = fcmp ogt float %7, %10
  %82 = select i1 %81, float %7, float %10
  br label %104

83:                                               ; preds = %5
  %84 = fcmp olt float %7, 0.000000e+00
  %85 = select i1 %84, float -5.000000e-01, float 5.000000e-01
  %86 = fadd float %7, %85
  %87 = fptosi float %86 to i32
  %88 = sitofp i32 %87 to float
  br label %104

89:                                               ; preds = %5
  %90 = fcmp olt float %7, %10
  %91 = select i1 %90, float 1.000000e+00, float 0.000000e+00
  br label %104

92:                                               ; preds = %5
  %93 = fcmp ogt float %7, %10
  %94 = select i1 %93, float 1.000000e+00, float 0.000000e+00
  br label %104

95:                                               ; preds = %5
  %96 = fcmp oeq float %10, 0.000000e+00
  br i1 %96, label %104, label %97

97:                                               ; preds = %95
  %98 = fpext float %7 to double
  %99 = fpext float %10 to double
  %100 = tail call double @fmod(double noundef %98, double noundef %99) #5
  %101 = fptrunc double %100 to float
  br label %104

102:                                              ; preds = %5
  %103 = tail call float @llvm.fabs.f32(float %7)
  br label %104

104:                                              ; preds = %95, %92, %89, %80, %77, %66, %59, %52, %35, %29, %19, %13, %15, %17, %23, %25, %27, %41, %83, %102, %21, %33, %39, %47, %70, %97
  %105 = phi float [ %101, %97 ], [ %76, %70 ], [ %51, %47 ], [ %40, %39 ], [ %34, %33 ], [ %22, %21 ], [ %103, %102 ], [ %88, %83 ], [ %44, %41 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ 0.000000e+00, %19 ], [ 0.000000e+00, %29 ], [ 0.000000e+00, %35 ], [ %65, %59 ], [ 0.000000e+00, %52 ], [ 0.000000e+00, %66 ], [ %79, %77 ], [ %82, %80 ], [ %91, %89 ], [ %94, %92 ], [ 0.000000e+00, %95 ]
  store float %105, ptr %0, align 4, !tbaa !45
  br label %106

106:                                              ; preds = %104, %5
  ret void
}

declare float @tex_input_value(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @tanf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @asinf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!38 = !{!39, !41, i64 376}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!43, !43, i64 0}
