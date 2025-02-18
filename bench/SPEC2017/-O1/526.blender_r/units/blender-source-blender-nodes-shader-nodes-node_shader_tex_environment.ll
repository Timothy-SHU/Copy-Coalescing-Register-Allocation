; ModuleID = 'blender/source/blender/nodes/shader/nodes/node_shader_tex_environment.c'
source_filename = "blender/source/blender/nodes/shader/nodes/node_shader_tex_environment.c"
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
%struct.NodeTexEnvironment = type { %struct.NodeTexBase, %struct.ImageUser, i32, i32 }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.NodeTexImage = type { %struct.NodeTexBase, %struct.ImageUser, i32, i32, float, i32 }
%struct.GPUNodeStack = type { i32, ptr, [4 x float], ptr, i8, i8, i16 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@register_node_type_sh_tex_environment.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"Environment Texture\00", align 1
@sh_node_tex_environment_in = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Vector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 128, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@sh_node_tex_environment_out = internal global [2 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 0, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 0, i32 512, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"NodeTexEnvironment\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"node_tex_environment_empty\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"node_tex_environment\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"srgb_to_linearrgb\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_sh_tex_environment() local_unnamed_addr #0 {
  tail call void @sh_node_type_base(ptr noundef nonnull @register_node_type_sh_tex_environment.ntype, i32 noundef 157, ptr noundef nonnull @.str, i16 noundef signext 13, i16 noundef signext 0) #2
  tail call void @node_type_compatibility(ptr noundef nonnull @register_node_type_sh_tex_environment.ntype, i16 noundef signext 2) #2
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_sh_tex_environment.ntype, ptr noundef nonnull @sh_node_tex_environment_in, ptr noundef nonnull @sh_node_tex_environment_out) #2
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_sh_tex_environment.ntype, ptr noundef nonnull @node_shader_init_tex_environment) #2
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_sh_tex_environment.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @node_copy_standard_storage) #2
  tail call void @node_type_gpu(ptr noundef nonnull @register_node_type_sh_tex_environment.ntype, ptr noundef nonnull @node_shader_gpu_tex_environment) #2
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_sh_tex_environment.ntype) #2
  ret void
}

declare void @sh_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_compatibility(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @node_shader_init_tex_environment(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 1016, ptr noundef nonnull @.str.1) #2
  tail call void @default_tex_mapping(ptr noundef %4, i32 noundef 0) #2
  %5 = getelementptr inbounds %struct.NodeTexBase, ptr %4, i64 0, i32 1
  tail call void @default_color_mapping(ptr noundef nonnull %5) #2
  %6 = getelementptr inbounds %struct.NodeTexEnvironment, ptr %4, i64 0, i32 2
  store i32 1, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.NodeTexEnvironment, ptr %4, i64 0, i32 3
  store i32 0, ptr %7, align 4, !tbaa !48
  %8 = getelementptr inbounds %struct.NodeTexEnvironment, ptr %4, i64 0, i32 1, i32 2
  store i32 1, ptr %8, align 4, !tbaa !49
  %9 = getelementptr inbounds %struct.NodeTexEnvironment, ptr %4, i64 0, i32 1, i32 4
  store i32 1, ptr %9, align 4, !tbaa !50
  %10 = getelementptr inbounds %struct.NodeTexEnvironment, ptr %4, i64 0, i32 1, i32 5
  store i8 2, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.NodeTexEnvironment, ptr %4, i64 0, i32 1, i32 7
  store i8 1, ptr %11, align 2, !tbaa !52
  %12 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %12, align 8, !tbaa !53
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) #1

declare void @node_type_gpu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @node_shader_gpu_tex_environment(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.NodeTexImage, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq ptr %7, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4) #2
  br label %43

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.GPUNodeStack, ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call ptr @GPU_builtin(i32 noundef 16) #2
  store ptr %21, ptr %17, align 8, !tbaa !60
  br label %22

22:                                               ; preds = %20, %16
  tail call void @node_shader_gpu_tex_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #2
  %23 = zext i1 %12 to i8
  %24 = tail call ptr @GPU_image(ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext %23) #2
  %25 = tail call zeroext i8 (ptr, ptr, ptr, ptr, ...) @GPU_stack_link(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %3, ptr noundef %4, ptr noundef %24) #2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ImBuf, ptr %28, i64 0, i32 38
  %32 = load i32, ptr %31, align 8, !tbaa !62
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = tail call zeroext i8 @GPU_material_do_color_management(ptr noundef %0) #2
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.GPUNodeStack, ptr %4, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = tail call zeroext i8 (ptr, ptr, ...) @GPU_link(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %40, ptr noundef nonnull %39) #2
  br label %42

