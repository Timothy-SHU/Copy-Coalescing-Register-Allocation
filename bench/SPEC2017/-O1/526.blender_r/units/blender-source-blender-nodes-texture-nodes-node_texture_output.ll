; ModuleID = 'blender/source/blender/nodes/texture/nodes/node_texture_output.c'
source_filename = "blender/source/blender/nodes/texture/nodes/node_texture_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeSocketTemplate = type { i32, i32, [64 x i8], float, float, float, float, float, float, i32, i32, ptr, [64 x i8] }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.TexCallData = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i16, i32, ptr, ptr }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.TexResult = type { float, float, float, float, float, i32, ptr }
%struct.bNodeExecData = type { ptr, ptr }

@register_node_type_tex_output.ntype = internal global %struct.bNodeType zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@inputs = internal global [3 x %struct.bNodeSocketTemplate] [%struct.bNodeSocketTemplate { i32 2, i32 1, [64 x i8] c"Color\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 1, i32 1, [64 x i8] c"Normal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 22, i32 0, ptr null, [64 x i8] zeroinitializer }, %struct.bNodeSocketTemplate { i32 -1, i32 0, [64 x i8] zeroinitializer, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 0, ptr null, [64 x i8] zeroinitializer }], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"TexNodeOutput\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"TEX_output\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".%03d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @register_node_type_tex_output() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_output.ntype, i32 noundef 401, ptr noundef nonnull @.str, i16 noundef signext 1, i16 noundef signext 4) #6
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef nonnull @inputs, ptr noundef null) #6
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_output.ntype, i32 noundef 2) #6
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef nonnull @init) #6
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @copy) #6
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #6
  tail call void @node_type_internal_links(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef null) #6
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_output.ntype) #6
  ret void
}

declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 64, ptr noundef nonnull @.str.2) #6
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !38
  store i64 32770348699510084, ptr %4, align 1
  tail call fastcc void @unique_name(ptr noundef %1)
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %1, %2 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !46

11:                                               ; preds = %6
  %12 = icmp eq ptr %7, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %11, %28
  %14 = phi i32 [ %29, %28 ], [ 1, %11 ]
  %15 = phi ptr [ %17, %28 ], [ %7, %11 ]
  br label %16

16:                                               ; preds = %13, %30
  %17 = phi ptr [ %15, %13 ], [ %31, %30 ]
  %18 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %19 = load i16, ptr %18, align 4, !tbaa !49
  %20 = icmp ne i16 %19, 401
  %21 = icmp eq ptr %17, %1
  %22 = or i1 %21, %20
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 33
  %25 = load i16, ptr %24, align 8, !tbaa !50
  %26 = sext i16 %25 to i32
  %27 = icmp eq i32 %14, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = add nuw nsw i32 %14, 1
  br label %13

30:                                               ; preds = %23, %16
  %31 = load ptr, ptr %17, align 8, !tbaa !51
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16, !llvm.loop !52

33:                                               ; preds = %30
  %34 = trunc i32 %14 to i16
  br label %35

35:                                               ; preds = %33, %11
  %36 = phi i16 [ 1, %11 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  store i16 %36, ptr %37, align 8, !tbaa !50
  ret void
}

declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @node_free_standard_storage(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @copy(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @node_copy_standard_storage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  tail call fastcc void @unique_name(ptr noundef %1)
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi ptr [ %1, %3 ], [ %7, %4 ]
  %6 = getelementptr inbounds %struct.bNode, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !46

9:                                                ; preds = %4
  %10 = icmp eq ptr %5, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %9, %26
  %12 = phi i32 [ %27, %26 ], [ 1, %9 ]
  %13 = phi ptr [ %15, %26 ], [ %5, %9 ]
  br label %14

14:                                               ; preds = %11, %28
  %15 = phi ptr [ %13, %11 ], [ %29, %28 ]
  %16 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 8
  %17 = load i16, ptr %16, align 4, !tbaa !49
  %18 = icmp ne i16 %17, 401
  %19 = icmp eq ptr %15, %1
  %20 = or i1 %19, %18
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bNode, ptr %15, i64 0, i32 33
  %23 = load i16, ptr %22, align 8, !tbaa !50
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %12, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = add nuw nsw i32 %12, 1
  br label %11

28:                                               ; preds = %21, %14
  %29 = load ptr, ptr %15, align 8, !tbaa !51
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !llvm.loop !52

31:                                               ; preds = %28
  %32 = trunc i32 %12 to i16
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi i16 [ 1, %9 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 33
  store i16 %34, ptr %35, align 8, !tbaa !50
  ret void
}

declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) #0 {
  %7 = alloca %struct.TexParams, align 8
  %8 = alloca %struct.TexParams, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 4, !tbaa !55
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #6
  call void @params_from_cdata(ptr noundef nonnull %7, ptr noundef nonnull %0) #6
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.bNodeStack, ptr %15, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !56
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.bNodeStack, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 8, !tbaa !56
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %28 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 7
  %29 = load i16, ptr %28, align 2, !tbaa !58
  call void @tex_input_rgba(ptr noundef nonnull %27, ptr noundef nonnull %15, ptr noundef nonnull %7, i16 noundef signext %29) #6
  br label %35

30:                                               ; preds = %21, %17, %13
  %31 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %32 = load ptr, ptr %4, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 7
  %34 = load i16, ptr %33, align 2, !tbaa !58
  call void @tex_input_rgba(ptr noundef nonnull %31, ptr noundef %32, ptr noundef nonnull %7, i16 noundef signext %34) #6
  br label %35

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = load ptr, ptr %7, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %40 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 6
  %41 = load i8, ptr %40, align 1, !tbaa !63
  call void @tex_do_preview(ptr noundef %37, ptr noundef %38, ptr noundef nonnull %39, i8 noundef zeroext %41) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #6
  br label %81

42:                                               ; preds = %6
  %43 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 8
  %44 = load i16, ptr %43, align 8, !tbaa !64
  %45 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %46 = load i16, ptr %45, align 8, !tbaa !50
  %47 = icmp eq i16 %44, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = icmp eq i16 %44, 0
  %50 = icmp eq i16 %46, 1
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48, %42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #6
  call void @params_from_cdata(ptr noundef nonnull %8, ptr noundef nonnull %0) #6
  %53 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %54 = load ptr, ptr %4, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 7
  %56 = load i16, ptr %55, align 2, !tbaa !58
  call void @tex_input_rgba(ptr noundef nonnull %53, ptr noundef %54, ptr noundef nonnull %8, i16 noundef signext %56) #6
  %57 = load float, ptr %53, align 4, !tbaa !65
  %58 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %59 = load float, ptr %58, align 8, !tbaa !67
  %60 = fadd float %57, %59
  %61 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %62 = load float, ptr %61, align 4, !tbaa !68
  %63 = fadd float %60, %62
  %64 = fdiv float %63, 3.000000e+00
  store float %64, ptr %9, align 8, !tbaa !69
  %65 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  store i32 1, ptr %65, align 4, !tbaa !70
  %66 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %52
  %70 = getelementptr inbounds ptr, ptr %4, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.bNodeStack, ptr %71, i64 0, i32 4
  %75 = load i16, ptr %74, align 8, !tbaa !56
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load i16, ptr %55, align 2, !tbaa !58
  call void @tex_input_vec(ptr noundef nonnull %67, ptr noundef nonnull %71, ptr noundef nonnull %8, i16 noundef signext %78) #6
  br label %80

79:                                               ; preds = %73, %69
  store ptr null, ptr %66, align 8, !tbaa !71
  br label %80

80:                                               ; preds = %77, %79, %52
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #6
  br label %81

81:                                               ; preds = %48, %80, %35
  ret void
}

