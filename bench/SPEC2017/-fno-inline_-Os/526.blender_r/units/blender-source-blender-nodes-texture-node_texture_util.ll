; ModuleID = 'blender/source/blender/nodes/texture/node_texture_util.c'
source_filename = "blender/source/blender/nodes/texture/node_texture_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ListBase = type { ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.TexCallData = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i16, i32, ptr, ptr }
%struct.TexParams = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.bNodePreview = type { %struct.bNodeInstanceHashEntry, ptr, i16, i16, i32 }
%struct.bNodeInstanceHashEntry = type { %struct.bNodeInstanceKey, i16, i16 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.TexDelegate = type { ptr, ptr, ptr, ptr, [64 x ptr], i32 }
%struct.bNodeExecData = type { ptr, ptr }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }

@.str = private unnamed_addr constant [16 x i8] c"TextureNodeTree\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"tex delegate\00", align 1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @tex_node_poll_default(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 3
  %4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(16) @.str) #10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tex_node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) local_unnamed_addr #2 {
  tail call void @node_type_base(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext %4) #11
  %6 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 37
  store ptr @tex_node_poll_default, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.bNodeType, ptr %0, i64 0, i32 39
  store ptr @node_update_internal_links_default, ptr %7, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @node_type_base(ptr noundef, i32 noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @node_update_internal_links_default(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tex_input_vec(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  tail call fastcc void @tex_input(ptr noundef %0, i32 noundef 3, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tex_input(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4) unnamed_addr #2 !PGOFuncName !44 {
  %6 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  tail call fastcc void @tex_call_delegate(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef %3, i16 noundef signext %4) #12
  %10 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 5
  %11 = load i16, ptr %10, align 2, !tbaa !47
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bNodeStack, ptr %2, i64 0, i32 7
  %15 = load i16, ptr %14, align 2, !tbaa !48
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load float, ptr %2, align 8, !tbaa !49
  %19 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  store float %18, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  store float %18, ptr %20, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %9, %13, %17, %5
  %22 = zext nneg i32 %1 to i64
  %23 = shl nuw nsw i64 %22, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 8 %2, i64 %23, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tex_input_rgba(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) local_unnamed_addr #2 {
  tail call fastcc void @tex_input(ptr noundef %0, i32 noundef 4, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) #12
  %5 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 2, !tbaa !47
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bNodeStack, ptr %1, i64 0, i32 7
  %10 = load i16, ptr %9, align 2, !tbaa !48
  switch i16 %10, label %23 [
    i16 0, label %11
    i16 1, label %15
  ]

11:                                               ; preds = %8
  %12 = load float, ptr %0, align 4, !tbaa !49
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !49
  %14 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %14, align 4, !tbaa !49
  br label %21

15:                                               ; preds = %8
  %16 = load <2 x float>, ptr %0, align 4, !tbaa !49
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> <float 5.000000e-01, float 5.000000e-01>, <2 x float> <float 5.000000e-01, float 5.000000e-01>)
  store <2 x float> %17, ptr %0, align 4, !tbaa !49
  %18 = getelementptr inbounds float, ptr %0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !49
  %20 = tail call float @llvm.fmuladd.f32(float %19, float 5.000000e-01, float 5.000000e-01)
  store float %20, ptr %18, align 4, !tbaa !49
  br label %21

21:                                               ; preds = %15, %11
  %22 = getelementptr inbounds float, ptr %0, i64 3
  store float 1.000000e+00, ptr %22, align 4, !tbaa !49
  br label %23

23:                                               ; preds = %21, %8, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @tex_input_value(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #2 {
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @tex_input_vec(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %1, i16 noundef signext %2) #12
  %5 = load float, ptr %4, align 16, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @params_from_cdata(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  store ptr %4, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 1
  %7 = load <2 x ptr>, ptr %5, align 8, !tbaa !54
  store <2 x ptr> %7, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 3
  store ptr %4, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 5
  store i32 %10, ptr %11, align 4, !tbaa !57
  %12 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !58
  %14 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 4
  store i32 %13, ptr %14, align 8, !tbaa !59
  %15 = getelementptr inbounds %struct.TexCallData, ptr %1, i64 0, i32 10
  %16 = getelementptr inbounds %struct.TexParams, ptr %0, i64 0, i32 6
  %17 = load <2 x ptr>, ptr %15, align 8, !tbaa !54
  store <2 x ptr> %17, ptr %16, align 8, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tex_do_preview(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = load float, ptr %1, align 4, !tbaa !49
  %8 = fadd float %7, 1.000000e+00
  %9 = fmul float %8, 5.000000e-01
  %10 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 8, !tbaa !60
  %12 = sitofp i16 %11 to float
  %13 = fmul float %9, %12
  %14 = fptosi float %13 to i32
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !49
  %17 = fadd float %16, 1.000000e+00
  %18 = fmul float %17, 5.000000e-01
  %19 = getelementptr inbounds %struct.bNodePreview, ptr %0, i64 0, i32 3
  %20 = load i16, ptr %19, align 2, !tbaa !64
  %21 = sitofp i16 %20 to float
  %22 = fmul float %18, %21
  %23 = fptosi float %22 to i32
  tail call void @BKE_node_preview_set_pixel(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %14, i32 noundef %23, i8 noundef zeroext %3) #11
  br label %24

24:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_node_preview_set_pixel(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tex_output(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.bNode, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bNodeStack, ptr %3, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !54
  %17 = tail call ptr %16(i64 noundef 552, ptr noundef nonnull @.str.1) #11
  store ptr %17, ptr %12, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %17, %15 ], [ %13, %11 ]
  store ptr %5, ptr %19, align 8, !tbaa !69
  %20 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 1
  store ptr %4, ptr %20, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 2
  store ptr %0, ptr %21, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.bNodeExecData, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %25, ptr noundef nonnull align 8 dereferenceable(512) %2, i64 512, i1 false)
  %26 = getelementptr inbounds %struct.bNodeStack, ptr %3, i64 0, i32 7
  %27 = load i16, ptr %26, align 2, !tbaa !48
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.TexDelegate, ptr %19, i64 0, i32 5
  store i32 %28, ptr %29, align 8, !tbaa !76
  br label %30

30:                                               ; preds = %6, %18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ntreeTexCheckCyclics(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1, %30
  %6 = phi ptr [ %31, %30 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !77
  %9 = icmp eq i16 %8, 403
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 33
  %16 = load i16, ptr %15, align 8, !tbaa !79
  %17 = icmp eq i16 %16, 0
  %18 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 34
  br i1 %17, label %20, label %19

19:                                               ; preds = %14
  store i16 1, ptr %18, align 2, !tbaa !80
  br label %29

20:                                               ; preds = %14
  store i16 0, ptr %18, align 2, !tbaa !80
  store i16 1, ptr %15, align 8, !tbaa !79
  %21 = getelementptr inbounds %struct.Tex, ptr %12, i64 0, i32 61
  %22 = load i8, ptr %21, align 8, !tbaa !81
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Tex, ptr %12, i64 0, i32 52
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @ntreeTexCheckCyclics(ptr noundef nonnull %26) #12
  br label %29

29:                                               ; preds = %20, %24, %28, %19
  store i16 0, ptr %15, align 8, !tbaa !79
  br label %30

30:                                               ; preds = %29, %5, %10
  %31 = load ptr, ptr %6, align 8, !tbaa !54
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %5, !llvm.loop !86

33:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @tex_call_delegate(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #2 !PGOFuncName !88 {
  %5 = getelementptr inbounds %struct.TexDelegate, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 37
  %8 = load i16, ptr %7, align 4, !tbaa !89
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.TexDelegate, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.TexDelegate, ptr %0, i64 0, i32 4
  tail call void %12(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %13, i16 noundef signext %3) #11
  %14 = load ptr, ptr %0, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.TexCallData, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 4, !tbaa !90
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.TexDelegate, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.TexParams, ptr %2, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.TexCallData, ptr %14, i64 0, i32 6
  %24 = load i8, ptr %23, align 1, !tbaa !91
  tail call void @tex_do_preview(ptr noundef %20, ptr noundef %22, ptr noundef %1, i8 noundef zeroext %24) #12
  br label %25

25:                                               ; preds = %10, %18, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

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
!34 = !{!35, !36, i64 664}
!35 = !{!"bNodeType", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !40, i64 84, !37, i64 88, !37, i64 152, !40, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !41, i64 432, !39, i64 436, !39, i64 438, !39, i64 440, !36, i64 448, !36, i64 456, !37, i64 464, !36, i64 528, !36, i64 536, !36, i64 544, !36, i64 552, !36, i64 560, !36, i64 568, !36, i64 576, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !36, i64 696, !36, i64 704, !36, i64 712, !42, i64 720}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!43 = !{!35, !36, i64 680}
!44 = !{!"node_texture_util.c:tex_input"}
!45 = !{!46, !36, i64 24}
!46 = !{!"bNodeStack", !37, i64 0, !41, i64 16, !41, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!47 = !{!46, !39, i64 34}
!48 = !{!46, !39, i64 38}
!49 = !{!41, !41, i64 0}
!50 = !{!51, !36, i64 8}
!51 = !{!"TexCallData", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 36, !37, i64 37, !39, i64 38, !39, i64 40, !40, i64 44, !36, i64 48, !36, i64 56}
!52 = !{!53, !36, i64 0}
!53 = !{!"TexParams", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48}
!54 = !{!36, !36, i64 0}
!55 = !{!53, !36, i64 24}
!56 = !{!51, !40, i64 32}
!57 = !{!53, !40, i64 36}
!58 = !{!51, !40, i64 44}
!59 = !{!53, !40, i64 32}
!60 = !{!61, !39, i64 16}
!61 = !{!"bNodePreview", !62, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !40, i64 20}
!62 = !{!"bNodeInstanceHashEntry", !63, i64 0, !39, i64 4, !39, i64 6}
!63 = !{!"bNodeInstanceKey", !40, i64 0}
!64 = !{!61, !39, i64 18}
!65 = !{!66, !40, i64 168}
!66 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !67, i64 200, !67, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !67, i64 264, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !41, i64 300, !41, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !41, i64 380, !41, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !68, i64 400, !68, i64 416, !68, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!67 = !{!"ListBase", !36, i64 0, !36, i64 8}
!68 = !{!"rctf", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!69 = !{!70, !36, i64 0}
!70 = !{!"TexDelegate", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 544}
!71 = !{!70, !36, i64 8}
!72 = !{!70, !36, i64 16}
!73 = !{!74, !36, i64 8}
!74 = !{!"bNodeExecData", !36, i64 0, !36, i64 8}
!75 = !{!70, !36, i64 24}
!76 = !{!70, !40, i64 544}
!77 = !{!66, !39, i64 172}
!78 = !{!66, !36, i64 240}
!79 = !{!66, !39, i64 376}
!80 = !{!66, !39, i64 378}
!81 = !{!82, !37, i64 408}
!82 = !{!"Tex", !83, i64 0, !36, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !40, i64 252, !40, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !84, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!83 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!84 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!85 = !{!82, !36, i64 336}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"node_texture_util.c:tex_call_delegate"}
!89 = !{!66, !39, i64 388}
!90 = !{!51, !37, i64 36}
!91 = !{!51, !37, i64 37}