42:                                               ; preds = %38, %35, %30, %27
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %7, ptr noundef %28, ptr noundef null) #2
  br label %43

43:                                               ; preds = %22, %42, %14
  %44 = phi i8 [ %15, %14 ], [ %25, %42 ], [ %25, %22 ]
  %45 = zext i8 %44 to i32
  ret i32 %45
}

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

declare void @default_tex_mapping(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @default_color_mapping(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_stack_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @GPU_builtin(i32 noundef) local_unnamed_addr #1

declare void @node_shader_gpu_tex_mapping(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @GPU_image(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_material_do_color_management(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @GPU_link(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
!38 = !{!39, !42, i64 1008}
!39 = !{!"NodeTexEnvironment", !40, i64 0, !47, i64 968, !42, i64 1008, !42, i64 1012}
!40 = !{!"NodeTexBase", !41, i64 0, !43, i64 144}
!41 = !{!"TexMapping", !36, i64 0, !36, i64 12, !36, i64 24, !42, i64 36, !36, i64 40, !36, i64 41, !36, i64 42, !36, i64 43, !42, i64 44, !36, i64 48, !36, i64 112, !36, i64 124, !35, i64 136}
!42 = !{!"int", !36, i64 0}
!43 = !{!"ColorMapping", !44, i64 0, !46, i64 776, !46, i64 780, !46, i64 784, !42, i64 788, !36, i64 792, !46, i64 804, !42, i64 808, !36, i64 812}
!44 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!45 = !{!"short", !36, i64 0}
!46 = !{!"float", !36, i64 0}
!47 = !{!"ImageUser", !35, i64 0, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !45, i64 28, !45, i64 30, !45, i64 32, !45, i64 34, !42, i64 36}
!48 = !{!39, !42, i64 1012}
!49 = !{!39, !42, i64 980}
!50 = !{!39, !42, i64 988}
!51 = !{!39, !36, i64 992}
!52 = !{!39, !36, i64 994}
!53 = !{!54, !35, i64 248}
!54 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !42, i64 168, !45, i64 172, !45, i64 174, !45, i64 176, !45, i64 178, !45, i64 180, !45, i64 182, !45, i64 184, !45, i64 186, !36, i64 188, !55, i64 200, !55, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !55, i64 264, !46, i64 280, !46, i64 284, !46, i64 288, !46, i64 292, !46, i64 296, !46, i64 300, !46, i64 304, !42, i64 308, !36, i64 312, !45, i64 376, !45, i64 378, !46, i64 380, !46, i64 384, !45, i64 388, !45, i64 390, !35, i64 392, !56, i64 400, !56, i64 416, !56, i64 432, !45, i64 448, !45, i64 450, !42, i64 452, !35, i64 456}
!55 = !{!"ListBase", !35, i64 0, !35, i64 8}
!56 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!57 = !{!54, !35, i64 240}
!58 = !{!59, !42, i64 1008}
!59 = !{!"NodeTexImage", !40, i64 0, !47, i64 968, !42, i64 1008, !42, i64 1012, !46, i64 1016, !42, i64 1020}
!60 = !{!61, !35, i64 32}
!61 = !{!"GPUNodeStack", !42, i64 0, !35, i64 8, !36, i64 16, !35, i64 32, !36, i64 40, !36, i64 41, !45, i64 42}
!62 = !{!63, !42, i64 2432}
!63 = !{!"ImBuf", !35, i64 0, !35, i64 8, !42, i64 16, !42, i64 20, !36, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !46, i64 112, !36, i64 120, !42, i64 280, !42, i64 284, !42, i64 288, !42, i64 292, !35, i64 296, !35, i64 304, !42, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !42, i64 2376, !35, i64 2384, !42, i64 2392, !42, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !42, i64 2432, !64, i64 2436, !65, i64 2456}
!64 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!65 = !{!"DDSData", !42, i64 0, !42, i64 4, !35, i64 8, !42, i64 16}