declare void @node_type_internal_links(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @unique_name(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i8 0, ptr %2, align 16, !tbaa !72
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %0, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !73

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %2, i64 -4
  %13 = icmp eq ptr %7, null
  br i1 %13, label %60, label %14

14:                                               ; preds = %11, %55
  %15 = phi i32 [ %57, %55 ], [ 0, %11 ]
  %16 = phi ptr [ %56, %55 ], [ %5, %11 ]
  %17 = phi ptr [ %58, %55 ], [ %7, %11 ]
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %55, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 8
  %21 = load i16, ptr %20, align 4, !tbaa !49
  %22 = icmp eq i16 %21, 401
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.bNode, ptr %17, i64 0, i32 21
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load i8, ptr %2, align 16, !tbaa !72
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #7
  %33 = trunc i64 %32 to i32
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = and i64 %32, 4294967295
  %37 = getelementptr inbounds i8, ptr %16, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 -4
  %39 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %38, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #6
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %35, %31
  store i32 0, ptr %3, align 4, !tbaa !74
  %42 = add nsw i32 %33, 4
  %43 = call i32 @llvm.umin.i32(i32 %42, i32 63)
  br label %44

44:                                               ; preds = %35, %41
  %45 = phi i32 [ %43, %41 ], [ %33, %35 ]
  %46 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %16, i64 noundef 64) #6
  br label %47

47:                                               ; preds = %44, %28
  %48 = phi ptr [ %2, %44 ], [ %16, %28 ]
  %49 = phi i32 [ %45, %44 ], [ %15, %28 ]
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, ptr %12, i64 %50
  %52 = load i32, ptr %3, align 4, !tbaa !74
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %3, align 4, !tbaa !74
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %53) #6
  br label %55

55:                                               ; preds = %14, %19, %23, %47
  %56 = phi ptr [ %16, %14 ], [ %16, %19 ], [ %48, %47 ], [ %16, %23 ]
  %57 = phi i32 [ %15, %14 ], [ %15, %19 ], [ %49, %47 ], [ %15, %23 ]
  %58 = load ptr, ptr %17, align 8, !tbaa !51
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %14, !llvm.loop !75

60:                                               ; preds = %55, %11
  %61 = load i8, ptr %2, align 16, !tbaa !72
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call ptr @BLI_strncpy(ptr noundef %5, ptr noundef nonnull %2, i64 noundef 64) #6
  br label %65

65:                                               ; preds = %63, %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @params_from_cdata(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @tex_do_preview(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @tex_input_vec(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 248}
!39 = !{!"bNode", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 104, !40, i64 168, !41, i64 172, !41, i64 174, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !41, i64 184, !41, i64 186, !36, i64 188, !42, i64 200, !42, i64 216, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !42, i64 264, !43, i64 280, !43, i64 284, !43, i64 288, !43, i64 292, !43, i64 296, !43, i64 300, !43, i64 304, !40, i64 308, !36, i64 312, !41, i64 376, !41, i64 378, !43, i64 380, !43, i64 384, !41, i64 388, !41, i64 390, !35, i64 392, !44, i64 400, !44, i64 416, !44, i64 432, !41, i64 448, !41, i64 450, !40, i64 452, !35, i64 456}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"ListBase", !35, i64 0, !35, i64 8}
!43 = !{!"float", !36, i64 0}
!44 = !{!"rctf", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!45 = !{!39, !35, i64 8}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!39, !41, i64 172}
!50 = !{!39, !41, i64 376}
!51 = !{!39, !35, i64 0}
!52 = distinct !{!52, !47, !48}
!53 = !{!54, !35, i64 0}
!54 = !{!"TexCallData", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !36, i64 37, !41, i64 38, !41, i64 40, !40, i64 44, !35, i64 48, !35, i64 56}
!55 = !{!54, !36, i64 36}
!56 = !{!57, !41, i64 32}
!57 = !{!"bNodeStack", !36, i64 0, !43, i64 16, !43, i64 20, !35, i64 24, !41, i64 32, !41, i64 34, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !36, i64 44}
!58 = !{!54, !41, i64 38}
!59 = !{!60, !35, i64 8}
!60 = !{!"bNodeExecData", !35, i64 0, !35, i64 8}
!61 = !{!62, !35, i64 0}
!62 = !{!"TexParams", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !35, i64 40, !35, i64 48}
!63 = !{!54, !36, i64 37}
!64 = !{!54, !41, i64 40}
!65 = !{!66, !43, i64 4}
!66 = !{!"TexResult", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !40, i64 20, !35, i64 24}
!67 = !{!66, !43, i64 8}
!68 = !{!66, !43, i64 12}
!69 = !{!66, !43, i64 0}
!70 = !{!66, !40, i64 20}
!71 = !{!66, !35, i64 24}
!72 = !{!36, !36, i64 0}
!73 = distinct !{!73, !47, !48}
!74 = !{!40, !40, i64 0}
!75 = distinct !{!75, !47, !48}
