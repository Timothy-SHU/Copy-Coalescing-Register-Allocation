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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_node_type_tex_output() local_unnamed_addr #0 {
  tail call void @tex_node_type_base(ptr noundef nonnull @register_node_type_tex_output.ntype, i32 noundef 401, ptr noundef nonnull @.str, i16 noundef signext 1, i16 noundef signext 4) #7
  tail call void @node_type_socket_templates(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef nonnull @inputs, ptr noundef null) #7
  tail call void @node_type_size_preset(ptr noundef nonnull @register_node_type_tex_output.ntype, i32 noundef 2) #7
  tail call void @node_type_init(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef nonnull @init) #7
  tail call void @node_type_storage(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef nonnull @.str.1, ptr noundef nonnull @node_free_standard_storage, ptr noundef nonnull @copy) #7
  tail call void @node_type_exec(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef null, ptr noundef null, ptr noundef nonnull @exec) #7
  tail call void @node_type_internal_links(ptr noundef nonnull @register_node_type_tex_output.ntype, ptr noundef null) #7
  tail call void @nodeRegisterType(ptr noundef nonnull @register_node_type_tex_output.ntype) #7
  ret void
}

; Function Attrs: optsize
declare void @tex_node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_socket_templates(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_size_preset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_type_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !34 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %4 = tail call ptr %3(i64 noundef 64, ptr noundef nonnull @.str.2) #7
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 21
  store ptr %4, ptr %5, align 8, !tbaa !39
  store i64 32770348699510084, ptr %4, align 1
  tail call fastcc void @unique_name(ptr noundef %1) #8
  tail call fastcc void @assign_index(ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @node_type_storage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @node_free_standard_storage(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @copy(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !46 {
  tail call void @node_copy_standard_storage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  tail call fastcc void @unique_name(ptr noundef %1) #8
  tail call fastcc void @assign_index(ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @node_type_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @exec(ptr noundef %0, i32 %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture readnone %5) #0 !PGOFuncName !47 {
  %7 = alloca %struct.TexParams, align 8
  %8 = alloca %struct.TexParams, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 4, !tbaa !50
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #9
  call void @params_from_cdata(ptr noundef nonnull %7, ptr noundef nonnull %0) #7
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !tbaa !35
  br label %32

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bNodeStack, ptr %15, i64 0, i32 4
  %21 = load i16, ptr %20, align 8, !tbaa !51
  %22 = icmp eq i16 %21, 0
  %23 = load ptr, ptr %4, align 8, !tbaa !35
  br i1 %22, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bNodeStack, ptr %23, i64 0, i32 4
  %26 = load i16, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %30 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 7
  %31 = load i16, ptr %30, align 2, !tbaa !53
  call void @tex_input_rgba(ptr noundef nonnull %29, ptr noundef nonnull %15, ptr noundef nonnull %7, i16 noundef signext %31) #7
  br label %37

32:                                               ; preds = %17, %24, %19
  %33 = phi ptr [ %18, %17 ], [ %23, %24 ], [ %23, %19 ]
  %34 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %35 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 7
  %36 = load i16, ptr %35, align 2, !tbaa !53
  call void @tex_input_rgba(ptr noundef nonnull %34, ptr noundef %33, ptr noundef nonnull %7, i16 noundef signext %36) #7
  br label %37

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.bNodeExecData, ptr %3, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = load ptr, ptr %7, align 8, !tbaa !56
  %41 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %42 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 6
  %43 = load i8, ptr %42, align 1, !tbaa !58
  call void @tex_do_preview(ptr noundef %39, ptr noundef %40, ptr noundef nonnull %41, i8 noundef zeroext %43) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #9
  br label %83

44:                                               ; preds = %6
  %45 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 8
  %46 = load i16, ptr %45, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.bNode, ptr %2, i64 0, i32 33
  %48 = load i16, ptr %47, align 8, !tbaa !60
  %49 = icmp eq i16 %46, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = icmp eq i16 %46, 0
  %52 = icmp eq i16 %48, 1
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %50, %44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #9
  call void @params_from_cdata(ptr noundef nonnull %8, ptr noundef nonnull %0) #7
  %55 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 1
  %56 = load ptr, ptr %4, align 8, !tbaa !35
  %57 = getelementptr inbounds %struct.TexCallData, ptr %0, i64 0, i32 7
  %58 = load i16, ptr %57, align 2, !tbaa !53
  call void @tex_input_rgba(ptr noundef nonnull %55, ptr noundef %56, ptr noundef nonnull %8, i16 noundef signext %58) #7
  %59 = load float, ptr %55, align 4, !tbaa !61
  %60 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 2
  %61 = load float, ptr %60, align 8, !tbaa !63
  %62 = fadd float %59, %61
  %63 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 3
  %64 = load float, ptr %63, align 4, !tbaa !64
  %65 = fadd float %62, %64
  %66 = fdiv float %65, 3.000000e+00
  store float %66, ptr %9, align 8, !tbaa !65
  %67 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 5
  store i32 1, ptr %67, align 4, !tbaa !66
  %68 = getelementptr inbounds %struct.TexResult, ptr %9, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !67
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %54
  %72 = getelementptr inbounds ptr, ptr %4, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.bNodeStack, ptr %73, i64 0, i32 4
  %77 = load i16, ptr %76, align 8, !tbaa !51
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i16, ptr %57, align 2, !tbaa !53
  call void @tex_input_vec(ptr noundef nonnull %69, ptr noundef nonnull %73, ptr noundef nonnull %8, i16 noundef signext %80) #7
  br label %82

81:                                               ; preds = %75, %71
  store ptr null, ptr %68, align 8, !tbaa !67
  br label %82

82:                                               ; preds = %79, %81, %54
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #9
  br label %83

83:                                               ; preds = %50, %82, %37
  ret void
}

; Function Attrs: optsize
declare void @node_type_internal_links(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @nodeRegisterType(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unique_name(ptr noundef readonly %0) unnamed_addr #0 !PGOFuncName !68 {
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i8 0, ptr %2, align 16, !tbaa !69
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %0, %1 ], [ %9, %6 ]
  %8 = getelementptr inbounds %struct.bNode, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !71

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %2, i64 -4
  br label %13

13:                                               ; preds = %11, %54
  %14 = phi i32 [ %56, %54 ], [ 0, %11 ]
  %15 = phi ptr [ %55, %54 ], [ %5, %11 ]
  %16 = phi ptr [ %57, %54 ], [ %7, %11 ]
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %54, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 8
  %20 = load i16, ptr %19, align 4, !tbaa !73
  %21 = icmp eq i16 %20, 401
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bNode, ptr %16, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load i8, ptr %2, align 16, !tbaa !69
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #10
  %32 = trunc i64 %31 to i32
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = and i64 %31, 4294967295
  %36 = getelementptr inbounds i8, ptr %15, i64 %35
  %37 = getelementptr inbounds i8, ptr %36, i64 -4
  %38 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %37, ptr noundef nonnull @.str.4, ptr noundef nonnull %3) #7
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %34, %30
  store i32 0, ptr %3, align 4, !tbaa !74
  %41 = add nsw i32 %32, 4
  %42 = call i32 @llvm.umin.i32(i32 %41, i32 63)
  br label %43

43:                                               ; preds = %34, %40
  %44 = phi i32 [ %42, %40 ], [ %32, %34 ]
  %45 = call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %15, i64 noundef 64) #7
  br label %46

46:                                               ; preds = %43, %27
  %47 = phi ptr [ %2, %43 ], [ %15, %27 ]
  %48 = phi i32 [ %44, %43 ], [ %14, %27 ]
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, ptr %12, i64 %49
  %51 = load i32, ptr %3, align 4, !tbaa !74
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %3, align 4, !tbaa !74
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %52) #7
  br label %54

54:                                               ; preds = %13, %18, %22, %46
  %55 = phi ptr [ %15, %13 ], [ %15, %18 ], [ %47, %46 ], [ %15, %22 ]
  %56 = phi i32 [ %14, %13 ], [ %14, %18 ], [ %48, %46 ], [ %14, %22 ]
  %57 = load ptr, ptr %16, align 8, !tbaa !75
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %13, !llvm.loop !76

59:                                               ; preds = %54
  %60 = load i8, ptr %2, align 16, !tbaa !69
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call ptr @BLI_strncpy(ptr noundef %5, ptr noundef nonnull %2, i64 noundef 64) #7
  br label %64

64:                                               ; preds = %62, %59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @assign_index(ptr noundef %0) unnamed_addr #3 !PGOFuncName !77 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.bNode, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !78

7:                                                ; preds = %2, %22
  %8 = phi i32 [ %23, %22 ], [ 1, %2 ]
  %9 = phi ptr [ %11, %22 ], [ %3, %2 ]
  br label %10

10:                                               ; preds = %7, %24
  %11 = phi ptr [ %9, %7 ], [ %25, %24 ]
  %12 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 8
  %13 = load i16, ptr %12, align 4, !tbaa !73
  %14 = icmp ne i16 %13, 401
  %15 = icmp eq ptr %11, %0
  %16 = or i1 %15, %14
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.bNode, ptr %11, i64 0, i32 33
  %19 = load i16, ptr %18, align 8, !tbaa !60
  %20 = sext i16 %19 to i32
  %21 = icmp eq i32 %8, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %8, 1
  br label %7

24:                                               ; preds = %10, %17
  %25 = load ptr, ptr %11, align 8, !tbaa !75
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !79

27:                                               ; preds = %24
  %28 = trunc i32 %8 to i16
  %29 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 33
  store i16 %28, ptr %29, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @node_copy_standard_storage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @params_from_cdata(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_input_rgba(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_do_preview(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @tex_input_vec(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!"node_texture_output.c:init"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 248}
!40 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !41, i64 168, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !42, i64 180, !42, i64 182, !42, i64 184, !42, i64 186, !37, i64 188, !43, i64 200, !43, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !43, i64 264, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !41, i64 308, !37, i64 312, !42, i64 376, !42, i64 378, !44, i64 380, !44, i64 384, !42, i64 388, !42, i64 390, !36, i64 392, !45, i64 400, !45, i64 416, !45, i64 432, !42, i64 448, !42, i64 450, !41, i64 452, !36, i64 456}
!41 = !{!"int", !37, i64 0}
!42 = !{!"short", !37, i64 0}
!43 = !{!"ListBase", !36, i64 0, !36, i64 8}
!44 = !{!"float", !37, i64 0}
!45 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!46 = !{!"node_texture_output.c:copy"}
!47 = !{!"node_texture_output.c:exec"}
!48 = !{!49, !36, i64 0}
!49 = !{!"TexCallData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !37, i64 36, !37, i64 37, !42, i64 38, !42, i64 40, !41, i64 44, !36, i64 48, !36, i64 56}
!50 = !{!49, !37, i64 36}
!51 = !{!52, !42, i64 32}
!52 = !{!"bNodeStack", !37, i64 0, !44, i64 16, !44, i64 20, !36, i64 24, !42, i64 32, !42, i64 34, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !37, i64 44}
!53 = !{!49, !42, i64 38}
!54 = !{!55, !36, i64 8}
!55 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!56 = !{!57, !36, i64 0}
!57 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48}
!58 = !{!49, !37, i64 37}
!59 = !{!49, !42, i64 40}
!60 = !{!40, !42, i64 376}
!61 = !{!62, !44, i64 4}
!62 = !{!"TexResult", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !41, i64 20, !36, i64 24}
!63 = !{!62, !44, i64 8}
!64 = !{!62, !44, i64 12}
!65 = !{!62, !44, i64 0}
!66 = !{!62, !41, i64 20}
!67 = !{!62, !36, i64 24}
!68 = !{!"node_texture_output.c:unique_name"}
!69 = !{!37, !37, i64 0}
!70 = !{!40, !36, i64 8}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!40, !42, i64 172}
!74 = !{!41, !41, i64 0}
!75 = !{!40, !36, i64 0}
!76 = distinct !{!76, !72}
!77 = !{!"node_texture_output.c:assign_index"}
!78 = distinct !{!78, !72}
!79 = distinct !{!79, !72}
