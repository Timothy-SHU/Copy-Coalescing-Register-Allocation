; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_tex_sky.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_tex_sky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.NodeTexBase = type { %struct.TexMapping, %struct.ColorMapping }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }
%struct.ColorMapping = type { %struct.ColorBand, float, float, float, i32, [3 x float], float, i32, [3 x i32] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.NodeTexSky = type { %struct.NodeTexBase, i32, [3 x float], float, float }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }

@register_node_type_sh_tex_sky.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"Sky Texture\00", align 1
@sh_node_tex_sky_in = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 128, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_tex_sky_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 512, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"NodeTexSky\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"node_tex_sky\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_tex_sky() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype, i32 noundef 145, ptr noundef nonnull @.str, i16 noundef signext 13, i16 noundef signext 0) #2
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype, i16 noundef signext 2) #2
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype, ptr noundef nonnull @sh_node_tex_sky_in, ptr noundef nonnull @sh_node_tex_sky_out) #2
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype, i32 noundef 2) #2
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype, ptr noundef nonnull @node_shader_init_tex_sky) #2
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #2
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype, ptr noundef nonnull @node_shader_gpu_tex_sky) #2
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_tex_sky.ntype) #2
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_init_tex_sky(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 992, ptr noundef nonnull @.str.1) #2
  tail call void @default_tex_mapping(ptr noundef %4, i32 noundef 0) #2
  %5 = getelementptr inbounds %struct.NodeTexBase, ptr %4, i64 0, i32 1
  tail call void @default_color_mapping(ptr noundef nonnull %5) #2
  %6 = getelementptr inbounds %struct.NodeTexSky, ptr %4, i64 0, i32 2
  store float 0.000000e+00, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds %struct.NodeTexSky, ptr %4, i64 0, i32 2, i64 1
  store float 0.000000e+00, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.NodeTexSky, ptr %4, i64 0, i32 2, i64 2
  store float 1.000000e+00, ptr %8, align 4, !tbaa !38
  %9 = getelementptr inbounds %struct.NodeTexSky, ptr %4, i64 0, i32 3
  store float 0x40019999A0000000, ptr %9, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.NodeTexSky, ptr %4, i64 0, i32 4
  store float 0x3FD3333340000000, ptr %10, align 4, !tbaa !48
  %11 = getelementptr inbounds %struct.NodeTexSky, ptr %4, i64 0, i32 1
  store i32 1, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %12, align 8, !tbaa !50
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @node_shader_gpu_tex_sky(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call ptr @GPU_attribute(i32 noundef 14, ptr noundef nonnull @.str.2) #2
  store ptr %10, ptr %6, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %9, %5
  tail call void @node_shader_gpu_tex_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #2
  %12 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef %4) #2
  %13 = zext i8 %12 to i32
  ret i32 %13
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @default_tex_mapping(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @default_color_mapping(ptr noundef) local_unnamed_addr #1

declare ptr @GPU_attribute(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @node_shader_gpu_tex_mapping(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !36, i64 0}
!40 = !{!41, !39, i64 984}
!41 = !{!"NodeTexSky", !42, i64 0, !44, i64 968, !36, i64 972, !39, i64 984, !39, i64 988}
!42 = !{!"NodeTexBase", !43, i64 0, !45, i64 144}
!43 = !{!"TexMapping", !36, i64 0, !36, i64 12, !36, i64 24, !44, i64 36, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !44, i64 44, !36, i64 48, !36, i64 112, !36, i64 124, !35, i64 136}
!44 = !{!"int", !36, i64 0}
!45 = !{!"ColorMapping", !46, i64 0, !39, i64 776, !39, i64 780, !39, i64 784, !44, i64 788, !36, i64 792, !39, i64 804, !44, i64 808, !36, i64 812}
!46 = !{!"ColorBand", !47, i64 0, !47, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!47 = !{!"short", !36, i64 0}
!48 = !{!41, !39, i64 988}
!49 = !{!41, !44, i64 968}
!50 = !{!51, !35, i64 248}
!51 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !44, i64 168, !47, i64 172, !47, i64 174, !47, i64 176, !47, i64 178, !47, i64 180, !47, i64 182, !47, i64 184, !47, i64 186, !36, i64 188, !52, i64 200, !52, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !52, i64 264, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !39, i64 300, !39, i64 304, !44, i64 308, !36, i64 312, !47, i64 376, !47, i64 378, !39, i64 380, !39, i64 384, !47, i64 388, !47, i64 390, !35, i64 392, !53, i64 400, !53, i64 416, !53, i64 432, !47, i64 448, !47, i64 450, !44, i64 452, !35, i64 456}
!52 = !{!"ListBase", !35, i64 0, !35, i64 8}
!53 = !{!"rctf", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!54 = !{!55, !35, i64 32}
!55 = !{!"GPUNodeStack", !44, i64 0, !35, i64 8, !36, i64 16, !35, i64 32, !36, i64 40, !36, i64 41, !47, i64 42}
